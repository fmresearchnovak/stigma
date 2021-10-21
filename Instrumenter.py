
import SmaliAssemblyInstructions as smali
import StigmaStringParsingLib
from TaintStorageHandler import TaintStorageHandler
import re


DESIRED_NUM_REGISTERS = 4 #we grow our .locals by this number

# The structure of the constructor and the register_instrumentation_method functions
# are an attempt to make this a "plugin" style application where others can write
# more instrumentation functions.  I'm not sure it's 100% there and maybe this
# attempt just makes the code uglier for no benefit.

instrumentation_map = {}
storage_handler = TaintStorageHandler.get_instance()


def sign_up(opcode, new_method, instrumeter_inserts_original_lines = False):

    # Needs to also check num args of new method but I don't know how
    # to do that in python (reflection)
    # this is _ideally_ to allow a sort of "plugin" system where
    # other developers could add instrumentation
    if opcode.startswith("move-result"):
        raise Exception("Move-result cannot have an independent instrumenter, signup for the related preceding instruction.")
    if opcode not in instrumentation_map:
        instrumentation_map[opcode] = (new_method, instrumeter_inserts_original_lines)
    else:
        raise Exception(str(opcode) + " is already registered for:" + str(instrumentation_map[opcode]))


def make_comment_block(comment_detail=""):
        block = [smali.BLANK_LINE(), smali.COMMENT("IFT INSTRUCTIONS ADDED BY STIGMA " + comment_detail), smali.BLANK_LINE()]
        return block

    
def make_merge_block(scd, m, registers, taint_loc_result, free_reg):
    # This function creates a "merge block"
    # A merge block takes every one of the registers in the 
    # registers parameter (a list), and performs an ADD-FLOAT operation on their
    # values storing the result in taint_loc_result
    # Note: external methods may merge several registers

    block = []
    block.append(smali.CONST_16(free_reg[0], "0x0"))

    for r in registers:
        taint_loc_param = storage_handler.add_taint_location(scd.class_name, m.get_name(), r)
        block.append(smali.BLANK_LINE())
        block.append(smali.SGET(free_reg[1], taint_loc_param))
        block.append(smali.BLANK_LINE())
        block.append(smali.ADD_FLOAT(free_reg[0], free_reg[0], free_reg[1]))

    block.append(smali.BLANK_LINE())
    block.append(smali.SPUT(free_reg[0], taint_loc_result))

    return block
    

def create_logd_block(m, tag, message, tmp_reg_for_tag, tmp_reg_for_msg):

    block = [smali.CONST_STRING(tmp_reg_for_tag, tag),
            smali.BLANK_LINE(),
            smali.CONST_STRING(tmp_reg_for_msg, message),
            smali.BLANK_LINE(),
            smali.LOG_D(tmp_reg_for_tag, tmp_reg_for_msg),
            smali.BLANK_LINE()]
    
    return block
    

def get_next_move_result(m, line_num):
    raw_text = m.raw_text
    for i in range(line_num+1, len(raw_text)):
        current_line = raw_text[i]
        match_obj = re.match(StigmaStringParsingLib.BEGINS_WITH_MOVE_RESULT, current_line)
        if (match_obj is not None):
            return current_line
            
        elif StigmaStringParsingLib.is_valid_instruction(current_line):
            return None
            
    return None


def SIMPLE_instrumentation(scd, m, cur_line, dest_num, source_num, comment_string, free_reg):
    
    regs = StigmaStringParsingLib.get_v_and_p_numbers(cur_line)
    taint_field_src = storage_handler.add_taint_location(scd.class_name, m.get_name(), regs[source_num])
    taint_field_dest = storage_handler.add_taint_location(scd.class_name, m.get_name(), regs[dest_num])


    block = make_comment_block(comment_string)
    block = block + [smali.SGET(free_reg[0], taint_field_src),
    smali.BLANK_LINE(),
    smali.SPUT(free_reg[0], taint_field_dest)]
    block = block + make_comment_block(comment_string)

    return block
