import re
import SmaliAssemblyInstructions as smali
import StigmaStringParsingLib
import VRegisterPool as vregpool
import SmaliRegister

        
class SmaliMethodSignature:

    # This should maybe be an inner-class of SmaliMethodDef
    
    def __init__(self, sig_line):
        
        self.sig_line = sig_line
        
        self.parameter_type_map = {}
        self.parameter_type_map["p0"] = "THIS" # not really but that's ok
        
        self.no_of_parameters = 1 # starts with a 1 because of the implicit "this"
        self.no_of_parameter_registers = 1
        parameter_raw = re.search(StigmaStringParsingLib.PARAMETERS, sig_line).group(1)
      
        i = 0
        p_idx = 1
        # https://github.com/JesusFreke/smali/wiki/TypesMethodsAndFields
        while i < len(parameter_raw):
            self.no_of_parameters += 1
             
            if parameter_raw[i] != "D" and parameter_raw[i] != "J" and parameter_raw[i] != "L" and parameter_raw[i] != "[":
                self.no_of_parameter_registers += 1
                p_name = "p" + str(p_idx)
                self.parameter_type_map[p_name] = parameter_raw[i]
                
                
            elif parameter_raw[i] == "J" or parameter_raw[i] == "D": # long or double
                self.no_of_parameter_registers += 2
                p_name = "p" + str(p_idx)
                self.parameter_type_map[p_name] = parameter_raw[i]
                p_idx+=1
                p_name = "p" + str(p_idx)
                self.parameter_type_map[p_name] = parameter_raw[i]+"2"
                
                
            elif parameter_raw[i] == "L": # some object
                self.no_of_parameter_registers += 1
                p_name = "p" + str(p_idx)
                self.parameter_type_map[p_name] = parameter_raw[i]

            
                # skip past all the characters in the type
                # e.g., MyMethod(java/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
                i = SmaliMethodSignature.fast_forward_to_semicolon(i, parameter_raw)
                    
                    
            elif parameter_raw[i] == "[": # an array
                # note arrays are n-dimensional
                # e.g., [[[I
                i = SmaliMethodSignature.fast_forward_to_not_bracket(i, parameter_raw)
                
                if(parameter_raw[i] == "L"):
                    # this is an array of objects (L indicates beginning of object FQN)
                    i = SmaliMethodSignature.fast_forward_to_semicolon(i, parameter_raw)
                    
                #else: 
                    # this is an array of primitives
                    # this skips forward past the primitive letter
                    # i += 1
            
                self.no_of_parameter_registers += 1
                p_name = "p" + str(p_idx)
                self.parameter_type_map[p_name] = "ARRAY"


            #print("the big one")
            p_idx += 1        
            i += 1

    @staticmethod
    def fast_forward_to_semicolon(idx, string):
        while(string[idx] != ";"):
            idx+=1
            #print("this one")
        return idx
        
        
    @staticmethod
    def fast_forward_to_not_bracket(idx, string):
        while(string[idx] == "["):
            #print("that one")
            idx+=1
        return idx
      
      
    def __str__(self):
        return str(self.sig_line) + str(self.parameter_type_map)

        


class SmaliMethodDef:



    def __init__(self, text, scd):
        # should be a list of strings (lines)
        # starting from ".method..." and ending in "... .end method"
        self.raw_text = text

        self.num_jumps = 0 # not used except for a sanity check

        self.ORIGINAL_LOCAL_NUMBER_REGS = self.get_locals_directive_num()
        self.reg_number_float = self.ORIGINAL_LOCAL_NUMBER_REGS

        self.scd = scd # smali class definition
        
        self.signature = SmaliMethodSignature(self.raw_text[0])
        #print(self.signature)

        self.ORIGINAL_NUM_REGISTERS = self.get_num_registers()



    # There are three "register numbers"
    # 1) The ORIGINAL_NUMER_REGS
    #       This is the number of registers this method had / used before
    #       any instrumentation
    #
    # 2) The locals_directive_num()
    #       This is the "max" or total number of unique registers
    #       the method uses.  If a register is used and free in
    #       the instrumentation this goes up.  But if it is used
    #       again, this number would not go up, because the register
    #       is being RE-used.
    #       The locals_directive is checked at package time by apktool
    #
    # 3) The reg_number_float
    #       This is the register number that is ready to be re-used
    #       If a register is used this goes up, but if it is freed this
    #       number goes down

    def set_locals_directive(self, new_val):
        self.raw_text[1] = "    .locals " + str(new_val) + "\n"

    def get_locals_directive_line(self):
        return self.raw_text[1].strip()

    def get_locals_directive_num(self):
        line = self.get_locals_directive_line()
        search_object = re.search(r"[0-9]+", line)
        if search_object is not None:
            num = search_object.group()
            # print("number: " +  str(num))
            return int(num)
        else:
            return 0
            
    def get_num_registers(self):
        ans = self.get_locals_directive_num() + self.signature.no_of_parameter_registers
        return ans
        

    def get_signature(self):
        return self.raw_text[0].strip()


    def get_name(self):
        # kinda hacky!  Sorry 'bout that!
        s = self.get_signature()
        s = s.split("(")
        # print("name: " + str(s))
        s = s[0].split(" ")
        name = s[-1]
        # print("name: " + str(name))
        return name


    def make_new_reg(self):
        self.reg_number_float += 1

       # if self.reg_number_float > 15:
       #     raise Exception("cannot request register > 15, apktool might be mad!")
        # It is possible depending on the instruction
        # see comment for free_reg

        directive = self.get_locals_directive_num()
        if self.reg_number_float > directive:
            self.set_locals_directive(self.reg_number_float)

        # When there are three registers in use, the float will be at 3
        # but that means v0, v1, and v2, so the v number is the float - 1
        return "v" + str(self.reg_number_float - 1)

    # Only v0 - v16 registers are allowed for general purpose use.
    # This is enforced by apktool.  The documentation indicates that
    # some instrucions allow many many more registers (up to v65535)
    # https://source.android.com/devices/tech/dalvik/dalvik-bytecode
    # Anyway, it is necessary to "free" registers so that
    # instrumentation does not accumulate registers when adding
    # several instrumentation lines into one method.
    # This first became an issue with EXTERNAL_FUNCTION_instrumentation
    def free_reg(self):
        if self.reg_number_float == self.ORIGINAL_LOCAL_NUMBER_REGS:
            raise Exception("No registers to free!")

        self.reg_number_float -= 1
        return self.reg_number_float  # IDK why I return anything! lol -\

    def make_new_jump_label(self):
        res = smali.LABEL(self.num_jumps)
        self.num_jumps += 1
        if self.num_jumps > 20:
            raise Exception("too many jumps")
        return res

    def embed_line(self, position, line):
        self.raw_text.insert(position, line)


    def embed_block_with_replace(self, position, block):
        self.raw_text = self.raw_text[:position] + block + self.raw_text[position + 1:]


    def embed_block(self, position, block):
        # put the code in this block just before the position
        
        
        # print("embedding block as position: " + str(position))

        # print("--- before ---")
        # for i in range(position-5, position+len(block) + 5):
        # print(self.raw_text[i], end="")
        # print("\n\n")
        self.raw_text = self.raw_text[:position] + block + self.raw_text[position:]

        # print("--- after ---")
        # for i in range(position-5, position+len(block) + 5):
        # print(self.raw_text[i], end="")
        # print("\n\n")
    


    @staticmethod
    def _should_skip_line_frl(cur_line):
        # print(cur_line)
        # We need to check the instruction
        # some instructions don't need to have their register
        # limit fixed.  Such as:
        # * pre-existing move instructions
        # * */range
        # * cmpl-double   (weird example IMHO: http://pallergabor.uw.hu/androidblog/dalvik_opcodes.html)
        # * move/from16 vx,vy # Moves the content of vy into vx. vy may be in the 64k register range while vx is one of the first 256 registers.

        # Check if this line is actually a smali instruction (starts with a valid opcode)
        if(not StigmaStringParsingLib.is_valid_instruction(cur_line)):
            return True
            
        # Check if this line has "range" in the opcode
        opcode = StigmaStringParsingLib.break_into_tokens(cur_line)[0]
        if ("range" in opcode):
            return True
            
        # don't touch any line that has {} in it, which indicate
        # a list of parameters
        #if opcode == "filled-new-array" or opcode == "filled-new-array-range":
        #    return True
        #search_object = re.search(StigmaStringParsingLib.BEGINS_WITH_INVOKE, opcode)
        #if(search_object != None):
        #    return True

        # don't touch "move" lines, basic "move/16" opcode can support
        # as high as v255.  We assume that we will never see any
        # higher v number as a result of our tracking / instrumentation
        # move-result v16  might be a problem?
        if(re.match("^\s*move/16", cur_line) or 
            re.match("^\s*move/from16", cur_line) or
            re.match("^\s*move-wide/from16", cur_line) or
            re.match("^\s*move-wide/16", cur_line) or
            re.match("^\s*move-object/16", cur_line) or 
            re.match("^\s*move-object/from16", cur_line)):
            return True
        
        return False


    @staticmethod
    def _dereference_p_registers_frl(cur_line, locals_num):
        # Step 2, de-reference p registers
        # Replace all instances of pX with corresponding vY
        # v0, v1, v2, v3, v4
        #         p0, p1, p2
        # even if p1 is a long, there will still be a p2
        # and it will still correspond to v4
        p_regs = StigmaStringParsingLib.get_p_numbers(cur_line)
        
        # because this loops through the registers found
        # and str.replace(x, y, 1) replaces only the first occurence
        # this little algoritm will not replace instances of
        # "v4" and other register-like strings in instructions
        # such as: const-string v4, "edge v2 case p0 string v4\n"
        for reg in p_regs:
            v_name = StigmaStringParsingLib.get_v_from_p(reg, locals_num)
            cur_line = cur_line.replace(reg, v_name, 1)
        return cur_line
    

    @staticmethod
    def fix_register_limit_for_line(line, shadows, reg_pool):
        
        # imagine...

        # reg_pool =
        # v0: TYPE_CODE_OBJ_REF
        # v1: TYPE_CODE_WIDE
        # ...

        # line  = "    instance-of v3, v16, Ljava/lang/String;\n"

        # shadow_registers = ["v16", "v17", "v18"]


        # shad <- corr
        # corr <-- high

        # low/corr, shadow, high
        asm_obj = smali.parse_line(line)
        
        original_registers = asm_obj.get_registers() + asm_obj.get_implicit_registers()
        # implicit registers are necessary for example:
        # int-to-long v0, v18
        # v18 is a long, v0 is currently undefined / open
        # the corresponding register should NOT be v0 and it should NOT be v1
        # yet both v0 and v1 will be listed in the reg_pool as None

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
            
    def fix_register_limit(self):
        print("fix_register_limit(" + str(self.signature) + ")")

        # Step 1: Initiate shadow registers
        # -- Example --  MyMethod(JI)  .locals = 17
        # Before: [v0, v1, ... , v15, v16, v17(p0), v18(p1), v19(p2), v20(p3)]
        # After:  [v0, v1, ... , v15, v16, v17,     v18,     v19,     v20,     v21, v22(p0), v23(p1), v24(p2), v25(p3)]
        #                             |_|  |_____________________________________|  |________________________________|
        #                              |                      |                                     |
        #              "higher numbered" regsiters      "Shadow" registers                "higher numbered" registers
        #       
        # In the above example, get_num_regisers() is 21 so we will create
        # (21 - 16) = 5 new registers
        #                     
        # v17 up to v21 are the shadow registers (free temp registers) that we can use as general purpose
        # The 'corresponding' registers are lower numberd registers that will be used temporarily
        # for a specific instruction
        shadows = []
        # The number of remanining shadows is number of high-num registers * 2 because
        # Each of the high-num registers could be a word (single-registered  type)
        # While each of the corresponding could store a wide (double-registered type)
        # So to store each corresponding temporarily in a shadow, we would need
        # 2 times the number of higher-numbered registers
        for i in range((self.get_num_registers() - 16) * 2): 
            #print("creating shadow register: " + str(i))
            shadows.append(self.make_new_reg())
        
        #print("remaining shadows: " + str(self.remaining_shadows))

        # Step 2: Initiate reg_pool with parameters of funciton
        # -- Example -- MyMethod(JI)  .locals = 17
        # p0 = v22 type: object reference ("this") => TYPE_CODE_OBJ_REF
        # p1 = v23 type: long => TYPE_CODE_WIDE
        # p2 = v24 type: long2 => TYPE_CODE_WIDE_REM
        # p3 = v25 type: int => TYPE_CODE_WORD
        # key: register name (v's only)
        # value: smali.TYPE_CODE corresponding to register type
        reg_pool = vregpool.VRegisterPool(self.signature, self.get_locals_directive_num())
        
        #print(self)
        
        line_num = 1;
        while line_num < len(self.raw_text):
            cur_line = str(self.raw_text[line_num])
            #print(cur_line)
            # Check if this line is actually a smali instruction (starts with a valid opcode)
            if(not StigmaStringParsingLib.is_valid_instruction(cur_line)):
                line_num += 1
                continue
                
            # Step 3: Dereference p registers
            locals_num = self.get_locals_directive_num()
            cur_line = SmaliMethodDef._dereference_p_registers_frl(cur_line, locals_num)
            self.raw_text[line_num] = cur_line
            
            # Step 4: Update move_type_hashmap with this instruction
            reg_pool.update(cur_line)
            
            # identify lines that should be skipped for the rest of this
            if(SmaliMethodDef._should_skip_line_frl(cur_line)):
                line_num += 1
                continue
                    
           
            ans_block = SmaliMethodDef.fix_register_limit_for_line(cur_line, shadows, reg_pool)
            self.embed_block_with_replace(line_num, ans_block)


            # go to next line!
            line_num += len(ans_block)
            
            

    def __repr__(self):
        return self.get_signature()

    def __str__(self):
        return self.get_signature()

    def __eq__(self, other):
        if isinstance(other, str):
            return self.get_signature() == other

        elif isinstance(other, SmaliMethodDef):
            return self.get_signature() == other.get_signature()

        else:
            return False
            



def tests():
    print("Testing SmaliMethodDef Functions")

    print("\t_should_skip_line_frl...")
    assert(SmaliMethodDef._should_skip_line_frl("    .locals 3\n"))
    assert(SmaliMethodDef._should_skip_line_frl("    filled-new-array/range {v19..v21}, [B\n"))
    assert(SmaliMethodDef._should_skip_line_frl("    move-wide/16 v12, p2\n"))
    assert(SmaliMethodDef._should_skip_line_frl("    new-array v1, v0, [J\n") == False)
    assert(SmaliMethodDef._should_skip_line_frl("    move-object v1, v0 \n") == False)
    assert(SmaliMethodDef._should_skip_line_frl("    invoke-super-quick/range {v0..v5}"))
    assert(SmaliMethodDef._should_skip_line_frl("    invoke-super {v12, v13, v14, v15, v16}, Landroid/view/ViewGroup;->drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z\n") == False)


    print("\tStigmaStringParsingLib._get_v_from_p...")
    assert(StigmaStringParsingLib.get_v_from_p("p2", 2) == "v4")
    assert(StigmaStringParsingLib.get_v_from_p("p0", 5) == "v5")
    assert(StigmaStringParsingLib.get_v_from_p("p0", 0) == "v0")
    assert(StigmaStringParsingLib.get_v_from_p("p3", 0) == "v3")


    print("\t_dereference_p_registers_frl...")
    assert(SmaliMethodDef._dereference_p_registers_frl("    filled-new-array {v0, v1, p2}, [Ljava/lang/String;\n", 2) == "    filled-new-array {v0, v1, v4}, [Ljava/lang/String;\n")
    assert(SmaliMethodDef._dereference_p_registers_frl("    throw p1\n", 16) == "    throw v17\n")
    assert(SmaliMethodDef._dereference_p_registers_frl("    filled-new-array {p0, p1, p2}, [Ljava/lang/String;\n", 2) == "    filled-new-array {v2, v3, v4}, [Ljava/lang/String;\n")
    assert(SmaliMethodDef._dereference_p_registers_frl("    if-eqz p3, :cond_6\n", 13) == "    if-eqz v16, :cond_6\n")
    assert(SmaliMethodDef._dereference_p_registers_frl("    const-string p2, \"nasty p2 example\"\n", 2) == "    const-string v4, \"nasty p2 example\"\n")
    

    print("\tfix_register_limit_for_line...")

    # foo(I)
    # .locals 16
    # v0, v1, v2, ... v15, v16, v17
    #                     shad,  p0
    line = "    iget v0, v17, LMyObject->num1:I\n"
    shadows = ["v16"]
    signature = SmaliMethodSignature(".method private foo()V")
    reg_pool = vregpool.VRegisterPool(signature, 17)
    reg_pool["v17"] = smali.TYPE_CODE_OBJ_REF

    #print(reg_pool.pretty_string(0, 20))
    code_block = SmaliMethodDef.fix_register_limit_for_line(line, shadows, reg_pool)
    soln = [smali.MOVE_OBJECT_16("v1", "v17"),
        smali.BLANK_LINE(),
        str(smali.IGET("v0", "v1", "LMyObject->num1:I")),
        smali.BLANK_LINE(),
        smali.MOVE_OBJECT_16("v17", "v1"),
        smali.BLANK_LINE()]
    assert(code_block == soln)
    #print(reg_pool.pretty_string(0, 20))
    
    line = "    iget v1, v17, LMyObject->num2:I\n"
    code_block = SmaliMethodDef.fix_register_limit_for_line(line, shadows, reg_pool)
    soln = [smali.MOVE_OBJECT_16("v2", "v17"),
        smali.BLANK_LINE(),
        str(smali.IGET("v1", "v2", "LMyObject->num2:I")),
        smali.BLANK_LINE(),
        smali.MOVE_OBJECT_16("v17", "v2"),
        smali.BLANK_LINE()]
    assert(code_block == soln)
    
    
    line = "    const/16 v3, 0x5\n"
    code_block = SmaliMethodDef.fix_register_limit_for_line(line, shadows, reg_pool)
    soln = [str(smali.CONST_16("v3", "0x5")),
        smali.BLANK_LINE()]
    assert(code_block == soln)

    line = "    iget v17, v17, Lblahblah->somefield:I\n"
    code_block = SmaliMethodDef.fix_register_limit_for_line(line, shadows, reg_pool)
    soln = [smali.MOVE_OBJECT_16("v3", "v17"),
        smali.BLANK_LINE(),
        str(smali.IGET("v3", "v3", "Lblahblah->somefield:I")),
        smali.BLANK_LINE(),
        smali.MOVE_16("v17", "v3"),
        smali.BLANK_LINE()]
    assert(code_block == soln)

    '''
    
    print("\tfix_register_limit()...")
    ans_block = smali.parse_line("    const v21, 0x800053\n").fix_register_limit()
    #print(ans_block)
    assert(ans_block == ["    const/16 v21, 0x800053\n"])
    # This test raises a concern about introducing logical bugs
    # -0x1 is 1111 in 4bit 2's compliment binary
    # -0x1 is 1111 1111 1111 1111 in 16bit 2's compliment binary
    
    # 0xFFFF = 65535 = 0000 0000 0000 0000 1111 1111 1111 1111 (in 32-bit binary)
    # imagine the instruction const/32 vx 0xFFFF
    # if we convert this to const/16 without changing anything else we have
    # const/16 vx, 0xFFFF
    # 1111 1111 1111 1111 which is now interpreted as
    # -1 (two's compliment).
    ans_block = smali.parse_line("    const/4 v25, -0x1\n").fix_register_limit()
    assert(ans_block == ["    const/16 v25, -0x1\n"])

    asm_obj = smali.parse_line("    const-string v16, \"hey there! v4, test string!\"\n")
    #print(test2_shadow_map)
    ans_block = asm_obj.fix_register_limit(test2_shadow_map, {"v0": smali.MOVE_OBJECT_16})
    #print("TEST HERE")
    soln_block = [smali.COMMENT("FRL MOVE ADDED BY STIGMA"), 
            smali.BLANK_LINE(),
            smali.MOVE_OBJECT_16("v19", "v0"),
            smali.BLANK_LINE(),
            smali.CONST_STRING("v0", "\"hey there! v4, test string!\""),
            smali.BLANK_LINE(),
            smali.MOVE_OBJECT_16("v16", "v0"),
            smali.BLANK_LINE(),
            smali.MOVE_OBJECT_16("v0", "v19"),
            smali.BLANK_LINE(),
            smali.COMMENT("END OF FRL MOVE ADDED BY STIGMA"),
            smali.BLANK_LINE()]
    
    #print(ans_block)
    #print(soln_block)
    assert(ans_block == soln_block)

    asm_obj = smali.parse_line("    const-class v16, Ljavax/swingx/JFrame;")
    #print(test2_shadow_map)
    ans_block = asm_obj.fix_register_limit(test2_shadow_map, {"v0": smali.MOVE_OBJECT_16})
    soln_block = [smali.COMMENT("FRL MOVE ADDED BY STIGMA"), 
            smali.BLANK_LINE(),
            smali.MOVE_OBJECT_16("v19", "v0"),
            smali.BLANK_LINE(),
            smali.CONST_CLASS("v0", "Ljavax/swingx/JFrame;"),
            smali.BLANK_LINE(),
            smali.MOVE_OBJECT_16("v16", "v0"),
            smali.BLANK_LINE(),
            smali.MOVE_OBJECT_16("v0", "v19"),
            smali.BLANK_LINE(),
            smali.COMMENT("END OF FRL MOVE ADDED BY STIGMA"),
            smali.BLANK_LINE()]
    
    #print(ans_block)
    #print(soln_block)
    assert(ans_block == soln_block)

    asm_obj = smali.parse_line("    move-result v16")
    #print(test2_shadow_map)
    ans_block = asm_obj.fix_register_limit(test2_shadow_map, {"v0": smali.MOVE_OBJECT_16})
    soln_block = [smali.COMMENT("FRL MOVE ADDED BY STIGMA"), 
            smali.BLANK_LINE(),
            smali.MOVE_OBJECT_16("v19", "v0"),
            smali.BLANK_LINE(),
            smali.MOVE_RESULT("v0"),
            smali.BLANK_LINE(),
            smali.MOVE_16("v16", "v0"),
            smali.BLANK_LINE(),
            smali.MOVE_OBJECT_16("v0", "v19"),
            smali.BLANK_LINE(),
            smali.COMMENT("END OF FRL MOVE ADDED BY STIGMA"),
            smali.BLANK_LINE()]
    
    #print(ans_block)
    #print(soln_block)
    assert(ans_block == soln_block)
    
    asm_obj = smali.parse_line("    throw v16")
    #print(test2_shadow_map)
    ans_block = asm_obj.fix_register_limit(test2_shadow_map, {"v0": smali.MOVE_16, "v16" : smali.MOVE_OBJECT_16})
    soln_block = [smali.COMMENT("FRL MOVE ADDED BY STIGMA"), 
            smali.BLANK_LINE(),
            smali.MOVE_16("v19", "v0"),
            smali.BLANK_LINE(),
            smali.MOVE_OBJECT_16("v0", "v16"),
            smali.BLANK_LINE(),
            smali.THROW("v0"),
            smali.BLANK_LINE(),
            smali.MOVE_OBJECT_16("v16", "v0"),
            smali.BLANK_LINE(),
            smali.MOVE_16("v0", "v19"),
            smali.BLANK_LINE(),
            smali.COMMENT("END OF FRL MOVE ADDED BY STIGMA"),
            smali.BLANK_LINE()]
    
    #print(ans_block)
    #print(soln_block)
    assert(ans_block == soln_block)
    '''
    

    print("ALL TESTS PASSED!")




if __name__ == "__main__":
    tests()
