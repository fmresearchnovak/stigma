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
REGEX_BEGINS_WITH_SPUT = r"^\s*sput"
REGEX_BEGINS_WITH_SGET = r"^\s*sget"
REGEX_BEGINS_WITH_AGET = r"^\s*aget"
REGEX_BEGINS_WITH_APUT = r"^\s*aput"
REGEX_BEGINS_WITH_ARRAY_LENGTH = r"^\s*array-length"
REGEX_BEGINS_WITH_NEW_ARRAY = r"^\s*new-array"

# A more complete listing of these sort of things can be found in ./SourcesAndSinks.txt
STRING_IMEI_FUNCTION = "Landroid/telephony/TelephonyManager;->getDeviceId()Ljava/lang/String;"
STRING_STREAM_WRITE_FUNCTION = "Ljava/io/OutputStreamWriter;->write(Ljava/lang/String;II)V"

class Instrumenter:

    def __init__(self):
        self.instrumentation_methods = [Instrumenter.SPUT_instrumentation, Instrumenter.SGET_instrumentation,
                                        Instrumenter.LOGD_instrumentation, Instrumenter.AGET_instrumentation,
                                        Instrumenter.IGET_instrumentation, Instrumenter.IPUT_instrumentation,
                                        Instrumenter.IMEI_instrumentation, Instrumenter.WRITE_instrumentation,
                                        Instrumenter.APUT_instrumentation, Instrumenter.ARRAY_LENGTH_instrumentation,
                                        Instrumenter.NEW_ARRAY_instrumentation,
                                        Instrumenter.BINARYOP_instrumenter,
                                        Instrumenter.EXTERNAL_FUNCTION_instrumentation,
                                        Instrumenter.INTERNAL_FUNCTION_instrumentation
                                        ]



    def register_instrumentation_method(self, new_method):

        # Needs to also check num args of new method but I don't know how
        # to do that in python (reflection)
        # this is _ideally_ to allow a sort of "plugin" system where
        # other developers could add instrumentation
        if new_method not in self.instrumentation_methods:
            self.instrumentation_methods.append(new_method)

    @staticmethod
    def registers_tainted(scd, m, registers):

        registers = [r for r in registers if scd.get_taint_storage_name(m.get_name(), r) is not None]

        if len(registers) == 0:
            return False

        return True

    @staticmethod
    def create_registers_and_block(no_registers, method):
        block = []
        registers = []
        idx = 0
        if method.reg_number_float + method.no_of_parameters + no_registers < 16:
            for n in range(no_registers):
                temp = method.make_new_reg()
                registers += [temp]
                block += [smali.CONST(temp, "0x0")]
                idx += 1

            for n in range(no_registers):
                method.free_reg()
        else:
            #old_locals_num = method.get_locals_directive_num()
            #print("Old num " + str(old_locals_num))
            #print("No reg " + str(no_registers))
            #method.set_locals_directive((old_locals_num + no_registers))
            #do the move
            for n in range(no_registers):
                temp = method.make_new_reg()
                block += [smali.MOVE16(temp, "v" + str(n))]
                block += [smali.CONST("v" + str(n), "0x0")]
                registers += ["v" + str(n)]
                idx += 2

            for n in reversed(range(no_registers)):
                method.free_reg()
                block += [smali.MOVE16("v" + str(n), "v" + str(method.reg_number_float))]

        return [block, idx, registers]

    @staticmethod
    def assign_taint_from_fields(scd, m, fields, taint_result_loc, field_class=""):

        if not isinstance(fields, list):
            raise Exception("fields not a list")

        block = []

        if field_class == "" or field_class == scd.class_name:
            # In case of a single field list, don't execute "or" operation
            if len(fields) == 1:
                create_reg_list = Instrumenter.create_registers_and_block(1, m)
                # unpacking list

                block = create_reg_list[0]
                interpolate_idx = create_reg_list[1]
                tmp_reg = create_reg_list[2][0]

                taint_param_loc = scd.create_taint_storage_name(fields[0])

                block_to_interpolate = [smali.SGET(tmp_reg, scd.class_name, taint_param_loc),
                                        smali.SPUT(tmp_reg, scd.class_name, taint_result_loc)]
                block = block[:interpolate_idx] + block_to_interpolate + block[interpolate_idx:]

                return block

            create_reg_list = Instrumenter.create_registers_and_block(2, m)
            # unpacking list
            block = create_reg_list[0]
            interpolate_idx = create_reg_list[1]

            tmp_reg1_for_merging = create_reg_list[2][0]
            tmp_reg2_for_merging = create_reg_list[2][1]

            block_to_interpolate = []
            for f in fields:
                taint_param_loc = scd.create_taint_storage_name(f)
                block_to_interpolate.append(smali.SGET(tmp_reg2_for_merging, scd.class_name, taint_param_loc))
                block_to_interpolate.append(smali.OR_INT(tmp_reg1_for_merging, tmp_reg1_for_merging, tmp_reg2_for_merging))

            block_to_interpolate.append(smali.SPUT(tmp_reg1_for_merging, scd.class_name, taint_result_loc))

            block = block[:interpolate_idx] + block_to_interpolate + block[interpolate_idx]

            return block
        else:
            raise Exception("Not Same Class")

    @staticmethod
    def assign_taint_from_registers(scd, m, registers, taint_result_loc):

        if not isinstance(registers, list):
            raise Exception("registers not a list")

        block = []

        # In case of a single register list, don't execute "or" operation
        if len(registers) == 1:
            create_reg_list = Instrumenter.create_registers_and_block(1, m)
            #unpacking list
            block = create_reg_list[0]
            interpolate_idx = create_reg_list[1]
            tmp_reg = create_reg_list[2][0]

            taint_param_loc = scd.create_taint_storage_name(m.get_name(), registers[0])

            block_to_interpolate = [smali.SGET(tmp_reg, scd.class_name, taint_param_loc),
                                    smali.SPUT(tmp_reg, scd.class_name, taint_result_loc)]
            block = block[:interpolate_idx] + block_to_interpolate + block[interpolate_idx:]

            return block

        create_reg_list = Instrumenter.create_registers_and_block(2, m)
        # unpacking list
        block = create_reg_list[0]
        interpolate_idx = create_reg_list[1]
        tmp_reg1_for_merging = create_reg_list[2][0]
        tmp_reg2_for_merging = create_reg_list[2][1]

        block_to_interpolate = []
        for r in registers:
            taint_param_loc = scd.create_taint_storage_name(m.get_name(), r)
            block_to_interpolate.append(smali.SGET(tmp_reg2_for_merging, scd.class_name, taint_param_loc))
            block_to_interpolate.append(smali.OR_INT(tmp_reg1_for_merging, tmp_reg1_for_merging, tmp_reg2_for_merging))

        block_to_interpolate.append(smali.SPUT(tmp_reg1_for_merging, scd.class_name, taint_result_loc))

        block = block[:interpolate_idx] + block_to_interpolate + block[interpolate_idx:]

        return block

    # all of the following "*_instrumentation" methods should take the same three arguments
    # Note: they are all static

    @staticmethod
    def NEW_ARRAY_instrumentation(scd, m, line_num):
        cur_line = m.raw_text[line_num]
        search_object = re.search(REGEX_BEGINS_WITH_NEW_ARRAY, cur_line)

        if search_object is None:
            return 0

        regs = re.findall(REGEX_V_AND_P_NUMBERS, cur_line)

        taint_location = scd.create_taint_storage_name(m.get_name(), regs[0])

        block = [smali.COMMENT("IFT INSTRUCTIONS ADDED BY STIGMA for NEW-ARRAY")] + \
                Instrumenter.assign_taint_from_registers(scd, m, [regs[1]], taint_location) \
                + [smali.COMMENT("IFT INSTRUCTIONS ADDED BY STIGMA for NEW-ARRAY")]

        m.embed_block(line_num, block)

        return len(block)

    @staticmethod
    def ARRAY_LENGTH_instrumentation(scd, m, line_num):
        cur_line = m.raw_text[line_num]
        search_object = re.search(REGEX_BEGINS_WITH_ARRAY_LENGTH, cur_line)

        if search_object is None:
            return 0

        regs = re.findall(REGEX_V_AND_P_NUMBERS, cur_line)

        taint_location = scd.create_taint_storage_name(m.get_name(), regs[0])

        block = [smali.COMMENT("IFT INSTRUCTIONS ADDED BY STIGMA for ARRAY-LENGTH")] + \
                Instrumenter.assign_taint_from_registers(scd, m, [regs[1]], taint_location) \
                + [smali.COMMENT("IFT INSTRUCTIONS ADDED BY STIGMA for ARRAY-LENGTH")]

        m.embed_block(line_num, block)

        return len(block)

    @staticmethod
    def SGET_instrumentation(scd, m, line_num):
        cur_line = m.raw_text[line_num]
        search_object = re.search(REGEX_BEGINS_WITH_SGET, cur_line)

        if search_object is None:
            return 0

        regs = re.findall(REGEX_V_AND_P_NUMBERS, cur_line)

        class_name = re.search("(L.+)->", cur_line).group(1)
        if class_name != scd.class_name:
            return 0

        field_name = re.search("->(.+):", cur_line).group(1)

        taint_result = scd.create_taint_storage_name(m.get_name(), regs[0])

        block = [smali.COMMENT("IFT INSTRUCTIONS ADDED BY STIGMA for SGET")] + \
                Instrumenter.assign_taint_from_fields(scd, m, [field_name], taint_result) + \
                [smali.COMMENT("IFT INSTRUCTIONS ADDED BY STIGMA for SGET")]

        m.embed_block(line_num, block)

        return len(block)

    @staticmethod
    def SPUT_instrumentation(scd, m, line_num):
        cur_line = m.raw_text[line_num]
        search_object = re.search(REGEX_BEGINS_WITH_SPUT, cur_line)

        if search_object is None:
            return 0

        regs = re.findall(REGEX_V_AND_P_NUMBERS, cur_line)

        class_name = re.search("(L.+)->", cur_line).group(1)
        if class_name != scd.class_name:
            return 0

        field_name = re.search("->(.+):", cur_line).group(1)

        taint_result = scd.create_taint_storage_name(field_name)

        block = [smali.COMMENT("IFT INSTRUCTIONS ADDED BY STIGMA for SPUT")] + \
                Instrumenter.assign_taint_from_registers(scd, m, [regs[0]], taint_result) + \
                [smali.COMMENT("IFT INSTRUCTIONS ADDED BY STIGMA for SPUT")]

        m.embed_block(line_num, block)

        return len(block)

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

        taint_result = scd.create_taint_storage_name(field_name)

        block = [smali.COMMENT("IFT INSTRUCTIONS ADDED BY STIGMA for IPUT")] + \
                Instrumenter.assign_taint_from_registers(scd, m, [regs[0]], taint_result) + \
                [smali.COMMENT("IFT INSTRUCTIONS ADDED BY STIGMA for IPUT")]

        m.embed_block(line_num, block)

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

        taint_result = scd.create_taint_storage_name(m.get_name(), regs[0])

        block = [smali.COMMENT("IFT INSTRUCTIONS ADDED BY STIGMA for IGET")] + \
                Instrumenter.assign_taint_from_fields(scd, m, [field_name], taint_result) + \
                [smali.COMMENT("IFT INSTRUCTIONS ADDED BY STIGMA for IGET")]

        m.embed_block(line_num, block)

        return len(block)

    @staticmethod
    def AGET_instrumentation(scd, m, line_num):
        cur_line = m.raw_text[line_num]
        search_object = re.search(REGEX_BEGINS_WITH_AGET, cur_line)

        if search_object is None:
            return 0

        regs = re.findall(REGEX_V_AND_P_NUMBERS, cur_line)

        taint_result = scd.create_taint_storage_name(m.get_name(), regs[0])


        blockquette = Instrumenter.assign_taint_from_registers(scd, m, regs[1:], taint_result)

        block = [smali.COMMENT("IFT INSTRUCTIONS ADDED BY STIGMA for AGET")] + blockquette + [smali.COMMENT("IFT INSTRUCTIONS ADDED BY STIGMA for AGET")]

        m.embed_block(line_num, block)

        return len(block)

    @staticmethod
    def APUT_instrumentation(scd, m, line_num):
        cur_line = m.raw_text[line_num]
        search_object = re.search(REGEX_BEGINS_WITH_APUT, cur_line)

        if search_object is None:
            return 0

        regs = re.findall(REGEX_V_AND_P_NUMBERS, cur_line)

        taint_result_index = scd.create_taint_storage_name(m.get_name(), regs[2])

        blockquette_index = Instrumenter.assign_taint_from_registers(scd, m, [regs[0]], taint_result_index)

        taint_result_array = scd.create_taint_storage_name(m.get_name(), regs[1])

        blockquette_array = Instrumenter.assign_taint_from_registers(scd, m, [regs[0]], taint_result_array)

        block = [smali.COMMENT("IFT INSTRUCTIONS ADDED BY STIGMA for APUT")] + blockquette_array + blockquette_index + [
            smali.COMMENT("IFT INSTRUCTIONS ADDED BY STIGMA for APUT")]

        m.embed_block(line_num, block)

        return len(block)

    @staticmethod
    def IMEI_instrumentation(scd, m, line_num):  # IMEI sources
        # print("IMEI_instrumentation")
        if STRING_IMEI_FUNCTION not in m.raw_text[line_num]:
            return 0

        result_line = m.raw_text[line_num + 2]

        search_object = re.search(REGEX_V_AND_P_NUMBERS, result_line)
        # print("search object: " + str(search_object))
        reg = search_object.group()

        taint_location = scd.create_taint_storage_name(m.get_name(), reg)
        # 1
        create_reg_list = Instrumenter.create_registers_and_block(1, m)
        block = create_reg_list[0]
        interpolate_idx = create_reg_list[1]
        tmp_reg_for_constant = create_reg_list[2][0]

        block_to_interpolate = [smali.CONST(tmp_reg_for_constant, "0x1")
            ,smali.SPUT(tmp_reg_for_constant, scd.class_name, taint_location)]

        block = block[:interpolate_idx] + block_to_interpolate + block[interpolate_idx:]
        block = [smali.BLANK_LINE(),
                 smali.COMMENT("IFT INSTRUCTIONS ADDED BY STIGMA for getDeviceID()")] + block + \
                [smali.COMMENT("IFT INSTRUCTIONS ADDED BY STIGMA for getDeviceID()")]

        m.embed_block(line_num, block)
        lines_embedded = len(block)

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
        results = re.findall(REGEX_V_AND_P_NUMBERS, m.raw_text[line_num])
        target_reg = results[1]
        # print("results: " + str(results))

        taint_loc = scd.create_taint_storage_name(m.get_name(), target_reg)

        create_reg_list = Instrumenter.create_registers_and_block(3, m)
        block = create_reg_list[0]
        interpolate_idx = create_reg_list[1]

        # 1, 2, and 3
        tmp_reg_for_tag = create_reg_list[2][0]
        tmp_reg_for_msg = create_reg_list[2][1]
        tmp_reg_for_compare = create_reg_list[2][2]

        # This is a smali.LABEL
        jmp_label = m.make_new_jump_label()

        block_to_interpolate = [smali.SGET(tmp_reg_for_compare, scd.class_name, taint_loc),
                                smali.IF_EQZ(tmp_reg_for_compare, jmp_label),
                                smali.CONST_STRING(tmp_reg_for_tag, "STIGMA"),
                                smali.CONST_STRING(tmp_reg_for_msg, "IMEI LEAK OCCURING!"),
                                smali.LOG_D(tmp_reg_for_tag, tmp_reg_for_msg),
                                jmp_label]

        block = block[:interpolate_idx] + block_to_interpolate + block[interpolate_idx:]
        block = [smali.BLANK_LINE(),
                 smali.COMMENT("IFT INSTRUCTIONS ADDED BY STIGMA for write()")] + block + \
                [smali.COMMENT("IFT INSTRUCTIONS ADDED BY STIGMA for write()")]

        m.embed_block(line_num, block)
        lines_embedded = len(block)

        return lines_embedded

    @staticmethod
    def LOGD_instrumentation(scd, m, line_num):  # simulated Log.d sink

        if "Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I" not in m.raw_text[line_num]:
            return 0

        # print("line: " + m.raw_text[line_num])
        results = re.findall(REGEX_V_AND_P_NUMBERS, m.raw_text[line_num])
        target_reg = results[1]
        # print("results: " + str(results))

        taint_loc = scd.create_taint_storage_name(m.get_name(), target_reg)

        create_reg_list = Instrumenter.create_registers_and_block(3, m)
        block = create_reg_list[0]
        interpolate_idx = create_reg_list[1]

        # 1, 2, and 3
        tmp_reg_for_tag = create_reg_list[2][0]
        tmp_reg_for_msg = create_reg_list[2][1]
        tmp_reg_for_compare = create_reg_list[2][2]

        # This is a smali.LABEL
        jmp_label = m.make_new_jump_label()

        block_to_interpolate = [smali.SGET(tmp_reg_for_compare, scd.class_name, taint_loc),
                                smali.IF_EQZ(tmp_reg_for_compare, jmp_label),
                                smali.CONST_STRING(tmp_reg_for_tag, "STIGMA"),
                                smali.CONST_STRING(tmp_reg_for_msg, "IMEI LEAK OCCURING!"),
                                smali.LOG_D(tmp_reg_for_tag, tmp_reg_for_msg),
                                jmp_label]

        block = block[:interpolate_idx] + block_to_interpolate + block[interpolate_idx:]
        block = [smali.BLANK_LINE(),
                 smali.COMMENT("IFT INSTRUCTIONS ADDED BY STIGMA for Log.d() (simulated leak)")] + block + \
                [smali.COMMENT("IFT INSTRUCTIONS ADDED BY STIGMA for Log.d() (simulated leak)")]

        m.embed_block(line_num, block)
        lines_embedded = len(block)

        return lines_embedded

    @staticmethod
    def INTERNAL_FUNCTION_instrumentation(scd, m, line_num):
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
        if class_name_part != scd.class_name: # change here for Internal
            return 0

        # It's internal!


        # get result line
        result_line = m.raw_text[line_num + 2]
        match_obj = re.match(REGEX_BEGINS_WITH_MOVE_RESULT, result_line)
        if match_obj is None:
            return 0

        # print("There is a result line!")
        # print(result_line)

        param_regs = re.findall(REGEX_V_AND_P_NUMBERS, invoke_line)
        # print("param registers: " + str(param_regs))

        result_regs = re.findall(REGEX_V_AND_P_NUMBERS, result_line)
        # print("result registers: " + str(result_regs))

        taint_loc_result = scd.create_taint_storage_name(m.get_name(), result_regs[0])

        wrapper_comment = smali.COMMENT("IFT INSTRUCTIONS ADDED BY STIGMA for external method call")
        block = [smali.BLANK_LINE(), wrapper_comment]

        blockquette = Instrumenter.assign_taint_from_registers(scd, m, param_regs, taint_loc_result)
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
            #In the case of a side-effect, external function
            param_regs = re.findall(REGEX_V_AND_P_NUMBERS, invoke_line)

            if len(param_regs) <= 1:
                return 0

            result_regs =[param_regs[0]]
        else:
            param_regs = re.findall(REGEX_V_AND_P_NUMBERS, invoke_line)
            # print("param registers: " + str(param_regs))

            result_regs = re.findall(REGEX_V_AND_P_NUMBERS, result_line)
            # print("result registers: " + str(result_regs))

        taint_loc_result = scd.create_taint_storage_name(m.get_name(), result_regs[0])

        wrapper_comment = smali.COMMENT("IFT INSTRUCTIONS ADDED BY STIGMA for external method call")
        block = [smali.BLANK_LINE(), wrapper_comment]

        blockquette = Instrumenter.assign_taint_from_registers(scd, m, param_regs, taint_loc_result)
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

        regs = re.findall(REGEX_V_AND_P_NUMBERS, cur_line)
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
        blockquette = Instrumenter.assign_taint_from_registers(scd, m, regs, taint_loc_result)

        block = block + blockquette

        block.append(smali.COMMENT("IFT INSTRUCTIONS ADDED BY STIGMA for %s instruction" % instruction))

        m.embed_block(line_num, block)
        lines_embedded = len(block)

        return lines_embedded
