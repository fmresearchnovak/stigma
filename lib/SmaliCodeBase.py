
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
		
		
	def __iter__(self):
		'''Establishes the iterator.'''
		# Note: the tterator index is established in __init__(self) above.
		return self
		

	def __next__(self):
		'''Returns the next instruction via the iterator.  Follows jumps like goto and invoke and return instructions
		Returns:
			A SmaliAssemblyInstruction object representing the instruction.
		'''

		# upon an invoke statement, take a new iterator and call next on it and return its value

		if(self.iter_idx >= len(self.cur_class_text)):
			raise StopIteration
		
		# Step #1, store the "current" line to return to user
		# might be a string, and it might be a SmaliAssemblyInstruction.py Object
		cur_line = self.cur_class_text[self.iter_idx]
		cur_line_str = str(cur_line)


		# Step #1A, make this line as visited
		if(cur_line_str in self.is_visited_map):
			self.is_visited_map[cur_line_str]  += 1
		else:
			self.is_visited_map[cur_line_str] = 1


		# Step #2, compute the next line
		self.iter_idx += 1

		next_line = self.cur_class_text[self.iter_idx]
		next_line_str = str(next_line)

		print(cur_line_str)

		# handle multiple instructions on one line
		function = get_function_name(self.iter_idx, self.cur_class_text)
		method_def_obj = find_smali_method_def_obj(function, self.cur_class, self.filename)
		print("cur line str: " + cur_line_str)
		cur_line_str_global = method_def_obj.dereference_p_to_v_numbers(cur_line_str)
		print("cur line str global: " + cur_line_str_global)
		self.cur_line_to_return = [SmaliAssemblyInstructions.from_line(cur_line_str_global)]
		
		print(self.cur_class_text[self.iter_idx])

		if(StigmaStringParsingLib.could_have_a_subsequent_move_result(cur_line_str)):
			self.iter_idx += 1

			if(self.iter_idx >= len(self.cur_class_text)):
				return self.cur_line_to_return

			next_line = self.cur_class_text[self.iter_idx]
			next_line_str = str(next_line)

			while(not StigmaStringParsingLib.is_valid_instruction(next_line_str) \
			and re.search(StigmaStringParsingLib.BEGINS_WITH_MOVE_RESULT, next_line_str) is None):
				first = str(self.cur_line_to_return[0])
				#print("first = $" + first + "$")
				#print("next line str = $" + next_line_str + "$")
				self.cur_line_to_return = [SmaliAssemblyInstructions.from_line(first), SmaliAssemblyInstructions.from_line(next_line_str)]
				self.iter_idx += 1

				if(self.iter_idx >= len(self.cur_class_text)):
					return self.cur_line_to_return

				next_line = self.cur_class_text[self.iter_idx]
				next_line_as_string = str(next_line)

				print(self.cur_line_to_return)
				print(self.iter_idx)

			if(re.search(StigmaStringParsingLib.BEGINS_WITH_MOVE_RESULT, next_line_str) is not None):
				self.cur_line_to_return.append(next_line)
			else:
				self.iter_idx -= 1
			
			print(self.cur_line_to_return)

		else:
			next_line = SmaliAssemblyInstructions.from_line(cur_line_str)

			'''JUMP INSTRUCTION
			- Get the destination of the instruction, a new line
			- Make iter_idx the new line's index
			- Find the instruction object version of the line and return it
			'''
			if(isinstance(next_line, SmaliAssemblyInstructions.GOTO)):
				destination = next_line.get_destination()
				print("Destination: " + destination)
				input("here")
				new_idx = self.iter_idx
				line = ""
				while ":" + destination != line.lstrip().replace("\n", ""):
					new_idx += 1
					line = self.cur_class_text[new_idx]
					print(line)
				input("found")
				self.cur_line_to_return = [SmaliAssemblyInstructions.from_line(line)]
				self.iter_idx = new_idx
			else:
				function = get_function_name(self.iter_idx, self.cur_class_text)
				method_def_obj = find_smali_method_def_obj(function, self.cur_class, self.filename)
				print("next line str: " + next_line_str)
				next_line_str_global = method_def_obj.dereference_p_to_v_numbers(next_line_str)
				print("next line str global: " + next_line_str_global)
				self.cur_line_to_return = [SmaliAssemblyInstructions.from_line(next_line_str_global)]

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