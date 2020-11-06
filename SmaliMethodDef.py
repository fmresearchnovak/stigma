import re
import SmaliAssemblyInstructions as smali
import StigmaStringParsingLib

        
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

        self.ORIGINAL_NUMER_REGS = self.get_locals_directive_num()
        self.reg_number_float = self.ORIGINAL_NUMER_REGS

        self.scd = scd # smali class definition
        
        self.signature = SmaliMethodSignature(self.raw_text[0])
        #print(self.signature)




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
        if self.reg_number_float == self.ORIGINAL_NUMER_REGS:
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
        
    
    
        
        
        
    class RegShadowMap:
        # This class is an inner-class of SmaliMethodDef 
        # It is not a child-class!
        # Any Innerclass design allows this class to 
        # access all of the instance variables / state
        # of the SmaliMethod without directly inheriting
        # This is useful for things like the constructor
        # which should not be inherited because the two classes are
        # so different.

        # At the same time, this class is never used for any other
        # purpose besides in the context of a method

        # For these reasons it should be an inner class.

        def __init__(self, instruction_regs, rem_shadows):
            #3-tuple format: (high, shadow, corr)
            self.tuples = []

            # deep copy is provided by the slice
            # but I think it's unnecessary since
            # this list was passed into this function
            self.new_remaining_shadows = rem_shadows[:]
            self.instruction_regs = instruction_regs

         
        def insert(self, reg):
            
            # This is two algorithms entangled to find both the shadow and coor registers
            shadow = self.new_remaining_shadows.pop() #Create shadow
            
            for i in range(16): # Create corr
                
                # note: we will probably never reach v15
                # since such an instruction will not be instrumented
                # select cooresponding registers that (a) are not used in another tuple
                # and (b) are not used in the instruction
                test_v_num = "v" + str(i)
                collision_list = [x for x in self.tuples if x[2] == test_v_num]
                if len(collision_list) == 0 and not (test_v_num in self.instruction_regs):
                    corr = test_v_num
                    break
                    
            self.tuples.append((reg, shadow, corr))


        def _get(self, reg, idx):
            for t in self.tuples:
                if(t[0] == reg):
                    return t[idx]
            
            raise ValueError("Register (" + str(reg) + ") not found in RegShadowMap")


        def get_shadow(self, reg):
            return self._get(reg, 1)

            
        def get_corresponding(self, reg):
            return self._get(reg, 2)
            
        def __str__(self):
            return str(self.tuples)

        def __eq__(self, other):
            parta = (self.tuples == other.tuples)
            partb = (self.new_remaining_shadows == other.new_remaining_shadows)
            partc = (self.instruction_regs == other.instruction_regs)
            return parta and partb and partc



    @staticmethod
    def _should_skip_line_frl(cur_line):
        #print(cur_line)
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
        
        # Don't run on "range" lines, they can support higher numbered
        # registers
        if (re.match(StigmaStringParsingLib.ENDS_WITH_RANGE, cur_line)):
            return True 

        # don't touch "move" lines, basic "move" opcode can support
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

        tokens = StigmaStringParsingLib.break_into_tokens(cur_line)
        if ("range" in tokens[0]):
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
        for reg in p_regs:
            v_name = SmaliMethodDef._get_v_frl(reg, locals_num)
            cur_line = cur_line.replace(reg, v_name)
        return cur_line


    @staticmethod
    def _get_v_frl(p_register, locals_num):
        # e.g., _get_v_frl(p2, 2) -> v4
        p_num = int(p_register[1:])
        corresponding_v_num = locals_num + p_num
        return "v" + str(corresponding_v_num)
        
    def _unique_frl(elements):
        ans = []
        for item in elements:
            if(item not in ans):
                ans.append(item)
        return ans

    @staticmethod
    def _build_shadow_map_frl(cur_line, remaining_shadows):
        # Step 2.5 and 3
        # 2.5: Check for high numbered registers in instruction
        # 3: Build shadow map

        # converting from a list back to a set back to a list
        # guarantees that the contents of regs are unique elements
        # only.  This is important for an instruction like
        # add-int v0, v2, v2  which has duplicates
        regs = SmaliMethodDef._unique_frl(StigmaStringParsingLib.get_v_and_p_numbers(cur_line))
        shadow_map = SmaliMethodDef.RegShadowMap(regs, remaining_shadows)

        # note: regs should should be only v registers
        # because of the de-reference p that happenened
        # earlier (in step 2)
        for reg in regs:
            v_num = int(reg[1:]) # Get number from v string
            if v_num > 15:
                shadow_map.insert(reg)
        #print("shadow map: " + str(shadow_map))

        return shadow_map
        
        
    @staticmethod
    def _create_before_move_block_frl(shadow_map):
        #Step 4
        #mv shadow corr
        #mv corr high
        block = [smali.COMMENT("FRL MOVE ADDED BY STIGMA")]
        for t in shadow_map.tuples:
            reg = t[0]
            block += [smali.BLANK_LINE(),
                smali.CONST_4(shadow_map.get_shadow(reg), "0x0"),
                smali.BLANK_LINE(),
                smali.MOVE_16(shadow_map.get_shadow(reg), shadow_map.get_corresponding(reg)),
                smali.BLANK_LINE(),
                smali.MOVE_16(shadow_map.get_corresponding(reg), reg)]
        return block
    
    @staticmethod
    def _rewrite_instruction_frl(shadow_map, cur_line):
        #Step 5
        #Replace high numbered with corresponding in instruction
        
        tokens = StigmaStringParsingLib.break_into_tokens(cur_line)
        
        for t in shadow_map.tuples:
            reg = t[0]
            #print(shadow_map.tuples)
            
            number_registers = StigmaStringParsingLib.get_num_registers(cur_line)
            
            # tokens is everything, we only process up until number_registers
            for idx in range(number_registers):
                tokens[idx+1] = tokens[idx+1].replace(reg, shadow_map.get_corresponding(reg))
                
            cur_line = "    " + " ".join(tokens) + "\n"
            #print("cur_line: " + cur_line)
            #print("new_line: " + new_line)
        return cur_line
    
    @staticmethod
    def _create_after_move_block_frl(shadow_map):
        #Step 6
        #mv high corr
        #mv corr shadow
        
        block = []
        for t in shadow_map.tuples:
            reg = t[0]
            
            block += [smali.BLANK_LINE(),
                smali.MOVE_16(reg, shadow_map.get_corresponding(reg)),
                smali.BLANK_LINE(),
                smali.MOVE_16(shadow_map.get_corresponding(reg), shadow_map.get_shadow(reg))]
                
        block += [smali.COMMENT("FRL MOVE ADDED BY STIGMA END")]
        
        return block
        
    
            
    def fix_register_limit(self):
        #print("fix_register_limit(" + str(self.signature) + ")")

        # Step 1: Make shadow registers

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
        remaining_shadows = []
        for i in range(self.get_num_registers() - 16): 
            #print("creating shadow register: " + str(i))
            remaining_shadows.append(self.make_new_reg())
        
        #print("remaining shadows: " + str(self.remaining_shadows))

        line_num = 1;
        while line_num < len(self.raw_text):
            cur_line = str(self.raw_text[line_num])
            
            # identify lines that should be skipped
            if(SmaliMethodDef._should_skip_line_frl(cur_line)):
                line_num += 1
                continue

            
            #Step 2: Dereference p registers
            locals_num = self.get_locals_directive_num()
            cur_line = SmaliMethodDef._dereference_p_registers_frl(cur_line, locals_num)
            self.raw_text[line_num] = cur_line
    
                    
            #Step 2.5 and 3: build shadow map
            shadow_map = SmaliMethodDef._build_shadow_map_frl(cur_line, remaining_shadows)
            if len(shadow_map.tuples) == 0:
                line_num += 1
                continue
            

            # Step 4: move block before instruction
            block = SmaliMethodDef._create_before_move_block_frl(shadow_map)
                  
            self.embed_block(line_num, block)
            line_num = line_num + len(block)
                
                
            # Step 5: re-write this instruction
            cur_line = SmaliMethodDef._rewrite_instruction_frl(shadow_map, cur_line)
           
            self.raw_text[line_num] = cur_line
                
            
            # Step 6: move block after instruction
            block = SmaliMethodDef._create_after_move_block_frl(shadow_map)
                    
            self.embed_block(line_num+1, block)
            line_num = line_num + len(block)
                
            
                    
            line_num += 1
                    
            
            
           
        

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


    print("\t_get_v_frl...")
    assert(SmaliMethodDef._get_v_frl("p2", 2) == "v4")
    assert(SmaliMethodDef._get_v_frl("p0", 5) == "v5")
    assert(SmaliMethodDef._get_v_frl("p0", 0) == "v0")
    assert(SmaliMethodDef._get_v_frl("p3", 0) == "v3")


    print("\t_dereference_p_registers_frl...")
    assert(SmaliMethodDef._dereference_p_registers_frl("    filled-new-array {v0, v1, p2}, [Ljava/lang/String;\n", 2) == "    filled-new-array {v0, v1, v4}, [Ljava/lang/String;\n")
    assert(SmaliMethodDef._dereference_p_registers_frl("    throw p1\n", 16) == "    throw v17\n")
    assert(SmaliMethodDef._dereference_p_registers_frl("    filled-new-array {p0, p1, p2}, [Ljava/lang/String;\n", 2) == "    filled-new-array {v2, v3, v4}, [Ljava/lang/String;\n")


    print("\t_build_shadow_map_frl...")
    # originally .locals = 16 and there is 1 parameters  (p0 = v16)
    remaining_shadows = ["v16"]
    soln_shadow_map = SmaliMethodDef.RegShadowMap(["v17"], remaining_shadows)
    soln_shadow_map.tuples = [("v17", "v16", "v0")]
    soln_shadow_map.new_remaining_shadows.pop()
    test1_shadow_map = SmaliMethodDef._build_shadow_map_frl("    throw v17\n", remaining_shadows)
    assert(test1_shadow_map == soln_shadow_map)
    
    
    
    print("\t_unique_frl...")
    assert(SmaliMethodDef._unique_frl([4, 5, 4]) == [4, 5])
    
    
    # originally .locals = 17 and there is 2 parameter (p0 = v17 and p1 = v18)
    remaining_shadows = [ "v17", "v18", "v19"]
    soln_shadow_map = SmaliMethodDef.RegShadowMap(["v16", "v21"], remaining_shadows)
                               #reg   #shad  #corr
    soln_shadow_map.tuples = [("v16", "v19", "v0"),("v21", "v18", "v1")]
    soln_shadow_map.new_remaining_shadows.pop()
    soln_shadow_map.new_remaining_shadows.pop()
    test2_shadow_map = SmaliMethodDef._build_shadow_map_frl("    array-length v16, v21\n", remaining_shadows)
    #print(test2_shadow_map)
    assert(test2_shadow_map == soln_shadow_map)
    
    print("\t_create_before_move_block_frl...")
    sol_before_block = [smali.COMMENT("FRL MOVE ADDED BY STIGMA"), 
    smali.BLANK_LINE(),
    smali.CONST_4("v19", "0x0"),
    smali.BLANK_LINE(),
    smali.MOVE_16("v19", "v0"), 
    smali.BLANK_LINE(), 
    smali.MOVE_16("v0", "v16"),
    smali.BLANK_LINE(), 
    smali.CONST_4("v18", "0x0"),
    smali.BLANK_LINE(),
    smali.MOVE_16("v18", "v1"), 
    smali.BLANK_LINE(), 
    smali.MOVE_16("v1", "v21")]
    #print(sol_before_block)
    #print(SmaliMethodDef._create_before_move_block_frl(test2_shadow_map))
    assert(SmaliMethodDef._create_before_move_block_frl(test2_shadow_map) == sol_before_block)
    
    print("\t_create_after_move_block_frl...")
    sol_after_block = [
    smali.BLANK_LINE(), 
    smali.MOVE_16("v16", "v0"), 
    smali.BLANK_LINE(), 
    smali.MOVE_16("v0", "v19"),
    smali.BLANK_LINE(), 
    smali.MOVE_16("v21", "v1"), 
    smali.BLANK_LINE(), 
    smali.MOVE_16("v1", "v18"), 
    smali.COMMENT("FRL MOVE ADDED BY STIGMA END")]
    #print(sol_after_block)
    #print(SmaliMethodDef._create_after_move_block_frl(test2_shadow_map))
    assert(SmaliMethodDef._create_after_move_block_frl(test2_shadow_map) == sol_after_block)
    
    print("\t_rewrite_instruction_frl...")
    test2_shadow_map = SmaliMethodDef._build_shadow_map_frl("    array-length v16, v21\n", remaining_shadows)
    assert(SmaliMethodDef._rewrite_instruction_frl(test2_shadow_map, "    array-length v16, v21\n") == "    array-length v0, v1\n")
    

    print("ALL TESTS PASSED!")




if __name__ == "__main__":
    tests()
