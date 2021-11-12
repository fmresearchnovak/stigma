
class SmaliRegister():

	def __init__(self, reg):
		if(isinstance(reg, str)):
			letter = reg[0]
			number = int(reg[1:])
			
			if(letter != "v" and letter != "p"):
				SmaliRegister._raise_invalid_exception(reg)
				
			self.letter = letter
			self.number = number
			
		elif(isinstance(reg, SmaliRegister)):
			self.letter = reg.letter
			self.number = reg.number
			
		else:
			SmaliRegister._raise_invalid_exception(reg)
			
			
	@staticmethod
	def from_components(letter, number):
		s = str(letter) + str(number)
		return SmaliRegister(s)
		
		
	def __str__(self):
		return self.letter + str(self.number)
		
		
	def __add__(self, other):
		if(isinstance(other, int)):
			new_number = other + self.number
			return SmaliRegister(self.letter + str(new_number))
		raise ValueError("Invalid addition:", self, "+", other)
		
		
	def __eq__(self, other):
		if(isinstance(other, SmaliRegister)):
			return self.letter == other.letter and self.number == other.number
		elif(isinstance(other, str)):
			return str(self) == other
		else:
			raise ValueError("Invalid == operation:", self, "==", other)
			
	def __ge__(self, other):
		if(self.letter != "v"):
			raise ValueError("Comparison cannot be made: ", self, ">=", other)
		if(isinstance(other, int)):
			return self.number >= other
			
		raise ValueError("Comparison cannot be made: ", self, ">=", other)
		
		
	def is_high_numbered(self):
		return self.number > 15
		
		
	@staticmethod
	def _raise_invalid_exception(x):
		raise ValueError("Invalid register passed to constructor: ", x)



def main():
	print("Testing SmaliRegister")
	
	print("\ttesting constructors...")
	try:
		sr = SmaliRegister("q0")
		assert(False)
	except:
		pass
		
	sr = SmaliRegister("v2")
	sr_dup = SmaliRegister(sr)
	
	assert(str(sr) == "v2")
	assert(str(sr_dup) == "v2")
	assert(sr.letter == "v")
	assert(sr.number == 2)
	
	sr2 = SmaliRegister.from_components("v", 7)
	assert(sr2 == "v7")
	
	
	print("\ttesting basic methods...")
	sr18 = SmaliRegister("v18")
	assert(sr18.is_high_numbered())
	sr19 = sr18 + 1
	assert(sr19 == "v19")
	try:
		sr18 + "7"
		assert(False)
	except:
		pass
		
	try:
		sr18 == [8, 2, 3]
		assert(False)
	except:
		pass
	
	assert(sr == sr_dup)
	
	assert(sr18 >= 2)
	assert(sr18 >= 18)
	assert( (sr18 >= 19) == False)
	
	
	print("ALL SmaliRegister TESTS PASSED!")
	

if __name__ == "__main__":
	main()
