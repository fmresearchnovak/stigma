#!/usr/bin/env python

import SmaliAssemblyInstructions as smali
import StigmaStringParsingLib
import re



# A more complete listing of these sort of things can be found in ./SourcesAndSinks.txt
STRING_IMEI_FUNCTION = "Landroid/telephony/TelephonyManager;->getDeviceId()Ljava/lang/String;"
STRING_PHONE_NUM_FUNCTION = "Landroid/telephony/TelephonyManager;->getLine1Number()Ljava/lang/String;"
STRING_STREAM_WRITE_FUNCTION = "Ljava/io/OutputStreamWriter;->write(Ljava/lang/String;II)V"
STRING_LOGD_FUNCTION = "Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I"

class Instrumenter:
    ##TEST

    # The structure of the constructor and the register_instrumentation_method functions
    # are an attempt to make this a "plugin" style application where others can write
    # more instrumentation functions.  I'm not sure it's 100% there and maybe this
    # attempt just makes the code uglier for no benefit.
    def __init__(self):
        self.instrumentation_methods = [Instrumenter.SPUT_instrumentation, Instrumenter.SGET_instrumentation,
                                        Instrumenter.IPUT_instrumentation, Instrumenter.IGET_instrumentation,
                                        Instrumenter.IMEI_instrumentation, Instrumenter.LOGD_instrumentation,
                                        Instrumenter.PHONE_NUM_instrumentation, 
                                        Instrumenter.MOVE_instrumentation, Instrumenter.CONST_instrumentation,
                                        Instrumenter.NEG_instrumentation, Instrumenter.CONVERTER_instrumentation,
                                        Instrumenter.WRITE_instrumentation, 
                                        Instrumenter.BINARYOP_instrumenter,
                                        Instrumenter.EXTERNAL_FUNCTION_instrumentation,
                                        Instrumenter.INTERNAL_FUNCTION_instrumentation]



    def register_instrumentation_method(self, new_method):

        # Needs to also check num args of new method but I don't know how
        # to do that in python (reflection)
        # this is _ideally_ to allow a sort of "plugin" system where
        # other developers could add instrumentation
        if new_method not in self.instrumentation_methods:
            self.instrumentation_methods.append(new_method)


    @staticmethod
    def make_merge_register_block(scd, m, registers, taint_loc_result):
        # This function creates a "merge block"
        # A merge block takes every one of the registers in the 
        # registers parameter (a list), and performs an OR operation on their
        # values storing the result in taint_loc_result

        block = []

        # 1, 2
        try:
            tmp_reg1_for_merging = m.make_new_reg()
            tmp_reg2_for_merging = m.make_new_reg()
        except RuntimeError:
            return block
            
        block.append(smali.BLANK_LINE())
        block.append(smali.CONST_16(tmp_reg1_for_merging, "0x0"))
        block.append(smali.BLANK_LINE())
        block.append(smali.CONST_16(tmp_reg2_for_merging, "0x0"))

        for r in registers:
            taint_loc_param = scd.create_taint_field(m.get_name(), r)
            block.append(smali.BLANK_LINE())
            block.append(smali.SGET(tmp_reg2_for_merging, scd.class_name, taint_loc_param))
            block.append(smali.BLANK_LINE())
            block.append(smali.OR_INT(tmp_reg1_for_merging, tmp_reg1_for_merging, tmp_reg2_for_merging))

        block.append(smali.BLANK_LINE())
        block.append(smali.SPUT(tmp_reg1_for_merging, scd.class_name, taint_loc_result))

        m.free_reg()
        m.free_reg()
        # 2, 1

        return block


    @staticmethod
    def make_simple_assign_block(scd, m, taint_field_dest, taint_field_src):
        # this function makes an "assign-block"
        # the value in the taint_field_src 
        # will be assigned to taint_field_dest

        # taint_field_src = scd.create_taint_field(m.get_name(), reg_src)
        # taint_field_dest = scd.create_taint_field(m.get_name(), reg_dest)

        #1
        try:
            tmp_reg = m.make_new_reg()
        except RuntimeError:
            return []
            
        block = [smali.BLANK_LINE(),
                 smali.CONST_16(tmp_reg, "0x0"),
                 smali.BLANK_LINE(),
                 smali.SGET(tmp_reg, scd.class_name, taint_field_src),
                 smali.BLANK_LINE(),
                 smali.SPUT(tmp_reg, scd.class_name, taint_field_dest)]

        m.free_reg() #1

        return block


    @staticmethod
    def make_comment_block(comment_detail=""):
          block = [smali.BLANK_LINE(), smali.COMMENT("IFT INSTRUCTIONS ADDED BY STIGMA " + comment_detail)]
          return block
    

    
    @staticmethod
    def SGET_instrumentation(scd, m, line_num):
        cur_line = m.raw_text[line_num]

        search_object = re.search(StigmaStringParsingLib.BEGINS_WITH_SGET, cur_line)
        if search_object is None:
            return 0

        # the field being referenced may be in another class
        # for now, instrument only same class fields
        class_name = re.search(StigmaStringParsingLib.CLASS_NAME, cur_line).group(1)
        if class_name != scd.class_name:
            return 0
            
        regs = StigmaStringParsingLib.get_v_and_p_numbers(cur_line)
        
        # get field base name and create corresponding taint field (taint_src)
        # sget-object v0, Ledu/fandm/enovak/leaks/Main;->TAG:Ljava/lang/String;
        # field_base_name = "TAG"
        # taint_field_src = "Ledu/fandm/enovak/leaks/Main;->TAG_TAINT:I;"
        field_base_name = re.search(StigmaStringParsingLib.FIELD_NAME, cur_line).group(1)
        taint_field_src = scd.create_taint_field(field_base_name)

        taint_field_dest = scd.create_taint_field(m.get_name(), regs[0])
                
        block = Instrumenter.make_comment_block("for SGET")
        block = block + Instrumenter.make_simple_assign_block(scd, m, taint_field_dest, taint_field_src)
        block = block + Instrumenter.make_comment_block("for SGET")

        m.embed_block(line_num, block)

        return len(block)


    @staticmethod
    def SPUT_instrumentation(scd, m, line_num):
        #sput vx, field_id
        #Puts vx into a static field.
        
        cur_line = m.raw_text[line_num]

        search_object = re.search(StigmaStringParsingLib.BEGINS_WITH_SPUT, cur_line)
        if search_object is None:
            return 0

        # the field being referenced may be in another class
        # for now, instrument only same class fields
        class_name = re.search(StigmaStringParsingLib.CLASS_NAME, cur_line).group(1)
        if class_name != scd.class_name:
            return 0
            
        regs = StigmaStringParsingLib.get_v_and_p_numbers(cur_line)
        
        # get field base name and create corresponding taint field (taint_src)
        # sput-object v0, Ledu/fandm/enovak/leaks/Main;->TAG:Ljava/lang/String;
        # field_base_name = "TAG"
        # taint_field_dest = "Ledu/fandm/enovak/leaks/Main;->TAG_TAINT:I;"
        field_base_name = re.search(StigmaStringParsingLib.FIELD_NAME, cur_line).group(1)
        taint_field_dest = scd.create_taint_field(field_base_name)

        taint_field_src = scd.create_taint_field(m.get_name(), regs[0])
                
        block = Instrumenter.make_comment_block("for SPUT")
        block = block + Instrumenter.make_simple_assign_block(scd, m, taint_field_dest, taint_field_src)
        block = block + Instrumenter.make_comment_block("for SPUT")

        m.embed_block(line_num, block)
        
        return len(block)

    
    @staticmethod
    def IPUT_instrumentation(scd, m, line_num):
        # iput vx, vy, field_id puts the data in vx into the field
        # specified by field_id (vy is the instance / OBJ_REF)
        cur_line = m.raw_text[line_num]
        
        search_object = re.search(StigmaStringParsingLib.BEGINS_WITH_IPUT, cur_line)
        if search_object is None:
            return 0
            
        # the field being referenced may be in another class
        # for now, instrument only same class fields
        class_name = re.search(StigmaStringParsingLib.CLASS_NAME, cur_line).group(1)
        if class_name != scd.class_name:
            return 0
        
        # only apply this to local references for now (instead of iputs to 
        # fields in external classes).
        regs = StigmaStringParsingLib.get_v_and_p_numbers(cur_line)
        if(regs[1] != "p0"):
            return 0

        
        # get field base name and create corresponding taint field (taint_src)
        # iput-object v0, v1, Ledu/fandm/enovak/leaks/Main;->TAG:Ljava/lang/String;
        # field_base_name = "TAG"
        # taint_field_dest = "Ledu/fandm/enovak/leaks/Main;->TAG_TAINT:I;"
        field_base_name = re.search(StigmaStringParsingLib.FIELD_NAME, cur_line).group(1)
        taint_field_dest = scd.create_taint_field(field_base_name)

        # didn't include taint status of "p0", maybe I should have
        taint_field_src = scd.create_taint_field(m.get_name(), regs[0])
                
        block = Instrumenter.make_comment_block("for IPUT")
        block = block + Instrumenter.make_simple_assign_block(scd, m, taint_field_dest, taint_field_src)
        block = block + Instrumenter.make_comment_block("for IPUT")

        m.embed_block(line_num, block)
        
        return len(block)
        
    
    @staticmethod
    def IGET_instrumentation(scd, m, line_num):
        #iget vx, vy field_id
        #gets data from field in instance vy and places data in vx
        #EXAMPLE: iget v1, p2, Landroid/graphics/Rect;->left:I
        
        cur_line = m.raw_text[line_num]

        search_object = re.search(StigmaStringParsingLib.BEGINS_WITH_IGET, cur_line)
        if search_object is None:
            return 0

        # the field being referenced may be in another class
        # for now, instrument only same class fields
        class_name = re.search(StigmaStringParsingLib.CLASS_NAME, cur_line).group(1)
        if class_name != scd.class_name:
            return 0
            
        regs = StigmaStringParsingLib.get_v_and_p_numbers(cur_line)
        
        # get field base name and create corresponding taint field (taint_src)
        # sput-object v0, Ledu/fandm/enovak/leaks/Main;->TAG:Ljava/lang/String;
        # field_base_name = "TAG"
        # taint_field_dest = "Ledu/fandm/enovak/leaks/Main;->TAG_TAINT:I;"
        field_base_name = re.search(StigmaStringParsingLib.FIELD_NAME, cur_line).group(1)
        taint_field_src = scd.create_taint_field(field_base_name)

        # maybe we should be using the second register as well?  make_merge_register_block
        # isn't setup to do that though.
        taint_field_dest = scd.create_taint_field(m.get_name(), regs[0])
                
        block = Instrumenter.make_comment_block("for IGET")
        block = block + Instrumenter.make_simple_assign_block(scd, m, taint_field_dest, taint_field_src)
        block = block + Instrumenter.make_comment_block("for IGET")

        m.embed_block(line_num, block)
        
        return len(block)
    
    @staticmethod
    def IMEI_instrumentation(scd, m, line_num):  # IMEI sources
        # print("IMEI_instrumentation")
        if STRING_IMEI_FUNCTION not in m.raw_text[line_num]:
            return 0

        result_line = m.raw_text[line_num + 2]

        reg = StigmaStringParsingLib.get_v_and_p_numbers(result_line)[0]

        taint_location = scd.create_taint_field(m.get_name(), reg)
        # 1
        try:
            tmp_reg_for_constant = m.make_new_reg()
        except RuntimeError:
            return 0

        block = [smali.BLANK_LINE(),
                 smali.COMMENT("IFT INSTRUCTIONS ADDED BY STIGMA for getDeviceID()"),
                 smali.BLANK_LINE(),
                 smali.CONST(tmp_reg_for_constant, "0x1"),
                 smali.BLANK_LINE(),
                 smali.SPUT(tmp_reg_for_constant, scd.class_name, taint_location),
                 smali.BLANK_LINE(),
                 smali.COMMENT("IFT INSTRUCTIONS ADDED BY STIGMA for getDeviceID()")]

        m.embed_block(line_num, block)
        lines_embedded = len(block)

        m.free_reg()
        # 1


        return lines_embedded
        
        
    def PHONE_NUM_instrumentation(scd, m, line_num):
        if STRING_PHONE_NUM_FUNCTION not in m.raw_text[line_num]:
            return 0
            
        result_line = m.raw_text[line_num + 2]
        reg = StigmaStringParsingLib.get_v_and_p_numbers(result_line)[0]
        taint_loc = scd.create_taint_field(m.get_name(), reg)
        
        # 1
        try:
            tmp_reg_for_constant = m.make_new_reg()
        except RuntimeError:
            return 0
            
        block = Instrumenter.make_comment_block("for getLine1Number()")
        
        block.append(smali.BLANK_LINE())
        block.append(smali.CONST_16(tmp_reg_for_constant, "0x1"))
        block.append(smali.BLANK_LINE())
        block.append(smali.SPUT(tmp_reg_for_constant, scd.class_name, taint_loc))
        
        block = block + Instrumenter.make_comment_block("for getLine1Number()")
        
        m.embed_block(line_num, block)
        m.free_reg() # 1
        return len(block)
        
            

    @staticmethod
    def WRITE_instrumentation(scd, m, line_num):  # "write()" sinks
        # print("WRITE_instrumentation")
        # print("line_num: " + str(line_num))

        # determine that this is a write() call and is therefore
        # necessary for WRITE instrumentation
        if STRING_STREAM_WRITE_FUNCTION not in m.raw_text[line_num]:
            return 0

        # print("line: " + m.raw_text[line_num])
        results = StigmaStringParsingLib.get_v_and_p_numbers(m.raw_text[line_num])
        target_reg = results[1]
        # print("results: " + str(results))

        taint_loc = scd.create_taint_field(m.get_name(), target_reg)


        # 1, 2, and 3
        try:
            tmp_reg_for_tag = m.make_new_reg()
            tmp_reg_for_msg = m.make_new_reg()
            tmp_reg_for_compare = m.make_new_reg()
        except RuntimeError:
            return 0

        # This is a smali.LABEL
        jmp_label = m.make_new_jump_label()

        block = [smali.BLANK_LINE(),
                 smali.COMMENT("IFT INSTRUCTIONS ADDED BY STIGMA for write()"),
                 smali.BLANK_LINE(),
                 smali.CONST_16(tmp_reg_for_compare, "0x0"),
                 smali.BLANK_LINE(),
                 smali.SGET(tmp_reg_for_compare, scd.class_name, taint_loc),
                 smali.BLANK_LINE(),
                 smali.IF_EQZ(tmp_reg_for_compare, jmp_label),
                 smali.BLANK_LINE(),
                 smali.CONST_STRING(tmp_reg_for_tag, "\"STIGMA\""),
                 smali.BLANK_LINE(),
                 smali.CONST_STRING(tmp_reg_for_msg, "\"LEAK via WRITE() OCCURING!\""),
                 smali.BLANK_LINE(),
                 smali.LOG_D(tmp_reg_for_tag, tmp_reg_for_msg),
                 smali.BLANK_LINE(),
                 jmp_label,
                 smali.BLANK_LINE(),
                 smali.COMMENT("IFT INSTRUCTIONS ADDED BY STIGMA for write()")]

        m.embed_block(line_num, block)
        lines_embedded = len(block)

        m.free_reg()
        m.free_reg()
        m.free_reg()
        # 1, 2, and 3


        return lines_embedded

    @staticmethod
    def LOGD_instrumentation(scd, m, line_num):  # simulated Log.d sink

        if STRING_LOGD_FUNCTION not in m.raw_text[line_num]:
            return 0

        # print("line: " + m.raw_text[line_num])
        
        results = StigmaStringParsingLib.get_v_and_p_numbers(m.raw_text[line_num])
        
        #print(m.raw_text[line_num])
        #print("results: " + str(results))
        target_reg = results[1]
        # print("results: " + str(results))

        taint_loc = scd.create_taint_field(m.get_name(), target_reg)

        # 1, 2, and 3
        try:
            tmp_reg_for_tag = m.make_new_reg()
            tmp_reg_for_msg = m.make_new_reg()
            tmp_reg_for_compare = m.make_new_reg()
        except RuntimeError:
            return 0

        # This is a smali.LABEL
        jmp_label = m.make_new_jump_label()

        block = [smali.BLANK_LINE(),
                 smali.COMMENT("IFT INSTRUCTIONS ADDED BY STIGMA for Log.d() (simulated leak)"),
                 smali.BLANK_LINE(),
                 smali.CONST_16(tmp_reg_for_compare, "0x0"),
                 smali.BLANK_LINE(),
                 smali.SGET(tmp_reg_for_compare, scd.class_name, taint_loc),
                 smali.BLANK_LINE(),
                 smali.IF_EQZ(tmp_reg_for_compare, jmp_label),
                 smali.BLANK_LINE(),
                 smali.CONST_STRING(tmp_reg_for_tag, "\"STIGMA\""),
                 smali.BLANK_LINE(),
                 smali.CONST_STRING(tmp_reg_for_msg, "\"LEAK via LOGD() OCCURING!\""),
                 smali.BLANK_LINE(),
                 smali.LOG_D(tmp_reg_for_tag, tmp_reg_for_msg),
                 smali.BLANK_LINE(),
                 jmp_label,
                 smali.BLANK_LINE(),
                 smali.COMMENT("IFT INSTRUCTIONS ADDED BY STIGMA for Log.d() (simulated leak)")]

        m.embed_block(line_num, block)
        lines_embedded = len(block)

        m.free_reg()
        m.free_reg()
        m.free_reg()
        # 1, 2, and 3

        return lines_embedded

    @staticmethod
    def INTERNAL_FUNCTION_instrumentation(scd, m, line_num):
        search_object = re.search(StigmaStringParsingLib.BEGINS_WITH_INVOKE, m.raw_text[line_num])
        if search_object is None:
            return 0

        invoke_line = m.raw_text[line_num]
        # check that the class does not match the current file's class name
        # print(search_object)
        parts = invoke_line.split(" ")
        parts = [x for x in parts if x != ""]
        # print("parts: " + str(parts))
        name = parts[-1]
        # print("name: " + name)
        class_name_part = name.split("->")[0]
        if class_name_part != scd.class_name: # change here for Internal
            return 0

        # It's internal!


        # get result line
        result_line = m.raw_text[line_num + 2]
        match_obj = re.match(StigmaStringParsingLib.BEGINS_WITH_MOVE_RESULT, result_line)
        if match_obj is None:
            return 0

        # print("There is a result line!")
        # print(result_line)

        param_regs = StigmaStringParsingLib.get_v_and_p_numbers(invoke_line)
        # print("param registers: " + str(param_regs))

        result_regs = StigmaStringParsingLib.get_v_and_p_numbers(result_line)
        # print("result registers: " + str(result_regs))

        taint_loc_result = scd.create_taint_field(m.get_name(), result_regs[0])

        wrapper_comment = smali.COMMENT("IFT INSTRUCTIONS ADDED BY STIGMA for external method call")
        block = [smali.BLANK_LINE(), wrapper_comment]

        blockquette = Instrumenter.make_merge_register_block(scd, m, param_regs, taint_loc_result)
        block = block + blockquette

        block.append(wrapper_comment)

        m.embed_block(line_num, block)
        lines_embedded = len(block)

        return lines_embedded

    @staticmethod
    def EXTERNAL_FUNCTION_instrumentation(scd, m, line_num):
        # This instrumentation is "downstream" which is the term
        # I have decided means applied afterwords and only on lines which
        # have not had any other instrumentation applied.

        # Actually, there is a hierarchy based on specificity
        # Some lines might be caught by multiple
        # instrumenters (e.g., is Log.d an external method, or is 
        # it a sink?).  For all cases EXTERNAL_FUNCTION should
        # be the last resort.

        # The reason for this distinction was originally brought to light
        # by the Landroid/telephony/TelephonyManager;->getDeviceId() method (IMEI)
        # This function is both external (covered by this instrumentation)
        # and also a "source" of sensitive information (covered by IMEI_instrumentation())
        # So, the system would apply both instrumentation insertions which ended up as
        # incoherent / incorrect assembly.

        # "downstream" does not manifest in any implementation details besides
        # this comment and the fact that this function is the last in the
        # instance variable / list "self.instrumentation_methods"

        # print("EXTERNAL_FUNCTION_instrumentation")

        # determine that this is an EXTERNAL method call and is therefore
        # necessary for this instrumentation

        # print("line_num: " + str(line_num) )#+ "   line: " + str(m.raw_text[line_num]))
        # find lines that are "invoke" instructions
        search_object = re.search(StigmaStringParsingLib.BEGINS_WITH_INVOKE, m.raw_text[line_num])
        if search_object is None:
            return 0


        # Should the following few lines be a static
        # function in the SmaliClassDef somewhere?
        invoke_line = m.raw_text[line_num]
        # check that the class does not match the current file's class name
        # print(search_object)
        parts = invoke_line.split(" ")
        parts = [x for x in parts if x != ""]
        # print("parts: " + str(parts))
        name = parts[-1]
        # print("name: " + name)
        class_name_part = name.split("->")[0]
        if class_name_part == scd.class_name:
            return 0


        # It's external!
        # print("\n\n\nEXTERNAL METHOD!")
        # print("name: " + name)

        param_regs = StigmaStringParsingLib.get_v_and_p_numbers(invoke_line)
        # print("param registers: " + str(param_regs))

        # get result line
        result_line = m.raw_text[line_num + 2]
        match_obj = re.match(StigmaStringParsingLib.BEGINS_WITH_MOVE_RESULT, result_line)

        if match_obj == None:
            return 0
            # if match_obj is None then the 
            # only data flow possible is "side-effects"
            # and calls to other external function

            # Maybe we should consider tainting the "this" reference?


            # print("result registers: " + str(result_regs))
      
        result_regs = StigmaStringParsingLib.get_v_and_p_numbers(result_line)
        
        taint_loc_result = scd.create_taint_field(m.get_name(), result_regs[0])

        wrapper_comment = smali.COMMENT("IFT INSTRUCTIONS ADDED BY STIGMA for external method call")
        block = [smali.BLANK_LINE(), wrapper_comment]

        blockquette = Instrumenter.make_merge_register_block(scd, m, param_regs, taint_loc_result)
        block = block + blockquette

        block.append(smali.BLANK_LINE())
        block.append(wrapper_comment)

        m.embed_block(line_num, block)
        lines_embedded = len(block)

        return lines_embedded


    @staticmethod
    def BINARYOP_instrumenter(scd, m, line_num):
        # Currently covers "ADD" "SUB" "MUL" and "DIV"
        # could probably be expanded to cover other / all
        # binary operations

        cur_line = m.raw_text[line_num]
        search_object = re.search(StigmaStringParsingLib.BEGINS_WITH_ADD, cur_line)
        instruction = 'ADD'
        if search_object is None:
            search_object = re.search(StigmaStringParsingLib.BEGINS_WITH_SUB, cur_line)
            instruction = 'SUB'
        if search_object is None:
            search_object = re.search(StigmaStringParsingLib.BEGINS_WITH_MUL, cur_line)
            instruction = 'MUL'
        if search_object is None:
            search_object = re.search(StigmaStringParsingLib.BEGINS_WITH_DIV, cur_line)
            instruction = 'DIV'
        if search_object is None:
            search_object = re.search(StigmaStringParsingLib.BEGINS_WITH_REM, cur_line)
            instruction = 'REM'
        if search_object is None:
            search_object = re.search(StigmaStringParsingLib.BEGINS_WITH_AND, cur_line)
            instruction = 'AND'
        if search_object is None:
            search_object = re.search(StigmaStringParsingLib.BEGINS_WITH_OR, cur_line)
            instruction = 'OR'
        if search_object is None:
            search_object = re.search(StigmaStringParsingLib.BEGINS_WITH_XOR, cur_line)
            instruction = 'XOR'
        if search_object is None:
            search_object = re.search(StigmaStringParsingLib.BEGINS_WITH_SHL, cur_line)
            instruction = 'SHL'
        if search_object is None:
            search_object = re.search(StigmaStringParsingLib.BEGINS_WITH_SHR, cur_line)
            instruction = 'SHR'
        if search_object is None:
            search_object = re.search(StigmaStringParsingLib.BEGINS_WITH_USHR, cur_line)
            instruction = 'USHR'
        if search_object is None:
            return 0

        # should this be REGEX_V_AND_P_NUMBERS?
        regs = StigmaStringParsingLib.get_v_and_p_numbers(cur_line)
        # print("regs for add instrumenter: " + str(regs))

        # I am concerned about instructions of the form
        # add-int/2addr (as opposed to regular add-int)
        # The documentation does not seem to indicate that any
        # of the register arguments to add-int/2addr are treated
        # as pointers (the values in the registers are memory addresses)
        # The "2addr" seems to indicate otherwise to me.

        block = [smali.BLANK_LINE(), smali.COMMENT("IFT INSTRUCTIONS ADDED BY STIGMA for %s instruction" % instruction)]

        taint_loc_result = scd.create_taint_field(m.get_name(), regs[0])

        # this should probably not merge in the destination register (only the parameter registers)
        blockquette = Instrumenter.make_merge_register_block(scd, m, regs[1:], taint_loc_result)

        block = block + blockquette

        block.append(smali.BLANK_LINE())
        block.append(smali.COMMENT("IFT INSTRUCTIONS ADDED BY STIGMA for %s instruction" % instruction))
        block.append(smali.BLANK_LINE())

        m.embed_block(line_num, block)

        return len(block)
        
        
    @staticmethod
    def MOVE_instrumentation(scd, m, line_num):
        # move vx vy
        
        cur_line = m.raw_text[line_num]
        
        
        search_object_move = re.search(StigmaStringParsingLib.BEGINS_WITH_MOVE, cur_line)
        search_object_move_result = re.search(StigmaStringParsingLib.BEGINS_WITH_MOVE_RESULT, cur_line)
        search_object_move_exception = re.search(StigmaStringParsingLib.BEGINS_WITH_MOVE_EXCEPTION, cur_line)
        if(search_object_move_result):
            return 0
            
        if(search_object_move_exception):
            return 0
        
        if(not search_object_move):
            return 0
            
        regs = StigmaStringParsingLib.get_v_and_p_numbers(cur_line)
        
        #print("cur line: " + str(cur_line) + "   regs: " + str(regs))
        taint_field_dest = scd.create_taint_field(m.get_name(), regs[0])
        taint_field_src = scd.create_taint_field(m.get_name(), regs[1])
        
        block = Instrumenter.make_comment_block("for MOVE")
        block = block + Instrumenter.make_simple_assign_block(scd, m, taint_field_dest, taint_field_src)
        block = block + Instrumenter.make_comment_block("for MOVE")

        m.embed_block(line_num, block)
        
        return len(block)
        
    @staticmethod
    def CONST_instrumentation(scd, m, line_num):
        # const v0, 0x2
        cur_line = m.raw_text[line_num]
        
        search_object = re.search(StigmaStringParsingLib.BEGINS_WITH_CONST, cur_line)
        if(search_object is None):
            return 0
            
        
        regs = StigmaStringParsingLib.get_v_and_p_numbers(cur_line)
        
        taint_field_loc = scd.create_taint_field(m.get_name(), regs[0])
        try:
            reg_for_zero = m.make_new_reg() #1
        except RuntimeError:
            return 0
        
        block = Instrumenter.make_comment_block("for CONST")
        block.append(smali.CONST(reg_for_zero, "0x0"))
        block.append(smali.BLANK_LINE())
        block.append(smali.SPUT(reg_for_zero, scd.class_name, taint_field_loc))
        block.append(smali.BLANK_LINE())
        block = block + Instrumenter.make_comment_block("for CONST")
        
        m.embed_block(line_num, block)
        
        m.free_reg() #1
        
        return len(block)
        
    @staticmethod
    def NEG_instrumentation(scd, m, line_num):
        cur_line = m.raw_text[line_num]
        
        search_object = re.search(StigmaStringParsingLib.BEGINS_WITH_NEG, cur_line)
        if(search_object is None):
            return 0
        

        regs = StigmaStringParsingLib.get_v_and_p_numbers(cur_line)
        
        taint_field_src = scd.create_taint_field(m.get_name(), regs[1])
        taint_field_dest = scd.create_taint_field(m.get_name(), regs[0])
        
        block = Instrumenter.make_comment_block("for NEG")
        block = block + Instrumenter.make_simple_assign_block(scd, m, taint_field_dest, taint_field_src)
        block = block + Instrumenter.make_comment_block("for NEG")
        
        m.embed_block(line_num, block)
        
        return len(block)
        
    @staticmethod
    def CONVERTER_instrumentation(scd, m, line_num):
        cur_line = m.raw_text[line_num]
        
        try:
            opcode = StigmaStringParsingLib.break_into_tokens(cur_line)[0]
        except:
            return 0
            
        if(opcode not in StigmaStringParsingLib.CONVERTER_INSTRUCTION_LIST):
            return 0
            
        regs = StigmaStringParsingLib.get_v_and_p_numbers(cur_line)
        if(regs[0] == regs[1]):
            # int-to-float v1, v1
            # this is very common and requires no instrumentation
            return 0
        
        taint_field_src = scd.create_taint_field(m.get_name(), regs[1])
        taint_field_dst = scd.create_taint_field(m.get_name(), regs[0])
        
        block = Instrumenter.make_comment_block("for CONVERTER: " + str(opcode))
        block = block + Instrumenter.make_simple_assign_block(scd, m, taint_field_dst, taint_field_src)
        block = block + Instrumenter.make_comment_block("for CONVERTER: " + str(opcode))
        
        m.embed_block(line_num, block)
        
        return len(block)
        
        
            
        
        
