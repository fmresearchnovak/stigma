import re
import SmaliAssemblyInstructions as smali

class SmaliRegister():
	
	# Primary API
	# self.letter
	# self.number
	# self.name (e.g., "v4")
	#
	# self.convert_to_v_reg(locals_num)
	# self.set_type(t)
	# self.set_move_inst(inst)
	# self.is_high_numbered()
	#
	# The following are given values 
	# only after a call to "set_type(t)
	# self.t (e.g., "J2")
	# self.move_inst (e.g., smali.MOVE_16)
	
	
	def __init__(self, reg):
		VALID_REG_REGEX = r"^[vp][0-9]+$"
		
		result = re.search(VALID_REG_REGEX, reg)
		if(not result):
			raise ValueError("Invalid Register: " + str(reg))
		
		self.letter = reg[0]
		self.number = int(reg[1:])

		self._update_name()
		self.move_inst = None
		self.t = None
	
	def _update_name(self):
		self.name = self.letter + str(self.number)
	
	
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
		
		
	def set_type(self, t):
		# t should be one of
		
		if t in ["THIS", "L", "ARRAY"]:
			self.move_inst = smali.MOVE_OBJECT_16
		
		elif t in ["J", "D"]:
			self.move_inst = smali.MOVE_WIDE_16
		
		elif t in ["Z", "B", "S", "C", "I", "F"]:
			self.move_inst = smali.MOVE_16
		
		elif t in ["J2", "D2"]:
			self.move_inst = None
		
		else:
			raise RuntimeError("Cannot assign register type for: " + str(t))
		
		self.t = t
		
		
	def set_move_inst(self, inst):
		if(inst == smali.MOVE_OBJECT_16):
			self.t = ["THIS", "L", "ARRAY"]
		
		elif inst == smali.MOVE_WIDE_16:
			self.t = ["J", "D"]
			
		elif inst == smali.MOVE_16:
			self.t = ["Z", "B", "S", "C", "I", "F"]
			
		else:
			raise ValueError("Invalid move instruction: " + str(inst))
			
		self.move_inst = inst
		
	
	def is_high_numbered(self):
		
		if(self.letter != "v"):
			raise ValueError("Cannot determine if register is high numbered: " + str(self))
		
		return (self.number > 15)


def main():
	print("Testing Constructor...")
	sr = SmaliRegister("v3")
	assert(str(sr) == "v3")
	assert(sr.letter == "v")
	assert(sr.number == 3)
	
	try:
		sr = SmaliRegister("23q")
		assert(False)
	except ValueError:
		pass
		
	print("Testing Convert pX to vX...")
	sr = SmaliRegister("p1")
	sr.convert_to_v_reg(17)
	assert(str(sr) == "v18")
	
	print("Testing SetType...")
	sr = SmaliRegister("v2")
	assert(sr.move_inst == None)
	sr.set_type("ARRAY")
	assert(sr.move_inst == smali.MOVE_OBJECT_16)
	assert(sr.t == "ARRAY")
	
	print("Testing == ...")
	sr2 = SmaliRegister("v2")
	sr3 = SmaliRegister("v5")
	assert(sr2 != sr3)
	assert(sr2 == sr2)
	assert(sr2 == sr)
	
	
	print("Testing is_high_numbered()...")
	assert(sr2.is_high_numbered() == False)
	sr = SmaliRegister("v21")
	assert(sr.is_high_numbered() == True)
	sr = SmaliRegister("p2")
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
