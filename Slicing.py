import re
import argparse

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

def test_instance(instruction, reg):
    # MOVE instances: if reg is origin, add destination to regs
    # Destination is first
    # If reg is destination, remove from regs
    instruction_regs = instruction.get_registers()
    if isinstance(instruction, SmaliAssemblyInstructions.MOVE):
        print("MOVE")
        if not isinstance(instruction, SmaliAssemblyInstructions._SINGLE_REGISTER_INSTRUCTION):
            if instruction_regs[1] == reg:
                print("TARGET IS ORIGIN, ADD DESTINATION " + str(instruction_regs[0]))
                return instruction_regs[0]
            else: # instruction_regs[0] == reg
                print("TARGET IS DESTINATION, OVERWRITTEN")
                return "REMOVE CURRENT"
    elif isinstance(instruction, SmaliAssemblyInstructions.IGET_OBJECT):
        print("IGET")
        if not isinstance(instruction, SmaliAssemblyInstructions._SINGLE_REGISTER_INSTRUCTION):
            if instruction_regs[1] == reg:
                print("TARGET IS ORIGIN, ADD DESTINATION " + str(instruction_regs[0]))
                return instruction_regs[0]
            else: # instruction_regs[0] == reg
                print("TARGET IS DESTINATION, OVERWRITTEN")
                return "REMOVE CURRENT"
        return "v4"
    elif isinstance(instruction, SmaliAssemblyInstructions.IPUT_OBJECT):
        print("IPUT")
        if instruction_regs[0] == reg:
            print("TARGET IS ORIGIN, ADD DESTINATION " + str(instruction_regs[1]))
            return instruction_regs[1]
        else: # instruction_regs[1] == reg
            print("TARGET IS DESTINATION, OVERWRITTEN")
            return "REMOVE CURRENT"
    else:
        return "null"


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

    # forward tracing
    target_line = lines[line_number]
    target_line_found = False

    registers_to_check = []
    registers_to_check.append(reg)

    for line in SmaliCodeIterator.SmaliCodeIterator(smali_method_def_obj.raw_text):
        line = "".join(line)

        if line.replace("\n", "") == target_line.replace("\n", ""):
            print("Target found")
            target_line_found = True

        if target_line_found:
            for register in registers_to_check:
                if register in line:
                    print("register " + register + " is in line " + line)
                    instruction = SmaliAssemblyInstructions.SmaliAssemblyInstruction().from_line(line)
                    reg_to_add = str(test_instance(instruction, register))

                    if reg_to_add == "REMOVE CURRENT":
                        registers_to_check.remove(register)
                    elif reg_to_add not in registers_to_check:
                        registers_to_check.append(reg_to_add)

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