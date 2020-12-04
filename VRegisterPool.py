
import StigmaStringParsingLib
import SmaliAssemblyInstructions as smali
import re


TYPE_CODE_WORD = 0
TYPE_CODE_WIDE = 1
TYPE_CODE_WIDE_REMAINING = 2
TYPE_CODE_OBJ_REF = 3

TYPE_CODE_ALL = [TYPE_CODE_WORD, TYPE_CODE_WIDE, 
    TYPE_CODE_WIDE_REMAINING, TYPE_CODE_OBJ_REF]

# https://github.com/JesusFreke/smali/wiki/TypesMethodsAndFields
TYPE_LIST_OBJECT_REF = ["THIS", "L", "ARRAY"]
TYPE_LIST_WIDE = ["J", "D"]
TYPE_LIST_WIDE_REMAINING = ["J2", "D2"]
TYPE_LIST_WORD = ["Z", "B", "S", "C", "I", "F"]

TYPE_LIST_ALL = TYPE_LIST_OBJECT_REF \
                    + TYPE_LIST_WIDE \
                    + TYPE_LIST_WIDE_REMAINING \
                    + TYPE_LIST_WORD


def type_code_name(type_code):
    if(type_code == None):
        return "None"
    elif(type_code == TYPE_CODE_WORD):
        return "TYPE_WORD"
    elif(type_code == TYPE_CODE_OBJ_REF):
        return "TYPE_OBJ_REF"
    elif(type_code == TYPE_CODE_WIDE):
        return "TYPE_WIDE"
    elif(type_code == TYPE_CODE_WIDE_REMAINING):
        return "TYPE_WIDE_REM"
    else:
        raise ValueError("Invalid Type Code: " + str(type_code))


def get_number(reg_name):
	check_name(reg_name)
	return int(reg_name[1:])

def get_letter(reg_name):
	check_name(reg_name)
	return str(reg_name[0])
	
def check_name(reg_name):
	VALID_REG_REGEX = r"^[v][0-9]+$"
	result = re.search(VALID_REG_REGEX, reg_name)
	if(not result):
		raise ValueError("Invalid Register: " + str(reg_name))
	
def check_type(type_code):
	if type_code not in TYPE_CODE_ALL:
		raise ValueError("Invalid Type: " + str(type_code))


# Used in VRegisterPool class (below)
def _get_type_written(opcode):
	if opcode in StigmaStringParsingLib.WORD_MOVE_LIST:
		return TYPE_CODE_WORD
	elif opcode in StigmaStringParsingLib.WIDE_MOVE_LIST:
		return TYPE_CODE_WIDE
	elif opcode in StigmaStringParsingLib.OBJECT_MOVE_LIST:
		return TYPE_CODE_OBJ_REF
	else:
		return None

class VRegisterPool():
	# A register pool only exists inside a method
	# It is a collection of all "v" registers
	# It knows the type of every register
	# It knows which registers are not containing
	# any data (yet), it has static methods to work with register names
	
	# Primary API #
	#
	# update("const/4 v1, 0x8")  sets the type of v1 to be TYPE_CODE_WORD
	#
	# self.type_map 
	#
	# [] and "in" supported (keys in self.type_map)
	# 		the __getitem__ operator returns None if key not found
	#
	# pretty_string()
	#
	# get_spot()  gives a register of matching type or 
	#		a free / empty register (can handle wide)
	#
	# is_high_numbered()  takes a register name and returns True/False.  
	# 		It looks at the type of the register because v15 = WIDE means
	#		that V16 is WIDE_REMAINING and so v15 can be considered "high"
	#
	# get_move_instr()	takes a register name and returns the corresponding
	#		move instruction (e.g., if v0 is TYPE_CODE_WIDE, this function
	#		will return MOVE_WIDE_16)
	#		Note: the returned object is uninstantiated, it's like a 
	#		reference to the constructor function
	#
	
	def __init__(self, signature, num_local_params):
		
		# type_map
		self.type_map = {}
		
		# Initiate type_hashmap with parameters of funciton
		# -- Example -- MyMethod(JI)  .locals = 17
		# p0 = v22 type: object reference ("this")
		# p1 = v23 type: long
		# p2 = v24 type: long2 ("remaining")
		# p3 = v25 type: int
		# key: register name (v's only), a string
		# value: register type
		
		for key in signature.parameter_type_map:
			#print("key: " + str(key) + "  value: " + str(signature.parameter_type_map[key]))
			p_reg = key
			reg_type = signature.parameter_type_map[key]
			v_reg = StigmaStringParsingLib.get_v_from_p(p_reg, num_local_params)
			check_name(v_reg)
			
			
			# Note: using self[v_reg] below which invokes
			# __setitem__() which does extra checks on valid values
			if reg_type in TYPE_LIST_WORD:
				self[v_reg] = TYPE_CODE_WORD
				
			elif reg_type in TYPE_LIST_WIDE:
				self[v_reg] = TYPE_CODE_WIDE
				
			elif reg_type in TYPE_LIST_WIDE_REMAINING:
				pass
				
			elif reg_type in TYPE_LIST_OBJECT_REF:
				self[v_reg] = TYPE_CODE_OBJ_REF
				
			else:
				raise ValueError("Invalid Type: " + str(reg_type))


	def update(self, instruction):
		#print("update(" + repr(instruction) + ")")
		
		# "update move-type hashmap"
		# this updates the hashmap that indicates for each register
		# what the data type is.  This information is used most directly
		# by helping us identify the corresponding move instruction 
		# must be used in order to move that register (assuming that 
		# register will be used on the RIGHT hand side of the move).
		#
		# e.g., suppose v0 is a long, we should use move-wide/16 vx, v0
		
		# In order to know that v0 is a long, there must have been
		# an instruction that writes a long value to v0 
		# (that is, v0 is the destination register in such an instruction)
		# All such instructions are in WIDE_MOVE_LIST
		#
		# this function looks at the opcode and uses the WIDE_MOVE_LIST
		# to determine if the given instruction input argument 
		# sets the type of any register.  The idea is to call this
		# method on every single line / instruction from the method
		# in order to keep the register pool up-to-date at all times
		
		# the line below allows the caller to pass a string
		# or a SmaliAssemblyInstruction object
		instruction = str(instruction)
		
		if(not StigmaStringParsingLib.is_valid_instruction(instruction)):
			return

		opcode = StigmaStringParsingLib.break_into_tokens(instruction)[0]
		data_type_written = _get_type_written(opcode)

		if data_type_written is None:
			return
			
		key_reg = StigmaStringParsingLib.get_v_and_p_numbers(instruction)[0]
		check_name(key_reg)
		
		# this does more checks and is thorough
		self[key_reg] = data_type_written
		
		
	def get_move_instr(self, reg_name):
		check_name(reg_name)
		type_code = self[reg_name]
		
		move_instr = None
		if type_code == TYPE_CODE_WORD:
			move_instr = smali.MOVE_16
			
		elif type_code == TYPE_CODE_WIDE:
			move_instr = smali.MOVE_WIDE_16
			
		elif type_code == TYPE_CODE_WIDE_REMAINING:
			move_instr = None
			
		elif type_code == TYPE_CODE_OBJ_REF:
			move_instr = smali.MOVE_OBJECT_16
			
		return move_instr		

			
	def is_high_numbered(self, reg_name):
		check_name(reg_name)
		letter = get_letter(reg_name)
		number = get_number(reg_name)
		
		if(letter != "v"):
			raise ValueError("Cannot determine if register is high numbered: " + str(self))
		
		#print("self[" + str(reg_name) + "]: " + TYPE_code_name(self[reg_name]))
		if(self[reg_name] == TYPE_CODE_WIDE):
			return (number > 14)
			
		# if the type is unknown or the type is NOT wide
		# then we can use the "word boundary" of 15
		return (number > 15)
			
		
	def __getitem__(self, key):
		# allows using [] on this object and avoids
		# the exception raised when key is not in self.type_map
		# dictionary
		if(key in self.type_map):
			return self.type_map[key]
		return None
		
	def __setitem__(self, reg_name, type_code):
		# allows using [] on this object and avoids
		# the exception raised when key is not in self.type_map
		# dictionary
		check_type(type_code)
		if(type_code == TYPE_CODE_WIDE_REMAINING):
			raise ValueError("Should not explicitly set type: " + type_code_name(type_code))
		check_name(reg_name)

		adjoining_reg = "v" + str(get_number(reg_name) + 1)
		check_name(adjoining_reg)
		
		
		#print("key reg: " + str(key_reg))
		#print("current map: " + str(self.mt_map))
		#print("mt_map[key_reg}: " + str(self.mt_map[key_reg]))
		#if(key_reg in self.type_map):
		#	if(self.type_map[key_reg] == TYPE_CODE_WIDE_REMAINING):
		#		raise ValueError("You have tried to clobber the second 1/2 of a wide value!\n\treg: " + str(key_reg) + "\n\tinstruction: " + str(instruction))

		#print(self.pretty_string(15, 20))
		existing_type = self[reg_name]
		if existing_type == TYPE_CODE_WIDE_REMAINING:
			# unusual, but seems to happen in valid smali code
			left_adjoining_reg = "v" + str(get_number(reg_name) - 1)
			check_name(left_adjoining_reg)
			self.type_map[left_adjoining_reg] = None

		#print("existing type: " + TYPE_code_name(existing_type))
		if(existing_type == TYPE_CODE_WIDE and 
			type_code != TYPE_CODE_WIDE):
			# clear the other register if this WIDE is overwritten 
			# with something else.
			self.type_map[adjoining_reg] = None


		# actually write type to dictionary
		self.type_map[reg_name] = type_code
		if type_code == TYPE_CODE_WIDE:
			self.type_map[adjoining_reg] = TYPE_CODE_WIDE_REMAINING


	def __contains__(self, key):
		# Just a pass-through so you can directly
		# check if key is inside the underlying dictionary
		return key in self.type_map
		
		
	def __eq__(self, other):
		# pass-through so you can directly check
		# if this pool is equal to a dictionary matching
		# the mt_map dictionary
		return self.type_map == other
		

	def __str__(self):
		return str(self.type_map)
		
		
	def pretty_string(self, start_val, stop_val):
		s = ""
		for i in range(start_val, stop_val):
			reg = "v" + str(i)
			type_code = self[reg]
			s = s + str(reg) + ": " + type_code_name(type_code) + "\n"
		return s
		
		
	def get_spot(self, max_val, type_code, exclude_list = []):
		# Look for empty spot to use
		# 1) empty spots prioritized
		# 2) spots of the matching type
		# 3) a convenient spot cannot be found:
		#		just return a spot of different type
		# 4) if the requested type is WIDE and a convenient
		#		spot cannot be found: raise an exception

		# 1
		for i in range(max_val):
			reg_name = "v" + str(i)
			
			if(reg_name in exclude_list):
				continue
			
			if(self[reg_name] == None):
				if(type_code == TYPE_CODE_WIDE):
					adjacent_reg_name = "v" + str(i+1)
					if(self[adjacent_reg_name] == None):
						return reg_name
					else:
						continue
						
				else:
					return reg_name
					
		# 2
		for i in range(max_val):
			reg_name = "v" + str(i)
			
			if(reg_name in exclude_list):
				continue
				
			if(type_code == self[reg_name]):
				return reg_name

		# conclusions 3 and 4
		# theoretically possible if user is looking for TYPE_CODE_OBJ_REF
		# and max value is X and all registers below X are TYPE_CODE_WORD

		# 4
		if type_code == TYPE_CODE_WIDE:
			#print(self.pretty_string(0, 20))
			raise ValueError("Could not find a spot for type: " + type_code_name(type_code) + " in first " + str(max_val) + " registers.")	

		# 3
		for i in range(max_val):
			reg_name = "v" + str(i)

			if(reg_name in exclude_list):
				continue

			# this might return a TYPE_WIDE when user
			# is actually looking for a TYPE_WORD
			# but that should be ok, bigger problem
			# is when user is looking for WIDE and can't
			# get one, that is resolved by conclusion 4
			return reg_name
		
		#return None

	def get_consecutive_non_wide_reg_pair(self, max_val, exclude_list = []):
		for i in range(max_val):
			reg_name = "v" + str(i)
			reg_name_adjoining = "v" + str(i+1)

			if(reg_name in exclude_list):
				continue

			if(self[reg_name] != TYPE_CODE_WIDE and
				self[reg_name] != TYPE_CODE_WIDE_REMAINING):
				return (reg_name, reg_name_adjoining)
	

def main():
	print("Testing VRegisterPool")
	
	# this import is actually only necessary for the tests
	import SmaliMethodDef 
	
	print("\tConstructor...")
	signature = SmaliMethodDef.SmaliMethodSignature(".method private calculatePageOffsets(Landroidx/viewpager/widget/ViewPager$ItemInfo;ILandroidx/viewpager/widget/ViewPager$ItemInfo;)V")
	pool = VRegisterPool(signature, 13)
	soln = {"v13": TYPE_CODE_OBJ_REF, "v14": TYPE_CODE_OBJ_REF, "v15": TYPE_CODE_WORD, "v16": TYPE_CODE_OBJ_REF}
	#print(soln)
	#print(pool)
	assert(pool == soln)

	signature = SmaliMethodDef.SmaliMethodSignature(".method private calculatePageOffsets(Landroidx/viewpager/widget/ViewPager$ItemInfo;ILandroidx/viewpager/widget/ViewPager$ItemInfo;J)V")
	pool = VRegisterPool(signature, 13)
	soln = {"v13": TYPE_CODE_OBJ_REF, "v14": TYPE_CODE_OBJ_REF, "v15": TYPE_CODE_WORD, "v16": TYPE_CODE_OBJ_REF, "v17" : TYPE_CODE_WIDE, "v18" : TYPE_CODE_WIDE_REMAINING}
	#print(soln)
	#print(result)
	assert(pool == soln)
	
	
	print("\tupdate()...")
	pool.update("    const-wide/16 v23, 0x1\n")
	soln["v23"] = TYPE_CODE_WIDE
	soln["v24"] = TYPE_CODE_WIDE_REMAINING
	assert(pool == soln)
	
	pool.update("    const-string v19, \"hello\"\n")
	soln["v19"] = TYPE_CODE_OBJ_REF
	assert(pool == soln)
	
	pool.update("    array-length v16, v21\n")
	soln["v16"] = TYPE_CODE_WORD
	# this following can be inferred, but our code doesn't 
	# update based on inferences, only definitives
	#soln["v21"] = smali.MOVE_OBJECT_16
	assert(pool == soln)
	
	pool.update("    return-void\n")
	assert(pool == soln)
	
	
	print("\tget_move_type()...")
	type_code = _get_type_written("array-length")
	assert(type_code == TYPE_CODE_WORD)
	type_code = _get_type_written("no-op")
	assert(type_code == None)
	
	
	print("\t__getitem__()...")
	type_code = pool["v16"]
	assert(type_code == TYPE_CODE_WORD)
	type_code = pool["v35"]
	assert(type_code == None)

	
	print("\t__setitem__()...")
	pool["v15"] = TYPE_CODE_OBJ_REF
	assert(pool["v15"] == TYPE_CODE_OBJ_REF)
	try:
		pool["v15"] = "boolean" # not a valid type_code
		assert(False)
	except:
		pass
	assert(pool["v15"] == TYPE_CODE_OBJ_REF)
	
	try:
		pool["v18"] = TYPE_CODE_WIDE_REMAINING
		assert(False)
	except:
		pass
	assert(pool["v18"] == TYPE_CODE_WIDE_REMAINING)
	assert(pool["v17"] == TYPE_CODE_WIDE)
	
	print("\t__contains__()...")
	assert("v16" in pool)
	assert("v30" not in pool)
	
	
	
	#print(pool.pretty_string(0, 32))
	print("\tget_spot()...")
	pool.update("    const/16 v0, 0x1\n")
	try:
		reg = pool.get_spot(1, TYPE_CODE_OBJ_REF)
		assert(False)
	except:
		pass
	reg = pool.get_spot(14, TYPE_CODE_OBJ_REF)
	assert(reg == "v1")
	reg = pool.get_spot(14, None)
	assert(reg == "v1")
	pool.update("    const v2, 0x1")
	reg = pool.get_spot(5, TYPE_CODE_WIDE)
	assert(reg == "v3")
	reg = pool.get_spot(5, TYPE_CODE_OBJ_REF)
	assert(reg == "v1")
	reg = pool.get_spot(15, TYPE_CODE_WORD)
	assert(reg == "v1")
	pool.update("    sget-boolean v1, Lclass;->field:Z");
	reg = pool.get_spot(15, TYPE_CODE_OBJ_REF)
	assert(reg == "v3")

	pool.update("    const/16 v17, 0x1\n")
	assert(pool["v17"] == TYPE_CODE_WORD)
	assert(pool["v18"] == None)
	#print(pool.pretty_string(0, 32))
	
	
	
	print("\tcheck_name()...")
	check_name("v2")
	assert(True)
	try:
		check_name("vp2")
		assert(False)
	except:
		pass
	
	try:
		check_name("p1")
		assert(False)
	except:
		pass
	

	print("\tget_number()...")
	assert(get_number("v3") == 3)
	assert(get_letter("v3") == "v")
	try:
		ans = get_letter("v-2")
		assert(ans == "v")
		assert(False)
	except:
		pass
		
	
	
	print("\tis_high_numbered()...")
	assert(pool.is_high_numbered("v2") == False)
	assert(pool.is_high_numbered("v21") == True)
	try:
		pool.is_high_numbered("p2")
		assert(False)
	except ValueError:
		pass
	assert(pool.is_high_numbered("v15") == False)
	pool["v15"] = TYPE_CODE_WIDE
	assert(pool.is_high_numbered("v15") == True)
	
	
	
	#print(pool.pretty_string(0, 32))
	print("\tget_move_instr()...")
	assert(pool.get_move_instr("v0") == smali.MOVE_16)
	assert(pool.get_move_instr("v15") == smali.MOVE_WIDE_16)
	assert(pool.get_move_instr("v16") == None)
	assert(pool.get_move_instr("v52") == None)
	try:
		pool.get_move_instr("52")
		assert(False)
	except:
		pass


	print("\tget_consecutive_non_wide_registers()...")
	pair = pool.get_consecutive_non_wide_reg_pair(15, exclude_list = ["v0"])
	#print("pair: "+ str(pair))
	assert(pair == ("v1", "v2"))

	#print(pool.pretty_string(0, 25))
	print("All Tests PASSED!")


if __name__ == "__main__":
	main()
