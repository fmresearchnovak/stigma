
import VRegisterPool
import SmaliAssemblyInstructions as smali
import SmaliRegister
import SmaliMethodDef

'''
# reg_pool
v0: TYPE_CODE_OBJ_REF
v1: TYPE_CODE_WIDE
v2: TYPE_CODE_WIDE_REMAINING
v3: None
v4: None
v5: None
v6: None
v7: None
v8: None
v9: None
v10: None
v11: None
v12: None
v13: TYPE_CODE_OBJ_REF
v14: TYPE_CODE_WORD
v15: TYPE_CODE_WORD
v16: TYPE_CODE_OBJ_REF
v17: TYPE_CODE_WIDE
v18: TYPE_CODE_WIDE_REMAINING
v19: None
'''

# line  = "    instance-of v3, v16, Ljava/lang/String;\n"

# shadow_registers = ["v16", "v17", "v18"]


# shad <- corr
# corr <-- high

# low/corr, shadow, high
def fix_register_limit(line, shadows, reg_pool):
    asm_obj = smali.parse_line(line)
    
    original_registers = asm_obj.get_registers() + asm_obj.get_implicit_registers()
    new_line = line # will be used for the re-write
    
    # before block
    before_block = []
    after_block = []
    shadow_idx = 0
    for reg_high_name in asm_obj.get_unique_registers():
        reg_high = SmaliRegister.SmaliRegister(reg_high_name, reg_pool[reg_high_name])
        if(reg_high.is_high_numbered()):
            
            is_wide = (reg_high.type == smali.TYPE_CODE_WIDE)
            
            reg_corr_name = reg_pool.get_spot(15, reg_high.type, exclude_list = original_registers)
            reg_corr = SmaliRegister.SmaliRegister(reg_corr_name, reg_pool[reg_corr_name])
            
            
            corr_previous_type = reg_corr.type

            if(corr_previous_type != None):
                # corresponding register might be empty in which case
                # we should not do a move on it
                reg_shad_name = shadows[idx]
                reg_shad = SmaliRegister.SmaliRegister(reg_shad_name, reg_pool[reg_shad_name])
                
                if(is_wide):
                    shadow_idx += 2
                else:
                    shadow_idx += 1
            
                custom_move_corr_shad = reg_corr.move_instr
                CUSTOM_MOVE_B = custom_move_corr_shad(reg_shad_name, reg_corr_name)
                before_block.append(CUSTOM_MOVE_B)
                before_block.append(smali.BLANK_LINE())

                reg_pool.update(str(CUSTOM_MOVE_B))
                reg_shad.update_type(reg_pool[reg_shad_name])
                
                
                
            
            if(reg_high.type != None):
                # high register might be empty / might not exist / might have type "None"
                # for example in const v32, 0x1 
                # v32 might not contain any data before this instruction
                # in such a situation it's appropriate to not do any move on it
                # before, but it is still necessary to do a move after
                custom_move_high_corr = reg_high.move_instr
                CUSTOM_MOVE_B = custom_move_high_corr(reg_corr_name, reg_high_name)
                before_block.append(CUSTOM_MOVE_B)
                before_block.append(smali.BLANK_LINE())

                reg_pool.update(str(CUSTOM_MOVE_B))
                reg_corr.update_type(reg_pool[reg_corr_name])
            
            
            # the "1" at the end here means that only 1 occurrence will be replaced
            # I'm thinking this works for const-string v16, "nasty v16 example"
            # But I'm thinking it won't work for add-int v16, v16, v5
            # of course add-int v16, v16, v5 should probably be add-int/2addr v16, v5
            occurrences = asm_obj.get_registers().count(reg_high_name)

            new_line = new_line.replace(reg_high_name, reg_corr_name, occurrences)
            

            # Reason, Bug:
            # v0 is int, v21 is obje
            # move-obj v0, v21
            # const/4 v0(v21)
            # move-int v21, v0
            reg_pool.update(new_line)

            reg_corr.update_type(reg_pool[reg_corr_name])


            custom_move_high_corr = reg_corr.move_instr

            CUSTOM_MOVE_A = custom_move_high_corr(reg_high_name, reg_corr_name)
            after_block.append(CUSTOM_MOVE_A)
            after_block.append(smali.BLANK_LINE())

            reg_pool.update(str(CUSTOM_MOVE_A))
            reg_high.update_type(reg_pool[reg_high_name])

            if(corr_previous_type != None):
                custom_move_corr_shad = reg_shad.move_instr
                CUSTOM_MOVE_A2 = custom_move_corr_shad(reg_corr_name, reg_shad_name)
                after_block.append(CUSTOM_MOVE_A2)
                after_block.append(smali.BLANK_LINE())

                reg_pool.update(str(CUSTOM_MOVE_A2))
                reg_corr.update_type(reg_pool[reg_corr_name])
            
     
            
    ans_block = before_block + [new_line, smali.BLANK_LINE()] + after_block
    return ans_block
    

def main():
    
    # foo(I)
    # .locals 16
    # v0, v1, v2, ... v15, v16, v17
    #                     shad,  p0
    line = "    iget v0, v17, LMyObject->num1:I\n"
    shadows = ["v16"]
    signature = SmaliMethodDef.SmaliMethodSignature(".method private foo()V")
    reg_pool = VRegisterPool.VRegisterPool(signature, 17)
    reg_pool["v17"] = smali.TYPE_CODE_OBJ_REF

    print(reg_pool.pretty_string(0, 20))
    code_block = fix_register_limit(line, shadows, reg_pool)
    for line in code_block:
        print(line)
        reg_pool.update(line)

    print(reg_pool.pretty_string(0, 20))
    
    line = "    iget v1, v17, LMyObject->num2:I\n"
    code_block = fix_register_limit(line, shadows, reg_pool)
    for line in code_block:
        print(line)
        reg_pool.update(line)

    print(reg_pool.pretty_string(0, 20))
    
    
    line = "    const/16 v3, 0x5\n"
    code_block = fix_register_limit(line, shadows, reg_pool)
    for line in code_block:
        print(line)
        reg_pool.update(line)

    print(reg_pool.pretty_string(0, 20))

    line = "    iget v17, v17, lblahblah;"
    code_block = fix_register_limit(line, shadows, reg_pool)
    for line in code_block:
        print(line)
        reg_pool.update(line)

    print(reg_pool.pretty_string(0, 20))
    
    
main()
