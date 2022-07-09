
import Instrumenter
import SmaliTypes
import StigmaStringParsingLib

import SmaliAssemblyInstructions as smali

OBJECT_MAPPER_TYPE_ID = "Lcom/fasterxml/jackson/databind/ObjectMapper;"

# a list of SmaliType.ObjectReference objects
TARGET_CLASSES = [SmaliTypes.from_string("Landroid/location/Location;")]


def _make_new_method_chunk(scd, smd, target_reg, free_regs):
	#print("free regs: " + str(free_regs) + "  type: " + str(type(free_regs)))
	#print("free_regs[0]:  " + str(free_regs[0]) + "  type: " + str(type(free_regs[0])))
	comment_chunk = Instrumenter.make_comment_block("for parameters at method start")
	free_reg_a = free_regs[0]
	free_reg_b = free_regs[1]
	
	block = []
	block.extend(comment_chunk)
	block.append(smali.NEW_INSTANCE(free_reg_a, OBJECT_MAPPER_TYPE_ID))
	block.append(smali.BLANK_LINE())
	block.append(smali.INVOKE_DIRECT([free_reg_a], OBJECT_MAPPER_TYPE_ID + "-><init>()V"))
	block.append(smali.BLANK_LINE())
	# I should do SerializationFeature;->FAIL_ON_EMPTY_BEANS, false
	
	try_start_label = smd.make_new_try_start_label()
	try_catch_num = try_start_label.n
	
	block.append(try_start_label)
	block.append(smali.INVOKE_VIRTUAL([free_reg_a, target_reg], "Lcom/fasterxml/jackson/databind/ObjectMapper;->writeValueAsString(Ljava/lang/Object;)Ljava/lang/String;"))
	block.append(smali.BLANK_LINE())
	block.append(smali.MOVE_RESULT_OBJECT(free_reg_b)) # a string
	block.append(smali.BLANK_LINE())
	s = "\"stigma JSON\""
	block.append(smali.CONST_STRING(free_reg_a, s))
	block.append(smali.BLANK_LINE())
	block.append(smali.LOG_D(free_reg_a, free_reg_b))
	block.append(smali.BLANK_LINE())
	try_end_label = smali.TRY_END_LABEL(try_catch_num)
	block.append(try_end_label)
	block.append(smali.BLANK_LINE())
	try_catch_label = smali.CATCH_LABEL(try_catch_num)
	exception_type_id = "Lcom/fasterxml/jackson/core/JsonProcessingException;"
	block.append(smali.CATCH_DIRECTIVE(exception_type_id, try_start_label, try_end_label, try_catch_label))
	block.append(smali.BLANK_LINE())
	block.append(try_catch_label)
	
	block.extend(comment_chunk)
	
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
			block = _make_new_method_chunk(scd, smd, p_reg, ["v0", "v1"])
			# bug if there is more than one parameter
			# matching the TARGET_CLASSES list
			return block
			
	return []
	
def new_instance_handler(scd, smd, code_unit, free_regs):
	# free_regs length should be 2
	
	# probably this is nonsense since we cannot interact
	# with the object BEFORE it is fully constructed
	# we need to instrument after this new-instance instruction
	# AND ALSO after the subsequent call to <init>
	
	target_reg = StigmaStringParsingLib.get_v_and_p_numbers(code_unit[0])[0]
	block = _make_new_method_chunk(scd, smd, target_reg, free_regs)
	return block
	
	
	

def main():
	
	# this is probably a better place to write
	# smali files into the project (such as jackson
	# or MarkedLocation)
	
	# getting / setting the target object should probably
	# be done here!
	
	# this can create objects if the method is a callback
	# e.g., onLocationChanged
	# but also the object being passed might be an interesting
	# usage-site and worthy of logging (also it's easier to log
	# than to not log haha!
	Instrumenter.sign_up_method_start(new_method_handler)
	
	
	# these essentially create objects
	Instrumenter.sign_up("new-instance", new_instance_handler, 2)
	
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
