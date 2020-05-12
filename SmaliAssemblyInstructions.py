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


class BLANK_LINE(SmaliAssemblyInstruction):
	def __init__(self):
		pass

	def __repr__(self):
		return ""


class COMMENT(SmaliAssemblyInstruction):
	def __init__(self, str):
		self.s = str

	def __repr__(self):
		return "# " + self.s


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
	def __init__(self, reg_dest, reg_calling_instance, class_name, instance_field_name):
		self.rd = reg_dest
		self.rci = reg_calling_instance
		self.cn = class_name
		self.ifn = instance_field_name

	def __repr__(self):
		return "iput " + self.rd + ", " + self.rci + ", " + self.cn + "->" + self.ifn



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
	def __init__(self, reg_dest, class_name, instance_field_name):
		self.rd = reg_dest
		self.cn = class_name
		self.ifn = instance_field_name

	def __repr__(self):
		return "sput " + self.rd + ", " + self.cn + "->" + self.ifn


class CONST(SmaliAssemblyInstruction):
	def __init__(self, reg_dest, hex_val):
		self.rd = reg_dest
		self.v = hex_val

	def __repr__(self):
		return "const " + self.rd + ", " + str(self.v)


class CONST_4(CONST):

	def __repr__(self):
		return "const/4 " + self.rd + ", " + str(self.v)




class IF_EQZ(SmaliAssemblyInstruction):
	def __init__(self, reg, label):
		self.reg = reg
		self.label = label

	def __repr__(self):
		# the repr is necessary here because self.label might be a smali.LABEL
		# object or it might be a string.  If it is a smali.LABEL object
		# then we use repr to get a string that does not contain
		# the preceeding four spaces and trailing \n which would be redundant
		# LABELS are weird because it is possible to use a LABEL in-line as seen here
		return "if-eqz " + self.reg + ", " + repr(self.label)


class OR_INT(SmaliAssemblyInstruction):
	def __init__(self, reg_dest, reg_src1, reg_src2):
		self.rd = reg_dest
		self.rs1 = reg_src1
		self.rs2 = reg_src2

	def __repr__(self):
		return "or-int " + self.rd + ", " + self.rs1 + ", " + self.rs2


class CONST_STRING(SmaliAssemblyInstruction):
	def __init__(self, reg, string):
		self.reg = reg
		self.string = string

	def __repr__(self):
		return "const-string " + self.reg + ", \"" + self.string + "\""






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
		self.fully_qualified_name

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


# Do nothing if this file is called directly
# this is only a library
if __name__ == "__main__()":
	pass