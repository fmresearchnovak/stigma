
import StigmaStringParsingLib
import SmaliAssemblyInstructions as smali





TYPE_CODE_WORD = 0
TYPE_CODE_WIDE = 1
TYPE_CODE_OBJ_REF = 2
MOVE_TYPE_LIST = [smali.MOVE_16, smali.MOVE_WIDE_16, smali.MOVE_OBJECT_16]

class VRegisterPool():
	# A register pool only exists inside a method
	# It is a collection of all "v" registers
	# It knows the type of every register
	# It knows which registers are not containing
	# any data (yet)
	
	def __init__(self, signature, num_local_params):
		
		# mt_map stands for "move-type hashmap"
		self.mt_map = {}
		
		# Initiate move_type_hashmap with parameters of funciton
		# -- Example -- MyMethod(JI)  .locals = 17
		# p0 = v22 type: object reference ("this") => smali.MOVE_OBJECT_16
		# p1 = v23 type: long => smali.MOVE_WIDE_16
		# p2 = v24 type: long2
		# p3 = v25 type: int => smali.MOVE_16
		# key: register name (v's only)
		# value: smali.MOVE corresponding to register type
		
		for key in signature.parameter_type_map:
			#print("key: " + str(key) + "  value: " + str(signature.parameter_type_map[key]))
			p_reg = key
			reg_type = signature.parameter_type_map[key]
			v_reg = StigmaStringParsingLib.get_v_from_p(p_reg, num_local_params)
			
			if reg_type in ["THIS", "L", "ARRAY"]:
				self.mt_map[v_reg] = smali.MOVE_OBJECT_16
				
			elif reg_type in ["J", "D"]:
				self.mt_map[v_reg] = smali.MOVE_WIDE_16
				
			elif reg_type in ["Z", "B", "S", "C", "I", "F"]:
				self.mt_map[v_reg] = smali.MOVE_16
				
			elif reg_type in ["J2", "D2"]:
				self.mt_map[v_reg] = "2"
				
			else:
				raise RuntimeError("cannot assign register type for: " + str(reg_type))


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
		best_move_type = VRegisterPool.get_move_type(opcode)

		if best_move_type is None:
			return
			
		key_reg = StigmaStringParsingLib.get_v_and_p_numbers(instruction)[0]
		
		#print("key reg: " + str(key_reg))
		#print("current map: " + str(self.mt_map))
		#print("mt_map[key_reg}: " + str(self.mt_map[key_reg]))
		if(key_reg in self.mt_map):
			if(self.mt_map[key_reg] == "2"):
				raise ValueError("You have tried to clobber the second 1/2 of a wide value!\n\treg: " + str(key_reg) + "\n\tinstruction: " + str(instruction))
			if(self.mt_map[key_reg] == smali.MOVE_WIDE_16):
				print("Warning!!! You have clobbered the first 1/2 of a wide value!\n\treg: " + str(key_reg) + "\n\tinstruction: " + str(instruction))
		
		self.mt_map[key_reg] = best_move_type
		
		if best_move_type == smali.MOVE_WIDE_16:
			key_reg_num = int(key_reg[1:])
			new_key_reg = "v" + str(key_reg_num + 1)
			self.mt_map[new_key_reg] = "2"
	
	
	@staticmethod
	def get_move_type(opcode):
		# Gives the move-type indicated by the provided opcode
		# e.g., int-to-long vx vy indicates a double (because the
		# destination register vx will be a long)
		if opcode in StigmaStringParsingLib.WORD_MOVE_LIST:
			return smali.MOVE_16
		
		elif opcode in StigmaStringParsingLib.WIDE_MOVE_LIST:
			return smali.MOVE_WIDE_16
			
		elif opcode in StigmaStringParsingLib.OBJECT_MOVE_LIST:
			return smali.MOVE_OBJECT_16
		
		else:
			return None
			
	
	def __getitem__(self, key):
		# just a pass-through so you can directly
		# address the underlying dictionary
		return self.mt_map[key]
		
	def __contains__(self, key):
		# Just a pass-through so you can directly
		# check if key is inside the underlying dictionary
		return key in self.mt_map
		
		
	def __eq__(self, other):
		# pass-through so you can directly check
		# if this pool is equal to a dictionary matching
		# the mt_map dictionary
		return self.mt_map == other
		
	def __str__(self):
		return str(self.mt_map)
		
		
	def get_without_error(self, key):
		if(key in self.mt_map):
			return self.mt_map[key]
		return None
		
		
	def pretty_string(self, start_val, stop_val):
		s = ""
		for i in range(start_val, stop_val):
			reg = "v" + str(i)
			move = self.get_without_error(reg)
			s = s + str(reg) + ": " + str(move) + "\n"
		return s
	
	
	def get_empty_small_numbered_reg(self):
		# returns a register that does not appear to have a type
		for i in range(16):
			v_num = "v" + str(i)
			if(v_num not in self.mt_map):
				return v_num
		return None
		
		
	def get_empty_small_numbered_reg_wide(self):
		for i in range(15):
			v_num = "v" + str(i)
			v_num_next = "v" + str(i+1)
			if(v_num not in self.mt_map and v_num_next not in self.mt_map):
				return v_num
		return None
		
		
	def get_small_numbered_reg(self, TYPE_CODE):
		for i in range(16):
			v_num = "v" + str(i)
			if(v_num in self.mt_map):
				if(self.mt_map[v_num] == MOVE_TYPE_LIST[TYPE_CODE]):
					return v_num
		return None
		
	
	
	
def main():
	print("Testing VRegisterPool")
	
	# this import is actually only necessary for the tests
	import SmaliMethodDef 
	
	print("\tConstructor...")
	signature = SmaliMethodDef.SmaliMethodSignature(".method private calculatePageOffsets(Landroidx/viewpager/widget/ViewPager$ItemInfo;ILandroidx/viewpager/widget/ViewPager$ItemInfo;)V")
	pool = VRegisterPool(signature, 13)
	soln = {"v13": smali.MOVE_OBJECT_16, "v14": smali.MOVE_OBJECT_16, "v15": smali.MOVE_16, "v16": smali.MOVE_OBJECT_16}
	#print(soln)
	#print(result)
	assert(pool == soln)
	signature = SmaliMethodDef.SmaliMethodSignature(".method private calculatePageOffsets(Landroidx/viewpager/widget/ViewPager$ItemInfo;ILandroidx/viewpager/widget/ViewPager$ItemInfo;J)V")
	pool = VRegisterPool(signature, 13)
	soln = {"v13": smali.MOVE_OBJECT_16, "v14": smali.MOVE_OBJECT_16, "v15": smali.MOVE_16, "v16": smali.MOVE_OBJECT_16, "v17" : smali.MOVE_WIDE_16, "v18" : "2"}
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
	soln["v23"] = smali.MOVE_WIDE_16
	soln["v24"] = "2"
	assert(pool == soln)
	
	pool.update("    const-string v19, \"hello\"\n")
	soln["v19"] = smali.MOVE_OBJECT_16
	assert(pool == soln)
	
	pool.update("    array-length v16, v21\n")
	soln["v16"] = smali.MOVE_16
	# this following can be inferred, but our code doesn't 
	# update based on inferences, only definitives
	#soln["v21"] = smali.MOVE_OBJECT_16
	assert(pool == soln)
	
	pool.update("    return-void\n")
	assert(pool == soln)
	
	
	print("\tget_move_type()...")
	move_obj = VRegisterPool.get_move_type("array-length")
	assert(move_obj == smali.MOVE_16)
	move_obj = VRegisterPool.get_move_type("no-op")
	assert(move_obj == None)
	
	
	print("\t__getitem__()...")
	move_obj = pool["v16"]
	assert(move_obj == smali.MOVE_16)
	
	print("\t__contains__()...")
	assert("v16" in pool)
	assert("v30" not in pool)
	
	
	print("\tget_empty_small_numbered_reg()...")
	reg = pool.get_empty_small_numbered_reg()
	assert(reg == "v0")
	pool.update("    const/16 v0, 0x1\n")
	reg = pool.get_empty_small_numbered_reg()
	assert(reg == "v1")
	
	
	print("\tget_small_numbered_reg()...")
	reg = pool.get_small_numbered_reg(TYPE_CODE_WORD)
	assert(reg == "v0")
	reg = pool.get_small_numbered_reg(TYPE_CODE_WIDE)
	assert(reg == None)
	pool.update("    const-wide/16 v2 0x1\n")
	reg = pool.get_small_numbered_reg(TYPE_CODE_WIDE)
	assert(reg == "v2")
	assert(pool["v3"] == "2")
	
	
	reg = pool.get_empty_small_numbered_reg_wide()
	#print(pool.pretty_string(0, 32))
	assert(reg == "v4")
		
		
	print("All Tests PASSED!")

if __name__ == "__main__":
	main()
