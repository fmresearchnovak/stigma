import re
import argparse
import subprocess
import time
import os

import SmaliRegister
import SmaliClassDef
import SmaliAssemblyInstructions
import StigmaStringParsingLib
import SmaliCodeIterator
import StigmaState

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

# GREP TEST: TEST FUNCTION FOR FINDING INSTANCES OF A CERTAIN VALUE THROUGHOUT THE APK CODE
def grep_test(target, path):
    cmd = ["grep", target, "-r", path]
    grep_result = subprocess.run(cmd, stdout = subprocess.PIPE)
    uses_list = str(grep_result.stdout)[2:].split("\\n")
    for use in uses_list:
        print(use)

def generate_directed_graph(graph):
    first = True
    print(graph)
    for key in graph:
        for index in range(0, len(graph[key])):
            value = graph[key][index][0]
            number = graph[key][index][1]

            if key[0] == "L":
                split = key.split("/")
                key = split[len(split) - 1].replace(";", "")
            if value[0] == "L":
                split = value.split("/")
                value = split[len(split) - 1].replace(";", "")

            entry = ""

            if first == True:
                entry += str(key) + "[" + str(key) + "]"
                first = False
            else:
                entry += str(key)
            
            entry += " --> "

            if value in graph and len(graph[value]) > 1:
                entry += str(value) + "{" + str(value) + "};"
            else:
                entry += str(value) + "[" + str(value) + "];"
            
            entry += " <!-- Line number: " + str(number) + " -->"

            print(entry)

def test_instance(instruction, location, original_line):
    first = False
    if original_line == str(instruction).replace("\n", ""):
        first = True

    # registers for each instruction
    instruction_regs = instruction.get_registers()

    # CONST/INSTANCE-OF instances: overwrite destination
    if isinstance(instruction, SmaliAssemblyInstructions.CONST) or isinstance(instruction, SmaliAssemblyInstructions.INSTANCE_OF):
        print("SINGLE REGISTER OVERWRITE")
        if instruction_regs[0] == location:
            if first:
                print("TARGET IS DESTINATION, BUT THIS IS THE FIRST LINE SO THIS IS THE STARTING VALUE")
                return location
            else:
                print("TARGET IS DESTINATION, OVERWRITTEN")
                return "REMOVE CURRENT"

    # TRIPLE REGISTER INSTRUCTIONS: overwrite destination register, with the exception of APUT
    # This covers the arthimetic instructions and logic
    if isinstance(instruction, SmaliAssemblyInstructions._TRIPLE_REGISTER_INSTRUCTION):
        if not isinstance(instruction, SmaliAssemblyInstructions.APUT):
            print("ARTHIMETIC/LOGIC INSTRUCTION")
            if instruction_regs[1] == location or instruction_regs[2] == location:
                print(str(instruction_regs[0]) + " HAS PART OF " + str(location) + "'S DATA")
                print("THIS CANNOT BE TRACKED YET")
                return location
            else: # instruction_regs[0] == location
                if first:
                    print("TARGET IS DESTINATION, BUT THIS IS THE FIRST LINE SO THIS IS THE STARTING VALUE")
                    return location
                else:
                    print("TARGET IS DESTINATION, OVERWRITTEN")
                    return "REMOVE CURRENT"
        else: # APUT INSTRUCTION
            print("APUT INSTRUCTION")

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

    # IGET instances: first is destination, second is object, third is name of instance variable
    # instance variable from object is put into destination
    # if target is destination, overwrite
    # if target is object, do nothing
    # if target is instance variable, add destination
    elif isinstance(instruction, SmaliAssemblyInstructions.IGET_OBJECT) or isinstance(instruction, SmaliAssemblyInstructions.IGET):
        print("IGET")
        instance_var = instruction.get_instance_variable()
        if instance_var == location:
            print("ADDING NEW LOCATION " + str(instruction_regs[0]))
            return instruction_regs[0]
        else: # instruction_regs[0] = location
            if first:
                print("TARGET IS DESTINATION, BUT THIS IS THE FIRST LINE SO THIS IS THE STARTING VALUE")
                return location
            else:
                print("TARGET IS DESTINATION, OVERWRITTEN")
                return "REMOVE CURRENT"

    # IPUT instances: first is origin, second is object, third is name of instance variable
    # origin is put into instance variable in object
    # if target is origin, add instance variable
    # if target is object, do nothing
    # if target is instance variable, overwrite
    elif isinstance(instruction, SmaliAssemblyInstructions.IPUT_OBJECT) or isinstance(instruction, SmaliAssemblyInstructions.IPUT):
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

    # INVOKE instances: jump to the appropriate function
    elif isinstance(instruction, SmaliAssemblyInstructions.INVOKE_VIRTUAL):
        result_register = str(instruction).split("}, ")[1].replace("\n", "")
        return location
        #return "INVOKE FUNCTION"
    
    # TWO REG EQ (IF) instances: don't know what to do yet
    elif isinstance(instruction, SmaliAssemblyInstructions._TWO_REG_EQ):
        print("IF STATEMENT")
        return location
        #return instruction.target

    # RETURN instances: tell forward tracing function to end the current function here
    # if return is location, keep track of where that goes
    elif isinstance(instruction, SmaliAssemblyInstructions.RETURN):
        print("RETURN STATEMENT")
        return location
        #return "RETURN"
    
    else:
        print("No new locations added.")
        return location # nothing happens



# REWRITTEN VERSION OF FUNCTION BELOW
def forward_tracing(filename, line_number, location, files_to_search, line_directory, tmp_file_name):
    print("=================================")
    print(filename)
    print("=================================")

    # this is for the directed graph
    edges = {}

    # STEP 1: Create list of registers (and instance variables) to check for
    locations_to_check = []
    locations_to_check.append(location)

    # STEP 2: Open input file
    fh = open(filename, "r")
    lines = fh.readlines()
    fh.close()

    # STEP 3: Get the method that the target line is in as a SmaliClassDef object
    line_number -= 1

    #smali_reg = SmaliRegister.SmaliRegister(reg)
    smali_class = SmaliClassDef.SmaliClassDef(filename)

    method_signature_str = get_function_name(filename, line_number, lines)

    smali_method_def_obj = find_smali_method_def_obj(method_signature_str, smali_class)
    full_text = SmaliCodeIterator.SmaliCodeIterator(smali_method_def_obj.raw_text)

    # STEP 4: Find the text of the target line
    target_line = lines[line_number].replace("\n", "")
    target_line_found = False

    current_line_number = line_number

    # STEP 5: Loop through the method and get the target line
    for line in SmaliCodeIterator.SmaliCodeIterator(smali_method_def_obj.raw_text):
        if len(line) > 1:
            current_line_number += len(line) - 1

        line = "".join(line).replace("\n", "")

        if target_line in line:
            print("Target found")
            target_line_found = True

        # STEP 6: Once the target line is found, send every line containing a location in locations_to_track to the test_instance function
        if target_line_found:
            current_line_number += 1

            for location in locations_to_check:
                if location in line:
                    print("----------------------------------------------------")
                    print("LOCATION = " + location)
                    print("LINE = " + line)
                    print("DETERMINING NEW LOCATIONS...")

                    instruction = SmaliAssemblyInstructions.SmaliAssemblyInstruction().from_line(line)
                    loc_to_add = str(test_instance(instruction, location, target_line))
                    print("loc to add = " + str(loc_to_add))

                    # SPECIAL INSTRUCTIONS DEPENDING ON LOC_TO_ADD RESULT
                    match loc_to_add:
                        case "REMOVE CURRENT":
                            locations_to_check.remove(location)
                        case "INVOKE FUNCTION":
                            full_line = str(instruction)
                            # this function travels to different files
                        case "IF INSTRUCTION":
                            return # jump to a different line in the file, keep the current line in a variable
                        case "RETURN":
                            return (new_files_to_search, new_line_directory, value_being_returned)
                        case _:
                            if loc_to_add not in locations_to_check:
                                locations_to_check.append(loc_to_add)
                                print("Added to locations")

                    if loc_to_add != "REMOVE CURRENT" and loc_to_add != location:
                        if location in edges:
                            duplicate = False
                            for pair in edges[location]:
                                if pair[0] == loc_to_add:
                                    duplicate = True
                                    break
                            if not duplicate:
                                edges[location].append([loc_to_add, current_line_number])

                        else:
                            edges[location] = [[loc_to_add, current_line_number]]   

                    print(locations_to_check)

                    # STEP 7: For every instance variable added to tracking that is not in the current file, add the file name and lines to line_directory
                    if isinstance(instruction, SmaliAssemblyInstructions._I_INSTRUCTION) and loc_to_add != "REMOVE CURRENT":
                        print(str(instruction) + " is I_INSTRUCTION, find instance variables throughout files...")
                        # something to specify folder
                        #cmd = ["grep", str(instruction.get_instance_variable()).replace("\n", ""), "-r", tmp_file_name]
                        cmd = ["grep", str(instruction.get_instance_variable()).replace("\n", ""), "-r"]
                        grep_result = subprocess.run(cmd, stdout = subprocess.PIPE)

                        # result is a list of uses of the instance variable
                        uses_list = str(grep_result.stdout)[2:].split("\\n")
                        uses_list.pop()

                        for use in uses_list:
                            use = use.split(":", 1)

                            file = use[0]
                            line = use[1].strip() # https://www.geeksforgeeks.org/python-remove-spaces-from-a-string/

                            if file != filename:
                                if file not in files_to_search:
                                    files_to_search.append(file)
                                
                                if file in line_directory:
                                    line_directory[file].append(line)
                                else:
                                    line_directory[file] = [line]

                    break
    
    generate_directed_graph(edges)

    # STEP 8: Choose the next file to open, and add the first value to the locations to check, and find line number
    if len(files_to_search) > 0:
        new_file = files_to_search[0]
        new_instance_to_check = line_directory[new_file][0]
        
        line_directory[new_file].pop(0)

        if len(line_directory[new_file]) == 0:
            files_to_search.remove(new_file)

        fh = open(new_file, "r")

        # get the location name not the line name
        new_location = new_instance_to_check.split(" ", 3)[3]
        new_location = new_location[:len(new_location) - 1]

        # loop through to get line
        new_line_number = 0
        target_line = new_location
        curr_line = ""
        while target_line not in curr_line:
            new_line_number += 1
            curr_line = fh.readline()

        fh.close()

        # STEP 9: Repeat all of the steps for the new file and its locations to check
        print("NEW ITERATION WITH " + new_file + " " + str(new_line_number) + " " + new_location)
        #return forward_tracing(new_file, new_line_number, new_location, files_to_search, line_directory, tmp_file_name)
        return

    else:
        # return activity_log
        return

def main():
    parser = argparse.ArgumentParser(description = "Given a line of code and a register to track, traces the contents of the register throughout the process.")

    #parser.add_argument("APK", help="The path to the APK file that the target file is located in.")
    parser.add_argument("filename", help="The file that contains the target line of code.")
    parser.add_argument("line_number", help="Line number of the line of code containing a reference to the desired register.")
    parser.add_argument("register", help="The register that you wish to trace the data of.")

    args = parser.parse_args()
    #apk_path = findAPK(args.APK)

    # https://stackoverflow.com/questions/69981912/why-i-am-getting-this-error-typeerror-namespace-object-is-not-subscriptable
    args = parser.parse_args()

    
    temp_APK = StigmaState.Environment().get_temp_file()
    tmp_file_name = StigmaState.Environment().get_temp_file().name
    '''
    start_time = time.time()
    cmd = ["java", "-jar", "pre-builts/apktool.jar", "d", apk_path, "-o", tmp_file_name, "-f"]
    if (os.name == "nt"):
        completed_process = subprocess.run(cmd, shell=True)
    elif (os.name == "posix"):
        completed_process = subprocess.run(cmd)
    completed_process.check_returncode()
    print("Apk unpacked in %.1f seconds" % (time.time() - start_time))

    forward_tracing(args.filename, int(args.line_number), args.register, [], {}, tmp_file_name)
    '''

    #the following code tests it without the APK file so that lines can be easily edited
    forward_tracing(args.filename, int(args.line_number), args.register, [], {}, tmp_file_name)

main()

#main("SendMessagesHelper.smali", 27946, "v4")

# LOOK AT
# NEW ITERATION WITH /tmp/apkOutput_45yq44ko/smali_classes4/org/telegram/messenger/SecretChatHelper.smali 6501 Lorg/telegram/tgnet/TLRPC$MessageMedia;->last_name:Ljava/lang/String
# NEW ITERATION WITH /tmp/apkOutput_45yq44ko/smali_classes4/org/telegram/messenger/SecretChatHelper.smali 6505 Lorg/telegram/tgnet/TLRPC$MessageMedia;->first_name:Ljava/lang/String
# MAKE STATEMENT TO PREVENT GOING TO THE SAME LINE OF A FILE TWICE

# WHEN OVERWRITE HAPPENS WITH I INSTRUCTION DON'T RUN GREP FOR THE INSTANCE VARIABLE