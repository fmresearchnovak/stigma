
import glob
import os
import re

from lib import SmaliClassDef
from lib import SmaliMethodDef
from lib import StigmaStringParsingLib
from lib import SmaliAssemblyInstructions

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
    signature = SmaliMethodDef.SmaliMethodSignature(method_signature_str, "Lorg/telegram/messenger/SendMessagesHelper;")

    while(curr_method != signature):
        method_index += 1
        curr_method = smali_class.methods[method_index]

    return curr_method

class SmaliCodeBase():
	''' This class represents the entire code base of a smali project. '''

	def __init__(self, path_to_directory):
		''' This class represents the entire code base of a smali project.
		Parameters:
		   path_to_directory (str): The absolute path to the directory containing the smali files
		'''
		file_paths = SmaliCodeBase.findSmaliFiles(path_to_directory)
		print("TEST")
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

	def get_class_from_base_filename(self, filename):
		'''This function returns a SmaliClassDef for a given filename if it is found in this SmaliCodeBase
		Parameters:
			filename:The name of the desired file, a string
			Example: "RandomClassName.smali"
		Returns:
			A SmaliClassDef for the given file or None
		'''

		for c in self.classes:
			basename = os.path.basename(c.file_name) 
			if(basename == filename):
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
	def __init__(self, SCB, starting_point_filename, starting_point_linenumber):
		'''Constructor for SmaliExecutionIterator.
		Parameters:
			SCB: The code base we wish to iterate through, a SmaliCodeBase object. 
			starting_point_filename: The file in which we wish to start iterating in, a string.
			starting_point_linenumber: The line number in the given file at which we want to start iterating from, an int.
		'''

		# is_visited_map ({})
		# cur_class (SmaliClassDef object)
		# cur_text ([str])
		# iter_idx (int)
		# function_call_stack ([])
		
		self.is_visited_map = {}
		self.filename = starting_point_filename
		self.codebase = SCB
		self.cur_class = SCB.get_class_from_base_filename(starting_point_filename)
		if(self.cur_class == None):
			raise Exception("Invalid filename: " + str(starting_point_filename))
		self.cur_class_text = self.cur_class.raw_text
		
		# Iterator's index based on starting_point_linenumber
		if(starting_point_linenumber > len(self.cur_class.raw_text) or starting_point_linenumber < 1):
			raise Exception("Invalid starting point: " + str(starting_point_linenumber))
		self.iter_idx = starting_point_linenumber-1

		self.function_call_stack = []

		# I made this an instance variable so that the correct line is stored
		self.cur_line_to_return = None

		# stores the previous self.iteridxs to implement the return instructions. stacks from left to right
		self.previous_positions = []
		
		
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

		if(self.iter_idx >= len(self.cur_class_text)):
			raise StopIteration
		
		# Step #1, store the "current" line to return to user
		# cur_line is a string, create a SmaliAssemblyInstructions object
		cur_line = self.cur_class_text[self.iter_idx]
		print("LINE " + str(self.iter_idx + 1) + ": " + cur_line)
		function = get_function_name(self.iter_idx, self.cur_class_text)
		method_def_obj = find_smali_method_def_obj(function, self.cur_class, self.filename)
		cur_line_global = method_def_obj.dereference_p_to_v_numbers(cur_line)

		# WILL BE RETURNED, ARRAY OF INSTRUCTION OBJECTS
		cur_line_obj = SmaliAssemblyInstructions.from_line(cur_line_global)
		self.cur_line_to_return = [cur_line_obj]

		# Step #2, make this line as visited
		if(cur_line in self.is_visited_map):
			self.is_visited_map[cur_line]  += 1
		else:
			self.is_visited_map[cur_line] = 1

		# Step #3, determine whether the current line could have a move result (such as an invoke instruction)
		if(StigmaStringParsingLib.could_have_a_subsequent_move_result(cur_line)):
			print(cur_line + " COULD HAVE SUBSEQUENT MOVE RESULT")
			# Move iter_idx down to the next line to check whether it is a move_result
			# Skip the blank line
			self.iter_idx += 1

			# ...but not if it's the end of the class
			if(self.iter_idx >= len(self.cur_class_text)):
				return self.cur_line_to_return

			# Get the text of this next line
			next_line = self.cur_class_text[self.iter_idx]
			print("RESULT LINE " + str(self.iter_idx + 1) + ": " + next_line)
			input("")

			# Check if the line is 1. not a valid individual instruction by itself and 2. not a move_result
			while(not StigmaStringParsingLib.is_valid_instruction(next_line) \
			and re.search(StigmaStringParsingLib.BEGINS_WITH_MOVE_RESULT, next_line) is None):
				#function = get_function_name(self.iter_idx, self.cur_class_text)
				#method_def_obj = find_smali_method_def_obj(function, self.cur_class, self.filename)
				#next_line_global = method_def_obj.dereference_p_to_v_numbers(next_line)
				#self.cur_line_to_return.append(SmaliAssemblyInstructions.from_line(next_line))

				self.iter_idx += 1

				if(self.iter_idx >= len(self.cur_class_text)):
					return self.cur_line_to_return

				next_line = self.cur_class_text[self.iter_idx]
				print("RESULT LINE " + str(self.iter_idx + 1) + ": " + next_line)

			if(re.search(StigmaStringParsingLib.BEGINS_WITH_MOVE_RESULT, next_line) is not None):
				function = get_function_name(self.iter_idx, self.cur_class_text)
				method_def_obj = find_smali_method_def_obj(function, self.cur_class, self.filename)
				next_line_global = method_def_obj.dereference_p_to_v_numbers(next_line)
				self.cur_line_to_return.append(SmaliAssemblyInstructions.from_line(next_line))
			else:
				print("NO MOVE RESULT FOUND")
				input("")
				self.iter_idx -= 2
		
		'''
		GOTO INSTRUCTION
		- Get the destination of the instruction, a new line
		- Make iter_idx the new line's index
		'''
		if(isinstance(cur_line_obj, SmaliAssemblyInstructions.GOTO)):
			input("GOTO")
			destination = cur_line_obj.get_destination()
			print("Destination: " + destination)
			input("")

			line = ""
			while ":" + destination != line.lstrip().replace("\n", ""):
				print("LINE = " + line + " AT INDEX " + str(self.iter_idx + 1))
				self.iter_idx += 1
				line = self.cur_class_text[self.iter_idx]
			print("FOUND LINE = " + line + " AT INDEX " + str(self.iter_idx + 1))
			print("NEXT LINE AT INDEX " + str(self.iter_idx + 1) + ": " + str(line))
			input("")

		'''
		INVOKE INSTRUCTION
		- Find the smali file and line containing the method declaration
		- Create a new SmaliExecutionIterator for that file
		- Slicing.py will handle any register moves
		'''
		if(isinstance(cur_line_obj, SmaliAssemblyInstructions._INVOKE_INSTRUCTION)):
			input("INVOKE")
			self.iter_idx += 1
			
			# get the destination of the invoke instruction (the method to look for)
			method_name = cur_line_obj.get_destination()
			print("METHOD NAME IS " + method_name)
			input("")

			# class filename of where the method is
			file_path = cur_line_obj.get_owning_class_name()[1:-1] + ".smali" # remove the L and the ;
			file_name = file_path.split("/")[-1]
			print("FILE NAME IS " + file_name)
			input("")
			# TO FIGURE OUT: SOMETIMES THE INVOKE GOES TO AN EXTERNAL METHOD, NOT A SMALI FILE

			next_class = self.codebase.get_class_from_base_filename(file_name)
			next_class_text = next_class.raw_text

			line_no = 0
			for line in next_class_text:
				line_no += 1
				print(str(line_no) + ": " + line)
				if method_name in line and ".method" in line:
					input("FOUND METHOD")
					break

			new_iterator = SmaliExecutionIterator(self.codebase, file_name, line_no)
			return new_iterator.__next__()

		'''
		RETURN INSTRUCTION
		- Get the previous jump instruction
		- Move self.iter_idx back there, the line being already visited will analyze the return result instead
		- Slicing.py will determine if any register changes have occured
		- If previous_positions is empty, exit the file completely
		'''
		if(isinstance(cur_line_obj, SmaliAssemblyInstructions.RETURN_INSTRUCTION)):
			if len(self.previous_positions) > 0:
				print("RETURNING TO " + str(self.previous_positions[len(self.previous_positions) - 1]))
				self.iter_idx = self.previous_positions.pop()
				input("")
			else:
				raise StopIteration

			# currently figuring out return_void, just ignoring for now
			self.iter_idx += 1

		else: # no jumps, just move iter_idx down to the next immediate line
			self.iter_idx += 1
		
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


	main = scb.get_class_from_base_filename("Main.smali")
	assert(main.get_fully_qualified_name() == "Ledu/fandm/enovak/leaks/Main;")


	#TODO: Write tests for the ExecutionIterator (see the tests() for SmaliCodeIterator)


	print("ALL SmaliCodeBase TESTS PASSED")


if __name__ == "__main__":
	tests()