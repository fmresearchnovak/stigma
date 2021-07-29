#!/usr/bin/env python

import SmaliAssemblyInstructions as smali
import StigmaStringParsingLib
from TaintStorageHandler import TaintStorageHandler
import re
NUM_REGISTER = 4 #we grow our .locals by this number


# A more complete listing of these sort of things can be found in ./SourcesAndSinks.txt
STRING_IMEI_FUNCTION = "Landroid/telephony/TelephonyManager;->getDeviceId()Ljava/lang/String;"
STRING_PHONE_NUM_FUNCTION = "Landroid/telephony/TelephonyManager;->getLine1Number()Ljava/lang/String;"
STRING_STREAM_WRITE_FUNCTION = "Ljava/io/OutputStreamWriter;->write(Ljava/lang/String;II)V"
BYTE_STREAM_WRITE_FUNCTION_OVER = "Ljava/io/OutputStream;->write([BII)V"
BYTE_STREAM_WRITE_FUNCTION = "Ljava/io/OutputStream;->write([B)V"
INT_STREAM_WRITE_FUNCTION = "Ljava/io/OutputStream;->write(I)V"
PARCEL_WRITE_FUNCTION = "Landroid/os/Parcel;->write"
OBJECT_STREAM_WRITE_FUNCTION = "Ljava/io/ObjectOutputStream;->writeObject("
STRING_LOGD_FUNCTION = "Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I"
STRING_GET_LAST_KNOWN_LOCATION_FUNCTION = "Landroid/location/LocationManager;->getLastKnownLocation(Ljava/lang/String;)Landroid/location/Location;"
STRING_GET_LATITUDE = "Landroid/location/Location;->getLatitude()D"
STRING_GET_LONGITUDE = "Landroid/location/Location;->getLongitude()D"
storage_handler = TaintStorageHandler.get_instance()



# The structure of the constructor and the register_instrumentation_method functions
# are an attempt to make this a "plugin" style application where others can write
# more instrumentation functions.  I'm not sure it's 100% there and maybe this
# attempt just makes the code uglier for no benefit.

instrumentation_map = {}


def sign_up(opcode, new_method):

    # Needs to also check num args of new method but I don't know how
    # to do that in python (reflection)
    # this is _ideally_ to allow a sort of "plugin" system where
    # other developers could add instrumentation
    if opcode not in instrumentation_map:
        instrumentation_map[opcode] = new_method

@staticmethod
def make_merge_block(scd, m, registers, taint_loc_result):
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
        

    block.append(smali.CONST_16(tmp_reg1_for_merging, "0x0"))

    for r in registers:
        taint_loc_param = storage_handler.add_taint_location(scd.class_name, m.get_name(), r)
        block.append(smali.BLANK_LINE())
        block.append(smali.SGET(tmp_reg2_for_merging, taint_loc_param))
        block.append(smali.BLANK_LINE())
        block.append(smali.ADD_FLOAT(tmp_reg1_for_merging, tmp_reg1_for_merging, tmp_reg2_for_merging))

    block.append(smali.BLANK_LINE())
    block.append(smali.SPUT(tmp_reg1_for_merging, taint_loc_result))

    m.free_reg()
    m.free_reg()
    # 2, 1

    return block

@staticmethod
def make_simple_assign_block(scd, m, taint_field_dest, taint_field_src):
    # make a two class assign block where src class and dest class are the same class (scd)
    # Useful generalization! - Shaamyl
    return Instrumenter.make_two_class_assign_block(scd, scd, m, taint_field_dest, taint_field_src)
    
@staticmethod
def make_two_class_assign_block(scd_dest, scd_src, m, taint_field_dest, taint_field_src):
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
        
    block = [smali.SGET(tmp_reg, taint_field_src),
                smali.BLANK_LINE(),
                smali.SPUT(tmp_reg, taint_field_dest)]

    m.free_reg() #1

    return block

def make_comment_block(comment_detail=""):
        block = [smali.BLANK_LINE(), smali.COMMENT("IFT INSTRUCTIONS ADDED BY STIGMA " + comment_detail), smali.BLANK_LINE()]
        return block
    
@staticmethod
def create_logd_block(m, tag, message):
    try:
        tmp_reg_for_tag = m.make_new_reg()
        tmp_reg_for_msg = m.make_new_reg()
    except RuntimeError:
        return []

    block = [smali.CONST_STRING(tmp_reg_for_tag, tag),
            smali.BLANK_LINE(),
            smali.CONST_STRING(tmp_reg_for_msg, message),
            smali.BLANK_LINE(),
            smali.LOG_D(tmp_reg_for_tag, tmp_reg_for_msg),
            smali.BLANK_LINE()]

    m.free_reg()
    m.free_reg()
    
    return block
    
@staticmethod
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

@staticmethod
def SIMPLE_instrumentation(scd, m, line_num, regex, dest_num, source_num, comment_string):
    cur_line = m.raw_text[line_num]
    
    search_object = re.search(regex, cur_line)
    if search_object is None:
        return 0

    regs = StigmaStringParsingLib.get_v_and_p_numbers(cur_line)


    #taint_field_src = scd.create_taint_field(m.get_name(), regs[source_num])
    taint_field_src = storage_handler.add_taint_location(scd.class_name, m.get_name(), regs[source_num])
    #taint_field_dest = scd.create_taint_field(m.get_name(), regs[dest_num])

    taint_field_dest = storage_handler.add_taint_location(scd.class_name, m.get_name(), regs[dest_num])


    block = Instrumenter.make_comment_block(comment_string)
    block = block + Instrumenter.make_simple_assign_block(scd, m, taint_field_dest, taint_field_src)
    block = block + Instrumenter.make_comment_block(comment_string)
    
    m.embed_block(line_num, block)

    return len(block)

