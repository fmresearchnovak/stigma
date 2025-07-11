import sys
import re
import argparse
import subprocess
import time
import os
import enum

# SOMETHING TO REMEMBER: IMPLICIT REGISTERS GETTING OVERWRITTEN BY THEMSELVES

from lib import SmaliRegister
from lib import SmaliClassDef
from lib import SmaliAssemblyInstructions
from lib.SmaliAssemblyInstructions import Action
from lib import StigmaStringParsingLib
from lib import SmaliCodeIterator
from lib import SmaliCodeBase
from lib.SmaliMethodDef import SmaliMethodSignature
import StigmaState

class TracingLocation:
    def __init__(self):
        self.reg = None
        self.obj_instance = None
        self.variable = None

    def set_register(self, new_reg):
        self.reg = new_reg

    def set_object_pair(self, var, obj):
        self.variable = var
        self.obj_instance = obj

    # Gets the part that holds the tracked value, either the register name or the instance variable name.
    # Used to determine the location of the tracked value to find the slicing action, as the object is not needed
    def get_value(self):
        if self.reg is not None:
            return self.reg
        if self.obj_instance is not None:
            return self.variable

    # Determines whether a line has either the register or the register-variable pair
    def __eq__(self, other):
        other = str(other)
        if self.reg is not None:
            if self.reg == other:
                return True
        if self.obj_instance is not None:
            if self.obj_instance == other and self.variable == other:
                return True
        return False
    
    def __str__(self):
        if self.reg is not None:
            return str(self.reg)
        if self.obj_instance is not None:
            return str(self.obj_instance) + " " + str(self.variable)
        

    def __repr__(self):
        return str(self)

class TracingManager:

    def __init__(self):
        self.temp_APK = StigmaState.Environment().get_temp_file()
        self.tmp_file_name = StigmaState.Environment().get_temp_file().name
        self.codebase = None

        # edges for the directed graph
        self.edges = {}

        # locations (registers/variables) tracked
        self.locations_to_check = []

        # files found containing a tracked location
        self.files_to_search = []

        # filename -> instances of a tracked location for that file
        self.line_directory = {}

        # smali files
        self.smali_files = []

        self.target_line = ""
        self.current_line_number = 0

        # this list has three values in every entry:
        # A: a location that holds part of the tracked data (like from arthimetic)
        # B: a location that was part of an operation with the tracked data to get A
        # the operation that was performed
        # TO DO: STORE LITERALS
        self.locations_with_partial_tracked_data = []

        self.current_iteration = 0

        # this stores the index of important parameters to track, so that they can be translated to the appropriate method parameters
        self.parameters_immediate = []

        self.stack_locations_to_check = []

        self.cur_move_result_destinations = []

    # add edge object? add graph object?
    def add_edge(self, location, destination, line_number):
        return # want to make it work before I deal with the graph
        if location.get_value() in self.edges:
            duplicate = False
            for pair in self.edges[location]:
                print(pair[0])
                if pair[0] == destination:
                    duplicate = True
                    break
            if not duplicate:
                self.edges[location].append([destination, line_number])

        else:
            self.edges[location] = [[destination, line_number]]

    def get_edges(self):
        return self.edges

    def add_location(self, location):
        if location not in self.locations_to_check:
            self.locations_to_check.append(location)
            return
        
        #raise Exception("Cannot add duplicate location: " + str(location))

    def remove_location(self, location):
        if location in self.locations_to_check:
            self.locations_to_check.remove(location)
            return

        raise Exception("Cannot remove location: " + str(location) + " it is not currently being tracked.")

    def get_locations(self):
        return self.locations_to_check

    def add_file(self, file, line):
        if file not in self.files_to_search:
            self.files_to_search.append(file)
        
        if file in self.line_directory:
            self.line_directory[file].append(line)
        else:
            self.line_directory[file] = [line]
    
    def remove_file(self, file):
        if file in self.line_directory:
            self.files_to_search.remove(file)

    def get_files(self):
        return self.files_to_search

def get_function_name(line_number, lines):
    match_object = re.match(StigmaStringParsingLib.BEGINS_WITH_DOT_METHOD, lines[line_number])
    while(match_object == None):
        line_number -= 1
        match_object = re.match(StigmaStringParsingLib.BEGINS_WITH_DOT_METHOD, lines[line_number])
    
    method_signature_str = lines[line_number].replace("\n", "")
    return method_signature_str

def find_smali_method_def_obj(method_signature_str, smali_class, file_path):
    method_index = 0
    #figure out how to use curr_Method.get_name
    curr_method = smali_class.methods[method_index]
    signature = SmaliMethodSignature(method_signature_str, "Lorg/telegram/messenger/SendMessagesHelper;")

    while(curr_method != signature):
        method_index += 1
        curr_method = smali_class.methods[method_index]

    return curr_method

# GREP TEST: TEST FUNCTION FOR FINDING INSTANCES OF A CERTAIN VALUE THROUGHOUT THE APK CODE
def grep_test(target, path):
    cmd = ["grep", target, "-r", path]
    grep_result = subprocess.run(cmd, stdout = subprocess.PIPE)
    uses_list = str(grep_result.stdout)[2:].split("\\n")

def format_for_html_graph(item):
    # key = split by "->", take the second half, then split the first half by "/" and get the last index, then combine first half and second half
    if item[0] == "L":
        new_item = ""
        if "->" in item:
            split_by_arrow = item.split("->")
            first = split_by_arrow[0]
            second = split_by_arrow[1]
        split = first.split("/")
        new_item = split[len(split) - 1] + "-"
        new_item += second
        new_item = new_item.replace(";", "").replace("[", "arrayof:")
        return new_item
    else:
        return item

def generate_directed_graph(graph):
    html_graph = ""

    first = True
    #print(graph)
    
    for key in graph:
        for index in range(0, len(graph[key])):
            #print(key)
            value = graph[key][index][0]
            number = graph[key][index][1]

            new_key = format_for_html_graph(key)
            new_value = format_for_html_graph(value)

            entry = ""

            if first == True:
                entry += str(new_key) + "[" + str(new_key) + "]"
                first = False
            else:
                entry += str(new_key)
            
            entry += " --> "

            if value in graph and len(graph[value]) > 1:
                entry += str(new_value) + "{" + str(new_value) + "};"
            else:
                entry += str(new_value) + "[" + str(new_value) + "];"
            
            #entry += " <!-- Line number: " + str(number) + " -->"

            html_graph += entry + "\n"
    
    return html_graph

def test_instance(line, location, tracingManager):
    instruction = line[0]

    first = False
    original_line = tracingManager.target_line
   
    if tracingManager.current_iteration == 1:
        first = True

    print("TYPE = " + str(type(instruction)))
    full_action = instruction.get_slicing_action(location)
    print("ACTION = " + str(full_action[0]))

    match full_action[0]:
        case Action.ADD:
            print("ADDING NEW LOCATION " + str(full_action[1]))
            #input("Testing addition of a location")
            if len(full_action) < 4:
                new_location = TracingLocation()
                new_location.set_register(full_action[1])
                tracingManager.add_location(new_location)

                tracingManager.add_edge(location, full_action[1], tracingManager.current_line_number)
            else:
                #input("Here")
                new_location = TracingLocation()
                new_location.set_object_pair(full_action[1], full_action[3])
                tracingManager.add_location(new_location)

                tracingManager.add_edge(location, full_action[1], tracingManager.current_line_number)

            if isinstance(instruction, SmaliAssemblyInstructions._S_INSTRUCTION):
                pass
            '''
            # S-instructions globally change a type of object and this change is attached to all instances
            if isinstance(instruction, SmaliAssemblyInstructions._S_INSTRUCTION):
                uses_list = grep_instances(instruction.get_instance_variable(), tracingManager)
                for use in uses_list:
                    use = use.split(":", 1)

                    file = use[0]
                    line = use[1].strip() # https://www.geeksforgeeks.org/python-remove-spaces-from-a-string/

                    line = SmaliAssemblyInstructions.from_line(line)

                    if file in tracingManager.smali_files:
                        tracingManager.add_file(file, line)
            '''
        case Action.REMOVE:
            if not first:
                if not isinstance(instruction, SmaliAssemblyInstructions._I_INSTRUCTION) and not isinstance(instruction, SmaliAssemblyInstructions._S_INSTRUCTION):
                    print("REMOVING LOCATION " + str(full_action[1]))
                    #input("Testing removal of a register 1")
                    for location_obj in tracingManager.locations_to_check:
                        if location_obj == location:
                            tracingManager.remove_location(location_obj)
                    
                else:
                    print("REMOVING LOCATION " + str(full_action[1]))
                    #input("Testing removal of a register 2")

                    if full_action[1][0] =="L":
                        new_location = TracingLocation()
                        new_location.set_object_pair(full_action[1], full_action[3])
                        for location_obj in tracingManager.locations_to_check:
                            print(location_obj)
                            print(new_location)
                            input("")
                            if location_obj == new_location:
                                tracingManager.remove_location(location_obj)
                    else:
                        for location_obj in tracingManager.locations_to_check:
                            if location_obj == location:
                                tracingManager.remove_location(location_obj)
            else:
                print("FIRST LINE, DON'T REMOVE")
        case Action.PART_OF_DATA_IN:
            tracingManager.locations_with_partial_tracked_data.append([str(full_action[1]), str(full_action[1]), str(type(instruction))])
        case Action.CAN_GET_DATA_FROM:
            tracingManager.locations_with_partial_tracked_data.append([str(full_action[1]), str(full_action[3]), str(type(instruction))])
        case Action.INVOKE:
            input("INVOKE")
            try:
                result_instruction = line[1]
                tracingManager.cur_move_result_destinations.append(result_instruction.get_registers()[0])
                print(result_instruction.get_registers()[0])
                print(location)
                if location == result_instruction.get_registers()[0]:
                    if not first:
                        print("REMOVING LOCATION " + str(location))
                        #input("Testing removal of a register 3")
                        for location_obj in tracingManager.locations_to_check:
                            if location_obj == location:
                                tracingManager.remove_location(location_obj)
                    else:
                        print("FIRST LINE, DON'T REMOVE")
            except IndexError:
                tracingManager.cur_move_result_destinations.append("") # if there is no result, the result of the invoke goes nowhere

            # .ADD LOCALS
            name = instruction.get_owning_class_name()
            scd = tracingManager.codebase.get_class_from_fully_qualified_name(name)
            input("invoke goes to " + str(scd))
            if scd == None:
                return
            fqc = instruction.get_fully_qualified_call()
            smd = scd.get_method_by_fully_qualified_name(fqc)
            LOCALS = smd.get_locals_directive_num()

            # add code here to add the new name of each variable passed to the new function
            parameters = instruction.get_registers()
            
            # this code checks whether the parameters going into the method match with any local versions of tracked registers.
            which_parameters = []
            for i in range(len(parameters)):
                if parameters[i] == "p": # dereference the local register
                    parameter_index = i[1]
                    new_location = "v" + str(parameter_index + LOCALS)
                    parameters[i] = new_location
                if location == parameters[i]:
                    which_parameters.append(i)
            tracingManager.parameters_immediate = which_parameters

            # return if which_parameters is empty
            input(which_parameters)
            if which_parameters == []:
                print("NO TRACKED PARAMETERS FOUND, RETURNING BACK")

            # this code handles all the stuff that has to be done when a new method begins for the first time
            # such as getting new locations and moving the old list to the stack
            
            new_locations_to_check = []

            # TO DO: ENSURE THAT WHEN LONGS GO IN, TWO REGISTERS ARE TAKEN
            # TO DO: DIFFERENTIATE BETWEEN STATIC AND NON-STATIC INVOKES
            input("LOCALS: " + str(LOCALS))
            for parameter_index in tracingManager.parameters_immediate:
                # get the parameters of the new method
                new_location = "v" + str(parameter_index + LOCALS)
                new_location_obj = TracingLocation()
                new_location_obj.set_register(new_location)
                new_locations_to_check.append(new_location_obj)
            
            tracingManager.stack_locations_to_check.append(tracingManager.locations_to_check)
            tracingManager.locations_to_check = new_locations_to_check
            #input(tracingManager.locations_to_check)

            tracingManager.parameters_immediate = []

        case Action.RETURN:
            # the code here will find the previous invoke from a list and determine whether the returned value is the tracked value
            # if so, add the destination of the result instruction
            tracingManager.locations_to_check = tracingManager.stack_locations_to_check.pop(0)

            # if the return statement returns the tracked value
            if instruction.get_registers()[0] in tracingManager.locations_to_check:
                # if there are pending move_results
                if tracingManager.cur_move_result_destinations != []:
                    destination = tracingManager.cur_move_result_destinations.pop(0)
                    if destination != "":
                        tracingManager.locations_to_check.append(destination)
        case _:
            pass
        
    #input(tracingManager.locations_to_check)

def find_path(folder, filename):
    #Source: Gemini
    for root, dirs, files in os.walk(folder):
        if filename in files:
            return os.path.join(root, filename)
    return None

def location_in_string_exact(location, line):
    # checks whether the location (either a register or a object-variable pair) is located in a line
    location = str(location)
    
    # if length is 1 it's a register, if not it's a object-variable pair
    parts = location.split(" ")

    if len(parts) == 1:
        pattern = rf"{re.escape(parts[0])}(?!\d)"
        return bool(re.search(pattern, line))
    else:
        pattern = rf"{re.escape(parts[0])}(?!\d)"
        pattern2 = rf"{re.escape(parts[1])}(?!\d)"
        return bool(re.search(pattern, line)) and bool(re.search(pattern2, line))

def grep_instances(variable, tracingManager):
    cmd = ["grep", str(variable).replace("\n", ""), "-r", tracingManager.tmp_file_name]
    grep_result = subprocess.run(cmd, stdout = subprocess.PIPE)

    # result is a list of uses of the instance variable
    uses_list = str(grep_result.stdout)[2:].split("\\n")
    uses_list.pop()
    return uses_list

def write_html_file(html_graph):
    inFile = open("templates/example-graphs.html", "r")
    outFile = open("tracing-graph.html", "w")

    lines = inFile.readlines()
    for line in lines:
        outFile.write(line)
        if line == "graph LR\n":
            outFile.write(html_graph)

    inFile.close()
    outFile.close()

def analyze_line(line, tracingManager):
    #tracingManager.current_line_number += 1
    #print(line)
    line_as_string = str(line[0])

    for location in tracingManager.locations_to_check:
        if location_in_string_exact(location, line_as_string) or tracingManager.parameters_immediate != []:
            #input("HERE")
            test_instance(line, location, tracingManager)
            break

def next_iteration(tracingManager):
    if len(tracingManager.get_files()) > 0:
        new_file = tracingManager.files_to_search[0]
        new_instance_to_check = tracingManager.line_directory[new_file][0]
        
        tracingManager.line_directory[new_file].pop(0)

        if len(tracingManager.line_directory[new_file]) == 0:
            tracingManager.remove_file(new_file)

        fh = open(new_file, "r")

        # get the location name not the line name
        new_location = new_instance_to_check.split(" ", 3)[3]
        new_location = new_location[:len(new_location) - 1]

        # loop through to get line
        new_line_number = 0
        tracingManager.target_line = new_location
        curr_line = ""
        while tracingManager.target_line not in curr_line:
            new_line_number += 1
            curr_line = fh.readline()

        fh.close()

        # STEP 9: Repeat all of the steps for the new file and its locations to check
        print("NEW ITERATION WITH " + str(new_file) + " " + str(new_line_number) + " " + str(new_location))
        #return forward_tracing(new_file, new_line_number, new_location, files_to_search, line_directory, tmp_file_name)
        return

    else:
        # return activity_log
        return

# REWRITTEN VERSION OF FUNCTION BELOW
def forward_tracing(filename, target_line_number, target_location, tracingManager, codebase):
    print("=================================")
    print(filename)
    print("=================================")

    tmp_file_name = tracingManager.tmp_file_name

    start_location = TracingLocation()
    start_location.set_register(target_location)

    tracingManager.add_location(start_location)
    tracingManager.codebase = codebase

    # STEP 5: Loop through the method and get the target line
    sei = SmaliCodeBase.SmaliExecutionIterator(codebase, filename, target_line_number, tracingManager)
    sei.ID = 0
    for line in sei:
        #if len(line) > 1:
        #   tracingManager.current_line_number += len(line) - 1
        tracingManager.current_iteration += 1
        #print(str(tracingManager.current_iteration) + ":")
        #print(line)
        analyze_line(line, tracingManager)
        
        if tracingManager.current_iteration == 1000:
            print("Limit reached")
            #print(tracingManager.locations_to_check)
            #print(tracingManager.line_directory)
            print("current iteration over 1000, stopping!")
            break
        
        if tracingManager.locations_to_check == [] and tracingManager.stack_locations_to_check == []:
            #input("NO TRACES LEFT OF TRACKED VALUE")
            print("no locations left to trace, stopping!")
            break

def main():
    # ARGPARSE FORMAT
    if len(sys.argv) != 5:
        print("ERROR: Five arguments required.")
        exit(1)
    
    parser = argparse.ArgumentParser(description = "Given a line of code and a register to track, traces the contents of the register throughout the process.")

    parser.add_argument("APK", help="The path to the APK file that the target file is located in.")
    parser.add_argument("filename", help="The file that contains the target line of code.")
    parser.add_argument("line_number", help="Line number of the line of code containing a reference to the desired register.")
    parser.add_argument("register", help="The register that you wish to trace the data of.")

    args = parser.parse_args()
    apk_path = SmaliCodeBase.SmaliCodeBase.findAPK(args.APK)

    tracingManager = TracingManager()

    # https://stackoverflow.com/questions/69981912/why-i-am-getting-this-error-typeerror-namespace-object-is-not-subscriptable
    
    # dumping the APK file
    start_time = time.time()
    cmd = ["java", "-jar", "pre-builts/apktool.jar", "d", apk_path, "-o", tracingManager.tmp_file_name, "-f"]
    if (os.name == "nt"):
        completed_process = subprocess.run(cmd, shell=True)
    elif (os.name == "posix"):
        completed_process = subprocess.run(cmd)
    completed_process.check_returncode()
    print("Apk unpacked in %.1f seconds" % (time.time() - start_time))

    # getting the smali files
    tracingManager.smali_files = SmaliCodeBase.SmaliCodeBase.findSmaliFiles(tracingManager.tmp_file_name)
    codebase = SmaliCodeBase.SmaliCodeBase(tracingManager.tmp_file_name)
 
    if find_path(tracingManager.tmp_file_name, args.filename) not in tracingManager.smali_files:
        print("ERROR: Smali file not found in APK.")
        #exit(1)

    if (args.register[0] != "v" and args.register[0] != "p") or not args.register[1:].isdigit():
        print("ERROR: Register input is not a valid register.")
        exit(1)

        
    forward_tracing("Lorg/telegram/messenger/SendMessagesHelper;", int(args.line_number), args.register, tracingManager, codebase)

    html_graph = generate_directed_graph(tracingManager.edges)
    write_html_file(html_graph)

    #the following code tests it without the APK file so that lines can be easily edited
    #forward_tracing(args.filename, int(args.line_number), args.register, [], {}, tmp_file_name)

main()

#main("SendMessagesHelper.smali", 27946, "v4")

# LOOK AT
# NEW ITERATION WITH /tmp/apkOutput_45yq44ko/smali_classes4/org/telegram/messenger/SecretChatHelper.smali 6501 Lorg/telegram/tgnet/TLRPC$MessageMedia;->last_name:Ljava/lang/String
# NEW ITERATION WITH /tmp/apkOutput_45yq44ko/smali_classes4/org/telegram/messenger/SecretChatHelper.smali 6505 Lorg/telegram/tgnet/TLRPC$MessageMedia;->first_name:Ljava/lang/String
# MAKE STATEMENT TO PREVENT GOING TO THE SAME LINE OF A FILE TWICE

# WHEN OVERWRITE HAPPENS WITH I INSTRUCTION DON'T RUN GREP FOR THE INSTANCE VARIABLE