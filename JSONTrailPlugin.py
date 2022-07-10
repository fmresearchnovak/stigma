
import Instrumenter
import SmaliTypes
import StigmaStringParsingLib

import SmaliAssemblyInstructions as smali

OBJECT_MAPPER_TYPE_ID = "Lcom/fasterxml/jackson/databind/ObjectMapper;"

# a list of SmaliType.ObjectReference objects
TARGET_CLASSES = [SmaliTypes.from_string("Landroid/location/Location;")]


def _check_is_low_numbered(smd, reg):
	# it is safe to use the (static) dereference method below
	# since this function will only be passed a pX type register
	# in the context of new_method_handler(), which means it may 
	# bet a pX register BEFORE the move(s) inserted by grow()
	# Furthermore, within this context, it is safe to use the 
	# smd.dereference method since it is not aware of grow() at all
	# this is effectively an ugly hack for situations where reg is not 
	# lower-numbered
	if(reg.letter() == "p"):
		reg = SmaliRegister(smd.dereference_p_to_v_number(str(reg)))
	return reg.is_high_numbered() 
	
	
def _do_jackson_json_dump(scd, smd, target_reg, free_regs):
	#print("free regs: " + str(free_regs) + "  type: " + str(type(free_regs)))
	#print("free_regs[0]:  " + str(free_regs[0]) + "  type: " + str(type(free_regs[0])))
	free_reg_a = free_regs[0]
	free_reg_b = free_regs[1]
	
	block = []
	block.append(smali.NEW_INSTANCE(free_reg_a, OBJECT_MAPPER_TYPE_ID))
	block.append(smali.BLANK_LINE())
	block.append(smali.INVOKE_DIRECT([free_reg_a], OBJECT_MAPPER_TYPE_ID + "-><init>()V"))
	block.append(smali.BLANK_LINE())
	# I should do SerializationFeature;->FAIL_ON_EMPTY_BEANS, false
	
	# would like to use INVOKE_VIRTUAL_RANGE (below) since the target_reg (a p-reg maybe)
	# could be higher-numbered and regular INVOKE_VIRTUAL uses only 4 bits
	# for each argument register
	# BUT, I can't really use INVOKE_VIRTUAL_RANGE since free_reg_a is not
	# likely not adjacent to target_reg
	# so, I decided to use a MOVE (but assuming it's an OBJECT seems hacky)
	# technically it's not always necessary to move (if target_reg isn't higher-numbered)
	# but it is always ok to move since free_reg_b is always there and usable
	block.append(smali.MOVE_OBJECT_16(free_reg_b, target_reg))
	block.append(smali.BLANK_LINE())
	try_start_label = smd.make_new_try_start_label()
	try_catch_num = try_start_label.n
	block.append(try_start_label)
	block.append(smali.INVOKE_VIRTUAL([free_reg_a, free_reg_b], "Lcom/fasterxml/jackson/databind/ObjectMapper;->writeValueAsString(Ljava/lang/Object;)Ljava/lang/String;"))
	block.append(smali.BLANK_LINE())
	block.append(smali.MOVE_RESULT_OBJECT(free_reg_b)) # a string
	block.append(smali.BLANK_LINE())
	s = "\"STIGMA JSON\""
	block.append(smali.CONST_STRING(free_reg_a, s))
	block.append(smali.BLANK_LINE())
	block.append(smali.LOG_D(free_reg_a, free_reg_b))
	try_end_label = smali.TRY_END_LABEL(try_catch_num)
	block.append(try_end_label)
	try_catch_label = smali.CATCH_LABEL(try_catch_num)
	exception_type_id = "Lcom/fasterxml/jackson/core/JsonProcessingException;"
	block.append(smali.CATCH_DIRECTIVE(exception_type_id, try_start_label, try_end_label, try_catch_label))
	block.append(smali.BLANK_LINE())
	block.append(try_catch_label)
	
	return block

def new_method_handler(scd, smd):
	# I can use v0 and v1 since this instrumentation plugin
	# signs up for at least 2 free regs (see it's main())
	# assuming the method was grown() by n or more where n > 0
	# then there are n vX registers open (v0, v1, ..., v(n-1))
	# these registers are (a) used by the method, in which case they
	# will be given a value later in the method or (b) was used to store p0
	# which is technically not possible since we have used grow(n) and n > 0
	
	for p_reg in smd.signature.parameter_type_map:
		p_reg_type = smd.signature.parameter_type_map[p_reg]
		
		if(p_reg_type in TARGET_CLASSES):
			
			# since the p_reg given here is p0, p1, p2, etc.
			# they will actually alias to the highest v_num register(s)
			# since the method has already been grown() 
			# that register will have the correct / valid data in it
			# since this instrumentation will happen BEFORE the moves
			# added by the grow() method
			
			block = _do_jackson_json_dump(scd, smd, p_reg, ["v0", "v1"])
			
			comment_chunk = Instrumenter.make_comment_block("for parameters at method start")
			block = comment_chunk + block + comment_chunk
			# bug if there is more than one parameter
			# matching the TARGET_CLASSES list
			return block
			
	return []
	
def new_instance_handler_deprecated(scd, smd, code_unit, free_regs):
	# free_regs length should be 2
	
	# probably this is nonsense since we cannot interact
	# with the object BEFORE it is fully constructed
	# we need to instrument after this new-instance instruction
	# AND ALSO after the subsequent call to <init>
	
	#target_reg = StigmaStringParsingLib.get_v_and_p_numbers(code_unit[0])[0]
	asm_obj = smali.SmaliAssemblyInstruction.from_line(code_unit[0])
	
	if(asm_obj.type_id in TARGET_CLASSES):
		block = _do_jackson_json_dump(scd, smd, asm_obj.rd, free_regs)
		comment_chunk = Instrumenter.make_comment_block("for new-instance")
		block = code_unit + comment_chunk + block + comment_chunk
		return block
	
	return code_unit
	
	
def new_instance_handler(scd, smd, code_unit, free_regs):
	# invoke-direct {v3, v2}, Landroid/location/Location;-><init>(Ljava/lang/String;)V
	# v3 is an instance of the location and v2 contains the first real param (a string)
	asm_obj = smali.SmaliAssemblyInstruction.from_line(code_unit[0])
	#print("types spec:" + str(asm_obj.types_spec))
	
	if(asm_obj.types_spec in ["Landroid/location/Location;-><init>(Ljava/lang/String;)V"]):
		block = _do_jackson_json_dump(scd, smd, asm_obj.register_list[0], free_regs)
		comment_chunk = Instrumenter.make_comment_block("for constructor / <init>")
		block = code_unit + comment_chunk + block + comment_chunk
		return block
		
	return code_unit
	
	
	

def main():
	
	# this is probably a better place to write
	# smali files into the project (such as jackson
	# or MarkedLocation)
	
	# getting / setting the target object from the user
	# should probably be done here!
	
	# this can create objects if the method is a callback
	# e.g., onLocationChanged
	# but most methods are not callbacks, they simply are passed
	# an object that is in the target object group
	# But, I think I can justify the idea that
	#  the object being passed might be an interesting
	# usage-site and worthy of logging 
	# (it's easier to log than to not log haha!)
	Instrumenter.sign_up_method_start(new_method_handler)
	
	
	
	# these essentially create objects
	# but not really, the subsequence call to <init> is more important
	#Instrumenter.sign_up("new-instance", new_instance_handler, 2, True)
	
	Instrumenter.sign_up("invoke-direct", new_instance_handler, 2, True)
	
	''' not yet implemented
	Instrumenter.sign_up("check-cast", new_instance_handler, 2)
	
	# these modify the state of the object
	Instrumenter.sign_up("iput-*", put-handler, 2)
	Instrumenter.sign_up("sput-*", put_handler, 2)
	
	# these can modify the state of the object
	Instrumenter.sign_up("invoke-*", invoke_handler, 2, True)
	'''
	

if __name__ == "__main__":
	main()
