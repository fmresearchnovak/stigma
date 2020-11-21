#!/usr/bin/env python3

# SmaliAssemblyInstructions.py
#
# Each of these classes is basically in thin wrapper around a string 
# They correspond to the instructions for smali bytecode as listed
# here: http://pallergabor.uw.hu/androidblog/dalvik_opcodes.html
# Implementation is incomplete.  Only the instructions necessary 
# for taint-tracking implementation of the stigma project are present.


# When adding a new class to this file
# please consider the class hierarchy so far 
# (please update this comment)
#
# Should the new class be a child of SmaliAssemblyInstruction?
# Should the new class be a child of MOVE?
# Should the new class be a child of _SINGLE_DEST_REGISTER_INSTRUCTION?
#   * Note: _SINGLE_DEST_REGISTER_INSTRUCTION is any instruction that
#           only has ONE parameter; a register that serves as a destination.
# Should the new class be a child of CONST?
# Should the new class be a child of MOVE-RESULT?
# _SINGLE_DEST_REGISTER_INSTRUCTION
# _PARAMETER_LIST_INSTRUCTION
# _TRIPLE_REGISTER_INSTRUCTION
# _TWO_REG_EQ
# _ONE_REG_EQ_ZERO
# _I_INSTRUCTION
# _S_INSTRUCTION
# _INVOKE_INSTRUCTION
# _TWO_REGISTER_UNARY_INSTRUCTION



class SmaliAssemblyInstruction():

    def __str__(self):
        return "    " + repr(self) + "\n"

    def get_registers(self):
        return []

    def get_p_registers(self):
        return list(filter(lambda x : x[0] == "p", get_registers))

    def __eq__(self, other):
        return repr(self) == repr(other)
    
    def get_move(reg1, reg2):
        return MOVE_16(reg1, reg2)

class NormalMovable():
      def get_move(self, reg1, reg2):
        return MOVE_16(reg1, reg2)

class WideMovable():
    def get_move(self, reg1, reg2):
        return MOVE_WIDE_16(reg1, reg2)

class ObjectMovable():
    def get_move(self, reg1, reg2):
        return MOVE_OBJECT16(reg1, reg2)
    
class VaryingMovable():
    def get_move(self):
        raise NotImplementedError("get_move() not implemented by VaryingMovable")
        
class NonMovable():
    def get_move(self):
        raise ValueError("get_move() called on NoneMovable")
    

class NOP(SmaliAssemblyInstruction, NonMovable):
    def __init__(self):
        pass

    def __repr__(self):
        return "nop"


class BLANK_LINE(SmaliAssemblyInstruction, NonMovable):
    def __init__(self):
        pass

    def __repr__(self):
        return ""


class COMMENT(SmaliAssemblyInstruction, NonMovable):
    def __init__(self, line):
        self.l = line

    def __repr__(self):
        return "# " + self.l



class MOVE(SmaliAssemblyInstruction, NormalMovable):
    def __init__(self, reg1, reg2):
        self.reg1 = reg1
        self.reg2 = reg2

    def get_registers(self):
        if(self.reg1 == ""):
            raise UnboundLocalError("reg1")
        if(self.reg2 == ""):
            raise UnboundLocalError("reg2")
        return [self.reg1, self.reg2]

    def __repr__(self):
        return "move " + self.reg1 + ", " + self.reg2


class MOVE_16(MOVE, NormalMovable):
    # this might not exist
    # I couldn't find any occurrences in the smali of leaks
    def __repr__(self):
        return "move/16 " + self.reg1 + ", " + self.reg2

# This is a problem
# I need the class name to be MOVE/FROM16
# but "/" is not a valid character in a class name
class MOVE_FROM16(MOVE, NormalMovable):
    def __repr__(self):
        return "move/from16 " + self.reg1 + ", " + self.reg2

# This is a problem
# I need the class name to be MOVE-WIDE
# but "-" is not a valid character in a class name
class MOVE_WIDE(MOVE, WideMovable):
    def __repr__(self):
        return "move-wide " + self.reg1 + ", " + self.reg2

class MOVE_WIDE_FROM16(MOVE, WideMovable):
    def __repr__(self):
        return "move-wide/from16 " + self.reg1 + ", " + self.reg2

class MOVE_WIDE_16(MOVE, WideMovable):
    def __repr__(self):
        return "move-wide/16 " + self.reg1 + ", " + self.reg2

class MOVE_OBJECT(MOVE, ObjectMovable):
    def __repr__(self):
        return "move-object " + self.reg1 + ", " + self.reg2

class MOVE_OBJECT_FROM16(MOVE, ObjectMovable):
    def __repr__(self):
        return "move-object/from16 " + self.reg1 + ", " + self.reg2

class MOVE_OBJECT_16(MOVE, ObjectMovable):
    def __repr__(self):
        return "move-object/16 " + self.reg1 + ", " + self.reg2


class _SINGLE_DEST_REGISTER_INSTRUCTION(SmaliAssemblyInstruction):
	# A parent class that should never be instantiated directly.
    #   * Note: _SINGLE_DEST_REGISTER_INSTRUCTION is any instruction that
    #   only has ONE parameter; a register that serves as a destination.
    def __init__(self, reg_dest):
        self.rd = reg_dest

    def get_registers(self):
        return [self.rd]


class MOVE_RESULT(_SINGLE_DEST_REGISTER_INSTRUCTION, NormalMovable):

    def __repr__(self):
        return "move-result " + self.rd

class MOVE_RESULT_WIDE(MOVE_RESULT, WideMovable):
    def __repr__(self):
        return "move-result-wide " + self.rd

class MOVE_RESULT_OBJECT(MOVE_RESULT, ObjectMovable):
    def __repr__(self):
        return "move-result-object " + self.rd

class MOVE_EXCEPTION(MOVE_RESULT, ObjectMovable):
    def __repr__(self):
        return "move-exception " + self.rd



class RETURN_VOID(SmaliAssemblyInstruction, NonMovable):
    def __repr__(self):
        return "return-void"

class RETURN(_SINGLE_DEST_REGISTER_INSTRUCTION, NormalMovable):
    def __repr__(self):
        return "return " + self.rd

class RETURN_WIDE(_SINGLE_DEST_REGISTER_INSTRUCTION): ## STOPPED HERE
    def __repr__(self):
        return "return-wide " + self.rd

class RETURN_OBJECT(_SINGLE_DEST_REGISTER_INSTRUCTION):
    def __repr__(self):
        return "return-object " + self.rd



class CONST(_SINGLE_DEST_REGISTER_INSTRUCTION):
    def __init__(self, reg_dest, hex_literal):
        self.rd = reg_dest
        self.l = hex_literal

    def __repr__(self):
        return "const " + self.rd + ", " + str(self.l)


class CONST_4(CONST):
    def __repr__(self):
        return "const/4 " + self.rd + ", " + str(self.l)

class CONST_16(CONST):
    def __repr__(self):
        return "const/16 " + self.rd + ", " + str(self.l)

class CONST_HIGH16(CONST):
    def __repr__(self):
        return "const/high16 " + self.rd + ", " + str(self.l)

class CONST_WIDE_16(CONST):
    def __repr__(self):
        return "const-wide/16 " + self.rd + ", " + str(self.l)

class CONST_WIDE_32(CONST):
    def __repr__(self):
        return "const-wide/32 " + self.rd + ", " + str(self.l)

class CONST_WIDE(CONST):
    def __repr__(self):
        return "const-wide " + self.rd + ", " + str(self.l)

class CONST_WIDE_HIGH16(CONST):
    def __repr__(self):
        return "const-wide/high16 " + self.rd + ", " + str(self.l)

class CONST_STRING(_SINGLE_DEST_REGISTER_INSTRUCTION):
    def __init__(self, reg_dest, str_literal):
        self.rd = reg_dest
        self.l = str_literal

    def __repr__(self):
        return "const-string " + self.rd + ", \"" + self.l + "\""

class CONST_STRING_JUMBO(_SINGLE_DEST_REGISTER_INSTRUCTION):
    def __init__(self):
        print("not yet implemented: const-string-jumbo")
        pass

    def __repr__(self):
        return "const-string-jumbo"

class CONST_CLASS(_SINGLE_DEST_REGISTER_INSTRUCTION):
    def __init__(self, reg_dest, type_id):
        self.rd = reg_dest
        self.type_id = type_id

    def __repr__(self):
        return "const-class " + str(self.rd) + ", " + str(self.type_id)


class MONITOR_ENTER(_SINGLE_DEST_REGISTER_INSTRUCTION):
    def __repr__(self):
        return "monitor-enter " + str(self.rd)
        
class MONITOR_EXIT(_SINGLE_DEST_REGISTER_INSTRUCTION):
    def __repr__(self):
        return "monitor-exit " + str(self.rd)
    
    
class CHECK_CAST(_SINGLE_DEST_REGISTER_INSTRUCTION):
    def __init__(self, reg_dest, type_id):
        self.rd = reg_dest
        self.type_id = type_id
        
    def __repr__(self):
        return "check-cast " + str(self.rd) + ", " + str(self.type_id)  
        
class INSTANCE_OF(SmaliAssemblyInstruction):
    def __init__(self, reg_res, reg_arg, type_id):
        self.rr = reg_res
        self.ra = reg_arg
        self.type_id = type_id
        
    def get_registers(self):
        return [self.rr, self.ra]
        
    def __repr__(self):
        return "instance-of " + str(self.rr) + ", " + str(self.ra) + ", " + str(self.type_id)
        
class NEW_INSTANCE(SmaliAssemblyInstruction):
    def __init__(self, reg_dest, type_id):
        self.rd = reg_dest
        self.type_id = type_id
        
    def get_registers(self):
        return [self.rd]
            
    def __repr__(self):
        return "new-instance " + str(self.rd) + ", " + str(self.type_id)
        


class ARRAY_LENGTH(SmaliAssemblyInstruction):
    def __init__(self, reg_dest, reg_array_ref):
        self.rd = reg_dest
        self.rar = reg_array_ref
        
    def get_registers(self):
        return [self.rd, self.rar]
        
    def __repr__(self):
        return "array-length " + str(self.rd) + ", " + str(self.rar)
        
class NEW_ARRAY(SmaliAssemblyInstruction):
    def __init__(self, reg_dest, reg_size, type_id):
        self.rd = reg_dest
        self.rs = reg_size
        self.type_id = type_id
        
    def get_registers(self):
        return [self.rd, self.rs]
        
    def __repr__(self):
        return "new-array " + str(self.rd) + ", " + str(self.rs) + ", " + str(self.type_id)     

class _PARAMETER_LIST_INSTRUCTION(SmaliAssemblyInstruction):
    def __init__(self, element_list, type_id):
        self.register_list = element_list
        self.type_id = type_id

    def get_registers(self):
        return self.register_list

    def __repr__(self):
        reg_string = ", ".join(self.register_list)
        return self.opcode() + " {" + reg_string + "}, " + str(self.type_id)


class FILLED_NEW_ARRAY(_PARAMETER_LIST_INSTRUCTION):
    def opcode(self):
        return "filled-new-array"
        

class FILLED_NEW_ARRAY_RANGE(SmaliAssemblyInstruction):
    # doesn't need to be implemented
    # because "range" instructions
    # support higher-numbered registers
    pass

class FILL_ARRAY_DATA(_SINGLE_DEST_REGISTER_INSTRUCTION):
    def __init__(self, reg_dest, array_label):
        self.rd = reg_dest
        self.array_label = array_label

    def __repr__(self):
        return "fill-array-data " + str(self.rd) + ", " + str(self.array_label)

class THROW(_SINGLE_DEST_REGISTER_INSTRUCTION):
    def __repr__(self):
        return "throw " + str(self.rd)

class GOTO(SmaliAssemblyInstruction):
    def __init__(self, target):
        self.target = target

    def __repr__(self):
        return "goto " + str(self.target)

class GOTO_16(GOTO):
    def __repr__(self):
        return "goto/16 " + str(self.target)

class GOTO_32(GOTO):
    def __repr__(self):
        return "goto/32 " + str(self.target)


class PACKED_SWITCH(_SINGLE_DEST_REGISTER_INSTRUCTION):
	# NOTE: there is a .packed-switch and .sparse-switch
	# compiler directive in smali
	# e.g., .packed-switch -0x9
	def __init__(self, reg_dest, table):
			self.rd = reg_dest
			self.table = table
			
	def __repr__(self):
		return "packed-switch " + str(self.rd) + ", " + str(self.table)

class SPARSE_SWITCH(PACKED_SWITCH):
	def __repr__(self):
		return "sparse-switch " + str(self.rd) + ", " + str(self.table)


class _TRIPLE_REGISTER_INSTRUCTION(SmaliAssemblyInstruction):
	# A parent class that should never be instantiated directly
	def __init__(self, reg_dest, reg_arg1, reg_arg2):
		self.rd = reg_dest
		self.ra1 = reg_arg1
		self.ra2 = reg_arg2
		
	def get_registers(self):
		return [self.rd, self.ra1, self.ra2]
		
	def __repr__(self):
		return self.opcode() + " " + self.rd + ", " + self.ra1 + ", " + self.ra2
		
		
class CMPL_FLOAT(_TRIPLE_REGISTER_INSTRUCTION):
	def opcode(self):
		return "cmpl-float"
		
class CMPG_FLOAT(_TRIPLE_REGISTER_INSTRUCTION):
	def opcode(self):
		return "cmpg-float"
		
class CMPL_DOUBLE(_TRIPLE_REGISTER_INSTRUCTION):
	def opcode(self):
		return "cmpl-double"
		
class CMPG_DOUBLE(_TRIPLE_REGISTER_INSTRUCTION):
	def opcode(self):
		return "cmpg-double"
		
class CMP_LONG(_TRIPLE_REGISTER_INSTRUCTION):
	def opcode(self):
		return "cmp-long"
		
class _TWO_REG_EQ(SmaliAssemblyInstruction):
	# A parent class that should never be instantiated directly
	def __init__(self, reg_arg1, reg_arg2, target):
		self.ra1 = reg_arg1
		self.ra2 = reg_arg2
		self.target = target
		
	def get_registers(self):
		return [self.ra1, self.ra2]
		
	def __repr__(self):
		return self.opcode() + " " + str(self.ra1) + ", " + str(self.ra2) + ", " + str(self.target)
		
class IF_EQ(_TWO_REG_EQ):
	def opcode(self):
		return "if-eq"
		
class IF_NE(_TWO_REG_EQ):
	def opcode(self):
		return "if-ne"
		
class IF_LT(_TWO_REG_EQ):
	def opcode(self):
		return "if-lt"
		
class IF_GE(_TWO_REG_EQ):
	def opcode(self):
		return "if-ge"
		
class IF_GT(_TWO_REG_EQ):
	def opcode(self):
		return "if-gt"
		
class IF_LE(_TWO_REG_EQ):
	def opcode(self):
		return "if-le"
		
		
class _ONE_REG_EQ_ZERO(SmaliAssemblyInstruction):
	# A parent class that should never be instantiated correctly
	def __init__(self, reg_arg, target):
		self.ra = reg_arg
		self.target = target
		
	def get_registers(self):
		return [self.ra]
		
	def __repr__(self):
		# It might be necessary to use repr(self.target)
		# here because self.target might be a smali.LABEL
        # object or it might be a string.  
        
        # If it is a smali.LABEL object
        # then we use repr to get a string that does not contain
        # the preceding four spaces and trailing \n which would be 
        # redundant LABELS are weird because it is possible to use a 
        # LABEL in-line
        
        # This could be a bug in other classes, maybe re-write 
        # the LABEL(SmaliAssemblyInstruction) class
		return self.opcode() + " " + str(self.ra) + ", " + str(self.target)
		

class IF_EQZ(_ONE_REG_EQ_ZERO):
	def opcode(self):
		return "if-eqz"
		
class IF_NEZ(_ONE_REG_EQ_ZERO):
	def opcode(self):
		return "if-nez"

class IF_LTZ(_ONE_REG_EQ_ZERO):
	def opcode(self):
		return "if-ltz"
		
class IF_GEZ(_ONE_REG_EQ_ZERO):
	def opcode(self):
		return "if-gez"
		
class IF_GTZ(_ONE_REG_EQ_ZERO):
	def opcode(self):
		return "if-gtz"
		
class IF_LEZ(_ONE_REG_EQ_ZERO):
	def opcode(self):
		return "if-lez"		

		
			
		
class AGET(_TRIPLE_REGISTER_INSTRUCTION):
    def opcode(self):
        return "aget"

class AGET_WIDE(_TRIPLE_REGISTER_INSTRUCTION):
    def opcode(self):
        return "aget-wide"

class AGET_OBJECT(_TRIPLE_REGISTER_INSTRUCTION):
    def opcode(self):
        return "aget-object"

class AGET_BOOLEAN(_TRIPLE_REGISTER_INSTRUCTION):
    def opcode(self):
        return "aget-boolean"

class AGET_BYTE(_TRIPLE_REGISTER_INSTRUCTION):
    def opcode(self):
        return "aget-byte"

class AGET_CHAR(_TRIPLE_REGISTER_INSTRUCTION):
    def opcode(self):
        return "aget-char"

class AGET_SHORT(_TRIPLE_REGISTER_INSTRUCTION):
    def opcode(self):
        return "aget-short"
#aput vx,vy,vz

class APUT(_TRIPLE_REGISTER_INSTRUCTION):
    def opcode(self):
        return "aput"

class APUT_WIDE(_TRIPLE_REGISTER_INSTRUCTION):
    def opcode(self):
        return "aput-wide"

class APUT_OBJECT(_TRIPLE_REGISTER_INSTRUCTION):
    def opcode(self):
        return "aput-object"

class APUT_BOOLEAN(_TRIPLE_REGISTER_INSTRUCTION):
    def opcode(self):
        return "aput-boolean"

class APUT_BYTE(_TRIPLE_REGISTER_INSTRUCTION):
    def opcode(self):
        return "aput-byte"

class APUT_CHAR(_TRIPLE_REGISTER_INSTRUCTION):
    def opcode(self):
        return "aput-char"

class APUT_SHORT(_TRIPLE_REGISTER_INSTRUCTION):
    def opcode(self):
        return "aput-short"





class _I_INSTRUCTION(SmaliAssemblyInstruction):
    #   Backward compatibility with how we call IGET() in Instrument
    def __init__(self, reg_dest, reg_calling_instance, class_name , instance_field_name = ""): 
        self.rd = reg_dest
        self.rci = reg_calling_instance
        if instance_field_name != "":
            cn = class_name
            ifn = instance_field_name
            self.field_id =  cn + "->" + ifn
        else:
            self.field_id = class_name

        
    def get_registers(self):
        return [self.rd, self.rci]

    def __repr__(self):
        return self.opcode() + " " + self.rd + ", " + self.rci + ", " + self.field_id

class IGET(_I_INSTRUCTION):
    def opcode(self):
        return "iget"

        
class IGET_WIDE(_I_INSTRUCTION):
    def opcode(self):
        return "iget-wide"
        
class IGET_OBJECT(_I_INSTRUCTION):
    def opcode(self):
        return "iget-object"

class IGET_BOOLEN(_I_INSTRUCTION):
    def opcode(self):
        return "iget-boolean"

class IGET_BYTE(_I_INSTRUCTION):
    def opcode(self):
        return "iget-byte"

class IGET_CHAR(_I_INSTRUCTION):
    def opcode(self):
        return "iget-char"

class IGET_SHORT(_I_INSTRUCTION):
    def opcode(self):
        return "iget-short"

class IPUT(_I_INSTRUCTION):
    def opcode(self):
        return "iput"
        
class IPUT_WIDE(_I_INSTRUCTION):
    def opcode(self):
        return "iput-wide"
        
class IPUT_OBJECT(_I_INSTRUCTION):
    def opcode(self):
        return "iput-object"

class IPUT_BOOLEN(_I_INSTRUCTION):
    def opcode(self):
        return "iput-boolean"

class IPUT_BYTE(_I_INSTRUCTION):
    def opcode(self):
        return "iput-byte"

class IPUT_CHAR(_I_INSTRUCTION):
    def opcode(self):
        return "iput-char"

class IPUT_SHORT(_I_INSTRUCTION):
    def opcode(self):
        return "iput-short"


class _S_INSTRUCTION(SmaliAssemblyInstruction):
    #   Backward compatibility with how we call IGET() in Instrument
    def __init__(self, reg_dest, class_name , instance_field_name = ""): 
        self.rd = reg_dest
        if instance_field_name != "":
            cn = class_name
            ifn = instance_field_name
            self.field_id =  cn + "->" + ifn
        else:
            self.field_id = class_name

        
    def get_registers(self):
        return [self.rd]

    def __repr__(self):
        return self.opcode() + " " + self.rd + ", " + self.field_id

class SGET(_S_INSTRUCTION):
    def opcode(self):
        return "sget"

class SGET_WIDE(_S_INSTRUCTION):
    def opcode(self):
        return "sget-wide"
        
class SGET_OBJECT(_S_INSTRUCTION):
    def opcode(self):
        return "sget-object"

class SGET_BOOLEN(_S_INSTRUCTION):
    def opcode(self):
        return "sget-boolean"

class SGET_BYTE(_S_INSTRUCTION):
    def opcode(self):
        return "sget-byte"

class SGET_CHAR(_S_INSTRUCTION):
    def opcode(self):
        return "sget-char"

class SGET_SHORT(_S_INSTRUCTION):
    def opcode(self):
        return "sget-short"

class SPUT(_S_INSTRUCTION):
    def opcode(self):
        return "sput"
        
class SPUT_WIDE(_S_INSTRUCTION):
    def opcode(self):
        return "sput-wide"
        
class SPUT_OBJECT(_S_INSTRUCTION):
    def opcode(self):
        return "sput-object"

class SPUT_BOOLEAN(_S_INSTRUCTION):
    def opcode(self):
        return "sput-boolean"

class SPUT_BYTE(_S_INSTRUCTION):
    def opcode(self):
        return "sput-byte"

class SPUT_CHAR(_S_INSTRUCTION):
    def opcode(self):
        return "sput-char"

class SPUT_SHORT(_S_INSTRUCTION):
    def opcode(self):
        return "sput-short"

class _INVOKE_INSTRUCTION(_PARAMETER_LIST_INSTRUCTION):
    def __init__(self, element_list, type_id):
        super().__init__(element_list, type_id)

        # I'm not sure if this is necessary?
        # I found it in the "old" implementation
        # of this instruction, which I think
        # wasn't actually executed or tested anywhere
        self.calling_object = element_list[0] 


class INVOKE_VIRTUAL(_INVOKE_INSTRUCTION):
    def opcode(self):
        return "invoke-virtual"

class INVOKE_SUPER(_INVOKE_INSTRUCTION):
    def opcode(self):
        return "invoke-super"

class INVOKE_DIRECT(_INVOKE_INSTRUCTION):
    def opcode(self):
        return "invoke-direct"

class INVOKE_STATIC(_INVOKE_INSTRUCTION):
    def opcode(self):
        return "invoke-static"

class INVOKE_INTERFACE(_INVOKE_INSTRUCTION):
    def opcode(self):
        return "invoke-interface"

class INVOKE_VIRTUAL(_INVOKE_INSTRUCTION):
    def opcode(self):
        return "invoke-virtual"

class INVOKE_VIRTUAL_RANGE(SmaliAssemblyInstruction):
    # doesn't need to be implemented
    # because "range" instructions
    # support higher-numbered registers
    pass

class INVOKE_SUPER_RANGE(SmaliAssemblyInstruction):
    # doesn't need to be implemented
    # because "range" instructions
    # support higher-numbered registers
    pass

class INVOKE_DIRECT_RANGE(SmaliAssemblyInstruction):
    # doesn't need to be implemented
    # because "range" instructions
    # support higher-numbered registers
    pass

class INVOKE_STATIC_RANGE(SmaliAssemblyInstruction):
    # doesn't need to be implemented
    # because "range" instructions
    # support higher-numbered registers
    pass

class INVOKE_INTERFACEERFACEERFACE_RANGE(SmaliAssemblyInstruction):
    # doesn't need to be implemented
    # because "range" instructions
    # support higher-numbered registers
    pass


class _TWO_REGISTER_UNARY_INSTRUCTION(SmaliAssemblyInstruction):
    def __init__(self, reg_dest, reg_arg):
        self.rd = reg_dest
        self.ra = reg_arg

    def get_registers(self):
        return [self.rd, self.ra]

    def __repr__(self):
        return self.opcode() + " " + str(self.rd) + ", " + str(self.ra)


class NEG_INT(_TWO_REGISTER_UNARY_INSTRUCTION):
    def opcode(self):
        return "neg-int"

class NOT_INT(_TWO_REGISTER_UNARY_INSTRUCTION):
    def opcode(self):
        return "not-int"

class NEG_INT(_TWO_REGISTER_UNARY_INSTRUCTION):
    def opcode(self):
        return "neg-int"

class NEG_LONG(_TWO_REGISTER_UNARY_INSTRUCTION):
    def opcode(self):
        return "neg-long"

class NEG_FLOAT(_TWO_REGISTER_UNARY_INSTRUCTION):
    def opcode(self):
        return "neg-float"

class NEG_DOUBLE(_TWO_REGISTER_UNARY_INSTRUCTION):
    def opcode(self):
        return "neg-double"

class INT_TO_LONG(_TWO_REGISTER_UNARY_INSTRUCTION):
    def opcode(self):
        return "int-to-long"

class INT_TO_FLOAT(_TWO_REGISTER_UNARY_INSTRUCTION):
    def opcode(self):
        return "int-to-float"

class INT_TO_DOUBLE(_TWO_REGISTER_UNARY_INSTRUCTION):
    def opcode(self):
        return "int-to-double"

class LONG_TO_INT(_TWO_REGISTER_UNARY_INSTRUCTION):
    def opcode(self):
        return "long-to-int"

class LONG_TO_FLOAT(_TWO_REGISTER_UNARY_INSTRUCTION):
    def opcode(self):
        return "long-to-float"

class LONG_TO_DOUBLE(_TWO_REGISTER_UNARY_INSTRUCTION):
    def opcode(self):
        return "long-to-double"

class FLOAT_TO_INT(_TWO_REGISTER_UNARY_INSTRUCTION):
    def opcode(self):
        return "float-to-int"

class FLOAT_TO_LONG(_TWO_REGISTER_UNARY_INSTRUCTION):
    def opcode(self):
        return "float-to-long"

class FLOAT_TO_DOUBLE(_TWO_REGISTER_UNARY_INSTRUCTION):
    def opcode(self):
        return "float-to-double"

class DOUBLE_TO_INT(_TWO_REGISTER_UNARY_INSTRUCTION):
    def opcode(self):
        return "double-to-int"

class DOUBLE_TO_LONG(_TWO_REGISTER_UNARY_INSTRUCTION):
    def opcode(self):
        return "double-to-long"

class DOUBLE_TO_FLOAT(_TWO_REGISTER_UNARY_INSTRUCTION):
    def opcode(self):
        return "double-to-float"

class INT_TO_BYTE(_TWO_REGISTER_UNARY_INSTRUCTION):
    def opcode(self):
        return "int-to-byte"

class INT_TO_CHAR(_TWO_REGISTER_UNARY_INSTRUCTION):
    def opcode(self):
        return "int-to-char"

class INT_TO_SHORT(_TWO_REGISTER_UNARY_INSTRUCTION):
    def opcode(self):
        return "int-to-short"

class ADD_INT(_TRIPLE_REGISTER_INSTRUCTION):
    def opcode(self):
        return "add-int"

class SUB_INT(_TRIPLE_REGISTER_INSTRUCTION):
    def opcode(self):
        return "sub-int"

class MUL_INT(_TRIPLE_REGISTER_INSTRUCTION):
    def opcode(self):
        return "mul-int"

class DIV_INT(_TRIPLE_REGISTER_INSTRUCTION):
    def opcode(self):
        return "div-int"

class REM_INT(_TRIPLE_REGISTER_INSTRUCTION):
    def opcode(self):
        return "rem-int"

class AND_INT(_TRIPLE_REGISTER_INSTRUCTION):
    def opcode(self):
        return "and-int"

class OR_INT(_TRIPLE_REGISTER_INSTRUCTION):
    def opcode(self):
        return "or-int"

class XOR_INT(_TRIPLE_REGISTER_INSTRUCTION):
    def opcode(self):
        return "xor-int"

class SHL_INT(_TRIPLE_REGISTER_INSTRUCTION):
    def opcode(self):
        return "shl-int"

class SHR_INT(_TRIPLE_REGISTER_INSTRUCTION):
    def opcode(self):
        return "shr-int"

class USHR_INT(_TRIPLE_REGISTER_INSTRUCTION):
    def opcode(self):
        return "ushr-int"

class ADD_LONG(_TRIPLE_REGISTER_INSTRUCTION):
    def opcode(self):
        return "add-long"

class SUB_LONG(_TRIPLE_REGISTER_INSTRUCTION):
    def opcode(self):
        return "sub-long"

class MUL_LONG(_TRIPLE_REGISTER_INSTRUCTION):
    def opcode(self):
        return "mul-long"

class DIV_LONG(_TRIPLE_REGISTER_INSTRUCTION):
    def opcode(self):
        return "div-long"

class REM_LONG(_TRIPLE_REGISTER_INSTRUCTION):
    def opcode(self):
        return "rem-long"

class AND_LONG(_TRIPLE_REGISTER_INSTRUCTION):
    def opcode(self):
        return "and-long"

class OR_LONG(_TRIPLE_REGISTER_INSTRUCTION):
    def opcode(self):
        return "or-long"

class XOR_LONG(_TRIPLE_REGISTER_INSTRUCTION):
    def opcode(self):
        return "xor-long"

class SHL_LONG(_TRIPLE_REGISTER_INSTRUCTION):
    def opcode(self):
        return "shl-long"

class SHR_LONG(_TRIPLE_REGISTER_INSTRUCTION):
    def opcode(self):
        return "shr-long"

class USHR_LONG(_TRIPLE_REGISTER_INSTRUCTION):
    def opcode(self):
        return "ushr-long"

class ADD_FLOAT(_TRIPLE_REGISTER_INSTRUCTION):
    def opcode(self):
        return "add-float"

class SUB_FLOAT(_TRIPLE_REGISTER_INSTRUCTION):
    def opcode(self):
        return "sub-float"

class MUL_FLOAT(_TRIPLE_REGISTER_INSTRUCTION):
    def opcode(self):
        return "mul-float"

class DIV_FLOAT(_TRIPLE_REGISTER_INSTRUCTION):
    def opcode(self):
        return "div-float"

class REM_FLOAT(_TRIPLE_REGISTER_INSTRUCTION):
    def opcode(self):
        return "rem-float"

class ADD_DOUBLE(_TRIPLE_REGISTER_INSTRUCTION):
    def opcode(self):
        return "add-double"

class SUB_DOUBLE(_TRIPLE_REGISTER_INSTRUCTION):
    def opcode(self):
        return "sub-double"

class MUL_DOUBLE(_TRIPLE_REGISTER_INSTRUCTION):
    def opcode(self):
        return "mul-double"

class DIV_DOUBLE(_TRIPLE_REGISTER_INSTRUCTION):
    def opcode(self):
        return "div-double"

class REM_DOUBLE(_TRIPLE_REGISTER_INSTRUCTION):
    def opcode(self):
        return "rem-double"










class LABEL(SmaliAssemblyInstruction):
    def __init__(self, num):
        self.n = num

    def __repr__(self):
        # LABELS are weird.  If you change this code be careful of compatibility 
        # with instructions such as IF_EQZ that use a LABEL in-line
        return ":taint_jump_label_" + str(self.n)


class LOG_D(INVOKE_STATIC):
    
    def __init__(self, reg_tag, reg_msg):
        self.rt = reg_tag
        self.rm = reg_msg

    def __repr__(self):
        return "invoke-static {" + self.rt + ", " + self.rm + "},  Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I"




def parse_line(line):
    #print("parsing: " + line)
    # function to take a list (a string)
    # and convert it to the appropriate SmaliAssemblyInstruction
    line = line.strip("\n")
    
    tokens = line.split(" ")
    tokens = list(filter(lambda x: x != "", tokens)) # removes ""
    #print("tokens: " + str(tokens))
    if(len(tokens) == 0):
        return BLANK_LINE()


    opcode = tokens[0]
    
    if(opcode.startswith("#")):
        return COMMENT(line)

    if(opcode == "const-string"):
        return CONST_STRING(tokens[1].strip(","), line.split("\"")[1])
    

    if(opcode_has_parameter_list(opcode) or opcode_has_parameter_range(opcode)):
        start = line.index("{")
        end = line.index("}")
        args = line[start+1:end]
        args = args.split(" ")
        args = str(list(map(lambda x : x.strip(","), args)))
        args = [ args ]
        args.append("\"" + tokens[-1] + "\"")
        #print("args before: " + str(args))
        
    else:
        args = tokens[1:]
        #print("args before: " + str(args))
        args = list(map(lambda x : "\"" + str(x.strip(",")) + "\"", args))
        
    #print("args: " + str(args))


    opcode = opcode.upper()
    opcode = opcode.replace("/", "_")
    opcode = opcode.replace("-", "_")

    # this next part is very very technical and feels
    # pretty hacky
    # https://www.programiz.com/python-programming/methods/built-in/eval
    # https://stackoverflow.com/questions/3941517/converting-list-to-args-when-calling-function#3941529
    # example input line: "    move/from16 v1, v25"
    # output eval_string: "MOVE_FROM16("v1", "v25")"
    eval_string = opcode + "(" + ", ".join(args) + ")"
    #print("eval_string: " + eval_string)

    try:
        smali_assembly_instruction_obj = eval(eval_string)
        return smali_assembly_instruction_obj
    except Exception as e:
        print("e: " + str(e))

    return None


def opcode_has_parameter_list(opcode):
    return opcode in ["filled-new-array", "invoke-virtual", "invoke-super", "invoke-direct",
        "invoke-static", "invoke-interface", "execute-inline", "invoke-virtual-quick", 
        "invoke-super-quick"]


def opcode_has_parameter_range(opcode):
    return opcode.endswith("/range")


def main():

    # One test for every isntruction in SmaliAssemblyInstructions.py
    # http://pallergabor.uw.hu/androidblog/dalvik_opcodes.html

    # second line is intentionally a blank line
    TESTS = ["    nop\n",
             "    \n",
             "    move v6, p5\n",
             "    move/16 v6, v24\n", # synthetic example
             "    move/from16 v5, v26\n",
             "    move-wide v14, v7\n",
             "    move-wide/from16 v15, p3\n",
             "    move-wide/16 v12, p2\n", # synthetic example
             "    move-object v4, v3\n",
             "    move-object/from16 v5, v31\n",
             "    move-object/16 v2, v3\n", # synthetic example
             "    move-result v0\n", 
             "    move-result-wide v3\n",
             "    move-result-object v3\n",
             "    move-exception v0\n",
             "    return-void\n",
             "    return-wide v0\n",
             "    return-object v1\n",
             "    const v3, 0xffff\n",
             "    const/4 v1, -0x1\n",
             "    const/16 v0, 0xb\n",
             "    const/high16 v3, 0x3f800000\n", # 0xf800... is float value 1.0
             "    const-wide/16 v18, 0x1\n",
             "    const-wide/32 v6, 0x2932e00\n",
             "    const-wide v4, 0x100000000L\n",
             "    const-wide/high16 v2, -0x8000000000000000L\n",
             "    const-string v1, \"Parcelables cannot be written to an OutputStream\"\n",
             "    const-string-jumbo\n", # synthetic example
             "    const-class v4, Landroidx/versionedparcelable/VersionedParcel;\n",
             "    monitor-enter p0\n",
             "    monitor-exit p0\n",
             "    check-cast v3, Ljava/lang/String;\n",
             "    instance-of v0, p1, Ljava/lang/Integer;\n",
             "    new-instance v0, Ljava/lang/RuntimeException;\n",
             "    array-length v0, p1\n",
             "    new-array v1, v0, [J\n",
             "    filled-new-array {v0, v1, v2}, [Ljava/lang/String;\n",
             #"    filled-new-array/range {v19..v21}, [B\n",
             "    fill-array-data v1, :array_6\n",
             "    throw v1\n",
             "    goto :goto_0\n",
             "    goto/32 :goto_0\n", # synthetic example
             "    goto/16 :goto_0\n",  # synthetic example
             "    packed-switch p1, :pswitch_data_0\n",
             "    sparse-switch v3, :sswitch_data_0\n",
             "    cmpl-float v5, v4, v6\n",
             "    cmpg-float v5, p1, v5\n",
             "    cmpl-double v16, v0, v14\n",
             "    cmpg-double v13, v8, v14\n",
             "    cmp-long v6, v4, p1\n",
             "    if-eq v3, v1, :cond_2\n",
             "    if-ne v1, p1, :cond_0\n",
             "    if-lt v3, v2, :cond_0\n",
             "    if-ge v1, v0, :cond_1\n",
             "    if-gt v12, v14, :cond_8\n",
             "    if-le v3, v10, :cond_25\n",
             "    if-eqz v4, :cond_0\n",
             "    if-nez v0, :cond_0\n",
             "    if-ltz v0, :cond_7\n",
             "    if-gez v0, :cond_0\n",
             "    if-gtz v5, :cond_0\n",
             "    if-lez v0, :cond_0\n",
             "    aget v0, v0, v1\n",
             "    aput v1, v0, v2\n",
             "    iget-object v0, p0, Landroidx/transition/TransitionSet$1;->val$nextTransition:Landroidx/transition/Transition;\n",
             "    iput p2, p0, Landroidx/transition/TransitionSet$1;->val$nextTransition:Landroidx/transition/Transition;\n",
             "    sget-wide v2, Lcom/google/android/material/card/MaterialCardViewHelper;->COS_45:D\n",
             "    sput-object v0, Lcom/google/android/material/snackbar/Snackbar;->SNACKBAR_BUTTON_STYLE_ATTR:[I\n",
             "    sput-boolean v0, Lcom/google/android/material/ripple/RippleUtils;->USE_FRAMEWORK_RIPPLE:Z\n",
             "    sput-char v0, Lcom/google/android/material/ripple/RippleUtils;->USE_FRAMEWORK_RIPPLE:Z\n", # synthetic
             "    invoke-virtual {v1, v2, p1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V\n",
             "    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V\n",
             "    invoke-super {p0}, Landroid/widget/GridView;->onAttachedToWindow()V\n",
             "    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;\n",
             "    neg-int v2, v0\n",
             "    int-to-long v3, p1\n",
             "    long-to-int v7, v6\n",
             "    float-to-int v1, v1\n",
             "    double-to-float v3, v3\n",
             "    int-to-char v2, v2\n",
             "    add-int v0, v11, v13\n",
             "    or-int v6, v2, p2\n",
             "    div-double v2, p17, v2\n"
             
    # New test cases can be added by (a) selecting an instruction
    # and then (b) grep-ing some smali for that instruction
    # e.g., suppose we're looking for an example of filled-new-array
    # grep -R -n "filled-new-array" ./apkOutput/*

    ]


    for cur_line in TESTS:
        print("\t" + cur_line.strip())
        obj = parse_line(cur_line)
        #print(type(obj), ": " + str(obj))
        assert(str(obj) == cur_line)
        


    print("ALL TESTS PASSED!")

# Do nothing if this file is called directly
# this is only a library
if __name__ == "__main__":
    main()
