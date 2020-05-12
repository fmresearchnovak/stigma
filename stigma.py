#!/usr/bin/env python3



import sys
import os
import re

import Instrumenter as inst
import SmaliAssemblyInstructions as smali



# Some useful regular expressions 
REGEX_BEGINS_WITH_DOT = r"^\s*\." # oat "assembler" directives begin with a .dot 
REGEX_BEGINS_WITH_HASHTAG = r"^\s*\#" 
REGEX_BEGINS_WITH_COLON = r"^\s*:" # code labels (locations for branches) begin with a colon
REGEX_BLANK_LINE = r"^\s*$" 
REGEX_V_AND_NUMBERS = r"v[0-9]+" # v and numbers (e.g., v5) are general purpose registers.  I think "v" means "virtual"

REGEX_BEGINS_WITH_DOT_METHOD = r"^\.method"  # directive to indicate start of a method
REGEX_BEGINS_WITH_DOT_END_METHOD = r"^\s*\.end method" # directive to indicate end of method

REGEX_BEGINS_WITH_INVOKE = r"^invoke-"


flags = []

class SmaliClassDef():
	def __init__(self, name):
		self.class_name = name

		# These are just lists of strings
		self.header = []
		self.static_fields = []
		self.instance_fields = []

		# This is a list of SmaliMethodDef (as seen above) which aids instrumentation later
		self.methods = []

		self.instrumenter = inst.Instrumenter()


	def taint_storage_name(self, method_name, reg_name):
		global flags
		method_name = method_name.replace("<", "")
		method_name = method_name.replace(">", "")
		static_f_name = str(method_name) + "_" + str(reg_name) + "_TAINT:I"
		full_name = ".field public static " + static_f_name + "\n"

		# could be more efficient as a hash map instead of a list but that might change the order
		# AND, the number of items is small (probably < 50) so it doesn't really matter
		if full_name not in self.static_fields:
			if "-D" in flags:
				print("Creating a new storage location: " + str(full_name))
			self.static_fields.append(full_name)
			self.static_fields.append("\n")

		return static_f_name


	def is_function(self, line):
		# check this line is a method (begins with "invoke-*")
		match_object = re.match(REGEX_BEGINS_WITH_INVOKE, line)
		return match_object != None


	def is_internal_function(self, line):
		if not self.is_function(line):
			return False

		func_name = line.split(" ")[-1]
		return func_name in self.methods


	def is_external_function(self, line):		
		if not self.is_function(line):
			return False

		func_name = line.split(" ")[-1]
		return func_name not in self.methods


	def instrument(self):
		for m in self.methods:

			idx = 0
			while idx < len(m.raw_text):
				#print("line: " + m.raw_text[idx])

				# The lines of code that we add (instrument) will be instances of smali.SmaliAssemblyInstruction
				# the lines of code that are existing already will be type string
				# So, this check prevents us from instrumenting our new, additional code
				if isinstance(m.raw_text[idx], smali.SmaliAssemblyInstruction):
					idx = idx + 1
					print("is an assembly instruction check!")


				#print("--Attempting instrumentation functions--")
				#print("idx: " + str(idx) + "   line: " + str(m.raw_text[idx]))
				idx = self._do_instrumentation_plugins(m, idx)

				idx = idx + 1


	def _do_instrumentation_plugins(self, m, idx):

		for inst_method in self.instrumenter.instrumentation_methods:

			# The lines of code that we add (instrument) will always leave
			# a comment on the line before their target instruction
			# in order to indicate that the target instruction has 
			# already been addressed by instrumentation.
			# This check prevents "double" cases where two different instrumenters
			# both try to add code for the same original instruction
			#print("\n\ncur line: " + str(m.raw_text[idx]) + "   prev line: " + str(m.raw_text[idx-1])) 
			if isinstance(m.raw_text[idx-1], smali.COMMENT):
				#print("already instrumented check!")
				#print("cur line: " + str(m.raw_text[idx]) + "   prev line: " + str(m.raw_text[idx-1])) 
				idx = idx + 1


			lines_added = inst_method(self, m, idx)
			idx = idx + lines_added

		return idx






# class to represent a method definition
class SmaliMethodDef():

	def __init__(self, text):
		# should be a list of strings (lines)
		# starting from .method... and ending in ... .end method
		self.raw_text = text
		self.num_jumps = 0
		self.ORIGINAL_NUMER_REGS = self.get_locals_directive_num()
		self.reg_number_float = self.ORIGINAL_NUMER_REGS
		# There are three "register numbers"
		# 1) The ORIGINAL_NUMER_REGS 
		#		This is the number of registers this method had / used before
		#		any instrumentation
		#
		# 2) The locals_directive_num()
		#		This is the "max" or total number of unique registers
		# 		the method uses.  If a register is used and free in 
		# 		the instrumentation this goes up.  But if it is used
		#		again, this number would not go up, because the register
		#		is being RE-used.
		#		The locals_directive is checked at package time by apktool
		#
		# 3) The reg_number_float
		#		This is the register number that is ready to be re-used
		#		If a register is used this goes up, but if it is freed this
		#		number goes down



	def set_locals_directive(self, new_val):
		self.raw_text[1] = "    .locals " + str(new_val) + "\n"


	def get_locals_directive_line(self):
		return self.raw_text[1].strip()


	def get_locals_directive_num(self):
		line = self.get_locals_directive_line()
		search_object = re.search(r"[0-9]+", line)
		num = search_object.group()
		#print("number: " +  str(num))
		return int(num)


	def get_signature(self):
		return self.raw_text[0].strip()


	def get_name(self):
		# kinda hacky!  Sorry 'bout that!
		s = self.get_signature()
		s = s.split("(")
		#print("name: " + str(s))
		s = s[0].split(" ")
		name = s[-1]
		#print("name: " + str(name))
		return name


	def make_new_reg(self):
		self.reg_number_float += 1

		if(self.reg_number_float > 15):
			raise Exception("cannot request register > 15, apktool might be mad!")
			# It is possible depending on the instruction
			# see comment for free_reg

		directive = self.get_locals_directive_num()
		if(self.reg_number_float > directive):
			self.set_locals_directive(self.reg_number_float)

		# When there are three registers in use, the float will be at 3
		# but that means v0, v1, and v2, so the v number is the float - 1
		return "v" + str(self.reg_number_float-1) 

	# Only v0 - v16 registers are allowed for general purpose use.
	# This is enforced by apktool.  The documentation indicates that
	# some instrucions allow many many more registers (up to v65535)
	# https://source.android.com/devices/tech/dalvik/dalvik-bytecode
	# Anyway, it is necessary to "free" registers so that
	# instrumentation does not accumulate registers when adding
	# several instrumentation lines into one method.
	# This first became an issue with EXTERNAL_FUNCTION_instrumentation
	def free_reg(self):
		if(self.reg_number_float == self.ORIGINAL_NUMER_REGS):
			raise Exception("No registers to free!")

		self.reg_number_float -= 1
		return self.reg_number_float # IDK why I return anything! lol -\


	def make_new_jump_label(self):
		res = smali.LABEL(self.num_jumps)
		self.num_jumps += 1
		if(self.num_jumps >= 3):
			raise Exception("too many jumps")
		return res


	def embed_line(self, position, line):
		# this is "+1" so that the index numbers
		# of the preceeding spots 
		# (and _critically_ the index of the current spot)
		# are not disrupted at all
		self.raw_text.insert(position+1, line)


	def embed_block(self, position, block):
		global flags
		#print("embeddeding block as poisiton: " + str(position))

		#print("--- before ---")
		#for i in range(position-5, position+len(block) + 5):
		#	print(self.raw_text[i], end="")
		#print("\n\n")
		self.raw_text = self.raw_text[:position] + block + self.raw_text[position:]

		#print("--- after ---")
		#for i in range(position-5, position+len(block) + 5):
		#	print(self.raw_text[i], end="")
		#print("\n\n")

		if("-D" in flags):
			print("\n--- modified lines ---")
			for l in self.raw_text[position-1:position+len(block) + 5]:
				print(l, end="")
			print("^^^ modified lines ^^^\n")


	def __repr__(self):
		return self.get_signature()

	def __str__(self):
		return self.get_signature()

	def __eq__(self, other):
		if isinstance(other, str) :
			return self.get_signature() == other

		elif isinstance(other, SmaliMethodDef):
			return self.get_signature() == other.get_signature()

		else:
			return False





	def instrument(self, instance_fields, instrumentation_match_function, instrumentation_function):

		idx = 0
		while idx < len(self.raw_text):

			# The lines of code that we add (instrument) will be instances of smali.SmaliAssemblyInstruction
			# the lines of code that are existing already will be type string
			# So, this check prevents us from instrumenting our new additional code
			if isinstance(self.raw_text[idx], smali.SmaliAssemblyInstruction):
				idx = idx + 1


			elif instrumentation_match_function(self.raw_text[idx]):
				idx = instrumentation_function(idx, instance_fields)

			idx = idx + 1





# Just a generic method for the main function to use
# it writes the input file to an output file (usually the same file, overwriting original)
def write_out(class_smali_file, scd):
	# Write new "program" out to file
	fh = open(class_smali_file, "w")

	for line in scd.header + scd.static_fields + scd.instance_fields:
		fh.write(line)

	fh.write("# methods\n")
	for m in scd.methods:
		for line in m.raw_text:
			fh.write(str(line))
		fh.write("\n")

	fh.close()



# Operates on just one file
def main():
	global flags

	# Read source code into list of lines
	class_smali_file = sys.argv[-1]
	print("File: " + class_smali_file)
	fh = open(class_smali_file, "r")
	lines = fh.readlines()
	fh.close()

	flags = sys.argv[1:-1]
	print("main flags: " + str(flags))

	class_name = lines[0].split()[-1].strip("\n")
	print("Class: " + class_name)


	# Main parsing loop
	scd = SmaliClassDef(class_name)
	cur_dest = scd.header
	pre_methods = True
	idx = 0
	while(idx < len(lines)):

		#print("processing line: " + str(lines[idx]))
		match_object = re.match(REGEX_BEGINS_WITH_DOT_METHOD, lines[idx])
		if(match_object != None): #This is the start of a method defintion
			#print(str(match_object) + " in line: " + lines[idx])
			method_code = []

			match_object = re.match(REGEX_BEGINS_WITH_DOT_END_METHOD, lines[idx])
			while(match_object == None):
				#print(str(idx) + "    " + lines[idx])
				method_code.append(lines[idx])
				del lines[idx]
				match_object = re.match(REGEX_BEGINS_WITH_DOT_END_METHOD, lines[idx])

			# Eat the final ".end method" line				
			method_code.append(lines[idx])
			del lines[idx] 
			idx -= 1

			#print(str(match_object) + " in line: " + lines[idx])
			smd = SmaliMethodDef(method_code)
			scd.methods.append(smd)


		if("# static fields\n" == lines[idx]):
			cur_dest = scd.static_fields

		if("# instance fields\n" == lines[idx]):
			cur_dest = scd.instance_fields

		if("# direct methods\n" == lines[idx]):
			pre_methods = False

		if(pre_methods):
			cur_dest.append(lines[idx])
			del lines[idx]
			idx = idx - 1
		# debugging left in
		#print("\n")
		#print(lines)
		#print("len(lines): " + str(len(lines)))
		#
		#print("idx: " + str(idx))



		idx = idx + 1

	# main parsing loop is done
	# manual check correct parsing
	if("-D" in flags):
		print("---unused lines---\n" + str(lines))
		print("------------------\n")
		print("---header---\n" + str(scd.header))
		print("------------------\n")
		print("---static fields---\n" + str(scd.static_fields))
		print("------------------\n")
		print("---instance fields---\n" + str(scd.instance_fields))
		print("------------------\n")
		print("---methods---\n" + str(scd.methods))
		print("------------------\n")




	# Do the actual instrumentation
	scd.instrument()
	

	# Write out to file if flags specify to do so
	if("-wo" in flags):
		print("Overwriting: " + str(class_smali_file))
		write_out(class_smali_file, scd)

	
if __name__ == "__main__":
	main()