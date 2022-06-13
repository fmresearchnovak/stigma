import re

import Instrumenter 
import StigmaStringParsingLib
import SmaliTypes

import SmaliAssemblyInstructions as smali
from TaintStorageHandler import TaintStorageHandler


LOCATION_TYPE_STRING = "Landroid/location/Location;"
MARKED_LOC = "Lnet/stigma/MarkedLocation;"
MARKED_LOC_CONSTRUCTOR = MARKED_LOC + "-><init>(Landroid/location/Location;)V"
MARKED_LOC_PRINTLOGMESSAGE = MARKED_LOC + "->printLogMessage()V"



def NEW_METHOD_handler(scd, smd):
    
    # I can use v0 and v1 since this instrumentation
    # signs up for at least 2 free regs.
    # assuming the method was grown() by n or more where n > 0
    # then there are n vX registers open (v0, v1, ..., v(n-1))
    # these registers are (a) used by the method, which case they
    # will be given a value later in the method or (b) was used to store p0
    # which is technically not possible since we have used grow()

    block = Instrumenter.make_comment_block("for METHOD START")
    target = SmaliTypes.from_string("Landroid/location/Location;")
    for p_reg in smd.signature.parameter_type_map:
        p_reg_type = smd.signature.parameter_type_map[p_reg]
        
        if(p_reg_type == target):
            #print("FOUND ONE at method start!")
            #print("class:" + str(scd))
            #print("method:" + str(smd))
            #print("p_reg:" + str(p_reg) + "  p_reg_type: " + str(p_reg_type))
            block.append(smali.BLANK_LINE())
            block.append(smali.NEW_INSTANCE("v0", MARKED_LOC));
            block.append(smali.BLANK_LINE())
            block.append(smali.MOVE_OBJECT_16("v1", p_reg))
            register_args = ["v0", "v1"]
            block.append(smali.INVOKE_DIRECT(register_args,  MARKED_LOC_CONSTRUCTOR))
            block.append(smali.BLANK_LINE())
            
            # finally, replace the p_reg Landroid/location/Location; data with...
            # Ledu/fandm/enovak/markedlocationstage/MarkedLocation; data
            block.append(smali.MOVE_OBJECT_16(p_reg, "v0"))
            #input("contine?")
            
    block = block + Instrumenter.make_comment_block("for METHOD START")
    return block
    
    


def INVOKE_handler(scd, smd, code_unit, free_regs):
    
    asm_obj = smali.SmaliAssemblyInstruction.from_line(code_unit[0])
    return_type = asm_obj.types_spec.split(")")[-1]
    
    block = Instrumenter.make_comment_block("for INVOKE")
    
    block = block + code_unit

    if(return_type == LOCATION_TYPE_STRING):
        #print()
        #print("FOUND ONE!")
        #print("asm obj:" + str(asm_obj) + "  " + str(type(asm_obj)))
        #print("code unit: " + str(code_unit))
        #print("types specification: " + asm_obj.types_spec)
        #print("return type: " + str(return_type))
        
        move_result_line = code_unit[-1] 
        reg_containing_loc = StigmaStringParsingLib.get_v_and_p_numbers(move_result_line)[0]
        
        block.append(smali.BLANK_LINE())
        block.append(smali.NEW_INSTANCE(free_regs[0], MARKED_LOC));
        block.append(smali.BLANK_LINE())
        register_args = [free_regs[0], reg_containing_loc]
        block.append(smali.INVOKE_DIRECT(register_args,  MARKED_LOC_CONSTRUCTOR))
        block.append(smali.BLANK_LINE())
        block.append(smali.MOVE_OBJECT(reg_containing_loc, free_regs[0]))
        block.append(smali.BLANK_LINE())
        #invoke-virtual {v0}, Ledu/fandm/enovak/leaks/MarkedLocation;->printLogMessage()V
        block.append(smali.INVOKE_VIRTUAL([reg_containing_loc], MARKED_LOC_PRINTLOGMESSAGE))
        block.append(smali.BLANK_LINE())
        
        #print("---block---")
        #for item in block:
        #    print("\t" + str(item))
        #print("---block---")
        
        #input("continue?")
    
    
    block = block + Instrumenter.make_comment_block("for INVOKE")
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
