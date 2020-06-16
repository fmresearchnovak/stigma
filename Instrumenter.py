#!/usr/bin/env python

import SmaliAssemblyInstructions as smali
import re

REGEX_V_AND_NUMBERS = r"v[0-9]+"  # v and numbers (e.g., v5) are general purpose registers.  I think "v" means "virtual"
REGEX_V_AND_P_NUMBERS = r"v[0-9]+|p[0-9]+"
REGEX_BEGINS_WITH_INVOKE = r"^\s*invoke-"
REGEX_BEGINS_WITH_MOVE_RESULT = r"^\s*move-result-"
REGEX_BEGINS_WITH_ADD = r"^\s*add-"
REGEX_BEGINS_WITH_SUB = r"^\s*sub-"
REGEX_BEGINS_WITH_MUL = r"^\s*mul-"
REGEX_BEGINS_WITH_DIV = r"^\s*div-"
REGEX_BEGINS_WITH_IPUT = r"^\s*iput"
REGEX_BEGINS_WITH_IGET = r"^\s*iget"

# A more complete listing of these sort of things can be found in ./SourcesAndSinks.txt
STRING_IMEI_FUNCTION = "Landroid/telephony/TelephonyManager;->getDeviceId()Ljava/lang/String;"
STRING_STREAM_WRITE_FUNCTION = "Ljava/io/OutputStreamWriter;->write(Ljava/lang/String;II)V"


class Instrumenter:

    def __init__(self):
        self.instrumentation_methods = [Instrumenter.LOGD_instrumentation, Instrumenter.IGET_instrumentation, Instrumenter.IPUT_instrumentation,
                                        Instrumenter.IMEI_instrumentation, Instrumenter.WRITE_instrumentation,
                                        Instrumenter.BINARYOP_instrumenter,
                                        Instrumenter.EXTERNAL_FUNCTION_instrumentation
                                        ]

    def register_instrumentation_method(self, new_method):

        # Needs to also check num args of new method but I don't know how
        # to do that in python (reflection)
        # this is _ideally_ to allow a sort of "plugin" system where
        # other developers could add instrumentation
        if new_method not in self.instrumentation_methods:
            self.instrumentation_methods.add(new_method)

    @staticmethod
    def registers_tainted(scd, m, registers):

        registers = [r for r in registers if scd.get_taint_storage_name(m.get_name(), r) is not None]

        if len(registers) == 0:
            return False

        return True

    @staticmethod
    def make_merge_register_block(scd, m, registers, taint_loc_result):

        block = []

        # 1, 2
        tmp_reg1_for_merging = m.make_new_reg()
        tmp_reg2_for_merging = m.make_new_reg()
        block.append(smali.CONST_4(tmp_reg1_for_merging, "0x0"))
        block.append(smali.CONST_4(tmp_reg2_for_merging, "0x0"))

        for r in registers:
            taint_loc_param = scd.create_taint_storage_name(m.get_name(), r)
            block.append(smali.SGET(tmp_reg2_for_merging, scd.class_name, taint_loc_param))
            block.append(smali.OR_INT(tmp_reg1_for_merging, tmp_reg1_for_merging, tmp_reg2_for_merging))

        block.append(smali.SPUT(tmp_reg1_for_merging, scd.class_name, taint_loc_result))

        m.free_reg()
        m.free_reg()
        # 2, 1

        return block

    # all of the following "*_instrumentation" methods should take the same three arguments
    # Note: they are all static
    @staticmethod
    def IPUT_instrumentation(scd, m, line_num):
        cur_line = m.raw_text[line_num]
        search_object = re.search(REGEX_BEGINS_WITH_IPUT, cur_line)

        if search_object is None:
            return 0

        regs = re.findall(REGEX_V_AND_P_NUMBERS, cur_line)

        second_reg = cur_line.split(", ")[1]
        if second_reg != 'p0':
            return 0

        field_name = re.search("->(.+):", cur_line).group(1)

        taint_source = scd.create_taint_storage_name(m.get_name(), regs[0])
        taint_result = scd.create_taint_storage_name(field_name)

        tmp_reg = m.make_new_reg()

        block = [smali.BLANK_LINE(),
                 smali.COMMENT("IFT INSTRUCTIONS ADDED BY STIGMA for IPUT"),
                 smali.CONST(tmp_reg, "0x0"),
                 smali.SGET(tmp_reg, scd.class_name, taint_source),
                 smali.SPUT(tmp_reg, scd.class_name, taint_result),
                 smali.COMMENT("IFT INSTRUCTIONS ADDED BY STIGMA for IPUT")]

        m.embed_block(line_num, block)

        m.free_reg()

        return len(block)

    @staticmethod
    def IGET_instrumentation(scd, m, line_num):
        cur_line = m.raw_text[line_num]
        search_object = re.search(REGEX_BEGINS_WITH_IGET, cur_line)

        if search_object is None:
            return 0

        regs = re.findall(REGEX_V_AND_P_NUMBERS, cur_line)

        second_reg = cur_line.split(", ")[1]

        if second_reg != 'p0':
            return 0

        field_name = re.search("->(.+):", cur_line).group(1)

        taint_source = scd.create_taint_storage_name(field_name)
        taint_result = scd.create_taint_storage_name(m.get_name(), regs[0])

        tmp_reg = m.make_new_reg()

        block = [smali.BLANK_LINE(),
                 smali.COMMENT("IFT INSTRUCTIONS ADDED BY STIGMA for IGET"),
                 smali.CONST(tmp_reg, "0x0"),
                 smali.SGET(tmp_reg, scd.class_name, taint_source),
                 smali.SPUT(tmp_reg, scd.class_name, taint_result),
                 smali.COMMENT("IFT INSTRUCTIONS ADDED BY STIGMA for IGET")]

        m.embed_block(line_num, block)

        m.free_reg()

        return len(block)

    @staticmethod
    def IMEI_instrumentation(scd, m, line_num):  # IMEI sources
        # print("IMEI_instrumentation")
        if STRING_IMEI_FUNCTION not in m.raw_text[line_num]:
            return 0

        result_line = m.raw_text[line_num + 2]

        search_object = re.search(REGEX_V_AND_NUMBERS, result_line)
        # print("search object: " + str(search_object))
        reg = search_object.group()

        taint_location = scd.create_taint_storage_name(m.get_name(), reg)
        # 1
        tmp_reg_for_constant = m.make_new_reg()

        block = [smali.BLANK_LINE(),
                 smali.COMMENT("IFT INSTRUCTIONS ADDED BY STIGMA for getDeviceID()"),
                 smali.CONST(tmp_reg_for_constant, "0x1"),
                 smali.SPUT(tmp_reg_for_constant, scd.class_name, taint_location),
                 smali.COMMENT("IFT INSTRUCTIONS ADDED BY STIGMA for getDeviceID()")]

        m.embed_block(line_num, block)
        lines_embedded = len(block)

        m.free_reg()
        # 1

        return lines_embedded

    @staticmethod
    def WRITE_instrumentation(scd, m, line_num):  # "write()" sinks
        # print("WRITE_instrumentation")
        # print("line_num: " + str(line_num))

        # determine that this is a write() call and is therefore
        # necessary for WRITE instrumentation
        if STRING_STREAM_WRITE_FUNCTION not in m.raw_text[line_num]:
            return 0

        # print("line: " + m.raw_text[line_num])
        results = re.findall(REGEX_V_AND_NUMBERS, m.raw_text[line_num])
        target_reg = results[1]
        # print("results: " + str(results))

        taint_loc = scd.create_taint_storage_name(m.get_name(), target_reg)

        # 1, 2, and 3
        tmp_reg_for_tag = m.make_new_reg()
        tmp_reg_for_msg = m.make_new_reg()
        tmp_reg_for_compare = m.make_new_reg()

        # This is a smali.LABEL
        jmp_label = m.make_new_jump_label()

        block = [smali.BLANK_LINE(),
                 smali.COMMENT("IFT INSTRUCTIONS ADDED BY STIGMA for write()"),
                 smali.CONST_4(tmp_reg_for_compare, "0x0"),
                 smali.SGET(tmp_reg_for_compare, scd.class_name, taint_loc),
                 smali.IF_EQZ(tmp_reg_for_compare, jmp_label),
                 smali.CONST_STRING(tmp_reg_for_tag, "STIGMA"),
                 smali.CONST_STRING(tmp_reg_for_msg, "IMEI LEAK OCCURING!"),
                 smali.LOG_D(tmp_reg_for_tag, tmp_reg_for_msg),
                 jmp_label,
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

        if "Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I" not in m.raw_text[line_num]:
            return 0

        # print("line: " + m.raw_text[line_num])
        results = re.findall(REGEX_V_AND_NUMBERS, m.raw_text[line_num])
        target_reg = results[1]
        # print("results: " + str(results))

        taint_loc = scd.create_taint_storage_name(m.get_name(), target_reg)

        # 1, 2, and 3
        tmp_reg_for_tag = m.make_new_reg()
        tmp_reg_for_msg = m.make_new_reg()
        tmp_reg_for_compare = m.make_new_reg()

        # This is a smali.LABEL
        jmp_label = m.make_new_jump_label()

        block = [smali.BLANK_LINE(),
                 smali.COMMENT("IFT INSTRUCTIONS ADDED BY STIGMA for Log.d() (simulated leak)"),
                 smali.CONST_4(tmp_reg_for_compare, "0x0"),
                 smali.SGET(tmp_reg_for_compare, scd.class_name, taint_loc),
                 smali.IF_EQZ(tmp_reg_for_compare, jmp_label),
                 smali.CONST_STRING(tmp_reg_for_tag, "STIGMA"),
                 smali.CONST_STRING(tmp_reg_for_msg, "IMEI LEAK OCCURING!"),
                 smali.LOG_D(tmp_reg_for_tag, tmp_reg_for_msg),
                 jmp_label,
                 smali.COMMENT("IFT INSTRUCTIONS ADDED BY STIGMA for Log.d() (simulated leak)")]

        m.embed_block(line_num, block)
        lines_embedded = len(block)

        m.free_reg()
        m.free_reg()
        m.free_reg()
        # 1, 2, and 3

        return lines_embedded

    @staticmethod
    def EXTERNAL_FUNCTION_instrumentation(scd, m, line_num):
        # This instrumentation is "downstream" which is the term
        # I have decided means applied afterwords and only on lines which
        # have not had any other instrumentation applied.

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
        search_object = re.search(REGEX_BEGINS_WITH_INVOKE, m.raw_text[line_num])
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
        if class_name_part == scd.class_name:
            return 0

        # It's external!
        # print("\n\n\nEXTERNAL METHOD!")
        # print("name: " + name)

        # get result line
        result_line = m.raw_text[line_num + 2]
        match_obj = re.match(REGEX_BEGINS_WITH_MOVE_RESULT, result_line)
        if match_obj is None:
            return 0

        # print("There is a result line!")
        # print(result_line)

        param_regs = re.findall(REGEX_V_AND_NUMBERS, invoke_line)
        # print("param registers: " + str(param_regs))

        result_regs = re.findall(REGEX_V_AND_NUMBERS, result_line)
        # print("result registers: " + str(result_regs))

        taint_loc_result = scd.create_taint_storage_name(m.get_name(), result_regs[0])

        wrapper_comment = smali.COMMENT("IFT INSTRUCTIONS ADDED BY STIGMA for external method call")
        block = [smali.BLANK_LINE(), wrapper_comment]

        blockquette = Instrumenter.make_merge_register_block(scd, m, param_regs, taint_loc_result)
        block = block + blockquette

        block.append(wrapper_comment)

        m.embed_block(line_num, block)
        lines_embedded = len(block)

        return lines_embedded

    # Propagation Tainting
    @staticmethod
    def BINARYOP_instrumenter(scd, m, line_num):
        # Can be extrapolated to all binary operations

        cur_line = m.raw_text[line_num]
        search_object = re.search(REGEX_BEGINS_WITH_ADD, cur_line)
        instruction = 'ADD'
        if search_object is None:
            search_object = re.search(REGEX_BEGINS_WITH_SUB, cur_line)
            instruction = 'SUB'
        if search_object is None:
            search_object = re.search(REGEX_BEGINS_WITH_MUL, cur_line)
            instruction = 'MUL'
        if search_object is None:
            search_object = re.search(REGEX_BEGINS_WITH_DIV, cur_line)
            instruction = 'DIV'
        if search_object is None:
            return 0

        regs = re.findall(REGEX_V_AND_NUMBERS, cur_line)
        # print("regs for add instrumenter: " + str(regs))

        # I am concerned about instructions of the form
        # add-int/2addr (as opposed to regular add-int)
        # The documentation does not seem to indicate that any
        # of the register arguments to add-int/2addr are treated
        # as pointers (the values in the registers are memory addresses)
        # The "2addr" seems to indicate otherwise to me

        block = [smali.BLANK_LINE(), smali.COMMENT("IFT INSTRUCTIONS ADDED BY STIGMA for %s instruction" % instruction)]

        taint_loc_result = scd.create_taint_storage_name(m.get_name(), regs[0])

        # this should probably not merge in the destination register (only the parameter registers)
        blockquette = Instrumenter.make_merge_register_block(scd, m, regs, taint_loc_result)

        block = block + blockquette

        block.append(smali.COMMENT("IFT INSTRUCTIONS ADDED BY STIGMA for %s instruction" % instruction))

        m.embed_block(line_num, block)
        lines_embedded = len(block)

        return lines_embedded
