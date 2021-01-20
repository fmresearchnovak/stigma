#!/usr/bin/env python

from stigma import SmaliAssemblyInstructions as smali
from stigma import StigmaStringParsingLib
from stigma.TaintStorageHandler import TaintStorageHandler
import re



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

class Instrumenter:
    

    # The structure of the constructor and the register_instrumentation_method functions
    # are an attempt to make this a "plugin" style application where others can write
    # more instrumentation functions.  I'm not sure it's 100% there and maybe this
    # attempt just makes the code uglier for no benefit.
    def __init__(self):
        self.instrumentation_methods = [Instrumenter.FILLED_NEW_ARRAY_instrumentation,
                                        Instrumenter.ARRAY_LENGTH_instrumentation, Instrumenter.NEW_ARRAY_instrumentation,
                                        Instrumenter.AGET_instrumentation, Instrumenter.APUT_instrumentation,
                                        Instrumenter.SPUT_instrumentation, Instrumenter.SGET_instrumentation,
                                        Instrumenter.IPUT_instrumentation, Instrumenter.IGET_instrumentation,
                                        Instrumenter.IMEI_instrumentation, Instrumenter.LOGD_instrumentation,
                                        Instrumenter.PHONE_NUM_instrumentation, Instrumenter.LOCATION_instrumentation,
                                        Instrumenter.LONGITUDE_instrumentation, Instrumenter.LATITUDE_instrumentation,
                                        Instrumenter.MOVE_instrumentation, Instrumenter.CONST_instrumentation,
                                        Instrumenter.NEG_instrumentation, Instrumenter.CONVERTER_instrumentation,
                                        Instrumenter.WRITE_instrumentation,  Instrumenter.INTERNAL_FUNCTION_instrumentation,
                                        Instrumenter.BINARYOP_instrumenter, Instrumenter.RETURN_instrumentation,
                                        Instrumenter.EXTERNAL_FUNCTION_instrumentation]



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
            

        block.append(smali.CONST_16(tmp_reg1_for_merging, "0x0"))

        for r in registers:
            taint_loc_param = storage_handler.add_taint_location(scd.class_name[1:-1], m.get_name(), r)
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


    @staticmethod
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
        taint_field_src = storage_handler.add_taint_location(scd.class_name[1:-1], m.get_name(), regs[source_num])
        #taint_field_dest = scd.create_taint_field(m.get_name(), regs[dest_num])

        taint_field_dest = storage_handler.add_taint_location(scd.class_name[1:-1], m.get_name(), regs[dest_num])


        block = Instrumenter.make_comment_block(comment_string)
        block = block + Instrumenter.make_simple_assign_block(scd, m, taint_field_dest, taint_field_src)
        block = block + Instrumenter.make_comment_block(comment_string)
        
        m.embed_block(line_num, block)

        return len(block)


    @staticmethod
    def FILLED_NEW_ARRAY_instrumentation(scd, m, line_num):
        #filled-new-array {parameters},type_id ; new array reference goten by move line
        cur_line = m.raw_text[line_num]

        search_object = re.search(StigmaStringParsingLib.BEGINS_WITH_FILLED_NEW_ARRAY, cur_line)

        if search_object is None:
            return 0

        regs = StigmaStringParsingLib.get_v_and_p_numbers(cur_line)

        #Not Assuming move-result is 1 line later
        result_line = Instrumenter.get_next_move_result(m, line_num)
        if result_line is None:
            return 0

      
        result_reg = StigmaStringParsingLib.get_v_and_p_numbers(result_line)[0]

        #taint_loc_result = scd.create_taint_field(m.get_name(), result_reg)
        taint_loc_result = storage_handler.add_taint_location(scd.class_name[1:-1], m.get_name(), result_reg)

        block = Instrumenter.make_comment_block("for FILLED-NEW-ARRAY")
        block = block + Instrumenter.make_merge_register_block(scd, m, regs, taint_loc_result)
        block = block + Instrumenter.make_comment_block("for FILLED-NEW-ARRAY")

        m.embed_block(line_num, block)

        return len(block)

    @staticmethod
    def NEW_ARRAY_instrumentation(scd, m, line_num):
        #new-array vx,vy,type_id ; puts length vy array into vx
        return Instrumenter.SIMPLE_instrumentation(scd, m, line_num, StigmaStringParsingLib.BEGINS_WITH_NEW_ARRAY, 0, 1, "for NEW-ARRAY")

    @staticmethod
    def ARRAY_LENGTH_instrumentation(scd, m, line_num):
        #array-length vx,vy ; puts length of array vy into vx
        return Instrumenter.SIMPLE_instrumentation(scd, m, line_num, StigmaStringParsingLib.BEGINS_WITH_ARRAY_LENGTH, 0, 1, "for ARRAY-LENGTH")

    @staticmethod
    def AGET_instrumentation(scd, m, line_num):
        #aget vx,vy, vz ; gets data of array vy into register vx
        return Instrumenter.SIMPLE_instrumentation(scd, m, line_num, StigmaStringParsingLib.BEGINS_WITH_AGET, 0, 1, "for AGET")

    @staticmethod
    def APUT_instrumentation(scd, m, line_num):
        #aput vx,vy, vz ; puts data of register vx into array vy
        return Instrumenter.SIMPLE_instrumentation(scd, m, line_num, StigmaStringParsingLib.BEGINS_WITH_APUT, 1, 0, "for APUT")
    
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
        #taint_field_src = scd.create_taint_field(field_base_name)
        taint_field_src = storage_handler.add_taint_location(scd.class_name[1:-1], "", field_base_name)

        #taint_field_dest = scd.create_taint_field(m.get_name(), regs[0])
        taint_field_dest = storage_handler.add_taint_location(scd.class_name[1:-1], m.get_name(), regs[0])
                
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
        #taint_field_dest = scd.create_taint_field(field_base_name)
        taint_field_dest = storage_handler.add_taint_location(scd.class_name[1:-1], "", field_base_name)

        #taint_field_src = scd.create_taint_field(m.get_name(), regs[0])
        taint_field_src = storage_handler.add_taint_location(scd.class_name[1:-1], m.get_name(), regs[0])
                
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

        if(m.signature.is_static):
            # If calling method is static, the instance MUST be external
            return 0


        regs = StigmaStringParsingLib.get_v_and_p_numbers(cur_line)
        if(regs[1] != "p0"):
            return 0



        
        # get field base name and create corresponding taint field (taint_src)
        # iput-object v0, v1, Ledu/fandm/enovak/leaks/Main;->TAG:Ljava/lang/String;
        # field_base_name = "TAG"
        # taint_field_dest = "Ledu/fandm/enovak/leaks/Main;->TAG_TAINT:I;"
        field_base_name = re.search(StigmaStringParsingLib.FIELD_NAME, cur_line).group(1)
        #taint_field_dest = scd.create_taint_field(field_base_name, regs[1])
        taint_field_dest= storage_handler.add_taint_location(scd.class_name[1:-1], regs[1], field_base_name)

        # didn't include taint status of "p0", maybe I should have
        #taint_field_src = scd.create_taint_field(m.get_name(), regs[0])
        taint_field_src= storage_handler.add_taint_location(scd.class_name[1:-1], m.get_name(), regs[0])
                
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
        # iget v1, p2, Landroid/graphics/Rect;->left:I
        # field_base_name = "left"
        # taint_field_dest = "Ledu/fandm/enovak/leaks/Main;->left_p2_TAINT:I;"
        field_base_name = re.search(StigmaStringParsingLib.FIELD_NAME, cur_line).group(1)
        #taint_field_src = scd.create_taint_field(field_base_name, regs[1])
        #Convention for IPUT and IGET Taint Storages
        taint_field_src = storage_handler.add_taint_location(scd.class_name[1:-1], regs[1], field_base_name)

        # maybe we should be using the second register as well?  make_merge_register_block
        # isn't setup to do that though.
        #taint_field_dest = scd.create_taint_field(m.get_name(), regs[0])
        taint_field_dest = storage_handler.add_taint_location(scd.class_name[1:-1], m.get_name(), regs[0])
                
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

        result_line = Instrumenter.get_next_move_result(m, line_num)
        if result_line is None:
            return 0

        reg = StigmaStringParsingLib.get_v_and_p_numbers(result_line)[0]


        #taint_location = scd.create_taint_field(m.get_name(), reg)
        taint_location = storage_handler.add_taint_location(scd.class_name[1:-1], m.get_name(), reg)
        try:
            # 1
            tmp_reg_for_constant = m.make_new_reg()
            
        except RuntimeError:
            return 0

        logBlock = Instrumenter.create_logd_block(m, "\"STIGMAAA\"", "\"IMEI Num Entered\"")

        # https://www.h-schmidt.net/FloatConverter/IEEE754.html
        # 0.1 = 0x3dcccccd
        # CONST does NOT sign extends, it takes a 32 bit constant
        block = [smali.BLANK_LINE(),
                 smali.COMMENT("IFT INSTRUCTIONS ADDED BY STIGMA for getDeviceID()"),
                 smali.BLANK_LINE(),
                 smali.CONST(tmp_reg_for_constant, "0x3dcccccd"), 
                 smali.BLANK_LINE(),
                 smali.SPUT(tmp_reg_for_constant, taint_location),
                 smali.BLANK_LINE(),
                 smali.COMMENT("IFT INSTRUCTIONS ADDED BY STIGMA for getDeviceID()")]

        block = logBlock + block

        m.embed_block(line_num, block)
        lines_embedded = len(block)

        m.free_reg()
        # 1


        return lines_embedded
        
    @staticmethod
    def LOCATION_instrumentation(scd, m, line_num):
        if STRING_GET_LAST_KNOWN_LOCATION_FUNCTION not in m.raw_text[line_num]:
            return 0
            
        result_line = Instrumenter.get_next_move_result(m, line_num)
        if(result_line is None):
            return 0
        
            
        dest_reg = StigmaStringParsingLib.get_v_and_p_numbers(result_line)[0]
        #taint_loc_dest = scd.create_taint_field(m.get_name(), dest_reg)
        taint_loc_dest = storage_handler.add_taint_location(scd.class_name[1:-1], m.get_name(), dest_reg)
        
        try:
            tmp_reg_for_constant = m.make_new_reg()
        except RuntimeError:
            return 0
            
        logBlock = Instrumenter.create_logd_block(m, "\"STIGMAAC\"", "\"Location Entered\"")
        
        # https://www.h-schmidt.net/FloatConverter/IEEE754.html
        # 2 = 0x40000000
        # CONST_16 sign extends to 32 bits
        block = Instrumenter.make_comment_block("for getLastKnownLocation()")
        block.append(smali.CONST_16(tmp_reg_for_constant, "0x4000"))
        block.append(smali.BLANK_LINE())
        block.append(smali.SPUT(tmp_reg_for_constant, taint_loc_dest))
        block = block + Instrumenter.make_comment_block("for getLastKnownLocation()")
        
        block = block + logBlock
        
        m.embed_block(line_num, block)
        m.free_reg()
        
        return len(block)
        
    @staticmethod
    def LONGITUDE_instrumentation(scd, m, line_num):
        if STRING_GET_LONGITUDE not in m.raw_text[line_num]:
            return 0
            
        result_line = Instrumenter.get_next_move_result(m, line_num)
        if(result_line is None):
            return 0
            
        dest_reg = StigmaStringParsingLib.get_v_and_p_numbers(result_line)[0]
        #taint_loc_dest = scd.create_taint_field(m.get_name(), dest_reg)
        taint_loc_dest = storage_handler.add_taint_location(scd.class_name[1:-1], m.get_name(), dest_reg)
        
        try:
            tmp_reg_for_constant = m.make_new_reg()
        except RuntimeError:
            return 0
            
        logBlock = Instrumenter.create_logd_block(m, "\"STIGMAAC\"", "\"Location Entered\"")
        
        # https://www.h-schmidt.net/FloatConverter/IEEE754.html
        # 1.0 = 0x3f800000 
        # CONST_16 takes a 16-bit literal and sign-extends to 32 bits
        block = Instrumenter.make_comment_block("for getLongitude()")
        block.append(smali.CONST_16(tmp_reg_for_constant, "0x3f80"))
        block.append(smali.BLANK_LINE())
        block.append(smali.SPUT(tmp_reg_for_constant, taint_loc_dest))
        block = block + Instrumenter.make_comment_block("for getLongitude()")
        
        block = block + logBlock
        
        m.embed_block(line_num, block)
        m.free_reg()
        
        return len(block)
        
        
    @staticmethod
    def LATITUDE_instrumentation(scd, m, line_num):
        if STRING_GET_LATITUDE not in m.raw_text[line_num]:
            return 0
            
        result_line = Instrumenter.get_next_move_result(m, line_num)
        if(result_line is None):
            return 0
            
        dest_reg = StigmaStringParsingLib.get_v_and_p_numbers(result_line)[0]
        #taint_loc_dest = scd.create_taint_field(m.get_name(), dest_reg)
        taint_loc_dest = storage_handler.add_taint_location(scd.class_name[1:-1], m.get_name(), dest_reg)
        
        try:
            tmp_reg_for_constant = m.make_new_reg()
        except RuntimeError:
            return 0
            
        logBlock = Instrumenter.create_logd_block(m, "\"STIGMAAC\"", "\"Location Entered\"")
        
        # https://www.h-schmidt.net/FloatConverter/IEEE754.html
        # 1.0 = 0x3f800000 
        # CONST_16 takes a 16-bit literal and sign-extends to 32 bits
        block = Instrumenter.make_comment_block("for getLatitude()")
        block.append(smali.CONST_16(tmp_reg_for_constant, "0x3f80"))
        block.append(smali.BLANK_LINE())
        block.append(smali.SPUT(tmp_reg_for_constant, taint_loc_dest))
        block = block + Instrumenter.make_comment_block("for getLatitude()")
        
        block = block + logBlock
        
        m.embed_block(line_num, block)
        m.free_reg()
        
        return len(block)
        
        
        
    @staticmethod    
    def PHONE_NUM_instrumentation(scd, m, line_num):
        if STRING_PHONE_NUM_FUNCTION not in m.raw_text[line_num]:
            return 0
        
        result_line = Instrumenter.get_next_move_result(m, line_num)
        if(result_line is None):
            return 0
            
        reg = StigmaStringParsingLib.get_v_and_p_numbers(result_line)[0]
        #taint_loc = scd.create_taint_field(m.get_name(), reg)
        taint_loc = storage_handler.add_taint_location(scd.class_name[1:-1], m.get_name(), reg)
        
        # 1
        try:
            tmp_reg_for_constant = m.make_new_reg()
        except RuntimeError:
            return 0
            
        
        logBlock = Instrumenter.create_logd_block(m, "\"STIGMAAB\"", "\"Phone Num Entered\"")
        
        block = Instrumenter.make_comment_block("for getLine1Number()")
        
        # https://www.h-schmidt.net/FloatConverter/IEEE754.html
        # 1.0 = 0x3f800000 
        # CONST_16 takes a 16-bit literal and sign-extends to 32 bits
        block.append(smali.BLANK_LINE())
        block.append(smali.CONST_16(tmp_reg_for_constant, "0x3f80"))
        block.append(smali.BLANK_LINE())
        block.append(smali.SPUT(tmp_reg_for_constant, taint_loc))
        
        block = logBlock + block + Instrumenter.make_comment_block("for getLine1Number()")
        #print("embeding block: " + str(block))
        m.embed_block(line_num, block)
        m.free_reg() # 1
        return len(block)

    @staticmethod
    def WRITE_instrumentation(scd, m, line_num):  # "write()" sinks
        # print("WRITE_instrumentation")
        # print("line_num: " + str(line_num))

        # determine that this is a write() call and is therefore
        # necessary for WRITE instrumentation
        if STRING_STREAM_WRITE_FUNCTION in m.raw_text[line_num]:
            pass
        elif BYTE_STREAM_WRITE_FUNCTION in m.raw_text[line_num]:
            pass
        elif BYTE_STREAM_WRITE_FUNCTION_OVER in m.raw_text[line_num]:
            pass
        elif INT_STREAM_WRITE_FUNCTION in m.raw_text[line_num]:
            pass
        elif OBJECT_STREAM_WRITE_FUNCTION in m.raw_text[line_num]:
            pass
        else:
            return 0

        # print("line: " + m.raw_text[line_num])
        results = StigmaStringParsingLib.get_v_and_p_numbers(m.raw_text[line_num])
        target_reg = results[1]
        # print("results: " + str(results))

        #taint_loc = scd.create_taint_field(m.get_name(), target_reg)
        taint_loc = storage_handler.add_taint_location(scd.class_name[1:-1], m.get_name(), target_reg)

        
        # TODO: re-write the below using only 3 registers (or fewer
        # if possible

        try:
            logd_tag_reg = m.make_new_reg() # 1
            logd_msg_reg = m.make_new_reg() # 2
            taint_tag_reg = m.make_new_reg() # 3
            zero_reg = m.make_new_reg() # 4
        except RuntimeError:
            return 0

        # This is a smali.LABEL
        jmp_label = m.make_new_jump_label()

        block = [smali.BLANK_LINE(),
                 smali.COMMENT("IFT INSTRUCTIONS ADDED BY STIGMA for write()"),
                 smali.BLANK_LINE(),
                 smali.SGET(taint_tag_reg, taint_loc),
                 smali.BLANK_LINE(),
                 smali.CONST_16(zero_reg, "0x0"),
                 smali.BLANK_LINE(),
                 smali.CMPL_FLOAT(zero_reg, taint_tag_reg, zero_reg),
                 smali.BLANK_LINE(),
                 smali.IF_EQZ(zero_reg, jmp_label),
                 smali.BLANK_LINE(),
                 smali.CONST_STRING(logd_tag_reg, "\"STIGMAZZ\""),
                 smali.BLANK_LINE(),
                 smali.CONST_STRING(logd_msg_reg, "\"LEAK via WRITE() OCCURING!\""),
                 smali.BLANK_LINE(),
                 smali.LOG_D(logd_tag_reg, logd_msg_reg),
                 smali.BLANK_LINE(),
                 smali.INVOKE_STATIC([taint_tag_reg], "Ljava/lang/String;->valueOf(F)Ljava/lang/String;"),
                 smali.BLANK_LINE(),
                 smali.MOVE_RESULT_OBJECT(logd_msg_reg),
                 smali.BLANK_LINE(),
                 smali.LOG_D(logd_tag_reg, logd_msg_reg),
                 smali.BLANK_LINE(),
                 jmp_label,
                 smali.BLANK_LINE(),
                 smali.COMMENT("IFT INSTRUCTIONS ADDED BY STIGMA for write()")]

        m.embed_block(line_num, block)
        lines_embedded = len(block)

        m.free_reg() # 1
        m.free_reg() # 2
        m.free_reg() # 3
        m.free_reg() # 4


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

        #taint_loc = scd.create_taint_field(m.get_name(), target_reg)
        taint_loc = storage_handler.add_taint_location(scd.class_name[1:-1], m.get_name(), target_reg)

        # TODO: re-write the below using only 3 registers (or fewer
        # if possible
        
        try:
            logd_tag_reg = m.make_new_reg() # 1
            logd_msg_reg = m.make_new_reg() # 2
            taint_tag_reg = m.make_new_reg() # 3
            zero_reg = m.make_new_reg() # 4
        except RuntimeError:
            return 0

        # This is a smali.LABEL
        jmp_label = m.make_new_jump_label()

        block = [smali.BLANK_LINE(),
                 smali.COMMENT("IFT INSTRUCTIONS ADDED BY STIGMA for Log.d() (simulated leak)"),
                 smali.BLANK_LINE(),
                 smali.SGET(taint_tag_reg, taint_loc),
                 smali.BLANK_LINE(),
                 smali.CONST_16(zero_reg, "0x0"),
                 smali.BLANK_LINE(),
                 smali.CMPL_FLOAT(zero_reg, taint_tag_reg, zero_reg),
                 smali.BLANK_LINE(),
                 smali.IF_EQZ(zero_reg, jmp_label),
                 smali.BLANK_LINE(),
                 smali.CONST_STRING(logd_tag_reg, "\"STIGMAZY\""),
                 smali.BLANK_LINE(),
                 smali.CONST_STRING(logd_msg_reg, "\"LEAK via LOGD() OCCURING!\""),
                 smali.BLANK_LINE(),
                 smali.LOG_D(logd_tag_reg, logd_msg_reg),
                 smali.BLANK_LINE(),
                 smali.INVOKE_STATIC([taint_tag_reg], "Ljava/lang/String;->valueOf(F)Ljava/lang/String;"),
                 smali.BLANK_LINE(),
                 smali.MOVE_RESULT_OBJECT(logd_msg_reg),
                 smali.BLANK_LINE(),
                 smali.LOG_D(logd_tag_reg, logd_msg_reg),
                 smali.BLANK_LINE(),
                 jmp_label,
                 smali.BLANK_LINE(),
                 smali.COMMENT("IFT INSTRUCTIONS ADDED BY STIGMA for Log.d() (simulated leak)")]

        m.embed_block(line_num, block)
        lines_embedded = len(block)

        m.free_reg() # 1
        m.free_reg() # 2
        m.free_reg() # 3
        m.free_reg() # 4

        return lines_embedded

    @staticmethod
    def RETURN_instrumentation(scd, m, line_num):
        # return-object v2
        cur_line = m.raw_text[line_num]
        
        search_object = re.search(StigmaStringParsingLib.BEGINS_WITH_RETURN, cur_line)
        if search_object is None:
            return 0
            
        block = Instrumenter.make_comment_block("for RETURN")
            
        # When a function returns
        # we cannot easily see where it will return to
        # The callee (the function returning) and caller
        # must both be able to access to the same tag location / field
        # without actually coordinating anything with each other.
        # 
        # solution idea #1 (doesn't work): choose an arbitrary class 
        # to store this special tag location.  But, also use the 
        # same one.  In this case arbitrary location is the first 
        # class in the other_scds list (other_scds[0])
        # this doesn't work becuase the class may be in another package
        # or may otherwise be in-accessible from here.
        #
        # solution idea #2
        # taint tag is in callee, so caller must pull it from "here"
        # this is necessary because the tag must be in a package
        # that the caller class can access.  This is not easy to know
        # when looking only at smali code
        #taint_field_dest = scd.create_taint_field("return", "field")
        taint_field_dest = storage_handler.add_taint_location(scd.class_name[1:-1], "return", "field")
        
        regs = StigmaStringParsingLib.get_v_and_p_numbers(cur_line)
        if(regs == []):
            # this probably happened because the line is "return-void"
            
            try:
                reg_for_zero = m.make_new_reg() # 1
            except RuntimeError:
                return 0
            
            block.append(smali.CONST(reg_for_zero, "0x0"))
            block.append(smali.BLANK_LINE())
            block.append(smali.SPUT(reg_for_zero, taint_field_dest))
            
            m.free_reg() # 1
            
        else:
            #taint_field_src = scd.create_taint_field(m.get_name(), regs[0])
            taint_field_src = storage_handler.add_taint_location(scd.class_name[1:-1], m.get_name(), regs[0])
            block = block + Instrumenter.make_simple_assign_block(scd, m, taint_field_dest, taint_field_src)
            
        block = block + Instrumenter.make_comment_block("for RETURN")
        
        m.embed_block(line_num, block)
        
        return len(block)
            
            
        
        
        
        
    @staticmethod
    def INTERNAL_FUNCTION_instrumentation(scd, m, line_num):
        # Part 1, instrumentation for the invoke-* line
        
        # Imagine we are in a Class "ClassA"
        # inside this class is a method bar()
        # and in method bar() is this instruction:
        #
        # invoke-direct {p0, v2} Lcom/example/ClassB;->foo(I)C
        # 
        # we need to create the following inside ClassB:
        #   foo_p0_TAINT:I
        #   foo_p1_TAINT:I
        #
        # 
        # and they need to be given the taint-values from p0 and v2
        # respectively.  Note: there are multiple "p0" the one in bar()
        # the one in foo().  They are coincidentally the same value
        # in this example.
        # Note, static functions are not an issue since all parameters
        # are always passed and p0 is always used.  Sometimes p0 is "this"
        # but for static methods it is simply something else.
          
        # I'm not sure if this works for a child class calling a function
        # defined in it's own parent.  Maybe that should be
        # considered not "internal"
        
        search_object = re.search(StigmaStringParsingLib.BEGINS_WITH_INVOKE, m.raw_text[line_num])
        if search_object is None:
            return 0

        #print("list of other SCDs: " + str(scd.other_scds))
        invoke_line = m.raw_text[line_num]

        tokens = StigmaStringParsingLib.break_into_tokens(invoke_line)
        method_sig = tokens[-1]
        
        parts = method_sig.split("->")
        callee_class_name = parts[0]
        callee_method_name = parts[1].split("(")[0]
        
        
        callee_class_obj = scd.get_other_class(callee_class_name)
        if(callee_class_obj is None):
            return 0
        # At this point it is known that both this class (ClassA)
        # and the callee class (ClassB) are both inside this project.
        # We call this an "internal" method
        
        
        param_regs = StigmaStringParsingLib.get_v_and_p_numbers(invoke_line)


        block = Instrumenter.make_comment_block("for INTERNAL METHOD")
        idx = 0
        for reg in param_regs:
            #taint_loc_dest = callee_class_obj.create_taint_field(callee_method_name, )
            taint_loc_dest = storage_handler.add_taint_location(callee_class_obj.class_name[1:-1], callee_method_name, "p" + str(idx))
            #taint_loc_src = scd.create_taint_field(m.get_name(), reg)
            taint_loc_src = storage_handler.add_taint_location(scd.class_name[1:-1], m.get_name(), reg)
            block = block + Instrumenter.make_two_class_assign_block(callee_class_obj, scd, m, taint_loc_dest, taint_loc_src)
            block.append(smali.BLANK_LINE())
            idx = idx + 1
            
        block = block + Instrumenter.make_comment_block("for INTERNAL METHOD")
        
        m.embed_block(line_num, block)
        
        
        
        
        # this point (for some reason) this stuff is causing the java verifier
        # to reject classes and I don't know why
        
        ## Part 2, instrumentation for move-result line (if one is present)
        
        # note: I will be inserting these lines AFTER, the move-result 
        # this is highly unusual but I think necessary for two reasons
        # 1) We have to grab the data AFTER the function has completed
        # since the "return" instrumentation needs to have run
        # 2) We cannot add code between a invoke line and the corresponding
        # move-result line


        result_line = Instrumenter.get_next_move_result(m, line_num+len(block))
        if result_line is None:
            return len(block)
        
        #print("file: " + scd.file_name)
        #print("invoke-line: " + str(invoke_line))
        #print("result line: " + str(result_line))
        
        reg = StigmaStringParsingLib.get_v_and_p_numbers(result_line)[0]
        
        # taint tag is in callee, so caller must pull out of it
        # this is necessary because the tag must be in a package
        # that the caller class can access.  This is not easy to know
        # when looking only at smali code
        #taint_loc_src = callee_class_obj.create_taint_field("return", "field")
        taint_loc_src = storage_handler.add_taint_location(callee_class_obj.class_name[1:-1], "return", "field")
        #taint_loc_dest = scd.create_taint_field(m.get_name(), reg)
        taint_loc_dest = storage_handler.add_taint_location(scd.class_name[1:-1], m.get_name(), reg)
        
        result_block = Instrumenter.make_comment_block("for MOVE-RESULT")
        result_block = result_block + Instrumenter.make_two_class_assign_block(scd, callee_class_obj, m, taint_loc_dest, taint_loc_src)
        result_block = result_block + Instrumenter.make_comment_block("for MOVE-RESULT")
        
        m.embed_block(line_num + len(block) + 3, result_block) 
        
        #print("line_num: " + str(line_num))
        #print("returning: " + str((len(block) + len(result_block) + 3)))
        #print("line 4 + 19:" + str(m.raw_text[line_num + 19]))
        #print("line 4 + 19 + 1: " + str(m.raw_text[line_num + 19 + 1]))
        
        return (len(block) + len(result_block) + 3)


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
        callee_class_name = name.split("->")[0]
        
        callee_class_obj = scd.get_other_class(callee_class_name)
        if(callee_class_obj is not None):
            return 0
        # At this point it is known that the callee class (ClassB) 
        # is outside this project.
        # We call this an "external" method
        # print("\n\n\nEXTERNAL METHOD!")

        param_regs = StigmaStringParsingLib.get_v_and_p_numbers(invoke_line)
        
        #result_line = m.raw_text[line_num + 2]
        result_line = Instrumenter.get_next_move_result(m, line_num)
        if result_line is None:
            return 0
            
            # if result_line is None then the 
            # only data flow possible is "side-effects"
            # and calls to other external function

            # Maybe we should consider tainting the "this" reference
            # if it is present?
      
        result_regs = StigmaStringParsingLib.get_v_and_p_numbers(result_line)
        #taint_loc_result = scd.create_taint_field(m.get_name(), result_regs[0])
        taint_loc_result = storage_handler.add_taint_location(scd.class_name[1:-1], m.get_name(), result_regs[0])
        
        block = Instrumenter.make_comment_block("for EXTERNAL METHOD")
        block = block + Instrumenter.make_merge_register_block(scd, m, param_regs, taint_loc_result)
        block = block + Instrumenter.make_comment_block("for EXTERNAL METHOD")
        
        m.embed_block(line_num, block)

        return len(block)


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

        #taint_loc_result = scd.create_taint_field(m.get_name(), regs[0])
        taint_loc_result = storage_handler.add_taint_location(scd.class_name[1:-1], m.get_name(), regs[0])

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
        #taint_field_dest = scd.create_taint_field(m.get_name(), regs[0])
        taint_field_dest = storage_handler.add_taint_location(scd.class_name[1:-1], m.get_name(), regs[0])
        #taint_field_src = scd.create_taint_field(m.get_name(), regs[1])
        taint_field_src = storage_handler.add_taint_location(scd.class_name[1:-1], m.get_name(), regs[1])
        
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
        
        #taint_field_loc = scd.create_taint_field(m.get_name(), regs[0])
        taint_field_loc = storage_handler.add_taint_location(scd.class_name[1:-1], m.get_name(), regs[0])
        try:
            reg_for_zero = m.make_new_reg() #1
        except RuntimeError:
            return 0
        
        block = Instrumenter.make_comment_block("for CONST")
        block.append(smali.CONST(reg_for_zero, "0x0"))
        block.append(smali.BLANK_LINE())
        block.append(smali.SPUT(reg_for_zero, taint_field_loc))
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
        
        #taint_field_src = scd.create_taint_field(m.get_name(), regs[1])
        taint_field_src = storage_handler.add_taint_location(scd.class_name[1:-1], m.get_name(), regs[1])
        #taint_field_dest = scd.create_taint_field(m.get_name(), regs[0])
        taint_field_dest = storage_handler.add_taint_location(scd.class_name[1:-1], m.get_name(), regs[0])
        
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
        
        #taint_field_src = scd.create_taint_field(m.get_name(), regs[1])
        taint_field_src= storage_handler.add_taint_location(scd.class_name[1:-1], m.get_name(), regs[1])
        #taint_field_dst = scd.create_taint_field(m.get_name(), regs[0])
        taint_field_dst = storage_handler.add_taint_location(scd.class_name[1:-1], m.get_name(), regs[0])
        
        block = Instrumenter.make_comment_block("for CONVERTER: " + str(opcode))
        block = block + Instrumenter.make_simple_assign_block(scd, m, taint_field_dst, taint_field_src)
        block = block + Instrumenter.make_comment_block("for CONVERTER: " + str(opcode))
        
        m.embed_block(line_num, block)
        
        return len(block)
        
        
            
        
        
