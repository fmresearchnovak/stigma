import re
from stigma import SmaliAssemblyInstructions as smali

class SmaliRegister():
	
	# Primary API
	# self.letter
	# self.number
	# self.name (e.g., "v4")
	# self.type (e.g., smali.TYPE_CODE_WORD)
	# self.move_instr (e.g., MOVE_WIDE_16)
	
	# self.convert_to_v_reg(locals_num)
	# self.update_type(t)
	# self.is_high_numbered()
	#
	# -- TO DO LIST --
	# self.is_only_read()
	# self.is_only_written()
	
	
	def __init__(self, reg_name, reg_type):
		VALID_REG_REGEX = r"^[vp][0-9]+$"
		
		result = re.search(VALID_REG_REGEX, reg_name)
		if(not result):
			raise ValueError("Invalid Register: " + str(reg_name))
		
		self.letter = reg_name[0]
		self.number = int(reg_name[1:])

		self._update_name()
		self.update_type(reg_type)
			
	
	def _update_name(self):
		self.name = self.letter + str(self.number)
		
		
	def update_type(self, reg_type):
		self.type = None
		if(reg_type == None):
			return
		
		if reg_type in smali.TYPE_LIST_ALL:
			
			if reg_type in smali.TYPE_LIST_WORD:
				self.type = smali.TYPE_CODE_WORD
				
			elif reg_type in smali.TYPE_LIST_WIDE:
				self.type = smali.TYPE_CODE_WIDE
				
			elif reg_type in smali.TYPE_LIST_WIDE_REMAINING:
				self.type = smali.TYPE_CODE_WIDE_REMAINING
				
			elif reg_type in smali.TYPE_LIST_OBJECT_REF:
				self.type = smali.TYPE_CODE_OBJ_REF
				
			else:
				raise ValueError("Could not set move instruction based on type: " + str(reg_type))
		
		elif reg_type in smali.TYPE_CODE_ALL:
			self.type = reg_type
			

		if self.type in smali.TYPE_CODE_ALL:
			
			if self.type == smali.TYPE_CODE_WORD:
				self.move_instr = smali.MOVE_16
				
			elif self.type == smali.TYPE_CODE_WIDE:
				self.move_instr = smali.MOVE_WIDE_16
				
			elif self.type == smali.TYPE_CODE_WIDE_REMAINING:
				self.move_instr = None
				
			elif self.type == smali.TYPE_CODE_OBJ_REF:
				self.move_instr = smali.MOVE_OBJECT_16
				
			else:
				raise ValueError("Could not set move instruction based on type: " + str(reg_type))
			
		else:
			raise ValueError("Invalid Type: " + str(reg_type))
			
		
	
	def __str__(self):
		return self.name
	
	def __eq__(self, other):
		return self.name == other.name
	
	def convert_to_v_reg(self, locals_num):
		if(self.letter != "p"):
			raise ValueError("Cannot convert to v register: " + str(self.reg))
		
		self.letter = "v"
		self.number = locals_num + self.number
		
		self._update_name()
		

	def is_high_numbered(self):
		
		if(self.letter != "v"):
			raise ValueError("Cannot determine if register is high numbered: " + str(self))
		
		if(self.type in smali.TYPE_LIST_WIDE):
			return (self.number > 14)
			
		return (self.number > 15)


def main():
	print("Testing Constructor...")
	sr = SmaliRegister("v3", "I")
	assert(str(sr) == "v3")
	assert(sr.letter == "v")
	assert(sr.number == 3)
	
	try:
		sr = SmaliRegister("23q", "J")
		assert(False)
	except ValueError:
		pass
		
	try:
		sr = SmaliRegister("p1", "Q")
		assert(False)
	except ValueError:
		pass
		
	print("Testing Convert pX to vX...")
	sr = SmaliRegister("p1", "J")
	sr.convert_to_v_reg(17)
	assert(str(sr) == "v18")
	
	print("Testing SetType...")
	sr = SmaliRegister("v2", "ARRAY")
	assert(sr.move_instr == smali.MOVE_OBJECT_16)
	assert(sr.type == smali.TYPE_CODE_OBJ_REF)
	
	print("Testing == ...")
	sr2 = SmaliRegister("v2", "I")
	sr3 = SmaliRegister("v5", "I")
	assert(sr2 != sr3)
	assert(sr2 == sr2)
	assert(sr2 == sr)
	
	
	print("Testing is_high_numbered()...")
	assert(sr2.is_high_numbered() == False)
	sr = SmaliRegister("v21", "Z")
	assert(sr.is_high_numbered() == True)
	sr = SmaliRegister("p2", "B")
	try:
		sr.is_high_numbered()
		assert(False)
	except ValueError:
		pass
	sr.convert_to_v_reg(16)
	assert(sr.is_high_numbered() == True)
		
	print("All Tests Passed!!")

if __name__ == "__main__":
	main()
