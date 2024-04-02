import re

import Instrumenter 
import StigmaStringParsingLib
import SmaliTypes

import SmaliAssemblyInstructions as smali
from TaintStorageHandler import TaintStorageHandler


LOCATION_TYPE = "Landroid/location/Location;"
MARKED_LOC = "Lnet/stigma/MarkedLocation;"
MARKED_LOC_CONSTRUCTOR = MARKED_LOC + "-><init>(Landroid/location/Location;)V"
MARKED_LOC_PRINTLOGMESSAGES = MARKED_LOC + "->printLogMessages()V"
MARKED_LOC_PRINTLOGMESSAGES_EXTRA = MARKED_LOC + "->printLogMessages(Ljava/lang/String;)V"



def _make_markedlocaiton_instance_chunk(reg1, reg2, reg_containing_loc, smd, extra_message):    
    # instantiate a MarkedLocation and leave it in reg1
    # reg1 and reg2 must be lower-numbered registers for this function to work!
    
    jmp_label = smd.make_new_jump_label()
    block = []
    
    block.append(smali.BLANK_LINE())
    block.append(smali.IF_EQZ(reg_containing_loc, repr(jmp_label)))
    block.append(smali.BLANK_LINE())
    block.append(smali.NEW_INSTANCE(reg1, MARKED_LOC));
    block.append(smali.BLANK_LINE())
    # need to move it into reg2 since reg_containing_loc might be higher-numbered
    block.append(smali.MOVE_OBJECT_16(reg2, reg_containing_loc))
    block.append(smali.BLANK_LINE())
    # invoke-direct should be used for constructor
    block.append(smali.INVOKE_DIRECT([reg1, reg2], MARKED_LOC_CONSTRUCTOR))
    block.append(smali.BLANK_LINE())
    block.append(smali.CONST_STRING(reg2, extra_message))
    block.append(smali.BLANK_LINE())
    # invoke-virtual should be used for "normal" 
    # see https://source.android.com/devices/tech/dalvik/dalvik-bytecode
    block.append(smali.INVOKE_VIRTUAL([reg1, reg2], MARKED_LOC_PRINTLOGMESSAGES_EXTRA))
    block.append(smali.BLANK_LINE())
    
    # finally, replace the reg containing Landroid/location/Location; 
    # with a Lnet/stigma/MarkedLocation; 
    block.append(smali.MOVE_OBJECT_16(reg_containing_loc, reg1))
    block.append(smali.BLANK_LINE())
    block.append(jmp_label)
    
    return block


def NEW_METHOD_handler(scd, smd):
    
    # I can use v0 and v1 since this instrumentation plugin
    # signs up for at least 2 free regs.
    # assuming the method was grown() by n or more where n > 0
    # then there are n vX registers open (v0, v1, ..., v(n-1))
    # these registers are (a) used by the method, which case they
    # will be given a value later in the method or (b) was used to store p0
    # which is technically not possible since we have used grow()
    
    s = "\"location from parameter in " + scd.extract_class_name(scd.file_name) + "\""

    block = Instrumenter.make_comment_block("for method with location parameter")
    target = SmaliTypes.from_string("Landroid/location/Location;")
    for p_reg in smd.signature.parameter_type_map:
        p_reg_type = smd.signature.parameter_type_map[p_reg]
        
        if(p_reg_type == target):
            #print("FOUND ONE at method start!")
            #print("class:" + str(scd))
            #print("method:" + str(smd))
            #print("p_reg:" + str(p_reg) + "  p_reg_type: " + str(p_reg_type))
            
            chunk = _make_markedlocaiton_instance_chunk("v0", "v1", p_reg, smd, s)
            block.extend(chunk)
           
            #input("contine?")
            
    block = block + Instrumenter.make_comment_block("for method with location parameter")
    return block
    
    


def INVOKE_handler(scd, smd, code_unit, free_regs):
    
    asm_obj = smali.SmaliAssemblyInstruction.from_line(code_unit[0])
    return_type = asm_obj.types_spec.split(")")[-1]
    
    block = Instrumenter.make_comment_block("for method returning location")
    
    block = block + code_unit

    if(return_type == LOCATION_TYPE):
        #print()
        #print("FOUND ONE!")
        #print("scd: " + scd.file_name)
        #print("asm obj:" + str(asm_obj) + "  " + str(type(asm_obj)))
        #print("code unit: " + str(code_unit))
        #print("types specification: " + asm_obj.types_spec)
        #print("return type: " + str(return_type))
        
        move_result_line = code_unit[-1] 
        reg_containing_loc = StigmaStringParsingLib.get_v_and_p_numbers(move_result_line)[0]
        
        s = "\"location from return value in " + scd.extract_class_name(scd.file_name) + "\""
        chunk = _make_markedlocaiton_instance_chunk(free_regs[0], free_regs[1], reg_containing_loc, smd, s)
        
        block.extend(chunk)
        
        #print("---block---")
        #for item in block:
        #    print("\t" + str(item))
        #print("---block---")
        
        #input("continue?")
    
    
        block = block + Instrumenter.make_comment_block("for method returning location")
        return block
    
    else:
        return code_unit
    

def main():
    
    # convert Location's that come from the method parameter originally
    # best example of this is the onLocationChanged() callback method 
    # used when setting up a LocationListener
    Instrumenter.sign_up_method_start(NEW_METHOD_handler)
    
    # sign-up(instruction, handler function, num_regs, inserts_orig_lines)
    # the below could all use 1 instead of 2 free regs
    Instrumenter.sign_up("invoke-virtual", INVOKE_handler, 2, True)
    Instrumenter.sign_up("invoke-super", INVOKE_handler, 2, True)
    Instrumenter.sign_up("invoke-direct", INVOKE_handler, 2, True)
    Instrumenter.sign_up("invoke-static", INVOKE_handler, 2, True)
    Instrumenter.sign_up("invoke-interface", INVOKE_handler, 2, True)
    Instrumenter.sign_up("invoke-virtual/range", INVOKE_handler, 2, True)
    Instrumenter.sign_up("invoke-super/range", INVOKE_handler, 2, True)
    Instrumenter.sign_up("invoke-direct/range", INVOKE_handler, 2, True)
    Instrumenter.sign_up("invoke-static/range", INVOKE_handler, 2, True)
    Instrumenter.sign_up("invoke-interface/range", INVOKE_handler, 2, True)



if __name__ == '__main__':
    main()
