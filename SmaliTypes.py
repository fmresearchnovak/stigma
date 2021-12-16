
import SmaliAssemblyInstructions



def from_string(raw_type_string):
	constructor_map = {"32-bit": ThirtyTwoBit, "Z": Boolean, "B": Byte,
		"S": Short, "C": Char, "I": Int, "F": Float, 
		"64-bit": SixtyFourBit, "64-bit-2": SixtyFourBit_2, 
		"J": Long, "D": Double, "J2": Long_2, "D2": Double_2}
		
	if raw_type_string in constructor_map:
		obj = constructor_map[raw_type_string]()
	
	elif raw_type_string[0] == "[":
		obj = Array(raw_type_string)
		
	elif raw_type_string[0] == "L":
		obj = ObjectReference(raw_type_string)
		
	elif raw_type_string == "?":
		obj = UnknownType()
		
	else:
		raise Exception("Invalid type string: " + str(raw_type_string))
		
	return obj

class SmaliType:
	
	def get_move_instr(self):
		return self.move_instr
		
	def __repr__(self):
		return str(self)
		
		
		
class UnknownType(SmaliType):
	def __init__(self):
		self.raw_type_string = "?"
		self.specification_level = 0
	
	def __str__(self):
		return self.raw_type_string
		
	def __eq__(self, other):
		if(isinstance(other, str)):
			return other == self.raw_type_string
			
		if(isinstance(other, UnknownType)):
			return True
			
		return False
		
	def get_generic_type(self):
		# the children inherit this method
		# it can be called on ANY "SmaliType" object
		# which is convenient to figure out the generic type
		return "?"
		
		
		
class ThirtyTwoBit(SmaliType):
	def __init__(self):
		self.move_instr = SmaliAssemblyInstructions.MOVE_16
		self.specification_level = 2
	
	def __str__(self):
		return "32-bit"
		
	def __eq__(self, other):
		if(isinstance(other, str)):
			# maybe instead do this:
			# return other == self.get_generic_type()
			#print("comparing" + other + "  and " + str(self))
			return other == str(self)
			
		if(isinstance(other, ThirtyTwoBit)):
			# I'm not sure about this!
			return True
			
		return False
		
	def get_generic_type(self):
		# the children inherit this method
		# it can be called on ANY "SmaliType" object
		# which is convenient to figure out the generic type
		return "32-bit"
		
		
class Boolean(ThirtyTwoBit):
	def __str__(self):
		return "Z"
		
class Byte(ThirtyTwoBit):
	def __str__(self):
		return "B"
		
class Short(ThirtyTwoBit):
	def __str__(self):
		return "S"
		
class Char(ThirtyTwoBit):
	def __str__(self):
		return "C"
		
class Int(ThirtyTwoBit):
	def __str__(self):
		return "I"
		
class Float(ThirtyTwoBit):
	def __str__(self):
		return "F"
		
		
		
		
class SixtyFourBit(SmaliType):
	# A.K.A. "wide"
	def __init__(self):
		self.move_instr = SmaliAssemblyInstructions.MOVE_WIDE_16
		self.specification_level = 2
		
	def __str__(self):
		return "64-bit"
		
	def __eq__(self, other):
		if(isinstance(other, str)):
			# maybe instead do this:
			# return other == self.get_generic_type()
			return other == str(self)
			
		if(isinstance(other, SixtyFourBit)):
			return True
			
		return False
	
	def get_generic_type(self):
		# the children inherit this method
		# it can be called on ANY "SmaliType" object
		# which is convenient to figure out the generic type
		return "64-bit"
		
class Long(SixtyFourBit):
	def __str__(self):
		return "J"
		
class Double(SixtyFourBit):
	def __str__(Self):
		return "D"
		
		
		
class SixtyFourBit_2(SixtyFourBit):
	def __str__(self):
		return "64-bit-2"
		
	def __eq__(self, other):
		if(isinstance(other, str)):
			# maybe instead do this:
			# return other == self.get_generic_type()
			return other == str(self)
			
		if(isinstance(other, SixtyFourBit_2)):
			return True
	
	def get_generic_type(self):
		# the children inherit this method
		# it can be called on ANY "SmaliType" object
		# which is convenient to figure out the generic type
		return "64-bit-2"
		
	def get_move_instr(self):
		raise Exception("No valid move instruction for 64-bit-2: " + str(raw_line_string))
	
class Long_2(SixtyFourBit_2):
	def __str__(self):
		return "J2"
		
class Double_2(SixtyFourBit_2):
	def __str__(Self):
		return "D2"

		
		

class ObjectReference(SmaliType):
	def __init__(self, new_raw_type_string):
		self.specification_level = 2
		self.move_instr = SmaliAssemblyInstructions.MOVE_OBJECT_16
		
		if(new_raw_type_string[0] != "[" and new_raw_type_string[0] != "L" and new_raw_type_string != "?"):
			raise Exception("Invalid specification of object: " + str(new_raw_type_string))
		
		if("->" in new_raw_type_string):
			raise Exception("Invalid specification of object: " + str(new_raw_type_string))
			
		self.raw_type_string = new_raw_type_string
		
	def __str__(self):
		return self.raw_type_string
		
	def __eq__(self, other):
		if(isinstance(other, str)):
			# maybe instead do this:
			# return other == self.get_generic_type()
			return other == str(self)
		if(isinstance(other, ObjectReference)):
			return str(other) == str(self)
		
	def get_generic_type(self):
		# the children inherit this method
		# it can be called on ANY "SmaliType" object
		# which is convenient to figure out the generic type
		return "object"
		

class NonSpecificObjectReference(ObjectReference):
	def __init__(self):
		self.move_instr = SmaliAssemblyInstructions.MOVE_OBJECT_16
		self.raw_type_string = "Non Specific Object"
		self.specification_level = 1
		
		
class Array(ObjectReference):
	def unwrap_layer(self):
		"""
        The special case for unwrapping types of array with an aget-object instruction
        Algorithm: remove the first character to check the type
        
        aget-object vX vY vZ
        
        vX is the destination, we will set the type of this register
        what is returned from this function
        
        vY is the array, we have src_type which is the type of this array
        
        vZ is the index into vY, it is an int, we don't touch this
        
        e.g
            1)
                src_type: [[I
                return "[I"
            2)
                src_type: [Ljava/lang/String
                return "object"
                
            3) src_type= '?'
                return ?
        """ 
		unwrapped = self.raw_type_string[1:]
		# assert(unwrapped != 64-bit-2)
		obj = from_string(unwrapped)
		return obj
		
		
class NonSpecificArray(ObjectReference):
	def __init__(self):
		self.move_instr = SmaliAssemblyInstructions.MOVE_OBJECT_16
		self.raw_type_string = "Non Specific Array"
		self.specification_level = 1


def main():
	print("Testing SmaliType")
	
	print("\ttesting 32-bit types...")
	int1 = Int()
	int2 = from_string("I")
	assert(str(int1) == "I")
	assert(int1 == "I")
	assert(int1 == int2) 
	assert(isinstance(int1, Int))
	assert(isinstance(int1, ThirtyTwoBit))
	assert(isinstance(int2, Int))
	assert(isinstance(int2, ThirtyTwoBit))
	
	vague1 = from_string("32-bit")
	assert(vague1 == "32-bit")
	assert(isinstance(vague1, ThirtyTwoBit))
	
	
	print("\ttesting 64-bit types...")
	long_part1 = from_string("J")
	long_part2 = from_string("J2")
	
	assert(str(long_part1) == "J")
	assert(str(long_part2) == "J2")
	assert(long_part1 == "J")
	assert(long_part2 == "J2")

	assert(isinstance(long_part1, Long))
	assert(isinstance(long_part1, SixtyFourBit))
	assert(isinstance(long_part2, Long_2))
	assert(isinstance(long_part2, SixtyFourBit_2))
	
	
	print("\ttesting array types...")
	arr = Array("[[I")
	arr2 = Array("[[I")
	arr3 = Array("[J")
	arr4 = arr.unwrap_layer()
	int3 = arr4.unwrap_layer()
	
	assert(arr == "[[I")
	assert(arr4 == "[I")
	assert(int3 == "I")
	assert(isinstance(int3, Int))
	assert(isinstance(int3, ThirtyTwoBit))
	assert(arr2 == arr)
	
	print("\ttesting object types...")
	obj = ObjectReference("Ljava/lang/String;")
	obj2 = from_string("Ljava/lang/String;")
	assert(obj == obj2)
	assert(obj == "Ljava/lang/String;")
	
	print("ALL SmaliType TESTS PASSED!")


if __name__ == "__main__":
	main()
