




# line  = "    instance-of v3, v16, Ljava/lang/String;\n"

# shadow_registers = ["v16", "v17", "v18"]

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


# low, shadow, high
def fix_register_limit(line, shadow_registers, reg_pool):
    asm_obj = smali.parse_line(line)
    
    
    i = 0
    for reg in asm_obj.get_registers():
        reg = SmaliRegister(reg)
        
        if(reg.is_high_numbered()):
        
            CUSTOM_MOVE_LOW = reg_pool[reg.name]
            CUSTOM_MOVE_LOW(shadow_registers[i], reg)
            
        
