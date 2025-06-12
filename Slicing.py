import sys
import re
import argparse
import subprocess
import time
import os

# SOMETHING TO REMEMBER: IMPLICIT REGISTERS GETTING OVERWRITTEN BY THEMSELVES

#current_dir = os.path.dirname(os.path.abspath(__file__))
#other_dir = os.path.join(current_dir, 'lib')
#sys.path.insert(0, other_dir)
# rewrite using __init___.py

from lib import SmaliRegister
from lib import SmaliClassDef
from lib import SmaliAssemblyInstructions
from lib import StigmaStringParsingLib
from lib import SmaliCodeIterator
from lib import SmaliCodeBase
import StigmaState

class TracingManager:

    def __init__(self):
        self.temp_APK = StigmaState.Environment().get_temp_file()
        self.tmp_file_name = StigmaState.Environment().get_temp_file().name

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

    # add edge object? add graph object?
    def add_edge(self, location, destination, line_number):
        if location in self.edges:
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
        
        raise Exception("Cannot add duplicate location: " + str(location))

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


def findAPK(apk):
    if (not os.path.exists(apk)):
        print("ERROR: Could not find APK file.")
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
    #figure out how to use curr_Method.get_name
    curr_method = smali_class.methods[method_index]

    while(str(curr_method).split("->")[1] != method_signature_str.split(" ")[2]):
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

def test_instance(instruction, location, tracingManager):
    first = False
    original_line = tracingManager.target_line
    if original_line == str(instruction).replace("\n", ""):
        first = True

    full_action = instruction.get_slicing_action(location)
    #print("ACTION = " + str(full_action))
    
    match full_action[0]:
    # change to enum
        case "ADD":
            print("ADDING NEW LOCATION " + str(full_action[1]))
            tracingManager.add_location(str(full_action[1]))
            tracingManager.add_edge(location, str(full_action[1]), tracingManager.current_line_number)
            if isinstance(instruction, SmaliAssemblyInstructions._S_INSTRUCTION):
                uses_list = grep_instances(instruction.get_instance_variable(), tracingManager)
                for use in uses_list:
                    use = use.split(":", 1)

                    file = use[0]
                    line = use[1].strip() # https://www.geeksforgeeks.org/python-remove-spaces-from-a-string/

                    line = SmaliAssemblyInstructions.from_line(line)

                    if file in tracingManager.smali_files:
                        tracingManager.add_file(file, line)
        case "REMOVE":
            if not first:
                print("REMOVING LOCATION " + str(full_action[1]))
                #tracingManager.remove_location(full_action[1])
            else:
                print("FIRST LINE, DON'T REMOVE")
        case "PART OF DATA IN":
            tracingManager.locations_with_partial_tracked_data.append([str(full_action[1]), str(full_action[1]), str(type(instruction))])
            print(tracingManager.locations_with_partial_tracked_data)
        case "CAN GET DATA FROM":
            tracingManager.locations_with_partial_tracked_data.append([str(full_action[1]), str(full_action[3]), str(type(instruction))])
            print(tracingManager.locations_with_partial_tracked_data)
        case "JUMP":
            pass
        case "RETURN":
            pass
        case "RESULT":
            pass
        case _:
            pass

def find_path(folder, filename):
    #Source: Gemini
    for root, _, files in os.walk(folder):
        if filename in files:
            return os.path.join(root, filename)
    return None

def get_lines_from_file(filename, tmp_file_name):
    file_path = find_path(tmp_file_name, filename)
    fh = open(file_path, "r")
    lines = fh.readlines()
    fh.close()
    return lines, file_path

def fix_line(line):
    return line[0].replace("\n", "")

def location_in_string_exact(location, line):
    pattern = rf"{re.escape(location)}(?!\d)"
    return bool(re.search(pattern, line))

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

def analyze_line(filename, line, tracingManager):
    tracingManager.current_line_number += 1

    for location in tracingManager.locations_to_check:
        if location_in_string_exact(location, line):
            print("----------------------------------------------------")
            print("LOCATION = " + location)
            print("LINE = " + line)
            print("DETERMINING NEW LOCATIONS...")

            instruction = SmaliAssemblyInstructions.SmaliAssemblyInstruction().from_line(line)

            test_instance(instruction, location, tracingManager)

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
        print("NEW ITERATION WITH " + new_file + " " + str(new_line_number) + " " + new_location)
        #return forward_tracing(new_file, new_line_number, new_location, files_to_search, line_directory, tmp_file_name)
        return

    else:
        # return activity_log
        return

# REWRITTEN VERSION OF FUNCTION BELOW
def forward_tracing(filename, target_line_number, target_location, tracingManager):
    print("=================================")
    print(filename)
    print("=================================")

    tmp_file_name = tracingManager.tmp_file_name

    # STEP 1: Add first location to locations_to_check
    print(target_location)
    tracingManager.add_location(target_location)

    # STEP 2: Open input file
    print(tmp_file_name)
    lines, file_path = get_lines_from_file(filename, tmp_file_name)

    # STEP 3: Get the method that the target line is in as a SmaliClassDef object
    #smali_reg = SmaliRegister.SmaliRegister(reg)
    smali_class = SmaliClassDef.SmaliClassDef(file_path)

    target_line_number -= 1
    method_signature_str = get_function_name(file_path, target_line_number, lines)
    smali_method_def_obj = find_smali_method_def_obj(method_signature_str, smali_class)
    #full_text = SmaliCodeIterator.SmaliCodeIterator(smali_method_def_obj.raw_text)

    # STEP 4: Find the text of the target line
    tracingManager.target_line = lines[target_line_number].replace("\n", "")
    if target_location not in tracingManager.target_line:
        print("ERROR: Target register not found at the given line number.")
        exit(1)
    target_line_found = False

    tracingManager.current_line_number = target_line_number

    # STEP 5: Loop through the method and get the target line
    for line in SmaliCodeIterator.SmaliCodeIterator(smali_method_def_obj.raw_text):
        if len(line) > 1:
            tracingManager.current_line_number += len(line) - 1

        line = fix_line(line)

        if tracingManager.target_line in line:
            target_line_found = True

        # STEP 6: Once the target line is found, send every line containing a location in locations_to_track to the test_instance function
        if target_line_found:
            analyze_line(filename, line, tracingManager)

    html_graph = generate_directed_graph(tracingManager.edges)
    write_html_file(html_graph)

    # STEP 8: Choose the next file to open, and add the first value to the locations to check, and find line number
    return next_iteration(tracingManager)

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
    apk_path = findAPK(args.APK)

    #temp_APK = StigmaState.Environment().get_temp_file()
    #tmp_file_name = StigmaState.Environment().get_temp_file().name

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
 
    if find_path(tracingManager.tmp_file_name, args.filename) not in tracingManager.smali_files:
        print("ERROR: Smali file not found in APK.")
        exit(1)

    if (args.register[0] != "v" and args.register[0] != "p") or not args.register[1:].isdigit():
        print("ERROR: Register input is not a valid register.")
        exit(1)

        
    forward_tracing(args.filename, int(args.line_number), args.register, tracingManager)

    #the following code tests it without the APK file so that lines can be easily edited
    #forward_tracing(args.filename, int(args.line_number), args.register, [], {}, tmp_file_name)

main()

#main("SendMessagesHelper.smali", 27946, "v4")

# LOOK AT
# NEW ITERATION WITH /tmp/apkOutput_45yq44ko/smali_classes4/org/telegram/messenger/SecretChatHelper.smali 6501 Lorg/telegram/tgnet/TLRPC$MessageMedia;->last_name:Ljava/lang/String
# NEW ITERATION WITH /tmp/apkOutput_45yq44ko/smali_classes4/org/telegram/messenger/SecretChatHelper.smali 6505 Lorg/telegram/tgnet/TLRPC$MessageMedia;->first_name:Ljava/lang/String
# MAKE STATEMENT TO PREVENT GOING TO THE SAME LINE OF A FILE TWICE

# WHEN OVERWRITE HAPPENS WITH I INSTRUCTION DON'T RUN GREP FOR THE INSTANCE VARIABLE