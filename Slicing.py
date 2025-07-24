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
from lib.SmaliAssemblyInstructions import TracingAction
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

    def get_object(self):
        if self.obj_instance is not None:
            return self.obj_instance

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
        self.removed_nodes = {}

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
        self.current_method = ""
        self.current_file = ""

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
    def add_edge(self, location, destination, method_name, origin_method_name):
        # location = origin location
        # destination = destination location
        # method_name = name of the method for the destination
        # origin_method_name = name of the method for the origin
        if method_name in self.edges:
            duplicate = False
            for entry in self.edges[method_name]:
                if entry == [location, destination, origin_method_name]:
                    duplicate = True
                    break
            if not duplicate:
                self.edges[method_name].append([location, destination, origin_method_name])
        else:
            self.edges[method_name] = [[location, destination, origin_method_name]]

    def add_removed_to_node(self, location, method_name):
        #input(method_name)
        if method_name in self.removed_nodes:
            if location not in self.removed_nodes[method_name]:
                self.removed_nodes[method_name].append(location)
        else:
            self.removed_nodes[method_name] = [location]

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

# GREP TEST: TEST FUNCTION FOR FINDING INSTANCES OF A CERTAIN VALUE THROUGHOUT THE APK CODE
def grep_test(target, path):
    cmd = ["grep", target, "-r", path]
    grep_result = subprocess.run(cmd, stdout = subprocess.PIPE)
    uses_list = str(grep_result.stdout)[2:].split("\\n")

def format_for_html_graph(item):
    # key = split by "->", take the second half, then split the first half by "/" and get the last index, then combine first half and second half
    item = str(item)
    if item[0] == "L":
        new_item = ""
        if "->" in item:
            split_by_arrow = item.split("->")
            first = split_by_arrow[0]
            second = split_by_arrow[1]
        split = first.split("/")
        new_item = split[len(split) - 1] + "-"
        new_item += second
        new_item = new_item.replace(";", "").replace("[", "arrayof:").replace("<", "").replace(">", "")
        return new_item
    else:
        return item

def generate_directed_graph(graph, removed):
    html_graph = ""

    first = True

    # How the HTML graph is generated:
    # 1. Go through each method in the graph
    # 2. Create a new subgraph heading for each method and add each edge inside
    # 3. Edges that represent an invoke to another method or a return will have the method of its DESTINATION not its ORIGIN
    # 4. If statements are diamond shaped to represent conditions and each arrow is labeled True or False

    # TO DO: Find some way to give the register's label the method name, or a representation of it
    # TO DO: Allow seperate location and destination method names

    for method in graph:
        # begin a new subgraph
        formatted_method_for_heading = format_for_html_graph(method)
        formatted_method = formatted_method_for_heading.replace("(", '-').replace(")", '-')

        html_graph += 'subgraph "' + formatted_method_for_heading + '"\n'

        for entry_index in range(len(graph[method])):
            location = graph[method][entry_index][0]
            destination = graph[method][entry_index][1]
            origin_method_name = graph[method][entry_index][2]

            formatted_location = format_for_html_graph(location)
            formatted_destination = format_for_html_graph(destination)
            formatted_origin_method_name = str(format_for_html_graph(origin_method_name).replace("(", '-').replace(")", '-'))

            entry = ""

            if first:
                entry += str(formatted_location) + formatted_origin_method_name + '>"' + str(formatted_location) + '"]'
                first = False
            else:
                entry += str(formatted_location) + formatted_origin_method_name
            
            #print(removed)
            #input("REMOVED")
            #for a in removed[method]:
                #print(type(a))
            
            if method in removed:
                for item in removed[method]:
                    fixed_item = str(item).split(" ")[-1]
                    if fixed_item == location:
                        entry += ":::removed"
            # add an intermediate upon an invoke to a new method
            if origin_method_name != method:
                entry += " --> "
                entry += "INVOKE" + str(formatted_destination) + str(formatted_method) + "[INVOKE " + str(formatted_method) + "]:::invoke"

            entry += " --> "
            entry += str(formatted_destination) + formatted_method + '["' + str(formatted_destination) + '"]'

            if method in removed:
                for item in removed[method]:
                    fixed_item = str(item).split(" ")[-1]
                    if fixed_item == destination:
                        entry += ":::removed"

            html_graph += entry + ";\n"
        
        html_graph += "end" + "\n"

    html_graph += "classDef removed fill:#f00" + "\n"
    html_graph += "classDef invoke fill:#0f0" + "\n"
    
    #input("graph")
    #input(html_graph)

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

    method_name = str(tracingManager.current_method)
    
    match full_action[0]:
        case TracingAction.ADD:
            print("ADDING NEW LOCATION " + str(full_action[1]))
            if len(full_action) < 4:
                new_location = TracingLocation()
                new_location.set_register(full_action[1])
                tracingManager.add_location(new_location)

                localized_registers = SmaliCodeBase.translate_v_registers_adding_edge([location, full_action[1]], instruction, tracingManager.codebase)

                tracingManager.add_edge(location, full_action[1], method_name, method_name)
            else:
                new_location = TracingLocation()
                new_location.set_object_pair(full_action[1], full_action[3])
                tracingManager.add_location(new_location)

                tracingManager.add_edge(location, full_action[1], method_name, method_name)

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
        case TracingAction.REMOVE:
            if not first:
                if not isinstance(instruction, SmaliAssemblyInstructions._I_INSTRUCTION) and not isinstance(instruction, SmaliAssemblyInstructions._S_INSTRUCTION):
                    print("315 REMOVING LOCATION " + str(full_action[1]))
                    for location_obj in tracingManager.locations_to_check:
                        if location_obj == location:
                            tracingManager.remove_location(location_obj)
                            tracingManager.add_removed_to_node(location, method_name)
                    
                else:
                    print("REMOVING LOCATION " + str(full_action[1]))

                    if str(full_action[1])[0] =="L":
                        # removing instance variable
                        new_location = TracingLocation()
                        new_location.set_object_pair(full_action[1], full_action[3])
                        for location_obj in tracingManager.locations_to_check:
                            #print(location_obj)
                            #print(new_location)
                            if location_obj == new_location:
                                tracingManager.remove_location(location_obj)
                                tracingManager.add_removed_to_node(location, method_name)
                    else:
                        # removing register
                        for location_obj in tracingManager.locations_to_check:
                            if location_obj == location:
                                tracingManager.remove_location(location_obj)
                                tracingManager.add_removed_to_node(location, method_name)
                            else:
                                # if the object is removed, remove all tracked instance variables with that object
                                try:
                                    if location_obj.get_object() == location:
                                        tracingManager.remove_location(location_obj)
                                        tracingManager.add_removed_to_node(location, method_name)
                                except:
                                    pass
                            
            else:
                print("FIRST LINE, DON'T REMOVE")
        case TracingAction.PART_OF_DATA_IN:
            tracingManager.locations_with_partial_tracked_data.append([str(full_action[1]), str(full_action[1]), str(type(instruction))])
        case TracingAction.CAN_GET_DATA_FROM:
            tracingManager.locations_with_partial_tracked_data.append([str(full_action[1]), str(full_action[3]), str(type(instruction))])
        case TracingAction.INVOKE:
            try:
                result_instruction = line[1]
                tracingManager.cur_move_result_destinations.append(result_instruction.get_registers()[0])
                #print(result_instruction.get_registers()[0])
                #print(location)
                if location == result_instruction.get_registers()[0]:
                    if not first:
                        print("REMOVING LOCATION " + str(location))
                        for location_obj in tracingManager.locations_to_check:
                            if location_obj == location:
                                tracingManager.remove_location(location_obj)
                                tracingManager.add_removed_to_node(location, method_name)
                    else:
                        print("FIRST LINE, DON'T REMOVE")
            except IndexError:
                tracingManager.cur_move_result_destinations.append("") # if there is no result, the result of the invoke goes nowhere
            
            # .ADD LOCALS
            name = instruction.get_owning_class_name()
            scd = tracingManager.codebase.get_class_from_fully_qualified_name(name)
            if scd == None:
                return
            fqc = instruction.get_fully_qualified_call()
            smd = scd.get_method_by_fully_qualified_name(fqc)
            new_method_name = str(smd)
            
            parameters = instruction.get_registers()
            new_registers = SmaliCodeBase.translate_registers_to_new_method(parameters, instruction, tracingManager.codebase)

            if new_registers == None:
                return

            # this code checks whether the parameters going into the method match with any local versions of tracked registers.
            which_parameters = []
            new_parameters = []
            for i in range(len(parameters)):
                number = str(i)[1:]
                current_parameter = parameters[i]
                if str(current_parameter)[0] == "p": # dereference the local register
                    parameter_index = number + int(non_static)
                    new_location = "v" + str(parameter_index + LOCALS)
                    parameters[i] = new_location
                if location == current_parameter:
                    which_parameters.append(i)
            tracingManager.parameters_immediate = which_parameters

            # return if which_parameters is empty
            if which_parameters == []:
                print("NO TRACKED PARAMETERS FOUND, RETURNING BACK")

            # this code handles all the stuff that has to be done when a new method begins for the first time
            # such as getting new locations and moving the old list to the stack
            
            new_locations_to_check = []

            # TO DO: ENSURE THAT WHEN LONGS GO IN, TWO REGISTERS ARE TAKEN
            
            for parameter_index in tracingManager.parameters_immediate:
                new_location = new_registers[parameter_index]
                new_location_obj = TracingLocation()
                new_location_obj.set_register(new_location)
                new_locations_to_check.append(new_location_obj)
                tracingManager.add_edge(location, new_location, new_method_name, method_name)
            
            tracingManager.stack_locations_to_check.append(tracingManager.locations_to_check)
            print("STACK LOCATIONS ADD")
            print(tracingManager.stack_locations_to_check)
            tracingManager.locations_to_check = new_locations_to_check

            #input(tracingManager.get_edges())
            #input(tracingManager.stack_locations_to_check)
            #input(tracingManager.locations_to_check)
            print(tracingManager.get_edges())

            tracingManager.parameters_immediate = []

        case TracingAction.RETURN:
            # the code here will find the previous invoke from a list and determine whether the returned value is the tracked value
            # if so, add the destination of the result instruction
            # MAKE SURE THE LOCATIONS CHANGE UPON A RETURN
            for location in tracingManager.locations_to_check:
                input("testing removing nodes upon a return statement")
                tracingManager.add_removed_to_node(location, method_name)
        case _:
            pass
        
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

    instance_found = False
    for location in tracingManager.locations_to_check:
        try:
            # first, look for instance variables in the current line, if there is any
            #print(line[0].get_instance_variable())
            #print(location)
            for register in line[0].get_registers():
                    if location == register:
                        test_instance(line, location, tracingManager)
                        break
        except AttributeError:
            # next, look for registers in the locations to check
            try:
                for register in line[0].get_registers():
                    if location == register:
                        test_instance(line, location, tracingManager)
                        instance_found = True
                    # for each register, also look if they are an object of a tracked instance variable
                    # these objects could be REMOVED or copied to another register that must be ADDED
                    else:
                        try:
                            obj_instance = location.get_object()
                            if location == obj_instance:
                                test_instance(line, obj_instance, tracingManager)
                                instance_found = True
                        except AttributeError:
                            pass
                    if instance_found:
                        break
            except AttributeError:
                pass
        if instance_found:
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
def forward_tracing(target_line_number, target_location, tracingManager, codebase):
    filename = tracingManager.current_file
    print("=================================")
    print(filename)
    print("=================================")

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
            print("no locations left to trace, stopping!")
            break
    

def test_and_debug_main():
    # ARGPARSE FORMAT
    if len(sys.argv) != 5:
        print("ERROR: Five arguments required.")
        exit(1)
    
    parser = argparse.ArgumentParser(description = '''Given a line of code and a register to track, traces the contents of the register throughout the process.\n 
                                    Example usage: python3 Slicing.py someapkfile.apk Lorg/some_path_to_file 1000 v1''')

    parser.add_argument("APK", help="[IGNORED] The path to the APK file that the target file is located in.")
    parser.add_argument("filename", help="The file that contains the target line of code.  File must be in test/")
    parser.add_argument("line_number", help="Line number of the line of code containing a reference to the desired register.")
    parser.add_argument("register", help="The register that you wish to trace the data of.")

    args = parser.parse_args()


    tracingManager = TracingManager()
    tracingManager.current_file = args.filename + ";"
    tracingManager.smali_files = SmaliCodeBase.SmaliCodeBase.findSmaliFiles("testforslicing/")
    codebase = SmaliCodeBase.SmaliCodeBase("testforslicing/")
 
    #if find_path("test/", args.filename) not in tracingManager.smali_files:
    #    print("ERROR: Smali file not found in test folder!")
    #    exit(1)

    if (args.register[0] != "v" and args.register[0] != "p") or not args.register[1:].isdigit():
        print("ERROR: Register input is not a valid register.")
        exit(1)

        
    forward_tracing(int(args.line_number), args.register, tracingManager, codebase)
    print(tracingManager.get_edges())
    html_graph = generate_directed_graph(tracingManager.edges, tracingManager.removed_nodes)
    write_html_file(html_graph)
 


def main():
    # ARGPARSE FORMAT
    if len(sys.argv) != 5:
        print("ERROR: Five arguments required.")
        exit(1)
    
    parser = argparse.ArgumentParser(description = '''Given a line of code and a register to track, traces the contents of the register throughout the process.\n 
                                    Example usage: python3 Slicing.py someapkfile.apk Lorg/some_path_to_file 1000 v1''')

    parser.add_argument("APK", help="The path to the APK file that the target file is located in.")
    parser.add_argument("filename", help="The file that contains the target line of code.")
    parser.add_argument("line_number", help="Line number of the line of code containing a reference to the desired register.")
    parser.add_argument("register", help="The register that you wish to trace the data of.")

    args = parser.parse_args()
    apk_path = SmaliCodeBase.SmaliCodeBase.findAPK(args.APK)

    tracingManager = TracingManager()
    tracingManager.current_file = args.filename + ";"

    filename = args.filename + ";"

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

        
    forward_tracing(int(args.line_number), args.register, tracingManager, codebase)

    print(tracingManager.get_edges())
    html_graph = generate_directed_graph(tracingManager.edges, tracingManager.removed_nodes)
    #input(html_graph)
    write_html_file(html_graph)
    #input("removed")
    #input(tracingManager.removed_nodes)

    #the following code tests it without the APK file so that lines can be easily edited
    #forward_tracing(args.filename, int(args.line_number), args.register, [], {}, tmp_file_name)

main()
#test_and_debug_main()


#main("SendMessagesHelper.smali", 27946, "v4")

# LOOK AT
# NEW ITERATION WITH /tmp/apkOutput_45yq44ko/smali_classes4/org/telegram/messenger/SecretChatHelper.smali 6501 Lorg/telegram/tgnet/TLRPC$MessageMedia;->last_name:Ljava/lang/String
# NEW ITERATION WITH /tmp/apkOutput_45yq44ko/smali_classes4/org/telegram/messenger/SecretChatHelper.smali 6505 Lorg/telegram/tgnet/TLRPC$MessageMedia;->first_name:Ljava/lang/String
# MAKE STATEMENT TO PREVENT GOING TO THE SAME LINE OF A FILE TWICE

# WHEN OVERWRITE HAPPENS WITH I INSTRUCTION DON'T RUN GREP FOR THE INSTANCE VARIABLE