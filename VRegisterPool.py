
import StigmaStringParsingLib
import SmaliAssemblyInstructions as smali


class VRegisterPool():
	# A register pool only exists inside a method
	# It is a collection of all "v" registers
	# It knows the type of every register
	# It knows which registers are not containing
	# any data (yet)
	
	# Primary API
	# update("const/4 v1, 0x8")  sets the type of v1 to be TYPE_CODE_WORD
	# self.type_map 
	# [] and "in" supported (keys in self.type_map)
	# getitem_without_error is like [] but returns None if key not found
	# pretty_string()
	# 
	# -- Maybe Not Useful --
	# get_empty_small_numbered_reg
	# get_empty_small_numbered_reg_wide
	
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
			
			
			if reg_type in smali.TYPE_LIST_WORD:
				self.type_map[v_reg] = smali.TYPE_CODE_WORD
				
			elif reg_type in smali.TYPE_LIST_WIDE:
				self.type_map[v_reg] = smali.TYPE_CODE_WIDE
				
			elif reg_type in smali.TYPE_LIST_WIDE_REMAINING:
				self.type_map[v_reg] = smali.TYPE_CODE_WIDE_REMAINING
				
			elif reg_type in smali.TYPE_LIST_OBJECT_REF:
				self.type_map[v_reg] = smali.TYPE_CODE_OBJ_REF
				
			else:
				raise ValueError("Invalid Type: " + str(reg_type))


	def update(self, instruction):
		#print("update(" + repr(instruction) + ")")
		
		# "update move-type hashmap"
		# this updates the hashmap that indicates for each register
		# what the corresponding move instruction must be used
		# in order to move that register (assuming that register
		# will be used on the RIGHT hand side of the move)
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
		data_type_written = VRegisterPool._get_type_written(opcode)

		if data_type_written is None:
			return
			
		key_reg = StigmaStringParsingLib.get_v_and_p_numbers(instruction)[0]
		
		#print("key reg: " + str(key_reg))
		#print("current map: " + str(self.mt_map))
		#print("mt_map[key_reg}: " + str(self.mt_map[key_reg]))
		if(key_reg in self.type_map):
			if(self.type_map[key_reg] == smali.TYPE_CODE_WIDE_REMAINING):
				raise ValueError("You have tried to clobber the second 1/2 of a wide value!\n\treg: " + str(key_reg) + "\n\tinstruction: " + str(instruction))
			
		self.type_map[key_reg] = data_type_written
		
		if data_type_written == smali.TYPE_CODE_WIDE:
			key_reg_num = int(key_reg[1:])
			new_key_reg = "v" + str(key_reg_num + 1)
			self.type_map[new_key_reg] = smali.TYPE_CODE_WIDE_REMAINING
	

	@staticmethod
	def _get_type_written(opcode):
		if opcode in StigmaStringParsingLib.WORD_MOVE_LIST:
			return smali.TYPE_CODE_WORD
		elif opcode in StigmaStringParsingLib.WIDE_MOVE_LIST:
			return smali.TYPE_CODE_WIDE
		elif opcode in StigmaStringParsingLib.OBJECT_MOVE_LIST:
			return smali.TYPE_CODE_OBJ_REF
		else:
			return None
		
		
	def __getitem__(self, key):
		# just a pass-through so you can directly
		# address the underlying dictionary
		return self.type_map[key]
		
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
		
		
	def getitem_without_error(self, key):
		if(key in self.type_map):
			return self.type_map[key]
		return None
		
		
	def pretty_string(self, start_val, stop_val):
		s = ""
		for i in range(start_val, stop_val):
			reg = "v" + str(i)
			move = self.getitem_without_error(reg)
			s = s + str(reg) + ": " + str(move) + "\n"
		return s
	
	
	def get_empty_small_numbered_reg(self):
		# returns a register that does not appear to have a type
		for i in range(16):
			v_num = "v" + str(i)
			if(v_num not in self.type_map):
				return v_num
		return None
		
		
	def get_empty_small_numbered_reg_wide(self):
		for i in range(15):
			v_num = "v" + str(i)
			v_num_next = "v" + str(i+1)
			if(v_num not in self.type_map and v_num_next not in self.type_map):
				return v_num
		return None
		
	
	
	
def main():
	print("Testing VRegisterPool")
	
	# this import is actually only necessary for the tests
	import SmaliMethodDef 
	
	print("\tConstructor...")
	signature = SmaliMethodDef.SmaliMethodSignature(".method private calculatePageOffsets(Landroidx/viewpager/widget/ViewPager$ItemInfo;ILandroidx/viewpager/widget/ViewPager$ItemInfo;)V")
	pool = VRegisterPool(signature, 13)
	soln = {"v13": smali.TYPE_CODE_OBJ_REF, "v14": smali.TYPE_CODE_OBJ_REF, "v15": smali.TYPE_CODE_WORD, "v16": smali.TYPE_CODE_OBJ_REF}
	#print(soln)
	#print(pool)
	assert(pool == soln)
	signature = SmaliMethodDef.SmaliMethodSignature(".method private calculatePageOffsets(Landroidx/viewpager/widget/ViewPager$ItemInfo;ILandroidx/viewpager/widget/ViewPager$ItemInfo;J)V")
	pool = VRegisterPool(signature, 13)
	soln = {"v13": smali.TYPE_CODE_OBJ_REF, "v14": smali.TYPE_CODE_OBJ_REF, "v15": smali.TYPE_CODE_WORD, "v16": smali.TYPE_CODE_OBJ_REF, "v17" : smali.TYPE_CODE_WIDE, "v18" : smali.TYPE_CODE_WIDE_REMAINING}
	#print(soln)
	#print(result)
	assert(pool == soln)
	
	
	print("\tupdate()...")
	try:
		pool.update("    const-wide/16 v18, 0x1\n")
		assert(False)
	except ValueError:
		pass
		
	pool.update("    const-wide/16 v23, 0x1\n")
	soln["v23"] = smali.TYPE_CODE_WIDE
	soln["v24"] = smali.TYPE_CODE_WIDE_REMAINING
	assert(pool == soln)
	
	pool.update("    const-string v19, \"hello\"\n")
	soln["v19"] = smali.TYPE_CODE_OBJ_REF
	assert(pool == soln)
	
	pool.update("    array-length v16, v21\n")
	soln["v16"] = smali.TYPE_CODE_WORD
	# this following can be inferred, but our code doesn't 
	# update based on inferences, only definitives
	#soln["v21"] = smali.MOVE_OBJECT_16
	assert(pool == soln)
	
	pool.update("    return-void\n")
	assert(pool == soln)
	
	
	print("\tget_move_type()...")
	type_code = VRegisterPool._get_type_written("array-length")
	assert(type_code == smali.TYPE_CODE_WORD)
	type_code = VRegisterPool._get_type_written("no-op")
	assert(type_code == None)
	
	
	print("\t__getitem__()...")
	type_code = pool["v16"]
	assert(type_code == smali.TYPE_CODE_WORD)
	
	print("\t__contains__()...")
	assert("v16" in pool)
	assert("v30" not in pool)
	
	
	print("\tget_empty_small_numbered_reg()...")
	reg = pool.get_empty_small_numbered_reg()
	assert(reg == "v0")
	pool.update("    const/16 v0, 0x1\n")
	reg = pool.get_empty_small_numbered_reg()
	assert(reg == "v1")
	
	
	
	print("\tget_empty_small_numbered_reg_wide()...")
	reg = pool.get_empty_small_numbered_reg_wide()
	#print(pool.pretty_string(0, 32))
	assert(reg == "v1")
		
		
	print("All Tests PASSED!")

if __name__ == "__main__":
	main()
