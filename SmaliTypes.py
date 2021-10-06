
import SmaliAssemblyInstructions


class SmaliType:
	
	def from_string(raw_type_string):
		
		constructor_map = {"32-bit": ThirtyTwoBit, "Z": Boolean, "B": Byte,
			"S": Short, "C": Char, "I": Int, "F": Float, 
			"64-bit": SixtyFourBit, "64-bit-2": SixtyFourBit_2, 
			"J": Long, "D": Double, "J2": SixtyFourBit_2, "D2": SixtyFourBit_2}
			
		if raw_type_string in constructor_map:
			obj = constructor_map[raw_type_string](raw_type_string)
		
		elif raw_type_string[0] == "[":
			obj = Array(raw_type_string)
			
		elif raw_type_string[0] == "L":
			obj = ObjectReference(raw_type_string)
			
		elif raw_type_string == "?":
			obj = UnknownType()
			
		else:
			raise Exception("Invalid type string: " + str(raw_type_string))
			
		return obj
		
		
		
class UnknownType(SmaliType):
	def __init__(self):
		self.raw_type_string = "?"
	
	def __str__(self):
		return "?"
		
	def get_generic_type(self):
		# the children inherit this method
		# it can be called on ANY "SmaliType" object
		# which is convenient to figure out the generic type
		return "?"
		
		
		
class ThirtyTwoBit(SmaliType):
	def __init__(self, new_raw_type_string):
		self.raw_type_string = new_raw_type_string
		self.move_instr = SmaliAssemblyInstructions.MOVE_16
	
	def __str__(self):
		return "32-bit"
		
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
	def __init__(self, new_raw_type_string):
		self.raw_type_string = new_raw_type_string
		self.move_instr = SmaliAssemblyInstructions.MOVE_WIDE_16
		
	def __str__(self):
		return "64-bit"
	
	def get_generic_type(self):
		# the children inherit this method
		# it can be called on ANY "SmaliType" object
		# which is convenient to figure out the generic type
		return "64-bit"
		
class SixtyFourBit_2(SixtyFourBit):
	def __str__(self):
		return "64-bit-2"
	
	def get_generic_type(self):
		# the children inherit this method
		# it can be called on ANY "SmaliType" object
		# which is convenient to figure out the generic type
		return "64-bit-2"
		
	def get_move_instr(self):
		raise Exception("No valid move instruction for 64-bit-2: " + str(raw_line_string))
	
		
class Long(SixtyFourBit):
	def __str__(self):
		return "L"
		
class Double(SixtyFourBit):
	def __str__(Self):
		return "D"
		
		



class ObjectReference(SmaliType):
	def __init__(self, new_raw_type_string):
		self.move_instr = SmaliAssemblyInstructions.MOVE_OBJECT_16
		
		if(new_raw_type_string[0] != "[" and new_raw_type_string[0] != "L"):
			raise Exception("Invalid specification of object: " + str(new_full_type))
			
		self.raw_type_string = new_raw_type_string
		
	def __str__(self):
		return self.raw_type_string
		
	def get_generic_type(self):
		# the children inherit this method
		# it can be called on ANY "SmaliType" object
		# which is convenient to figure out the generic type
		return "object"
		
		
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
		obj = SmaliType.from_string(unwrapped)
		return obj



