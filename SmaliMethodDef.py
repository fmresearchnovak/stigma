import re

import SmaliTypes
import SmaliAssemblyInstructions as smali
import StigmaStringParsingLib
import Instrumenter

from SmaliRegister import SmaliRegister
from ControlFlowGraph import ControlFlowGraph
from TypeSafetyChecker import TypeSafetyChecker
import inspect
		
class SmaliMethodSignature:

	# This should maybe be an inner-class of SmaliMethodDef
	
	# self.sig_line
	# self.name

	# self.is_static
	# self.is_abstract

	# self.parameter_type_map
	# self.num_of_parameters
	# self.num_of_parameter_registers
	
	def __init__(self, sig_line, class_name):
		
		self.sig_line = sig_line
		
		sig_tokens = sig_line.split(" ")
		#print("\n\n" + str(sig_tokens))
		assert(sig_tokens[0] == ".method")
		
		name = sig_tokens[-1]
		self.name = name.split("(")[0]
		
		modifiers = sig_tokens[1:-1]
		self.is_static = False
		if "static" in modifiers:
			self.is_static = True
			
		self.is_abstract = False
		self.is_native = False
		if "abstract" in modifiers:
			self.is_abstract = True
		
		if "native" in modifiers:
			self.is_native = True
		
		
		#print("name: " + str(self.name))
		#print("static: " + str(self.is_static))
		
		self.parameter_type_map = {}
		
		# note, if there is a 64-bit parameter
		# it counts as one param, but two param-regs
		self.num_of_parameters = 0 
		self.num_of_parameter_registers = 0
		p_idx = 0 # number for "pX" notation
		
		if(not self.is_static):
			# the implicit "this" register p0
			# The first parameter for non-static methods is always 
			# the object that the method is being invoked on,
			# p0 holds the object reference and p1 the second 
			# parameter register.

			self.parameter_type_map["p0"] = SmaliTypes.from_string(class_name)
			self.num_of_parameters = 1
			self.num_of_parameter_registers = 1
			p_idx = 1

		
		parameter_raw = re.search(StigmaStringParsingLib.PARAMETERS, sig_line).group(1)
		# e.g., Landroid/support/design/widget/CoordinatorLayout;Landroid/view/View;Landroid/view/View;II[I
		
		i = 0
		while i < len(parameter_raw):
			self.num_of_parameters += 1
			
			if parameter_raw[i] in smali.TYPE_LIST_WORD: 
				self.num_of_parameter_registers += 1
				p_name = "p" + str(p_idx)
				self.parameter_type_map[p_name] = SmaliTypes.from_string(parameter_raw[i])
				
				
			elif parameter_raw[i] in smali.TYPE_LIST_WIDE: # long or double
				self.num_of_parameter_registers += 2
				p_name = "p" + str(p_idx)
				self.parameter_type_map[p_name] = SmaliTypes.from_string(parameter_raw[i])
				p_idx+=1
				p_name = "p" + str(p_idx)
				self.parameter_type_map[p_name] = SmaliTypes.from_string(parameter_raw[i]+"2")
				
				
			elif parameter_raw[i] == "L": # some object
				self.num_of_parameter_registers += 1
				p_name = "p" + str(p_idx)
				
				# skip past all the characters in the type
				# e.g., MyMethod(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
				# we should skip from "L" all the way to ";" for each parameter
				end = parameter_raw.find(";", i)
				obj_str = parameter_raw[i:end+1]
				self.parameter_type_map[p_name] = SmaliTypes.from_string(obj_str)
				i = end
				
					
					
			elif parameter_raw[i] == "[": # an array
				# note arrays are n-dimensional
				# e.g., [[[I
				start_index = i
				i = SmaliMethodSignature.fast_forward_to_not_bracket(i, parameter_raw)
				
				if(parameter_raw[i] == "L"):
					# this is an array of objects (L indicates beginning of object FQN)
					i = SmaliMethodSignature.fast_forward_to_semicolon(i, parameter_raw)
					

				#to get the last character of array type, we add a +1 to the end_index
				#fast_forward methods ignore the last character itself, so to include it we have to increment the index by 1
				end_index = i+1

				self.num_of_parameter_registers += 1
				p_name = "p" + str(p_idx)
				self.parameter_type_map[p_name] = SmaliTypes.from_string(parameter_raw[start_index:end_index])

			p_idx += 1        
			i += 1
			

	@staticmethod
	def fast_forward_to_semicolon(idx, string):
		while(string[idx] != ";"):
			idx+=1
			#print("this one")
		return idx
		
	@staticmethod
	def fast_forward_to_not_bracket(idx, string):
		while(string[idx] == "["):
			#print("that one")
			idx+=1
		return idx
	  
	  
	def __str__(self):
		return str(self.sig_line.strip()) # + " " + str(self.parameter_type_map)

		

class SmaliMethodDef:

	def __init__(self, text, scd):
		# text should be a list of strings (lines)
		# starting from ".method..." and ending in "... .end method"
		# scd should be a SmaliClassDef object
		
		if(text == []):
			raise ValueError("Attempting to instantiate method with no code!")
		
		self.raw_text = text
		
		self.num_jumps = 0 # not used except for a sanity check

		
		self.ORIGINAL_LOCAL_NUMBER_REGS = self.get_locals_directive_num()
		self.reg_number_float = self.ORIGINAL_LOCAL_NUMBER_REGS

		class_name = "Lunknownclass;"
		if(scd != None):
			self.scd = scd # smali class definition
			class_name = self.scd.class_name
		
			
		self.signature = SmaliMethodSignature(self.raw_text[0], class_name)

		
		self.instrumented_code = [] #this is a list containing new instrumented code
		
		self.moves_before = []
		self.moves_after = []
		
		# Used to count the number of times the instrumentation process cannot
		# free up Instrumenter.DESIRED_NUM_REGISTERS
		self.not_enough_free_registers_count = 0
		
		# state that is modified when "grow_locals()" is called
		self.has_grown = 0 # number passed to grow locals
		self.top_regs = [] # list of the registers established at the top
		#this is the first free reg after we grow the locals number for the method
		self.first_new_free_reg_num = 0  
		
		
	def get_register_meta_data(self):
		num_locals = self.get_locals_directive_num()
		num_params = self.signature.num_of_parameter_registers
		num_regs = self.get_num_registers()
		#print("num regs: " + str(num_regs))
		
		l = []
		for i in range(num_regs):
			l.append("v" + str(i))
		#print("l: " + str(l))
		
		p_idx_start = num_locals - self.has_grown
		#print("p_idx_start: " + str(p_idx_start))
		p_num = 0
		for p_idx in range(p_idx_start, p_idx_start+num_params):
			#print("p_idx: " + str(p_idx))
			l[p_idx] = l[p_idx] + "/p" + str(p_num)
			p_num += 1
		
		return str(l)
		
			

	def grow_locals(self, n):
		# grows the .locals from the current value such that there are
		# n new registers in the method
		# moves the parameters so that they don't incur maximum register 
		# value issues when used in instructions

		# Only registers v0 - v15 are allowed for general purpose use.
		# This is enforced by apktool.  The documentation indicates that
		# some instrucions allow many many more registers (up to v65535)
		# https://source.android.com/devices/tech/dalvik/dalvik-bytecode

		# Consider the following method which came from whatsapp
		# This is a rare edge-case
		# the .locals is originally 1 indicating that v0 is the only local register.
		# that is true. BUT, the first use of v0 is to store a long (J)
		# so actually v0 and v1 are used.  I assume that p0 is v1, but p0 is
		# over-written immediately after it's first and only use.
		# If we attempt to use v1 for some taint-tag propagation
		# it will cause a verify error since v1 is supposed to hold the second
		# half of a long
		'''
		.method public static A0C(Ljava/lang/Long;J)Ljava/lang/Long;
		.locals 1

		invoke-virtual {p0}, Ljava/lang/Number;->longValue()J

		move-result-wide v0

		sub-long/2addr p1, v0

		invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

		move-result-object v0

		return-object v0
		
		.end method
		'''


		if(n < 0):
			raise ValueError("Cannot grow locals by a negative amount: " + str(n))
			
		if(self.signature.is_abstract or self.signature.is_native):
			# We shouldn't grow abstract methods since they don't have 
			# code / locals
			return []
			
		if(self.has_grown > 0):
			raise ValueError("Cannot grow locals twice on the same method!")
		self.has_grown = n
			

		self.old_locals_num = self.get_locals_directive_num()
				
		# Convert all "pX" references to their corresponding "vX" register
		# names BEFORE adjusting .locals so the references are correct
		# Note: part of the algorithm is to move the values from
		# the new location (after adjusting .locals) into their original
		# location    
		self.convert_all_lines_p_to_v_numbers()
		
		
		# determine the names of the new registers (to return later)
		self.first_new_free_reg_num = self.old_locals_num + self.signature.num_of_parameter_registers
		new_regs = []
		for num in range(self.first_new_free_reg_num, self.first_new_free_reg_num+n):
			new_regs.append("v" + str(num))
		

		# Set the new locals number
		# this is the "main event" / primary purpose
		# of this method
		# I need to expand the locals to hold
		#   (a) all of the existing locals used in the mod
		#   (b) all of the parameters for this method
		#   (c) n new registers, which will be used for taint-tracking
		new_locals_num = self.old_locals_num + n
		self.set_locals_directive(new_locals_num)
		

		# Write the necessary move values so that the vX
		# registers that originally contained the parameters
		# contain the parameter values
		block = []

		#print("method: ", str(self))
		#print(self.signature.parameter_type_map)
		orig_p_loc = self.old_locals_num
		for param in self.signature.parameter_type_map:
			param_type_obj = self.signature.parameter_type_map[param]
			#print("smali type object: " + str(param_type_obj) + "  :  " + str(type(param_type_obj)) + "   get_generic_type: " + str(param_type_obj.get_generic_type()))            
			if (not isinstance(param_type_obj, SmaliTypes.SixtyFourBit_2)):
				mv_cmd = param_type_obj.get_move_instr()
				mv_cmd = mv_cmd("v" + str(orig_p_loc), param)
				
				block.append(mv_cmd)
				block.append(smali.BLANK_LINE())
				
			orig_p_loc += 1


		if(len(block) != 0):
			# make a copy of the first move instruction
			# see the elaborate comments / solution 4 in 
			# TaintTrackingInstrumentationPlugin.MOVE_special_instrumentation()
			# if(self.old_locals_num == 0):
			#    block.append(block[0]) 
				
			# put the comments in place
			block = Instrumenter.make_comment_block("for moving parameters") + block
			block = block + Instrumenter.make_comment_block("for moving parameters")
		
		insert_idx = self.find_first_valid_instruction()
		self.embed_block(insert_idx, block)
		
		self.top_regs = new_regs



	def dereference_p_to_v_number(self, p_register):
		# e.g., _get_v_frl(p2, 2) -> v4
		locals_num = self.get_locals_directive_num()
		p_num = int(p_register[1:])
		corresponding_v_num = locals_num + p_num
		return "v" + str(corresponding_v_num)


	def dereference_p_to_v_numbers(self, line):
		# de-reference p registers
		# Replace all instances of pX with corresponding vY
		# For example...
		#     v0, v1, v2, v3, v4
		#             p0, p1, p2
		# (note: even if p1 is a long, there will still be a p2
		#  and it will still correspond to v4)

		# a nasty edge-case that must be considered is a const-string
		# or comment or something that contains substrings
		# that look like register references
		# 
		# For example...
		# const-string vX, "bad string p0 v2"
		
		opcode = StigmaStringParsingLib.break_into_tokens(line)[0]    
		
		try:        
			regs = StigmaStringParsingLib.get_v_and_p_numbers(line)
		except:
			regs = StigmaStringParsingLib.get_range_start_and_end(line)

		for r in regs:
			if r[0] == "p":
				v_reg = self.dereference_p_to_v_number(r)

				# str.replace(x, y, 1) replaces only the first occurence
				# so, this will not replace instances of
				# "v4" and other register-like strings in instructions
				# such as: const-string v4, "edge v2 case p0 string v4\n"
				line = line.replace(r, v_reg, 1)
		return line
			 

	def convert_all_lines_p_to_v_numbers(self):
		for i in range(len(self.raw_text)):
			cur_line = self.raw_text[i]
			if(StigmaStringParsingLib.is_valid_instruction(cur_line)):
				new_line = self.dereference_p_to_v_numbers(cur_line)
				self.raw_text[i] = new_line

						
	def find_first_valid_instruction(self):
		for i in range(len(self.raw_text)):
			cur_line = str(self.raw_text[i])
			if(StigmaStringParsingLib.is_valid_instruction(cur_line) or cur_line.startswith("    :")):
				return i


	def set_locals_directive(self, new_val):
		self.raw_text[1] = "    .locals " + str(new_val) + "\n"


	def get_locals_directive_line(self):
		return self.raw_text[1].strip()


	def get_locals_directive_num(self):
		line = self.get_locals_directive_line()
		search_object = re.search(r"[0-9]+", line)
		if search_object is not None:
			num = search_object.group()
			#print("number: " +  str(num))
			return int(num)
		else:
			return 0


	def get_num_registers(self):
		# the total number of registers used by this function
		ans = self.get_locals_directive_num() + self.signature.num_of_parameter_registers
		#if(not self.signature.is_static):
			# +1 at the end is necessary to account for p0 ("this") reference
			# this may be a bug, I'm not sure how the other parts of the code
			# count registers
		#    ans+=1
		return ans
		

	def get_num_comparison_instructions(self):
		count = 0
		
		# this could be improved in two ways
		#   1) we could cache the value of count, but that would require
		#      cache invalidation
		#   2) we could join the strings in the list raw_text into
		#      one large string and use the regular expression matching
		#      to find _ALL_ matches in one call.
		#      The challenge with this approach is that comments and 
		#      other extraneous text might contain "if-eqz" and others 
		#      by coincidnence
		for cur_line in self.raw_text:
		
			search_object = re.search(StigmaStringParsingLib.BEGINS_WITH_IF, cur_line)
			search_object2 = re.search(StigmaStringParsingLib.BEGINS_WITH_CMP, cur_line)
			if (search_object is not None) or (search_object2 is not None):
				# of course the line can't be both an if and a cmp
				count = count + 1
		return count

	



	def get_name(self):
		# kinda hacky!  Sorry 'bout that!
		s = str(self)
		s = s.split("(")
		#print("name: " + str(s))
		s = s[0].split(" ")
		name = s[-1]
		#print("name: " + str(name))
		return name


	def make_new_jump_label(self):
		res = smali.LABEL(self.num_jumps)
		self.num_jumps += 1
		return res
		
		
	def write_to_file(self, filename):
		fh = open(filename, "w")
		
		for line in self.raw_text:
			s = str(line)
			if(s == "" or s[-1] != "\n"):
				s = s + "\n"
			fh.write(s)

		fh.close()
		
		
	def embed_line(self, position, line):
		self.raw_text.insert(position, line)


	def embed_block_with_replace(self, position, block):
		self.raw_text = self.raw_text[:position] + block + self.raw_text[position + 1:]


	def embed_block(self, position, block):
		# put the code in this block just before the position
		self.raw_text = self.raw_text[:position] + block + self.raw_text[position:]

				
	def instrument(self):
		#dont instrument methods without any text
		if(len(self.raw_text) < 3):
			return
		
		if(self.has_grown == 0):
			print("Warning!  The locals for this method were not grown / expanded: " + str(self))
			
		
		# insert the lines at the beginning
		method_beginning_instrumentation_method = Instrumenter.start_of_method_handler
		if(method_beginning_instrumentation_method is not None):
			result_block = method_beginning_instrumentation_method(self.scd, self)
			insert_idx = self.find_first_valid_instruction()
			#print("insert idx: " + str(insert_idx))
			self.embed_block(insert_idx - 2, result_block)
			

		#create the control flow graph for the method text and pass it to the type safety checker
		#this will check and track types of each register on each line 
		self.cfg = ControlFlowGraph(self.raw_text)
		self.tsc = TypeSafetyChecker(self.signature, self.cfg) 
		
		#incase the graph is empty, we dont instrument
		if(len(self.cfg.G)) == 1:
			return
			
		
		# start walking the graph at node 1 and go in ascending order
		# this counter starts at 1, becuase when we initialize the type safety checker we already updated the types of the signautre line so we dont do it again
		# as the signature line never shows up in our walk of the graph, we add it to our new instrumented code here
		counter = 1
		self.instrumented_code.append(self.raw_text[0])
		
		#print("instrumenting", str(self))
		#self.cfg.show()
		#input("continue?")
		
		while(self.cfg.nodes_left_to_visit()):
			node = self.cfg[counter]
			#print("\nprocessing counter: ", counter)
			#print("body: ", node["text"])

			if(not node["visited"]):
				node["visited"] = True 
				
				smali_code_iterator = SmaliCodeIterator(node["text"])
				is_first_line = True
				for unit in smali_code_iterator:
					#print("\nunit:", unit)
					self.tsc.type_update(unit, is_first_line, counter)
					#print("map after update:", self.tsc.node_type_list[-1])
					self._do_instrumentation_plugins(node, unit, self.tsc.most_recent_type_map)
					is_first_line = False
					
				#call type_update on each line of code inside the node. 
				#for index in range(len(node["text"])):
				#	line = node["text"][index]        
					#print(type(line), ": " + str(line))         
				#	self.tsc.type_update(str(line), index, counter)
				#	node["type_list"] = self.tsc.node_type_list
				#	self._do_instrumentation_plugins(node, line, index)
				
				# store the entire list of type hash-maps into the node
				#print("storing type_list for node", counter);
				node["type_list"] = self.tsc.node_type_list
				self.tsc.node_type_list = []
						
			counter+=1  

		# # assign the newly instrumented code to the orignal raw text of the method, 
		# # and add the tail from teh cfg, which contains the ending lines of the method
		# # such as the .end method and the pswitch data and the sswitch data. 
		self.raw_text = self.instrumented_code    
		self.raw_text.extend(self.cfg.tail)
		self.fix_larger_if_offsets()
		
		

		
	def _do_instrumentation_plugins(self, node, code_unit, type_map_before_code_unit):
		self.moves_before = []
		self.moves_after = []
		
		first_line = code_unit[0]
		#print("\t_do_instrumentation_plugins(" + str(first_line).lstrip().rstrip() + ")")
		if not self.is_relevant(first_line, node):
			self.instrumented_code.extend(code_unit)
			return
		
		opcode = StigmaStringParsingLib.extract_opcode(first_line)     
		instrumentation_method = Instrumenter.instrumentation_map[opcode][0]
		instrumenter_inserts_original_lines = Instrumenter.instrumentation_map[opcode][1]
		#print("looking at:", line.strip(), "   instrumentation method: ", instrumentation_method, "\n")
		
		#print("\n\code_unit: ", code_unit)
		#print("type_map: ", type_map_before_code_unit)
		regs = self.gen_list_of_safe_registers(code_unit, type_map_before_code_unit) 
		#print("regs to be used for taint prop:", regs)
		#print(self.get_register_meta_data())
		#input("continue?") 
		
		
		# four cases total
		#                  re-writes lines
		#                   yes   |   no
		#                 +---------------+ 
		# has enough regs |  1    |    2  |
		#                 +---------------+
		# not enough regs |  3    |    4  |
		#                 +---------------+
		if len(regs) < Instrumenter.DESIRED_NUM_REGISTERS: # case 4
			new_block = []
			
			if(instrumenter_inserts_original_lines): # case 3
				new_block = code_unit
			
		else:
			new_block = instrumentation_method(self.scd, self, code_unit, regs) # case 1 and 2
		
		#invoke foo()
		#move-result vx
		#for such a line which contains a move result, we cannot put 
		# the new block of code between the move-result and the invoke 
		# as that would cause a java verifier error, so for this case, 
		# the instrumenter for move result returns the new block with 
		# the orignal line inserted at the correct spot, so we do not 
		# need to append the line again 
		# there are three cases for the invokes, preceding the move-result: 
			#1)Sources (getLastKnownLocation, IMEI etc) -> new code comes before/after the original line
			#2)Internal Functions, -> new code comes before and after the original lines (invoke,move-result)
			#3)External Functions, -> new code comes before/after the original line
		#Note: No valid code can come in between an invoke and a move result!!
		self.instrumented_code.extend(self.moves_before)
		self.instrumented_code.extend(new_block)
		self.instrumented_code.extend(self.moves_after)
		
		if(not instrumenter_inserts_original_lines): # case 2
			self.instrumented_code.extend(code_unit)
			

	def gen_list_of_safe_registers(self, code_unit, cur_type_map):
		# "safe" registers are 
		#  (a) low numbered (less than v16)
		#  (b) not containing original program data
		#      (or such original program data has been moved to another register)
		#  (c) not the second 1/2 of a wide value
		#  (d) not used in the code_unit
		
		# The algorithm aims to get to goal_size
		# for the number of registers returned
		# it will stop early if possible and it will
		# throw an exception if goal_size cannot be reached
		
		# generate a list of available registers        
		safe_regs = set()
		
		#this first free reg is later used as a destination for the "register juggling" move instructions, 
		# so we need to count how many are already used in the safe reg list so we can ignore those
		# for the moves implemented later in this algorithm      
		count = self.first_new_free_reg_num
		
		# 1) Try to use the top registers that were made available by growing
		for r in self.top_regs:
			n = int(r[1:])
			if(n < 16):
				count = count + 1
				safe_regs.add(r)
		
		#print("\nline: ", node["text"][idx].strip(), "\n\tfirst return regs: ", sorted_list(safe_regs))
		if(len(safe_regs) >= Instrumenter.DESIRED_NUM_REGISTERS):
			return sorted_list(safe_regs)
		
		
		# 2) Try to use the registers not yet used in this 
		# method according to tsc
		for i in range(16):
			reg = "v" + str(i)
			if(reg not in cur_type_map):
				safe_regs.add(reg)
				
		# exclude registers used in this code unit
		# if the instruction is an invoke or new filled array, we also cannot use the registers
		# from the subsequent move-result-* instruction, in our safe registers list
		code_unit_regs = set([])
		for line in code_unit:
			line = str(line)
			if(StigmaStringParsingLib.is_valid_instruction(line)):
				#print("unioning in " + str(set(StigmaStringParsingLib.get_v_and_p_numbers(line))) + "...")
				code_unit_regs = code_unit_regs.union(set(StigmaStringParsingLib.get_v_and_p_numbers(line)))
		safe_regs.difference_update(code_unit_regs)
		#print("code_unit_regs computed: ", code_unit_regs)
		
		#print("\tsecond return regs: ", sorted_list(safe_regs))
		if(len(safe_regs) >= Instrumenter.DESIRED_NUM_REGISTERS):
			return sorted_list(safe_regs)
		
		
		#3) implement moves to free up lower numbered registers if possible
		
		#empty old / pre-existing move lists
		self.moves_before = [smali.COMMENT("IFT INSTRUCTIONS ADDED BY STIGMA to free up low numbered registers")]
		self.moves_after = []
		dest_reg = SmaliRegister.from_components("v", count)
		
		# I sort these before iterating through them so that
		# from run to run the same registers are used
		# which facilitates proper testing
		sorted_reg_list = sorted(cur_type_map.keys())
		for reg in sorted_reg_list:
			#print("attempting to setup moves with", reg)
			if (self._move_reg_conditions(dest_reg, reg, safe_regs, code_unit_regs, cur_type_map)):
					
				#print(str(line_type_map[reg]) + "  " + str(type(line_type_map[reg])))
				move_instr = cur_type_map[reg].get_move_instr()
				#print("\tselected: ", reg)
				self.moves_before.append(move_instr(str(dest_reg),reg))
				self.moves_after.append(move_instr(reg, str(dest_reg)))
				safe_regs.add(reg)
				if(cur_type_map[reg] == "64-bit"):
					dest_reg+=2
					safe_regs.add(StigmaStringParsingLib.register_addition(reg, 1))
				else:
					dest_reg+=1
			
			if len(safe_regs) >= Instrumenter.DESIRED_NUM_REGISTERS:
				self.moves_after.insert(0, smali.BLANK_LINE())
				self.moves_after.append(smali.COMMENT("IFT INSTRUCTIONS ADDED BY STIGMA to free up low numbered registers"))
				self.moves_after.append(smali.BLANK_LINE())
				return sorted_list(safe_regs)
		
		
		if len(safe_regs) < Instrumenter.DESIRED_NUM_REGISTERS:
			self.not_enough_free_registers_count += 1
			#print("not enough registers! This has occurred: " + str(self.not_enough_free_registers_count) + " times in this method.")
			#raise ValueError("Unable to find enough safe registers.  Trying for " + str(Instrumenter.DESIRED_NUM_REGISTERS) + "  got: " + str(safe_regs))
			#print(ve)
			#print(self.scd.file_name)
			#print(self.signature)
			#print("node number: " + str(node["node_counter"]))
			#print()
			#print(node["text"])
			#print()
			#print("line " + str(idx) + ":  " + str(line))
			#print("type map: " + str(node["type_list"][idx-1]))
			#self.cfg.show()
			#exit(1)
		
		# blank these, we shouldn't do any moves if
		# we aren't going to give free registers
		# since without any registers we won't do any instrumentation
		self.moves_before = []
		self.moves_after = []
		
		return [] # just return nothing if it can't be done!

	
	def _move_reg_conditions(self, dest_reg, reg, safe_regs, code_unit_regs, type_map):
		#print("num regs: " + str(self.get_num_registers()))
		#print("_move_reg_conditions(" + str(reg) + ")")
		#print("code unit regs: " + str(code_unit_regs))
		#print("dest reg: " + str(dest_reg))
		#print("second part of wide dest: " + str(dest_reg + 1))
		if reg in safe_regs:
			return False
		if type_map[reg] == "?":
			return False
		if type_map[reg] == "64-bit-2":
			return False
		if type_map[reg] == "64-bit" and ( (dest_reg + 1) >= self.get_num_registers() ):
			return False
		if reg[0] == "p":
			return False
		if int(reg[1:]) >= 16:
			return False
		if reg in code_unit_regs:
			# We definitely cannot use registers from the current line 
			# because there are instrumenters that re-write their own 
			# instructions.  In such a situation, the move_back
			# operations won't happen until AFTER the original instruction
			# which means any registers used in that instruction
			# that are also used for register shuffling and / or 
			# propagation will have the wrong values at the time of 
			# the original instruction
			#print("reg", reg, "is in code unit regs", code_unit_regs)
			return False
		
		return True
		
		
			
			
	def is_relevant(self, line, containing_node):     
		#print("checking relevance: ", line)
		#print("type:", str(type(line)))
		
   
		# we need to know if we are in a try block so we can avoid
		# the one type of instrumentation where that matters
		# internal-function move-result lines
		# If we are in a try block, then adding instructions
		# may affect the control flow / type checking done 
		# by the verifier.  This causes java.lang.VerifyError
		# with  messages like this:
		# [0x35] register v0 has type Precise Reference: java.lang.String[] but expected Long
		# https://github.com/JesusFreke/smali/issues/797
		if(containing_node["is_in_try_block"]):
			return False
		

		# The lines of code that we add (instrument) will be instances of smali.SmaliAssemblyInstruction
		# the lines of code that are existing already will be type string
		# So, this check prevents us from instrumenting our new, additional code
		if isinstance(line, smali.SmaliAssemblyInstruction):
			return False

		
		# Only do instrumentation if line is a valid instruction
		if not StigmaStringParsingLib.is_valid_instruction(line):
			return False
		
		
		opcode = StigmaStringParsingLib.extract_opcode(line)      
		if opcode in Instrumenter.instrumentation_map:
			return True
	
	
	def fix_larger_if_offsets(self):
		table = []
		label_map = {} #this stores the label and the line number corresponding
		
		for idx in range(len(self.raw_text)):
			line = str(self.raw_text[idx])
			tokens = StigmaStringParsingLib.break_into_tokens(line)
			
			#store the label of :cond and :goto in a map with their corresponding line number
			if(re.search(StigmaStringParsingLib.BEGINS_WITH_COND, line) is not None or re.search(StigmaStringParsingLib.BEGINS_WITH_GOTO_LABEL, line) is not None):
				 label_map[tokens[0]] = idx
			
			#when you see an if statement or a goto statement, there are two options
			elif re.search(StigmaStringParsingLib.BEGINS_WITH_IF, line) is not None or re.search(StigmaStringParsingLib.BEGINS_WITH_GOTO, line) is not None:
				
				row = [line, tokens[0], idx]                
				label = tokens[-1]
				
				#1) if the label was already seen, retreive it from existing map and fill all details for the row
				if label in label_map:
					label_idx = label_map[label]
					label_offset = label_idx - idx
					row.extend([label, label_idx, label_offset])
					table.append(row)
				
				#2) if the label was not seen before, we can safetly loop from the current index to till the end and whenever u see a label fill the row and break the loop
				else:
					for label_idx in range(idx, len(self.raw_text)):
						new_line = str(self.raw_text[label_idx])
						if re.search(StigmaStringParsingLib.BEGINS_WITH_COLON, new_line) is not None:     
							label_tokens = StigmaStringParsingLib.break_into_tokens(new_line)
							if label_tokens[0] == label:
								label_offset = label_idx-idx
								row.extend([label, label_idx, label_offset])
								table.append(row)
								break
							
					
		#5461 is 1/6th of 32767
		#This checks for any if statements which have a jump to the label line greater than 5461, because Stigma causes can error
		#if the jump is bigger than that. We have computed a safe threshold limit based on different offsets from multiple opcodes. 
		#The largest offset found is const-wide with an code offset of 6.
		
		opposite_if_map = {"if-eq":smali.IF_NE, "if-ne":smali.IF_EQ, "if-lt":smali.IF_GE, "if-ge":smali.IF_LT,  "if-gt":smali.IF_LE, "if-le":smali.IF_GT, "if-eqz":smali.IF_NEZ, "if-nez":smali.IF_EQZ, "if-ltz":smali.IF_GEZ, "if-gez":smali.IF_LTZ, 
						   "if-gtz":smali.IF_LEZ, "if-lez":smali.IF_GTZ, "goto":smali.GOTO_32, "goto/16": smali.GOTO_32, "goto/32": smali.GOTO_32}
		
		
		#when we use embed_replace it changes length of the raw text, so the current idx doesnt match 
		#so we offset it by the length of the new block added each time - 1
		#if you have one line and you replace it by 5, you have actually only inserted 4 new lines 
		idx_offset = 0
		for row in table:
			if abs(row[-1] > 5461):
				idx = row[2] + idx_offset
				opcode = row[1]
				original_line = row[0]
				new_instr = opposite_if_map[opcode]
				block = [smali.COMMENT(original_line.strip()), smali.BLANK_LINE()]
				register = StigmaStringParsingLib.get_v_and_p_numbers(original_line)

				old_label = row[3]
				
				if(re.search(StigmaStringParsingLib.BEGINS_WITH_GOTO, row[1]) is not None):
					block.append(new_instr(old_label))
					block.append(smali.BLANK_LINE())
					idx_offset += len(block)-1
					self.embed_block_with_replace(idx, block)
				else:
					new_label = self.make_new_jump_label()
					if(len(inspect.signature(new_instr).parameters) == 3):
						block.append(new_instr(register[0], register[1], repr(new_label)))
					elif (len(inspect.signature(new_instr).parameters) == 2):
						block.append(new_instr(register[0], repr(new_label)))
					else:
						raise Exception("unable to convert if")
					
					block.append(smali.BLANK_LINE())
					block.append(smali.GOTO_32(old_label))
					block.append(smali.BLANK_LINE())
					block.append(new_label)
					block.append(smali.BLANK_LINE())
					
					idx_offset += len(block)-1
					self.embed_block_with_replace(idx, block)
					
	
	def __repr__(self):
		return self.get_signature()


	def __str__(self):
		return str(self.signature)


	def __eq__(self, other):
		if isinstance(other, str):
			return self.get_signature() == other

		elif isinstance(other, SmaliMethodDef):
			return self.get_signature() == other.get_signature()

		else:
			return False
			
			
class SmaliCodeIterator():
	def __init__(self, raw_text):
		self.raw_text = raw_text
		
		
	def __iter__(self):
		self.iter_idx = 0
		return self
		
	def __next__(self):
		# the goal of this iterator is
		# only to sometimes combine invoke-*
		# and filled-new-array
		# instructions with their subsequent move-result instructions
		# 
		# I found a situation in the whatsapp.apk which 
		# has the instruction preceeding a move-result-* instruction
		# is MORE than 2 lines previous
		#
		#invoke-interface {v0, v1, v4}, LX/1Fz;->AY5(Lcom/google/android/gms/dynamic/IObjectWrapper;LX/1oP;)[LX/1p7;
		#
		#
		#
		#.line 486217
		#
		#move-result-object v10
		#
		# such a situation means that line_index-2 is not a safe assumption
		
		if(self.iter_idx >= len(self.raw_text)):
			 raise StopIteration
		
		# might be a string
		# might be a SmaliAssemblyInstruction.py Object
		cur_line = self.raw_text[self.iter_idx]
		cur_line_as_string = str(cur_line)
		
		
		unit = [cur_line]
		if(StigmaStringParsingLib.could_have_a_subsequent_move_result(cur_line_as_string)):
			self.iter_idx = self.iter_idx + 1
			if(self.iter_idx >= len(self.raw_text)):
				# sets up for the next time this method is run
				# to immediately rase StopIteration
				return unit
				
			next_line = self.raw_text[self.iter_idx]
			next_line_as_string = str(next_line)
			#middle = []
			while(not StigmaStringParsingLib.is_valid_instruction(next_line_as_string) \
			and re.search(StigmaStringParsingLib.BEGINS_WITH_MOVE_RESULT, next_line_as_string) is None): # and start < len(text)):
				
				unit.append(next_line)
				self.iter_idx += 1
				if(self.iter_idx >= len(self.raw_text)):
					return unit
				
				next_line = self.raw_text[self.iter_idx]
				next_line_as_string = str(next_line)

			if(re.search(StigmaStringParsingLib.BEGINS_WITH_MOVE_RESULT, next_line_as_string) is not None):
				unit.append(next_line)
			else:
				self.iter_idx -= 1
				
		self.iter_idx += 1
		return unit

# It is on purpose that this is not a member of the SmaliMethodDef 
# class or the SmaliMethodSignature class.
def sorted_list(x):
	if not isinstance(x, set):
		raise ValueError("Input parameter should be a set.  You passed a: " + str(type(x)))
	
	ans = sorted(list(x))
	return ans


def tests():
	print("Testing SmaliMethodDef")
	
	
	print("\tSmaliMethodSignature...")
	sig = SmaliMethodSignature(".method public setBackgroundResource(I)V", "Lmy/package/MyClass;")
	assert(sig.name == "setBackgroundResource")
	assert(sig.is_static == False)
	assert(sig.parameter_type_map == {"p0": "Lmy/package/MyClass;", "p1": "I"})
	assert(sig.num_of_parameters == 2)
	assert(sig.num_of_parameter_registers == 2)
	
	sig = SmaliMethodSignature(".method private constructor <init>(Ljava/lang/String;I)V", "Lmy/package/MyClass;")
	assert(sig.name == "<init>")
	assert(sig.is_static == False)
	#print("map: " + str(sig.parameter_type_map))
	assert(str(sig.parameter_type_map) == "{'p0': Lmy/package/MyClass;, 'p1': Ljava/lang/String;, 'p2': I}")
	assert(sig.num_of_parameters == 3)
	assert(sig.num_of_parameter_registers == 3)
	
	sig = SmaliMethodSignature(".method private prefetchInnerRecyclerViewWithDeadline(Landroid/support/v7/widget/RecyclerView;J)V", "Lmy/package/MyOtherClass;")
	assert(sig.name == "prefetchInnerRecyclerViewWithDeadline")
	assert(sig.is_static == False)
	#print("map: " + str(sig.parameter_type_map))
	assert(str(sig.parameter_type_map) == "{'p0': Lmy/package/MyOtherClass;, 'p1': Landroid/support/v7/widget/RecyclerView;, 'p2': J, 'p3': J2}")
	assert(sig.num_of_parameters == 3)
	assert(sig.num_of_parameter_registers == 4)
	
	sig = SmaliMethodSignature(".method public static reverseTransit(I)I", "Lmy/package/MyClass;")
	assert(sig.name == "reverseTransit")
	assert(sig.is_static)
	assert(sig.parameter_type_map == {"p0": "I"})
	assert(sig.num_of_parameters == 1)
	assert(sig.num_of_parameter_registers == 1)


	print("\tfind_first_valid_instruction...")
	text = open("./test/leakPasswd.smali").readlines()
	smd = SmaliMethodDef(text, None)
	smd.cfg = ControlFlowGraph(smd.raw_text)
	smd.tsc = TypeSafetyChecker(smd.signature, smd.cfg)  
	assert(smd.find_first_valid_instruction() == 8)
	
	
	
	print("\tlocals...")
	assert(smd.get_locals_directive_line() == ".locals 9")
	assert(smd.get_locals_directive_num() == 9)
	smd.set_locals_directive(10)
	assert(smd.get_locals_directive_line() == ".locals 10")
	assert(smd.get_locals_directive_num() == 10)
	smd.set_locals_directive(9) # set it back for subsequent tests
	
	
	print("\tregister counting...")
	assert(smd.get_num_registers() == 11)


	print("\tdereference_p_v_to_number")
	assert(smd.dereference_p_to_v_number("p1") == "v10")
	assert(smd.dereference_p_to_v_number("p0") == "v9")
	assert(smd.dereference_p_to_v_number("p0") == "v9")
	assert(smd.dereference_p_to_v_number("p3") == "v12")


	print("\tdereference_p_to_v_numbers...")
	assert(smd.dereference_p_to_v_numbers("    filled-new-array {v0, v1, p2}, [Ljava/lang/String;\n") == "    filled-new-array {v0, v1, v11}, [Ljava/lang/String;\n")
	assert(smd.dereference_p_to_v_numbers("    throw p1\n") == "    throw v10\n")
	assert(smd.dereference_p_to_v_numbers("    filled-new-array {p0, p1, p2}, [Ljava/lang/String;\n") == "    filled-new-array {v9, v10, v11}, [Ljava/lang/String;\n")
	assert(smd.dereference_p_to_v_numbers("    if-eqz p3, :cond_6\n") == "    if-eqz v12, :cond_6\n")
	assert(smd.dereference_p_to_v_numbers("    const-string p1, \"nasty p1 example\"\n") == "    const-string v10, \"nasty p1 example\"\n")
	
	
	print("\t_move_reg_conditions...")
	assert(smd._move_reg_conditions("v3", "v0", [], ["v0", "v3", "v13"], {"v0": "32-bit"}) == False)
	
	
	print("\tSmaliCodeIterator...")
	#SmaliClassDef("test/register_listeners_method.smali", "r")
	
	fh = open("./test/random_method1.smali", "r")
	code = fh.readlines();
	fh.close()
	
	cuc1 = SmaliCodeIterator(code)
	iterator = iter(cuc1)
	assert(cuc1.__next__() == ['.method public leakPasswd(Landroid/view/View;)V\n'])
	assert(cuc1.__next__() == ['    .locals 6\n'])
	assert(cuc1.__next__() == ['    .param p1, "v"    # Landroid/view/View;\n'])
	assert(cuc1.__next__() == ['\n'])
	assert(cuc1.__next__() == ['    .line 181\n'])
	assert(cuc1.__next__() == ['    const v0, 0x7f070050\n'])
	assert(cuc1.__next__() == ['\n'])
	assert(cuc1.__next__() == ['    invoke-virtual {p0, v0}, Ledu/fandm/enovak/leaks/Main;->findViewById(I)Landroid/view/View;\n', '\n', '    move-result-object v0\n'])
	assert(cuc1.__next__() == ['\n'])
	assert(cuc1.__next__() == ['    check-cast v0, Landroid/widget/EditText;\n'])
	assert(cuc1.__next__() == ['\n'])
	assert(cuc1.__next__() == ['    .line 182\n'])
	assert(cuc1.__next__() == ['    .local v0, "et":Landroid/widget/EditText;\n'])
	assert(cuc1.__next__() == ['    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;\n', '\n', '    move-result-object v1\n'])
	assert(cuc1.__next__() == ['\n'])
	assert(cuc1.__next__() == ['    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;\n', '\n', '    move-result-object v1\n'])
	assert(cuc1.__next__() == ['\n'])
	assert(cuc1.__next__() == ['    .line 184\n'])
	assert(cuc1.__next__() == ['    .local v1, "pass":Ljava/lang/String;\n'])
	assert(cuc1.__next__() == ['    new-instance v2, Ljava/lang/StringBuilder;\n'])
	assert(cuc1.__next__() == ['\n'])
	assert(cuc1.__next__() == ['    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V\n', '\n'])
	assert(cuc1.__next__() == ['    const-string v3, "Leaked Password: "\n'])
	assert(cuc1.__next__() == ['\n'])
	assert(cuc1.__next__() == ['    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;\n', '\n',])
	assert(cuc1.__next__() == ['    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;\n', '\n'])
	assert(cuc1.__next__() == ['    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;\n', '\n', '    move-result-object v2\n'])
	assert(cuc1.__next__() == ['\n'])
	assert(cuc1.__next__() == ['    invoke-direct {p0, v2}, Ledu/fandm/enovak/leaks/Main;->prependToLog(Ljava/lang/String;)V\n', '\n', '    .line 186\n'])
	assert(cuc1.__next__() == ['    new-instance v2, Ledu/fandm/enovak/leaks/Main$ServerLeakTask;\n'])
	assert(cuc1.__next__() == ['\n'])
	assert(cuc1.__next__() == ['    invoke-direct {v2, p0}, Ledu/fandm/enovak/leaks/Main$ServerLeakTask;-><init>(Ledu/fandm/enovak/leaks/Main;)V\n', '\n', '    .line 189\n', '    .local v2, "slt":Ledu/fandm/enovak/leaks/Main$ServerLeakTask;\n'])
	assert(cuc1.__next__() == ['    const-string v3, "password"\n'])
	
	for line in cuc1:
		assert(line)
		
		
	fh = open("./test/diffPartial_method.smali", "r")
	code = fh.readlines()
	fh.close()
	
	cuc2 = SmaliCodeIterator(code)
	iterator = iter(cuc2)
	assert(next(cuc2) == ['.method private static diffPartial(Landroid/support/v7/util/DiffUtil$Callback;IIII[I[II)Landroid/support/v7/util/DiffUtil$Snake;\n'])
	assert(next(cuc2) == ['    .locals 18\n'])
	assert(next(cuc2) == ['    .param p0, "cb"    # Landroid/support/v7/util/DiffUtil$Callback;\n'])
	assert(next(cuc2) == ['    .param p1, "startOld"    # I\n'])
	assert(next(cuc2) == ['    .param p2, "endOld"    # I\n'])
	assert(next(cuc2) == ['    .param p3, "startNew"    # I\n'])
	assert(next(cuc2) == ['    .param p4, "endNew"    # I\n'])
	assert(next(cuc2) == ['    .param p5, "forward"    # [I\n'])
	assert(next(cuc2) == ['    .param p6, "backward"    # [I\n'])
	assert(next(cuc2) == ['    .param p7, "kOffset"    # I\n'])
	assert(next(cuc2) == ['\n'])
	assert(next(cuc2) == ['    .line 204\n'])
	assert(next(cuc2) == ['    move-object/from16 v0, p0\n'])
	assert(next(cuc2) == ['\n'])
	assert(next(cuc2) == ['    move-object/from16 v1, p5\n'])
	assert(next(cuc2) == ['\n'])
	assert(next(cuc2) == ['    move-object/from16 v2, p6\n'])
	assert(next(cuc2) == ['\n'])
	assert(next(cuc2) == ['    sub-int v3, p2, p1\n'])
	assert(next(cuc2) == ['\n'])
	assert(next(cuc2) == ['    .line 205\n'])
	assert(next(cuc2) == ['    .local v3, "oldSize":I\n'])
	assert(next(cuc2) == ['    sub-int v4, p4, p3\n'])
	assert(next(cuc2) == ['\n'])
	assert(next(cuc2) == ['    .line 207\n'])
	assert(next(cuc2) == ['    .local v4, "newSize":I\n'])
	assert(next(cuc2) == ['    sub-int v5, p2, p1\n'])
	assert(next(cuc2) == ['\n'])
	assert(next(cuc2) == ['    const/4 v6, 0x1\n'])
	assert(next(cuc2) == ['\n'])
	assert(next(cuc2) == ['    if-lt v5, v6, :cond_f\n'])
	assert(next(cuc2) == ['\n'])
	assert(next(cuc2) == ['    sub-int v5, p4, p3\n'])
	assert(next(cuc2) == ['\n'])
	assert(next(cuc2) == ['    if-ge v5, v6, :cond_0\n'])
	assert(next(cuc2) == ['\n'])
	assert(next(cuc2) == ['    move/from16 v17, v3\n'])
	assert(next(cuc2) == ['\n'])
	assert(next(cuc2) == ['    goto/16 :goto_b\n'])
	assert(next(cuc2) == ['\n'])
	assert(next(cuc2) == ['    .line 211\n'])
	assert(next(cuc2) == ['    :cond_0\n'])
	assert(next(cuc2) == ['    sub-int v5, v3, v4\n'])
	
	
	
	fh = open("./test/double_move_result_line.smali", "r")
	code = fh.readlines()
	fh.close()
	cuc2 = SmaliCodeIterator(code)
	iterator = iter(cuc2)
	
	assert(next(cuc2) == ['.class public Ledu/fandm/enovak/leaks/DoubleMoveResultTestClass;\n'])
	assert(next(cuc2) == ['.super Ljava/lang/Object;\n'])
	assert(next(cuc2) == ['.source "does_not_exist.java"\n'])
	assert(next(cuc2) == ['\n'])
	assert(next(cuc2) == ['# direct methods\n'])
	assert(next(cuc2) == ['.method public putExtraData(Landroid/support/v4/app/SupportActivity$ExtraData;)V\n'])
	assert(next(cuc2) == ['    .locals 2\n'])
	assert(next(cuc2) == ['    .param p1, "extraData"    # Landroid/support/v4/app/SupportActivity$ExtraData;\n'])
	assert(next(cuc2) == ['\n'])
	assert(next(cuc2) == ['    .line 69\n'])
	assert(next(cuc2) == ['    iget-object v0, p0, Landroid/support/v4/app/SupportActivity;->mExtraDataMap:Landroid/support/v4/util/SimpleArrayMap;\n'])
	assert(next(cuc2) == ['\n'])
	assert(next(cuc2) == ['    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;\n', '\n', '    move-result-object v1\n'])
	assert(next(cuc2) == ['\n'])
	assert(next(cuc2) == ['    invoke-virtual {v0, v1, p1}, Landroid/support/v4/util/SimpleArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;\n', '\n', '    .line 70\n'])
	assert(next(cuc2) == ['    return-void\n'])
	assert(next(cuc2) == ['.end method'])
	
	# untested: filled-new-array !!!
	
	
	
	
	print("ALL SmaliMethodDef TESTS PASSED!")


if __name__ == "__main__":
	tests()


'''
Problem:
	Orignal Instruction:     aget v3, p3, v2
	Type_map = {'p0': 'object', 'p1': '32-bit', 'p2': '[Ljava/lang/String;', 'p3': '[I'}

	After grow_locals
	Updated Instruction:     aget v3, v7, v2
	{'p0': 'object', 'p1': '32-bit', 'p2': '[Ljava/lang/String;', 'p3': '[I', 'v4': 'object', 'v5': '32-bit', 'v6': 'object', 'v7': 'object'}

	The reason type of v7 is "object" because, when we used our move instruction to move p3 into v7 (move-object/16 v7, p3)
	Type safety checker assigned an object to v7 where as v7 which was originally p3, had a type of [I
'''
