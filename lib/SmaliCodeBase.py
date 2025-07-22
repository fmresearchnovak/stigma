
import glob
import os
import re
import random

from lib import SmaliClassDef
from lib import SmaliMethodDef
from lib import StigmaStringParsingLib
from lib import SmaliAssemblyInstructions
from lib.SmaliMethodDef import SmaliMethodSignature

def get_function_name(line_number, lines):
    match_object = re.match(StigmaStringParsingLib.BEGINS_WITH_DOT_METHOD, lines[line_number])
    while(match_object == None):
        line_number -= 1
        match_object = re.match(StigmaStringParsingLib.BEGINS_WITH_DOT_METHOD, lines[line_number])
    method_signature_str = lines[line_number].replace("\n", "")
    return method_signature_str, line_number

def find_smali_method_def_obj(method_signature_str, smali_class):
    method_index = 0
    #figure out how to use curr_Method.get_name
    curr_method = smali_class.methods[method_index]
    signature = SmaliMethodSignature(method_signature_str, smali_class.get_fully_qualified_name())

    while(curr_method != signature):
        method_index += 1
        curr_method = smali_class.methods[method_index]

    return curr_method

def translate_p_registers_in_invoke(registers, instruction, codebase):
    name = instruction.get_owning_class_name()
    scd = codebase.get_class_from_fully_qualified_name(name)
    if scd == None:
        return
    fqc = instruction.get_fully_qualified_call()
    smd = scd.get_method_by_fully_qualified_name(fqc)
    LOCALS = smd.get_locals_directive_num()

    static = False
    if "static" in str(instruction):
        static = True

    new_registers = []
    for i in range(len(registers)):
        if str(registers[i])[0] == "p":
            parameter_index = i + int(static)
            new_location = "v" + str(parameter_index + LOCALS)
            new_registers.append(new_location)
        if str(registers[i])[0] == "v":
            new_registers.append(registers[i])
    
    return new_registers

def translate_v_registers_adding_edge(registers, instruction, codebase):

    pass

    '''
    name = instruction.get_owning_class_name()
    scd = codebase.get_class_from_fully_qualified_name(name)
    if scd == None:
        return
    fqc = instruction.get_fully_qualified_call()
    smd = scd.get_method_by_fully_qualified_name(fqc)
    LOCALS = smd.get_locals_directive_num()


    new_registers = []


    for i in range(len(registers)):
        if registers[i].number() > LOCALS:
            new_number = registers[i].number() - LOCALS
            new_location = "p" + str(new_number)
            new_registers.append(new_location)
        else:
            new_registers.append(registers[i])

    return new_registers
    '''

def translate_registers_to_new_method(previous_registers, instruction, codebase):
    # Step 1: Get amount of locals. The registers will be placed after all the designated locals
    name = instruction.get_owning_class_name()
    scd = codebase.get_class_from_fully_qualified_name(name)
    if scd == None:
        return
    fqc = instruction.get_fully_qualified_call()
    smd = scd.get_method_by_fully_qualified_name(fqc)
    LOCALS = smd.get_locals_directive_num()

    # Step 2: Determine whether the method is static or not. Static: p0 = self, so add 1 more to the register number
    static = False
    if "static" in str(instruction):
        static = True

    # Step 3: Get the new register types, determine if there needs to be two registers representing a longer value

    # Step 4: Iterate through all registers and translate them to new registers
    new_registers = []
    for i in range(len(previous_registers)):
        previous_register = previous_registers[i]
        index = i
        new_number = index + LOCALS + int(static)
        new_location = "v" + str(new_number)
        new_registers.append(new_location)
    
    return new_registers

class SmaliCodeBase():
    ''' This class represents the entire code base of a smali project. '''

    def __init__(self, path_to_directory):
        ''' This class represents the entire code base of a smali project.
        Parameters:
           path_to_directory (str): The absolute path to the directory containing the smali files
        '''
        file_paths = SmaliCodeBase.findSmaliFiles(path_to_directory)
        #print("TEST")
        #print(path_to_directory)


        # getting list of all classes in this project
        self.class_names = []
        for path in file_paths:
            self.class_names.append(SmaliClassDef.SmaliClassDef.extract_class_name_from_file(path))


        # for analytics
        self.comparison_instruction_count = 0
        self.not_enough_registers_count = 0

        # build the SCD objects in parallel to speed it up
        self.classes = self._loadSCDs(file_paths)

        
    @staticmethod
    def findSmaliFiles(path):
        ''' Find all the smali files in the given directory and return their absolute paths.
        Parameters:
           path (str): The absolute path to the directory containing the smali files
        Returns:
           A list of absolute file paths to all the smali files in the given directory
        '''
        # This gets all the files that end in ".smali" from the entire
        # directory give (the whole app).
        # Essentially it returns "the code the developer actually wrote"


        # TODO: make this OS agnostic by using os.path or something
        # TODO: consider how to cache this list (it's a static method and we might need to rescan the directory)
        relevantFilePaths = glob.glob(path + '/**/*.smali', recursive=True) 


        # This is just a quick sanity test.
        if (len(set(relevantFilePaths)) != len(relevantFilePaths)):
            print("There are duplicates!!")
            for item in relevantFilePaths:
                print(item)

            exit(1);
        # end of sanity test

        return relevantFilePaths
    
    def findAPK(apk):
        if (not os.path.exists(apk)):
            print("Input file (" + apk + ") was not found or was not readable.")
            exit(1)
        return apk

    def get_class_from_fully_qualified_name(self, filename):
        '''This function returns a SmaliClassDef for a given file path if it is found in this SmaliCodeBase
        Parameters:
            filename:The name of the desired file, a string
            Example: "Lorg/util/messenger/RandomClassName;"
        Returns:
            A SmaliClassDef object with the given file path
        '''

        for c in self.classes:
            #print(c.get_fully_qualified_name())
            #print(filename)
            if c == filename:
                return c
        return None
        

    def _loadSCDs(self, list_of_paths):
        ''' This function loads all the smali classes from disk into memory.
        It creates a list of SmaliClassDef objects, one for each smali class file.
        
        Parameters:
           list_of_paths (list of str): The absolute file paths of each and every smali class file
        
        Returns:
           A list of SmaliClassDef objects
        '''

        SCDs = []

        for path in list_of_paths:
            try:
                scd = SmaliClassDef.SmaliClassDef(path)

                scd.internal_class_names = self.class_names
                # analytics stuff
                self.comparison_instruction_count = self.comparison_instruction_count + scd.get_num_comparison_instructions()
                for every_method in scd.methods:
                    self.not_enough_registers_count += every_method.not_enough_free_registers_count

                SCDs.append(scd)

            except Exception as e:
                print("Error loading smali class from path: " + path)
                print("Error message: " + str(e))
                raise e




        return SCDs



class SmaliExecutionIterator():
    ''' This class is used to iterate over an entire Smali Assembly Code Base in the same way the control flow would
    In basic blocks it iterates line by line
    When encountering any sort of jump (goto, invoke-*, return) it will follow those jumps to a new location in the code.
    
    TODO:
    Branches (if, try/catch, switch) are to be determined / not yet implemented
    filled-new-array might span multiple lines, but it isn't a jump.  This is to be determined / not yet implemented.

    '''
    def __init__(self, SCB, starting_point_file_path, starting_point_linenumber, tracingManager, locations_visited = []):
        '''Constructor for SmaliExecutionIterator.
        Parameters:
            SCB: The code base we wish to iterate through, a SmaliCodeBase object. 
            starting_point_filename: The file in which we wish to start iterating in, a string.
            starting_point_linenumber: The line number in the given file at which we want to start iterating from, an int.
        '''

        # lines_visited ({})
        # cur_class (SmaliClassDef object)
        # cur_text ([str])
        # iter_idx (int)
        # function_call_stack ([])
        
        # already visited lines and methods in the recursion go here
        self.locations_visited = locations_visited

        self.filename = starting_point_file_path.split("/")[-1][:-1] + ".smali"
        self.codebase = SCB
        #print(starting_point_file_path)
        self.cur_class = SCB.get_class_from_fully_qualified_name(starting_point_file_path)
        
        if(self.cur_class == None):
            raise Exception("Invalid filename: " + str(starting_point_file_path))
        self.cur_class_text = self.cur_class.raw_text
        
        # Iterator's index based on starting_point_linenumber
        if(starting_point_linenumber > len(self.cur_class.raw_text) or starting_point_linenumber < 1):
            raise Exception("Invalid starting point: " + str(starting_point_linenumber))
        self.iter_idx = starting_point_linenumber-1

        self.cur_line_to_return = None

        self.smali_execution_iterator = None

        self.try_start_stack = []
        self.file_path = starting_point_file_path

        self.tracing_manager = tracingManager

        self.ID = random.randint(0, 1000000)

        print("SmaliExecutionIterator (ID: " + str(self.ID) + " created for " + str(self.cur_class) + ":" + str(self.iter_idx))



    def __iter__(self):
        '''Establishes the iterator.'''
        # Note: the tterator index is established in __init__(self) above.
        return self
        

    def __next__(self):
        '''Returns the current line at self.idx as a SmaliAssemblyInstruction object. When faced with a jump instruction, such as goto or invoke, self.idx will move down to the destination.
        Returns:
            A SmaliAssemblyInstruction object representing the instruction.
        '''

        # upon an invoke statement, take a new iterator and call next on it and return its value
        if(self.smali_execution_iterator != None):
            try:
                return self.smali_execution_iterator.__next__()
            except StopIteration:
                self.smali_execution_iterator = None

        if(self.iter_idx >= len(self.cur_class_text)):
            raise StopIteration

        print("SEI (id:" + str(self.ID) + ").__next__() tracking " + str(self.tracing_manager.locations_to_check))
        #print("NEW ITERATION")
        print("file name: " + self.filename + " at index " + str(self.iter_idx))
        cur_line = self.cur_class_text[self.iter_idx]
        print("Line " + str(self.iter_idx + 1) + ": " + cur_line + "(" + self.file_path + ")")
        # Step #1, store the "current" line to return to user
        # cur_line is a string, create a SmaliAssemblyInstructions object
        

        match_object = re.match(StigmaStringParsingLib.BEGINS_WITH_DOT_END_METHOD, cur_line)
        if match_object != None:
            raise StopIteration

        self.locations_visited.append(cur_line)
        #print("LINE " + str(self.iter_idx + 1) + ": " + cur_line)
        function, function_line_number = get_function_name(self.iter_idx, self.cur_class_text)
        method_def_obj = find_smali_method_def_obj(function, self.cur_class)
        method_def_obj = self.cur_class.get_method_by_fully_qualified_name(method_def_obj)
        #print("FUNCTION")
        #method_def_obj = find_smali_method_def_obj(function, self.cur_class, self.filename)
        self.tracing_manager.current_method = str(method_def_obj)
        cur_line_global = method_def_obj.dereference_p_to_v_numbers(cur_line) # could just do this to every method in the whole class

        cur_line_obj = None
        try:
            cur_line_obj = SmaliAssemblyInstructions.from_line(cur_line_global)
        except SyntaxError:
            self.iter_idx += 1
            return self.cur_line_to_return

        self.cur_line_to_return = [cur_line_obj]

        # Step #2, determine whether the current line could have a move result (such as an invoke instruction)
        if re.search(StigmaStringParsingLib.BEGINS_WITH_INVOKE, cur_line) is not None:
            #print(cur_line + " COULD HAVE SUBSEQUENT MOVE RESULT")
            # Move iter_idx down to the next line to check whether it is a move_result
            # Skip the blank line
            self.iter_idx += 1

            # ...but not if it's the end of the class
            if(self.iter_idx >= len(self.cur_class_text)):
                return self.cur_line_to_return

            # Get the text of this next line
            next_line = self.cur_class_text[self.iter_idx]
            #print("RESULT LINE " + str(self.iter_idx + 1) + ": " + next_line)

            # Check if the line is 1. not a valid individual instruction by itself and 2. not a move_result
            while(not StigmaStringParsingLib.is_valid_instruction(next_line) \
            and re.search(StigmaStringParsingLib.BEGINS_WITH_MOVE_RESULT, next_line) is None):
                self.iter_idx += 1

                if(self.iter_idx >= len(self.cur_class_text)):
                    return self.cur_line_to_return

                next_line = self.cur_class_text[self.iter_idx]
                print(next_line)
                #print("RESULT LINE " + str(self.iter_idx + 1) + ": " + next_line)

            if(re.search(StigmaStringParsingLib.BEGINS_WITH_MOVE_RESULT, next_line) is not None):
                function, function_line_number = get_function_name(self.iter_idx, self.cur_class_text)
                method_def_obj = self.cur_class.get_method_by_name(function.split(" ")[-1].split("(")[0])
                next_line_global = method_def_obj.dereference_p_to_v_numbers(next_line)
                self.cur_line_to_return.append(SmaliAssemblyInstructions.from_line(next_line))
            else:
                #print("NO MOVE RESULT FOUND")
                self.iter_idx -= 2
        
        '''
        GOTO INSTRUCTION
        - Get the destination of the instruction, a new line
        - Make iter_idx the new line's index
        '''
        if(isinstance(cur_line_obj, SmaliAssemblyInstructions.GOTO)):
            line_no = cur_line_obj.get_line_number_of_destination(function_line_number, self.cur_class_text)

            if method_def_obj.get_full_location(line_no, self.cur_class_text) in self.locations_visited:
                self.iter_idx += 1
                return self.cur_line_to_return
            else:
                self.locations_visited.append(method_def_obj.get_full_location(line_no, self.cur_class_text))

            self.iter_idx = line_no
            #self.try_start_stack = []

        '''
        INVOKE INSTRUCTION
        - Find the smali file and line containing the method declaration
        - Create a new SmaliExecutionIterator for that file
        - Slicing.py will handle any register moves
        '''
        if(isinstance(cur_line_obj, SmaliAssemblyInstructions._INVOKE_INSTRUCTION)):
            self.iter_idx += 1

            # first, look for the register
            # then, look for if it has a different name due to the .locals
            # then, look for a implicit pass through a range
            '''if not found_register:
                
                if isinstance(cur_line_obj, SmaliAssemblyInstructions._PARAMETER_RANGE_INSTRUCTION):

                return self.cur_line_to_return'''
            
            # get the destination of the invoke instruction (the method to look for)
            method_name = cur_line_obj.get_destination()
            #print("METHOD NAME IS " + method_name)

            # class filename of where the method is
            # TO DO: EXTERNAL NON-SMALI FILES, CURRENTLY THE CODE DOESN'T KNOW WHAT TO DO
            file_path = cur_line_obj.get_owning_class_name()
            #print("FILE NAME IS " + file_name)
            
            next_class = self.codebase.get_class_from_fully_qualified_name(file_path)

            if next_class == None:
                #print("EXTERNAL METHOD, IGNORE FOR NOW")
                return self.cur_line_to_return
            
            '''for some_class in possible_next_classes:
                full_name = some_class.get_fully_qualified_name()[1:-1] + ".smali"

                if file_path == full_name and y:

                if file_path == full_name:
                    next_class = some_class
                    break
                else:
                    print(full_name + " is not the right smali file.")
                    y = True'''
                
            next_class_text = next_class.raw_text

            line_no = 0
            found = False
            new_line = ""

            for line in next_class_text:
                line_no += 1
                #print(str(line_no) + ": " + line)
                if method_name in line and ".method" in line:
                    found = True
                if found and StigmaStringParsingLib.is_valid_instruction(line):
                    new_line = line
                    break
                # ALLOW .LOCALS
            
            '''instruction = SmaliAssemblyInstructions.from_line(cur_line)
            name = instruction.get_owning_class_name()
            scd = self.tracing_manager.codebase.get_class_from_fully_qualified_name(name)
            if scd == None:
                return self.cur_line_to_return
            fqc = instruction.get_fully_qualified_call()
            smd = scd.get_method_by_fully_qualified_name(fqc)
            LOCALS = smd.get_locals_directive_num()

            # get the types of each parameters, longs (J) will take up two registers

            # determine whether it is static or non-static
            non_static = False
            if "static" not in cur_line:
                non_static = True

            # change any p numbers to v numbers in the invoke statement
            current_line_registers = cur_line_obj.get_registers()
            unlocalized_line = cur_line

            for i in range(len(current_line_registers)):
                if str(registers[i])[0] == "p":
                    parameter_index = i + int(non_static)
                    new_location = "v" + str(parameter_index + LOCALS)
                    unlocalized_line.replace(register, new_location)
            
            unlocalized_line_obj = SmaliAssemblyInstructions.from_line(unlocalized_line)
            # expand invoke-ranges
            
            if isinstance(unlocalized_line_obj, SmaliAssemblyInstructions.INVOKE_DIRECT_RANGE) or isinstance(unlocalized_line_obj, SmaliAssemblyInstructions.INVOKE_STATIC_RANGE) or isinstance(unlocalized_line_obj, SmaliAssemblyInstructions.INVOKE_VIRTUAL_RANGE):
                range_registers = unlocalized_line_obj.get_registers()
                first = str(range_registers[0])
                last = str(range_registers[2])
                
                first_num = int(first[1:])
                last_num = int(last[1:])

                new_registers = []
                for i in range(first_num, last_num):
                    new_registers.append("v" + str(i))
                
                start = unlocalized_line.index("{")
                end = unlocalized_line.index("}")


                unlocalized_line[start + 1:end - 1] = ", ".join(new_registers)
                unlocalized_line_obj = SmaliAssemblyInstructions.from_line(unlocalized_line)
            '''
            tracked_in_line = False
            registers = cur_line_obj.get_registers()
            new_registers = translate_p_registers_in_invoke(registers, cur_line_obj, self.codebase)
            for register in self.tracing_manager.locations_to_check:
                for parameter in new_registers:
                    if register == parameter:
                        tracked_in_line = True

            if not tracked_in_line:
                return self.cur_line_to_return

            #self.cur_line_to_return = [unlocalized_line_obj]

            if method_def_obj.get_full_location(line_no, next_class_text) in self.locations_visited:
                self.iter_idx += 1
                return self.cur_line_to_return
            else:
                self.locations_visited.append(method_def_obj.get_full_location(line_no, next_class_text))

            self.smali_execution_iterator = SmaliExecutionIterator(self.codebase, file_path, line_no, self.tracing_manager, self.locations_visited)
            self.smali_execution_iterator.try_start_stack = self.try_start_stack
            self.smali_execution_iterator.file_path = file_path
            print("SEI (ID:" + str(self.ID) + ") created new SEI with ID:" + str(self.smali_execution_iterator.ID))

        '''
        IF THEN JUMP INSTRUCTION
        - Get the destination of the if statement
        - Create a SmaliExecutionIterator for the destination assuming that the if statement returns true
        - The result of forward tracing through the if statement will be stored in a seperate list, will be different than assuming that the statement is false
        - Handles possible infinite loops
        '''
        if(isinstance(cur_line_obj, SmaliAssemblyInstructions._TWO_REG_EQ) or isinstance(cur_line_obj, SmaliAssemblyInstructions._ONE_REG_EQ_ZERO)):
            self.locations_visited.append([str(cur_line_obj), self.filename, self.iter_idx])
            self.iter_idx += 1
            destination = cur_line_obj.get_destination()
            #("ASSUMING STATEMENT IS TRUE")
            #print("Destination: " + destination)

            line_no = function_line_number
            found = False

            line = ""
            while ":" + destination != line.lstrip().replace("\n", ""):
                #print("LINE = " + line + " AT INDEX " + str(line_no + 1))
                line_no += 1
                line = self.cur_class_text[line_no]
            #print("FOUND LINE = " + line + " AT INDEX " + str(line_no + 1))
            #print("NEXT LINE AT INDEX " + str(line_no + 1) + ": " + str(line))
            if method_def_obj.get_full_location(line_no, self.cur_class_text) in self.locations_visited:
                self.iter_idx += 1
                return self.cur_line_to_return
            else:
                self.locations_visited.append(method_def_obj.get_full_location(line_no, self.cur_class_text))
            
            print("New file: " + self.file_path + " (" + str(line_no) + ")")
            self.smali_execution_iterator = SmaliExecutionIterator(self.codebase, self.file_path, line_no, self.tracing_manager, self.locations_visited)
            self.smali_execution_iterator.try_start_stack = self.try_start_stack
            print("SEI (ID:" + str(self.ID) + ") created new SEI with ID:" + str(self.smali_execution_iterator.ID))

        '''
        RETURN INSTRUCTION
        - Move self.iter_idx back there, the line being already visited will analyze the return result instead
        - Slicing.py will determine if any register changes have occured
        - If previous_positions is empty, exit the file completely
        '''
        if(isinstance(cur_line_obj, SmaliAssemblyInstructions.RETURN_INSTRUCTION)):
            print("RETURNING FROM " + self.filename)
            print(self.tracing_manager.get_edges())
            #input("")
            for location in self.tracing_manager.locations_to_check:
                print(location)
                print(method_def_obj)
                #input("ADDING REMOVED TO " + str(location) + " IN FUNCTION " + str(method_def_obj))
                self.tracing_manager.add_removed_to_node(location, str(method_def_obj))
            '''
            self.tracing_manager.locations_to_check = self.tracing_manager.stack_locations_to_check.pop(0)

            # if the return statement returns the tracked value
            if cur_line_obj.get_registers()[0] in self.tracing_manager.locations_to_check:
                # if there are pending move_results
                if self.tracing_manager.cur_move_result_destinations != []:
                    destination = self.tracing_manager.cur_move_result_destinations.pop(0)
                    if destination != "":
                        self.tracing_manager.locations_to_check.append(destination)'''
            raise StopIteration

        '''
        TRY START LABEL
        - Sets self.try_start_stack to the current line
        - TO DO: multiple try starts, make sure that the try end ends the correct one
        '''
        if(isinstance(cur_line_obj, SmaliAssemblyInstructions.TRY_START_STIGMA_LABEL)):
            #print(cur_line)
            self.try_start_stack.append(cur_line_obj.get_num())
            self.iter_idx += 1
            return self.cur_line_to_return

        '''
        TRY END LABEL
        - Clears self.try_start_stack
        - doesn't work so just ignored for now
        '''
        if(isinstance(cur_line_obj, SmaliAssemblyInstructions.TRY_END_STIGMA_LABEL)):
            self.iter_idx += 1
            '''print(cur_line)
            print(self.try_start_stack)

            index = len(self.try_start_stack) - 1
            while self.try_start_stack[index] != cur_line_obj.get_num():
                index -= 1
            self.try_start_stack.pop(index)

            self.iter_idx += 1
            '''

        '''THROW INSTRUCTIONS
        - If self.try_start_stack is not "none", jump immediately to the closest catch/catchall with the try_start
        - doesn't work so the iteration just ends
        '''
        if(isinstance(cur_line_obj, SmaliAssemblyInstructions.THROW)):
            raise StopIteration
            '''


            if len(self.try_start_stack) != 0:
                self.try_start_stack.pop()
            else:
                raise StopIteration


            match_object = re.match(StigmaStringParsingLib.BEGINS_WITH_DOT_CATCH, cur_line)
            if len(self.try_start_stack) == 0: # unhandled exception
                raise StopIteration
            
            if match_object != None or self.try_start_stack[-1] not in cur_line:
                self.iter_idx += 1
                cur_line = self.cur_class_text[self.iter_idx]
                match_object = re.match(StigmaStringParsingLib.BEGINS_WITH_DOT_CATCH, cur_line)
            self.iter_idx += 1'''
            
        '''CATCH AND CATCHALL INSTRUCTIONS
        - Ignored if self.try_start_stack is "none"
        - If self.try_start_stack is not "none" then this means that the code is testing what happens when an exception is thrown
        - Jump to the destination of the .catch/.catchall
        '''
        if(isinstance(cur_line_obj, SmaliAssemblyInstructions.CATCH_DIRECTIVE) or isinstance(cur_line_obj, SmaliAssemblyInstructions.CATCHALL_DIRECTIVE)):
            #if self.try_start_stack != "none" and self.try_start_stack in cur_line:
            self.iter_idx += 1

        if self.try_start_stack != "none":
            '''OTHER INSTRUCTIONS WHILE INSIDE A TRY_START
            - First, test if the instruction can throw an exception. If it cannot, do nothing and continue as usual.
            - 
            '''
            self.iter_idx += 1
        else: # no jumps, just move iter_idx down to the next immediate line
            self.iter_idx += 1
        
        if self.tracing_manager.locations_to_check == []:
            print("RETURNING FROM " + self.filename)
            #for i in self.tracing_manager.stack_locations_to_check[0]:
            self.tracing_manager.locations_to_check = self.tracing_manager.stack_locations_to_check.pop(0)
            raise StopIteration
        
        return self.cur_line_to_return

def tests():
    print("Testing SmaliCodeBase")

    # Test 1: Create a SmaliCodeBase object and check if it loads classes correctly
    scb = SmaliCodeBase("test")
    print("LENGTH " + str(len(scb.classes)))
    assert(len(scb.classes)  == 75)
    assert("Landroid/support/v4/util/ContainerHelpers;" in scb.class_names);

    # Check the class names match SCB objects created
    for i in range(0, len(scb.class_names)):
        assert(isinstance(scb.classes[i], SmaliClassDef.SmaliClassDef))

        # Put the SmaliClassDef on the LHS so that we invoke the __eq__ method of SmaliClassDef
        assert(scb.classes[i] == scb.class_names[i])


    main = scb.get_class_from_fully_qualified_name("Main.smali")
    assert(main.get_fully_qualified_name() == "Ledu/fandm/enovak/leaks/Main;")


    #TODO: Write tests for the ExecutionIterator (see the tests() for SmaliCodeIterator)


    print("ALL SmaliCodeBase TESTS PASSED")


if __name__ == "__main__":
    tests()