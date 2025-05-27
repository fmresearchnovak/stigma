import re
import argparse
import subprocess

import SmaliRegister
import SmaliClassDef
import SmaliAssemblyInstructions
import StigmaStringParsingLib
import SmaliCodeIterator

def findAPK(apk):
    if (not os.path.exists(apk)):
        print("Input file (" + apk + ") was not found or was not readable.")
        exit(1)
    return apk

def get_function_name(filename, line_number, lines):
    match_object = re.match(StigmaStringParsingLib.BEGINS_WITH_DOT_METHOD, lines[line_number])
    while(match_object == None):
        line_number -= 1
        match_object = re.match(StigmaStringParsingLib.BEGINS_WITH_DOT_METHOD, lines[line_number])
    
    method_signature_str = lines[line_number].replace("\n", "")
    return method_signature_str

def find_smali_method_def_obj(method_signature_str, smali_class):
    method_index = 0
    curr_method = smali_class.methods[method_index]

    while(curr_method != method_signature_str):
        method_index += 1
        curr_method = smali_class.methods[method_index]

    return curr_method

def test_instance(instruction, location, original_line):
    first = False
    if original_line == str(instruction).replace("\n", ""):
        first = True

    # registers for each instruction
    instruction_regs = instruction.get_registers()

    # MOVE instances: first is destination, second is origin
    # if target is origin, add destination, if target is destination, overwrite
    if isinstance(instruction, SmaliAssemblyInstructions.MOVE):
        print("MOVE")
        # TO DO: account for move-result
        if not isinstance(instruction, SmaliAssemblyInstructions._SINGLE_REGISTER_INSTRUCTION):
            if instruction_regs[1] == location:
                print("ADDING NEW LOCATION " + str(instruction_regs[0]))
                return instruction_regs[0]
            else: # instruction_regs[0] == location
                if first:
                    print("TARGET IS DESTINATION, BUT THIS IS THE FIRST LINE SO THIS IS THE STARTING VALUE")
                    return location
                else:
                    print("TARGET IS DESTINATION, OVERWRITTEN")
                    return "REMOVE CURRENT"

    # IGET-OBJECT instances: first is destination, second is object, third is name of instance variable
    # instance variable from object is put into destination
    # if target is destination, overwrite
    # if target is object, do nothing
    # if target is instance variable, add destination
    elif isinstance(instruction, SmaliAssemblyInstructions.IGET_OBJECT):
        print("IGET")
        instance_var = instruction.get_instance_variable()
        if instance_var == location:
            print("ADDING NEW LOCATION " + instruction_regs[0])
            return instruction_regs[0]
        else: # instruction_regs[0] = location
            if first:
                print("TARGET IS DESTINATION, BUT THIS IS THE FIRST LINE SO THIS IS THE STARTING VALUE")
                return location
            else:
                print("TARGET IS DESTINATION, OVERWRITTEN")
                return "REMOVE CURRENT"

    # IPUT-OBJECT instances: first is origin, second is object, third is name of instance variable
    # origin is put into instance variable in object
    # if target is origin, add instance variable
    # if target is object, do nothing
    # if target is instance variable, overwrite
    elif isinstance(instruction, SmaliAssemblyInstructions.IPUT_OBJECT):
        print("IPUT")
        instance_var = instruction.get_instance_variable()
        if instruction_regs[0] == location:
            print("ADDING NEW LOCATION " + instance_var)
            return instance_var
        else: # instance_var == location
            if first:
                print("TARGET IS DESTINATION, BUT THIS IS THE FIRST LINE SO THIS IS THE STARTING VALUE")
                return location
            else:
                print("TARGET IS DESTINATION, OVERWRITTEN")
                return "REMOVE CURRENT"
    
    else:
        print("No new locations added.")
        return location # nothing happens

def trace(filename, line_number, reg):
    fh = open(filename, "r")
    lines = fh.readlines()
    fh.close()

    # account for index 0
    line_number -= 1

    smali_reg = SmaliRegister.SmaliRegister(reg)
    smali_class = SmaliClassDef.SmaliClassDef(filename)

    method_signature_str = get_function_name(filename, line_number, lines)
    smali_method_def_obj = find_smali_method_def_obj(method_signature_str, smali_class)
    full_text = SmaliCodeIterator.SmaliCodeIterator(smali_method_def_obj.raw_text)

    # -----------------------------------------
    #             FORWARD TRACING
    # -----------------------------------------

    # stores the target line, the line in filename at line_number
    target_line = lines[line_number].replace("\n", "")
    target_line_found = False

    # list of registers that the code will look for, registers are added if the original value goes to them
    # "r" = register, "i" = instance variable
    locations_to_check = []
    locations_to_check.append(reg)

    for line in SmaliCodeIterator.SmaliCodeIterator(smali_method_def_obj.raw_text):
        line = "".join(line).replace("\n", "")

        if line == target_line:
            print("Target found")
            target_line_found = True

        if target_line_found:
            for location in locations_to_check:
                if location in line:
                    print("----------------------------------------------------")
                    print("LOCATION = " + location)
                    print("LINE = " + line)
                    print("DETERMINING NEW LOCATIONS...")

                    instruction = SmaliAssemblyInstructions.SmaliAssemblyInstruction().from_line(line)
                    loc_to_add = str(test_instance(instruction, location, target_line))

                    if loc_to_add == "REMOVE CURRENT":
                        locations_to_check.remove(location)
                    elif loc_to_add not in locations_to_check:
                        locations_to_check.append(loc_to_add)
                    
                    # if the output is an instance variable, pause the check here and look for it in all files
                    if isinstance(instruction, SmaliAssemblyInstructions._I_INSTRUCTION):
                        # change this manually while APK input is unfinished
                        folder = "stigma"
                        cmd = ["grep", str(instruction.get_instance_variable()).replace("\n", ""), "-r"]
                        #print(" ".join(cmd))
                        grep_result = subprocess.run(cmd, stdout = subprocess.PIPE)
                        #print("CMD RESULT: " + str(grep_result.stdout))

                        instances_list = str(grep_result.stdout)[2:].split("\\n")
                        instances_list.pop()

                        for instance in instances_list:
                            instance = instance.split("    ")

                            file = instance[0]
                            line = instance[1]

                            if line.find(instruction.opcode()) != -1:
                                print(instance)

                    break # only log the line once

def main():
    parser = argparse.ArgumentParser(description = "Given a line of code and a register to track, traces the contents of the register throughout the process.")

    #parser.add_argument("APK", help="The path to the APK file that the target file is located in.")
    parser.add_argument("filename", help="The file that contains the target line of code.")
    parser.add_argument("line_number", help="Line number of the line of code containing a reference to the desired register.")
    parser.add_argument("register", help="The register that you wish to trace the data of.")

    # https://stackoverflow.com/questions/69981912/why-i-am-getting-this-error-typeerror-namespace-object-is-not-subscriptable
    args = parser.parse_args()

    #args.APK = findAPK(args.APK)

    #trace(os.path.join(args.APK, args.filename), int(args.line_number), args.register)
    trace(args.filename, int(args.line_number), args.register)

    #APK stuff doesn't work yet


main()
#main("SendMessagesHelper.smali", 27946, "v4")