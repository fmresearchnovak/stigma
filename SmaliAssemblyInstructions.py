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
#           only one parameter; a register that serves as a destination.
# Should the new class be a child of CONST?
# Should the new class be a child of MOVE-RESULT?



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

class MOVE_OBJECT16(MOVE, ObjectMovable):
    def __repr__(self):
        return "move-object16 " + self.reg1 + ", " + self.reg2


class _SINGLE_DEST_REGISTER_INSTRUCTION(SmaliAssemblyInstruction):
	# A parent class that should never be instantiated directly.
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

class INVOKE_VIRTUAL(_PARAMETER_LIST_INSTRUCTION):
    def __init__(self, element_list, type_id):
        super().__init__(element_list, type_id)

        # I'm not sure if this is necessary?
        # I found it in the "old" implementation
        # of this instruction, which I think
        # wasn't actually executed or tested anywhere
        self.calling_object = element_list[0] 

    def opcode(self):
        return "invoke-virtual"







class OR_INT(SmaliAssemblyInstruction):
    def __init__(self, reg_dest, reg_src1, reg_src2):
        self.rd = reg_dest
        self.rs1 = reg_src1
        self.rs2 = reg_src2

    def __repr__(self):
        return "or-int " + self.rd + ", " + self.rs1 + ", " + self.rs2


class LABEL(SmaliAssemblyInstruction):
    def __init__(self, num):
        self.n = num

    def __repr__(self):
        # LABELS are weird.  If you change this code be careful of compatibility 
        # with instructions such as IF_EQZ that use a LABEL in-line
        return ":taint_jump_label_" + str(self.n)


class INVOKE_VIRTUAL(SmaliAssemblyInstruction):
    # remember: first arg is actually a reference to the calling object
    def __init__(self, args, fully_qualified_name):
        self.args = args
        self.calling_object = args[0]
        self.params = args[1:]
        self.fully_qualified_name = fully_qualified_name

    def __repr__(self):
        args_fmt = "{" + ", ".join(self.args) + "}"
        return "invoke-virtual " + args_fmt + ", " + self.fully_qualified_name 


# An invoke-virtual instruction that invokes a method defined inside of this app
class INVOKE_VIRTUAL_INTERNAL(INVOKE_VIRTUAL):
    pass


# An invoke-virtual instruction that invokes a method defined outside of this app (e.g., Ljava/lang/StringBuilder;->append(Ljava/lang/String;))
class INVOKE_VIRTUAL_EXTERNAL(INVOKE_VIRTUAL):
    pass


class INVOKE_STATIC(SmaliAssemblyInstruction):
    pass


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



# Do nothing if this file is called directly
# this is only a library
if __name__ == "__main__()":
    pass
