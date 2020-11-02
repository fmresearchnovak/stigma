#!/usr/bin/env python3

# SmaliAssemblyInstructions.py
#
# Each of these classes is basically in thin wrapper around a string 
# They correspond to the instructions for smali bytecode as listed
# here: http://pallergabor.uw.hu/androidblog/dalvik_opcodes.html
# Implementation is incomplete.  Only the instructions necessary 
# for taint-tracking implementation of the stigma project are complete



class SmaliAssemblyInstruction:

	def __str__(self):
		return "    " + repr(self) + "\n"

	def get_registers(self):
		return []

	def get_p_registers(self):
		return []


class NOP(SmaliAssemblyInstruction):
	def __init__(self):
		pass

	def __repr__(self):
		return "nop"


class BLANK_LINE(SmaliAssemblyInstruction):
	def __init__(self):
		pass

	def __repr__(self):
		return ""


class COMMENT(SmaliAssemblyInstruction):
	def __init__(self, line):
		self.l = line

	def __repr__(self):
		return "# " + self.l



class MOVE(SmaliAssemblyInstruction):
	def __init__(self, reg1, reg2):
		self.reg1 = reg1
		self.reg2 = reg2

	def get_registers(self):
		return [self.reg1, self.reg2]

	def get_p_registers(self):
		ans = [self.reg1, self.reg2]
		ans = filter(lambda x: x[0] == "p", ans)
		return ans

	def __repr__(self):
		return "move " + self.reg1 + ", " + self.reg2


class MOVE16(MOVE):
	# this might not exist
	# I couldn't find any occurrences in the smali of leaks
	def __repr__(self):
		return "move16 " + self.reg1 + ", " + self.reg2

# This is a problem
# I need the class name to be MOVE/FROM16
# but "/" is not a valid character in a class name
class MOVE_FROM16(MOVE):
	def __repr__(self):
		return "move/from16 " + self.reg1 + ", " + self.reg2

# This is a problem
# I need the class name to be MOVE-WIDE
# but "-" is not a valid character in a class name
class MOVE_WIDE(MOVE):
	def __repr__(self):
		return "move-wide " + self.reg1 + ", " + self.reg2

class MOVE_WIDE_FROM16(MOVE):
	def __repr__(self):
		return "move-wide/from16 " + self.reg1 + ", " + self.reg2

class MOVE_WIDE16(MOVE):
	def __repr__(self):
		return "move-wide16 " + self.reg1 + ", " + self.reg2

class MOVE_OBJECT(MOVE):
	def __repr__(self):
		return "move-object " + self.reg1 + ", " + self.reg2

class MOVE_OBJECT_FROM16(MOVE):
	def __repr__(self):
		return "move-object/from16 " + self.reg1 + ", " + self.reg2

class MOVE_OBJECT16(MOVE):
	def __repr__(self):
		return "move-object16 " + self.reg1 + ", " + self.reg2


class _SINGLE_DEST_REGISTER_INSTRUCTION(SmaliAssemblyInstruction):
	def __init__(self, reg_dest):
		self.rd = reg_dest

	def get_registers(self):
		return [self.rd]

	def get_p_registers(self):
		ans = [self.rd]
		ans = filter(lambda x: x[0] == "p", ans)
		return ans


class MOVE_RESULT(_SINGLE_DEST_REGISTER_INSTRUCTION):

	def __repr__(self):
		return "move-result " + self.rd

class MOVE_RESULT_WIDE(MOVE_RESULT):
	def __repr__(self):
		return "move-result-wide " + self.rd

class MOVE_RESULT_OBJECT(MOVE_RESULT):
	def __repr__(self):
		return "move-result-object " + self.rd

class MOVE_EXCEPTION(MOVE_RESULT):
	def __repr__(self):
		return "move-exception " + self.rd



class RETURN_VOID(SmaliAssemblyInstruction):
	def __repr__(self):
		return "return-void"

class RETURN(_SINGLE_DEST_REGISTER_INSTRUCTION):
	def __repr__(self):
		return "return " + self.rd

class RETURN_WIDE(_SINGLE_DEST_REGISTER_INSTRUCTION):
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
		return "const-class " + self.rd + ", " + str(self.type_id)


# should probably combine this somehow with iput
class IGET(SmaliAssemblyInstruction):

	def __init__(self, reg_dest, reg_calling_instance, class_name, instance_field_name):
		self.rd = reg_dest
		self.rci = reg_calling_instance
		self.cn = class_name
		self.ifn = instance_field_name

	def __repr__(self):
		return "iget " + self.rd + ", " + self.rci + ", " + self.cn + "->" + self.ifn


# should probably combine this somehow with iget
class IPUT(SmaliAssemblyInstruction):
	def __init__(self, reg_src, reg_calling_instance, class_name, instance_field_name):
		self.rs = reg_src
		self.rci = reg_calling_instance
		self.cn = class_name
		self.ifn = instance_field_name

	def __repr__(self):
		return "iput " + self.rs + ", " + self.rci + ", " + self.cn + "->" + self.ifn





# This can probably be combined with sput somehow
class SGET(SmaliAssemblyInstruction):
	# note: this instruction assumes that field being gotten is an integer
	def __init__(self, reg_dest, class_name, instance_field_name):
		self.rd = reg_dest
		self.cn = class_name
		self.ifn = instance_field_name

	def __repr__(self):
		return "sget " + self.rd + ", " + self.cn + "->" + self.ifn


# This can probably be combined with sget somehow
class SPUT(SmaliAssemblyInstruction):
	# note: this instruction assumes that field being put to is an integer
	def __init__(self, reg_src, class_name, instance_field_name):
		self.rs = reg_src
		self.cn = class_name
		self.ifn = instance_field_name

	def __repr__(self):
		return "sput " + self.rs + ", " + self.cn + "->" + self.ifn





class IF_EQZ(SmaliAssemblyInstruction):
	def __init__(self, reg, label):
		self.reg = reg
		self.label = label

	def __repr__(self):
		# the repr is necessary here because self.label might be a smali.LABEL
		# object or it might be a string.  If it is a smali.LABEL object
		# then we use repr to get a string that does not contain
		# the preceding four spaces and trailing \n which would be redundant
		# LABELS are weird because it is possible to use a LABEL in-line as seen here
		return "if-eqz " + self.reg + ", " + repr(self.label)


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

	if(tokens[0].startswith("#")):
		return COMMENT(line)

	if(tokens[0] == "const-string"):
		return CONST_STRING(tokens[1].strip(","), line.split("\"")[1])

	opcode = tokens[0].upper()
	opcode = opcode.replace("/", "_")
	opcode = opcode.replace("-", "_")

	args = tokens[1:]
	args = map(lambda x : "\"" + str(x.strip(",")) + "\"", args)
	#print("args: " + str(args))



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




# Do nothing if this file is called directly
# this is only a library
if __name__ == "__main__()":
	pass