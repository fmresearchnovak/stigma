import Instrumenter 
import re
import StigmaStringParsingLib
import SmaliAssemblyInstructions as smali
from TaintStorageHandler import TaintStorageHandler


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



def NEW_ARRAY_instrumentation(scd, m, cur_line, free_reg):
    #new-array vx,vy,type_id ; puts length vy array into vx
    return Instrumenter.SIMPLE_instrumentation(scd, m, cur_line, 0, 1, "for NEW-ARRAY", free_reg)


def ARRAY_LENGTH_instrumentation(scd, m, cur_line, free_reg):
    #array-length vx,vy ; puts length of array vy into vx
    return Instrumenter.SIMPLE_instrumentation(scd, m, cur_line, 0, 1, "for ARRAY-LENGTH", free_reg)


def AGET_instrumentation(scd, m, cur_line, free_reg):
    #aget vx,vy, vz ; gets data of array vy into register vx
    return Instrumenter.SIMPLE_instrumentation(scd, m, cur_line, 0, 1, "for AGET", free_reg)


def APUT_instrumentation(scd, m, cur_line, free_reg):
    #aput vx,vy, vz ; puts data of register vx into array vy
    return Instrumenter.SIMPLE_instrumentation(scd, m, cur_line, 1, 0, "for APUT", free_reg)


def SGET_instrumentation(scd, m, cur_line, free_reg):
    
    # the field being referenced may be in another class
    class_name = re.search(StigmaStringParsingLib.CLASS_NAME, cur_line).group(1)
        
    regs = StigmaStringParsingLib.get_v_and_p_numbers(cur_line)
    
    # get field base name and create corresponding taint field (taint_src)
    # sget-object v0, Ledu/fandm/enovak/leaks/Main;->TAG:Ljava/lang/String;
    # field_base_name = "TAG"
    # taint_field_src = "Ledu/fandm/enovak/leaks/Main;->TAG_TAINT:I;"
    field_base_name = re.search(StigmaStringParsingLib.FIELD_NAME, cur_line).group(1)
    
    taint_field_src = storage_handler.add_taint_location(class_name, "", field_base_name)
    taint_field_dest = storage_handler.add_taint_location(scd.class_name, m.get_name(), regs[0])
            
    block = Instrumenter.make_comment_block("for SGET")
    block = block + [smali.SGET(free_reg[0], taint_field_src),
        smali.BLANK_LINE(),
        smali.SPUT(free_reg[0], taint_field_dest)]
    block = block + Instrumenter.make_comment_block("for SGET")
    
    return block


def SPUT_instrumentation(scd, m, cur_line, free_reg):
    #sput vx, field_id
    #Puts vx into a static field.
        
    class_name = re.search(StigmaStringParsingLib.CLASS_NAME, cur_line).group(1)    
    regs = StigmaStringParsingLib.get_v_and_p_numbers(cur_line)
    
    # get field base name and create corresponding taint field (taint_src)
    # sput-object v0, Ledu/fandm/enovak/leaks/Main;->TAG:Ljava/lang/String;
    # field_base_name = "TAG"
    # taint_field_dest = "Ledu/fandm/enovak/leaks/Main;->TAG_TAINT:I;"
    field_base_name = re.search(StigmaStringParsingLib.FIELD_NAME, cur_line).group(1)

    taint_field_dest = storage_handler.add_taint_location(class_name, "", field_base_name)
    taint_field_src = storage_handler.add_taint_location(scd.class_name, m.get_name(), regs[0])
            
    block = Instrumenter.make_comment_block("for SPUT")
    block = block + [smali.SGET(free_reg[0], taint_field_src),
        smali.BLANK_LINE(),
        smali.SPUT(free_reg[0], taint_field_dest)]
    block = block + Instrumenter.make_comment_block("for SPUT")
    
    return block


def IPUT_instrumentation(scd, m, cur_line, free_reg):
    # iput vx, vy, field_id puts the data in vx into the field
    # specified by field_id (vy is the instance / OBJ_REF)

    class_name = re.search(StigmaStringParsingLib.CLASS_NAME, cur_line).group(1)
    
    # only apply this to local references for now (instead of iputs to 
    # fields in external classes).
    # If calling method is static, the instance MUST be external
    if(m.signature.is_static):
        return []

    regs = StigmaStringParsingLib.get_v_and_p_numbers(cur_line)

    # get field base name and create corresponding taint field (taint_src)
    # iput-object v0, v1, Ledu/fandm/enovak/leaks/Main;->TAG:Ljava/lang/String;
    # field_base_name = "TAG"
    # taint_field_dest = "Ledu/fandm/enovak/leaks/Main;->TAG_TAINT:I;"
    field_base_name = re.search(StigmaStringParsingLib.FIELD_NAME, cur_line).group(1)
    taint_field_dest= storage_handler.add_taint_location(class_name, regs[1], field_base_name)
    # didn't include taint status of "p0", maybe I should have
    taint_field_src= storage_handler.add_taint_location(scd.class_name, m.get_name(), regs[0])
    
    block = Instrumenter.make_comment_block("for IPUT")
    block = block + [smali.SGET(free_reg[0], taint_field_src),
        smali.BLANK_LINE(),
        smali.SPUT(free_reg[0], taint_field_dest)]
    block = block + Instrumenter.make_comment_block("for IPUT")
    
    return block
    

def IGET_instrumentation(scd, m, cur_line, free_reg):
    #iget vx, vy field_id
    #gets data from field in instance vy and places data in vx
    #EXAMPLE: iget v1, p2, Landroid/graphics/Rect;->left:I
    

    # the field being referenced may be in another class
    # for now, instrument only same class fields
    class_name = re.search(StigmaStringParsingLib.CLASS_NAME, cur_line).group(1)
    regs = StigmaStringParsingLib.get_v_and_p_numbers(cur_line)
    
    # get field base name and create corresponding taint field (taint_src)
    # iget v1, p2, Landroid/graphics/Rect;->left:I
    # field_base_name = "left"
    # taint_field_dest = "Ledu/fandm/enovak/leaks/Main;->left_p2_TAINT:I;"
    field_base_name = re.search(StigmaStringParsingLib.FIELD_NAME, cur_line).group(1)
    #Convention for IPUT and IGET Taint Storages
    taint_field_src = storage_handler.add_taint_location(class_name, regs[1], field_base_name)

    # maybe we should be using the second register as well?  make_merge_block
    # isn't setup to do that though.
    #taint_field_dest = scd.create_taint_field(m.get_name(), regs[0])
    taint_field_dest = storage_handler.add_taint_location(scd.class_name, m.get_name(), regs[0])
            
    block = Instrumenter.make_comment_block("for IGET")
    block = block + [smali.SGET(free_reg[0], taint_field_src),
        smali.BLANK_LINE(),
        smali.SPUT(free_reg[0], taint_field_dest)]
    block = block + Instrumenter.make_comment_block("for IGET")
    
    return block
    
    
def MOVE_RESULT_instrumentation(scd, m, cur_lines, free_reg):
    #line1: invoke-virtual { v4, v0, v1, v2, v3}, Test2.method5:(IIII)V
    #line2: move-result vx
    
    #this instrumenter takes in two lines (the current move-result line and the preceding invoke line)
    #based on the invoke instruction method call, it decides which of the following instrumenter to call
    
    if STRING_GET_LATITUDE in cur_lines[0]:
        block = LATITUDE_instrumentation(scd, m, cur_lines, free_reg)
        
    elif STRING_GET_LAST_KNOWN_LOCATION_FUNCTION in cur_lines[0]:
        block = LOCATION_instrumentation(scd, m, cur_lines, free_reg)
        
    elif STRING_GET_LONGITUDE in cur_lines[0]:
        block = LONGITUDE_instrumentation(scd, m, cur_lines, free_reg)
        
    elif STRING_PHONE_NUM_FUNCTION in cur_lines[0]:
        block = PHONE_NUM_instrumentation(scd, m, cur_lines, free_reg)
        
    elif re.search(StigmaStringParsingLib.BEGINS_WITH_FILLED_NEW_ARRAY, cur_lines[0]) is not None:
        block = FILLED_NEW_ARRAY_instrumentation(scd, m, cur_lines, free_reg)  
          
    else:
        tokens = StigmaStringParsingLib.break_into_tokens(cur_lines[0])
        method_signature = tokens[-1]
        parts = method_signature.split("->")
        callee_class_name = parts[0]
        callee_method_name = parts[1].split("(")[0]
        callee_class_obj = scd.get_other_class(callee_class_name)
        
        # At this point it is known that both this class (ClassA)
        # and the callee class (ClassB) are both inside this project.
        # We call this an "internal" method
        if(callee_class_obj is not None):
            block = INTERNAL_FUNCTION_instrumentation(scd, m, cur_lines, free_reg)
            
        # At this point it is known that the callee class (ClassB) 
        # is outside this project.
        # We call this an "external" method
        elif(callee_class_obj is None):
            block = EXTERNAL_FUNCTION_instrumentation(scd, m, cur_lines, free_reg)

    return block


def LOCATION_instrumentation(scd, m, cur_lines, free_reg):
    #invoke -> getLastKnownLocation()
    #move-result
        
    result_line = cur_lines[1]
    dest_reg = StigmaStringParsingLib.get_v_and_p_numbers(result_line)[0]
    taint_loc_dest = storage_handler.add_taint_location(scd.class_name, m.get_name(), dest_reg)
    
    
    logBlock = Instrumenter.create_logd_block(m, "\"STIGMA\"", "\"Location (getLastKnownLocation) obtained\"", free_reg[0], free_reg[1])
    
    # https://www.h-schmidt.net/FloatConverter/IEEE754.html
    # 2.0 = 0x40000000
    # CONST takes a 32 bit literal
    block = Instrumenter.make_comment_block("for getLastKnownLocation()")
    block.append(smali.CONST(free_reg[0], "0x40000000"))
    block.append(smali.BLANK_LINE())
    block.append(smali.SPUT(free_reg[0], taint_loc_dest))
    block = block + Instrumenter.make_comment_block("for getLastKnownLocation()")
    
    block = block + logBlock
    block.extend(cur_lines)
        
    return block
    

def LONGITUDE_instrumentation(scd, m, cur_lines, free_reg):
    #invoke -> Landroid/location/Location;->getLongitude()D
    #move-result
    
    result_line = cur_lines[1]        
    dest_reg = StigmaStringParsingLib.get_v_and_p_numbers(result_line)[0]
    taint_loc_dest = storage_handler.add_taint_location(scd.class_name, m.get_name(), dest_reg)
    
        
    logBlock = Instrumenter.create_logd_block(m, "\"STIGMA\"", "\"Location (longitude) obtained\"", free_reg[0], free_reg[1])
    
    # https://www.h-schmidt.net/FloatConverter/IEEE754.html
    # 1.0 = 0x3f800000 
    # CONST takes a 32 bit literal
    block = Instrumenter.make_comment_block("for getLongitude()")
    block.append(smali.CONST(free_reg[0], "0x3f800000"))
    block.append(smali.BLANK_LINE())
    block.append(smali.SPUT(free_reg[0], taint_loc_dest))
    block = block + Instrumenter.make_comment_block("for getLongitude()")
    
    block = block + logBlock
    block.extend(cur_lines)
        
    return block
    

def LATITUDE_instrumentation(scd, m, cur_lines, free_reg):
    #invoke -> Landroid/location/Location;->getLatitude()D
    #move-result
    
    result_line = cur_lines[1]        
    dest_reg = StigmaStringParsingLib.get_v_and_p_numbers(result_line)[0]
    taint_loc_dest = storage_handler.add_taint_location(scd.class_name, m.get_name(), dest_reg)
    

    logBlock = Instrumenter.create_logd_block(m, "\"STIGMA\"", "\"Location (latitude) obtained\"", free_reg[0], free_reg[1])
    
    # https://www.h-schmidt.net/FloatConverter/IEEE754.html
    # 1.0 = 0x3f800000 
    # CONST takes a 32 bits literal
    block = Instrumenter.make_comment_block("for getLatitude()")
    block.append(smali.CONST(free_reg[0], "0x3f800000"))
    block.append(smali.BLANK_LINE())
    block.append(smali.SPUT(free_reg[0], taint_loc_dest))
    block = block + Instrumenter.make_comment_block("for getLatitude()")
    
    block = block + logBlock
    block.extend(cur_lines)
        
    return block
    
    
def PHONE_NUM_instrumentation(scd, m, cur_lines, free_reg):
    #invoke -> Landroid/telephony/TelephonyManager;->getLine1Number()Ljava/lang/String;
    #move-result
    
    result_line = cur_lines[0]        
    dest_reg = StigmaStringParsingLib.get_v_and_p_numbers(result_line)[0]
    taint_loc_dest = storage_handler.add_taint_location(scd.class_name, m.get_name(), dest_reg)
    
        
    logBlock = Instrumenter.create_logd_block(m, "\"STIGMA\"", "\"Phone number obtained\"",  free_reg[0], free_reg[1])
    
    
    # https://www.h-schmidt.net/FloatConverter/IEEE754.html
    # 1.0 = 0x3f800000 
    # CONST takes a 32 bit literal
    block = Instrumenter.make_comment_block("for getLine1Number()")
    block.append(smali.CONST(free_reg[0], "0x3f800000"))
    block.append(smali.BLANK_LINE())
    block.append(smali.SPUT(free_reg[0], taint_loc_dest))
    block = logBlock + block + Instrumenter.make_comment_block("for getLine1Number()")

    block = block + logBlock
    block.extend(cur_lines)

    return block


def IMEI_instrumentation(scd, m, cur_lines, free_reg):  
    #invoke -> Landroid/telephony/TelephonyManager;->getDeviceId()Ljava/lang/String;
    #move-result
    
    result_line = Instrumenter.get_next_move_result(m, line_num)
    dest_reg = StigmaStringParsingLib.get_v_and_p_numbers(result_line)[0]
    taint_loc_dest = storage_handler.add_taint_location(scd.class_name, m.get_name(), dest_reg)


    logBlock = Instrumenter.create_logd_block(m, "\"STIGMA\"", "\"IMEI obtained\"",  free_reg[0], free_reg[1])

    # https://www.h-schmidt.net/FloatConverter/IEEE754.html
    # 0.1 = 0x3dcccccd
    # CONST does NOT sign extends, it takes a 32 bit constant
    block = [smali.BLANK_LINE(),
                smali.COMMENT("IFT INSTRUCTIONS ADDED BY STIGMA for getDeviceID()"),
                smali.BLANK_LINE(),
                smali.CONST(free_reg[0], "0x3dcccccd"), 
                smali.BLANK_LINE(),
                smali.SPUT(free_reg[0], taint_loc_dest),
                smali.BLANK_LINE(),
                smali.COMMENT("IFT INSTRUCTIONS ADDED BY STIGMA for getDeviceID()")]

    block = logBlock + block
    block.extend(cur_lines)

    return block


def FILLED_NEW_ARRAY_instrumentation(scd, m, cur_lines, free_reg):
    #filled-new-array {parameters},type_id ; new array reference goten by move line

    regs = StigmaStringParsingLib.get_v_and_p_numbers(cur_lines[0])
    result_line = cur_lines[1]    
    result_reg = StigmaStringParsingLib.get_v_and_p_numbers(result_line)[0]

    #taint_loc_result = scd.create_taint_field(m.get_name(), result_reg)
    taint_loc_result = storage_handler.add_taint_location(scd.class_name, m.get_name(), result_reg)
    block = Instrumenter.make_comment_block("for FILLED-NEW-ARRAY")
    block = block + Instrumenter.make_merge_block(scd, m, regs, taint_loc_result, free_reg)
    block = block + Instrumenter.make_comment_block("for FILLED-NEW-ARRAY")

    return block


def INTERNAL_FUNCTION_instrumentation(scd, m, cur_lines, free_reg):
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
    # respectively.  Note: there are multiple "p0", the one in bar()
    # the one in foo().  They are coincidentally the same value
    # in this example.
    # Note, static functions are not an issue since all parameters
    # are always passed and p0 is always used.  Sometimes p0 is "this"
    # but for static methods it is simply something else.
        
    # I'm not sure if this works for a child class calling a function
    # defined in it's own parent.  Maybe that should be
    # considered not "internal"
    

    invoke_line = cur_lines[0]

    tokens = StigmaStringParsingLib.break_into_tokens(invoke_line)
    method_sig = tokens[-1]
    
    parts = method_sig.split("->")
    callee_class_name = parts[0]
    callee_method_name = parts[1].split("(")[0]
    callee_class_obj = scd.get_other_class(callee_class_name)


    param_regs = StigmaStringParsingLib.get_v_and_p_numbers(invoke_line)


    block = Instrumenter.make_comment_block("for INTERNAL METHOD")
    idx = 0
    for reg in param_regs:
        taint_field_dest = storage_handler.add_taint_location(callee_class_obj.class_name, callee_method_name, "p" + str(idx))
        taint_field_src = storage_handler.add_taint_location(scd.class_name, m.get_name(), reg)
        
        block = block + [smali.SGET(free_reg[0], taint_field_src),
        smali.BLANK_LINE(),
        smali.SPUT(free_reg[0], taint_field_dest)]
            
        block.append(smali.BLANK_LINE())
        idx = idx + 1
        
    block = block + Instrumenter.make_comment_block("for INTERNAL METHOD")
    block.extend(cur_lines)
        
    
    # this point (for some reason) this stuff is causing the java verifier
    # to reject classes and I don't know why
    
    ## Part 2, instrumentation for move-result line (if one is present)
    
    # note: I will be inserting these lines AFTER, the move-result 
    # this is highly unusual but I think necessary for two reasons
    # 1) We have to grab the data AFTER the function has completed
    # since the "return" instrumentation needs to have run
    # 2) We cannot add code between a invoke line and the corresponding
    # move-result line


    result_line = cur_lines[1]
        
    reg = StigmaStringParsingLib.get_v_and_p_numbers(result_line)[0]
    
    # taint tag is in callee, so caller must pull out of it
    # this is necessary because the tag must be in a package
    # that the caller class can access.  This is not easy to know
    # when looking only at smali code
    taint_field_src = storage_handler.add_taint_location(callee_class_obj.class_name, "return", "field")
    taint_field_dest = storage_handler.add_taint_location(scd.class_name, m.get_name(), reg)
    
    block = block + Instrumenter.make_comment_block("for MOVE-RESULT")
    block = block + [smali.SGET(free_reg[0], taint_field_src),
    smali.BLANK_LINE(),
    smali.SPUT(free_reg[0], taint_field_dest)]
    block = block + Instrumenter.make_comment_block("for MOVE-RESULT")
    
    
    return block


def EXTERNAL_FUNCTION_instrumentation(scd, m, cur_lines, free_reg):

    # Note: This is a pitfall
    # Landroid/telephony/TelephonyManager;->getDeviceId() method (IMEI)
    # This function is both external (covered by this instrumentation)
    # and also a "source" of sensitive information (covered by IMEI_instrumentation())
    # So, the system would apply both instrumentation insertions which ended up as
    # incoherent / incorrect assembly.

    # Should the following few lines be a static
    # function in the SmaliClassDef somewhere?
    invoke_line = cur_lines[0]
    param_regs = StigmaStringParsingLib.get_v_and_p_numbers(invoke_line)
    
    #result_line = m.raw_text[line_num + 2]
    result_line = cur_lines[1]
        
    # if result_line is None then the 
    # only data flow possible is "side-effects"
    # and calls to other external function
    # Maybe we should consider tainting the "this" reference
    # if it is present?

    result_regs = StigmaStringParsingLib.get_v_and_p_numbers(result_line)
    taint_loc_dest = storage_handler.add_taint_location(scd.class_name, m.get_name(), result_regs[0])
    
    block = Instrumenter.make_comment_block("for EXTERNAL METHOD")
    block = block + Instrumenter.make_merge_block(scd, m, param_regs, taint_loc_dest, free_reg)
    block = block + Instrumenter.make_comment_block("for EXTERNAL METHOD")
    
    block.extend(cur_lines)
    
    return block


def RETURN_instrumentation(scd, m, cur_line, free_reg):
    # return-object v2
                    
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
    
    block = Instrumenter.make_comment_block("for RETURN")
    
    taint_field_dest = storage_handler.add_taint_location(scd.class_name, "return", "field")
    regs = StigmaStringParsingLib.get_v_and_p_numbers(cur_line)

    # this probably happened because the line is "return-void"
    if(regs == []):
        block.append(smali.CONST(free_reg[0], "0x0"))
        block.append(smali.BLANK_LINE())
        block.append(smali.SPUT(free_reg[0], taint_field_dest))
        
    else:
        taint_field_src = storage_handler.add_taint_location(scd.class_name, m.get_name(), regs[0])
        block = block + [smali.SGET(free_reg[0], taint_field_src),
        smali.BLANK_LINE(),
        smali.SPUT(free_reg[0], taint_field_dest)]
        
    block = block + Instrumenter.make_comment_block("for RETURN")
        
    return block
        

def BINARYOP_instrumenter(scd, m, cur_line, free_reg):
    # Currently covers "ADD" "SUB" "MUL" and "DIV"
    # could probably be expanded to cover other / all
    # binary operations, add-int vx,vy,vz	

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
        return []

    # should this be REGEX_V_AND_P_NUMBERS?
    regs = StigmaStringParsingLib.get_v_and_p_numbers(cur_line)

    # I am concerned about instructions of the form
    # add-int/2addr (as opposed to regular add-int)
    # The documentation does not seem to indicate that any
    # of the register arguments to add-int/2addr are treated
    # as pointers (the values in the registers are memory addresses)
    # The "2addr" seems to indicate otherwise to me.

    block = [smali.BLANK_LINE(), smali.COMMENT("IFT INSTRUCTIONS ADDED BY STIGMA for %s instruction" % instruction)]
    taint_loc_result = storage_handler.add_taint_location(scd.class_name, m.get_name(), regs[0])
    
    # this should probably not merge in the destination register (only the parameter registers)
    blockquette = Instrumenter.make_merge_block(scd, m, regs[1:], taint_loc_result, free_reg)
    block = block + blockquette
    block.append(smali.BLANK_LINE())
    block.append(smali.COMMENT("IFT INSTRUCTIONS ADDED BY STIGMA for %s instruction" % instruction))
    block.append(smali.BLANK_LINE())

    return block
        

def MOVE_instrumentation(scd, m, cur_line, free_reg):
    # move vx vy
    # this instrumenter doesn't handle move-result or move-exception
        
    regs = StigmaStringParsingLib.get_v_and_p_numbers(cur_line)
    
    taint_field_dest = storage_handler.add_taint_location(scd.class_name, m.get_name(), regs[0])
    taint_field_src = storage_handler.add_taint_location(scd.class_name, m.get_name(), regs[1])
    
    block = Instrumenter.make_comment_block("for MOVE")
    block = block + [smali.SGET(free_reg[0], taint_field_src),
    smali.BLANK_LINE(),
    smali.SPUT(free_reg[0], taint_field_dest)]
    block = block + Instrumenter.make_comment_block("for MOVE")
    
    return block
    

def CONST_instrumentation(scd, m, cur_line, free_reg):
    # const v0, 0x2

    regs = StigmaStringParsingLib.get_v_and_p_numbers(cur_line)    
    taint_field_loc = storage_handler.add_taint_location(scd.class_name, m.get_name(), regs[0])

    
    block = Instrumenter.make_comment_block("for CONST")
    block.append(smali.CONST(free_reg[0], "0x0"))
    block.append(smali.BLANK_LINE())
    block.append(smali.SPUT(free_reg[0], taint_field_loc))
    block = block + Instrumenter.make_comment_block("for CONST")
        
    
    return block
    

def NEG_instrumentation(scd, m, cur_line, free_reg):
    #neg-int v1,v0
    
    regs = StigmaStringParsingLib.get_v_and_p_numbers(cur_line)
    
    taint_field_src = storage_handler.add_taint_location(scd.class_name, m.get_name(), regs[1])
    taint_field_dest = storage_handler.add_taint_location(scd.class_name, m.get_name(), regs[0])
    
    block = Instrumenter.make_comment_block("for NEG")
    block = block + [smali.SGET(free_reg[0], taint_field_src),
    smali.BLANK_LINE(),
    smali.SPUT(free_reg[0], taint_field_dest)]    
    block = block + Instrumenter.make_comment_block("for NEG")
    
    return block
    

def CONVERTER_instrumentation(scd, m, cur_line, free_reg):
    #int-to-long vx, vy
    
    opcode = StigmaStringParsingLib.break_into_tokens(cur_line)[0]
        
    regs = StigmaStringParsingLib.get_v_and_p_numbers(cur_line)
    if(regs[0] == regs[1]):
        # int-to-float v1, v1
        # this is very common and requires no instrumentation
        return []
    
    taint_field_src= storage_handler.add_taint_location(scd.class_name, m.get_name(), regs[1])
    taint_field_dest = storage_handler.add_taint_location(scd.class_name, m.get_name(), regs[0])
    
    block = Instrumenter.make_comment_block("for CONVERTER: " + str(opcode))
    block = block + [smali.SGET(free_reg[0], taint_field_src),
    smali.BLANK_LINE(),
    smali.SPUT(free_reg[0], taint_field_dest)]    
    block = block + Instrumenter.make_comment_block("for CONVERTER: " + str(opcode))
        
    return block


def WRITE_instrumentation(scd, m, cur_line, free_reg):  # "write()" sinks

    results = StigmaStringParsingLib.get_v_and_p_numbers(cur_line)
    target_reg = results[1]

    taint_loc = storage_handler.add_taint_location(scd.class_name, m.get_name(), target_reg)

    # TODO: re-write the below using only 3 registers (or fewer
    # if possible

    logd_tag_reg = free_reg[0] # 1
    logd_msg_reg = free_reg[1] # 2
    taint_tag_reg = free_reg[2] # 3
    zero_reg = free_reg[3] # 4

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

    block.extend(cur_line)
    return block
    
    
def IF_instrumentation(scd, m, cur_line, free_reg): # if statement implicit flow "sinks"
        
    registers = StigmaStringParsingLib.get_v_and_p_numbers(cur_line)
    #m.write_to_file("/home/ed/tmp/" + m.get_name() + "_before.smali")
    # if there are three registers, the second two are operands
    # if there are two registers, they are both operands
    # if there is one register it is an operand  (it's an "compare to zero")
    # this negative slicing works even if the list is only one item!
    operand_registers = registers[-2:]
    
    lines_added = 0
    for reg in operand_registers:
        # TODO: re-write the below using only 3 registers (or fewer
        # if possible
        # TODO: consolidate the below with the similar code
        # found in WRITE_instrumentation method
        
        taint_tag_field = storage_handler.add_taint_location(scd.class_name, m.get_name(), reg)

        logd_tag_reg = free_reg[0] # 1
        logd_msg_reg = free_reg[1] # 2
        taint_tag_reg = free_reg[2] # 3
        zero_reg = free_reg[3] # 4

        # This is a smali.LABEL
        jmp_label = m.make_new_jump_label()
        
        block = Instrumenter.make_comment_block("IFT INSTRUCTIONS ADDED BY STIGMA for if (implicit flow)")

        block = block + [smali.SGET(taint_tag_reg, taint_tag_field),
                    smali.BLANK_LINE(),
                    smali.CONST_16(zero_reg, "0x0"),
                    smali.BLANK_LINE(),
                    smali.CMPL_FLOAT(zero_reg, taint_tag_reg, zero_reg),
                    smali.BLANK_LINE(),
                    smali.IF_EQZ(zero_reg, jmp_label),
                    smali.BLANK_LINE(),
                    smali.CONST_STRING(logd_tag_reg, "\"STIGMA\""),
                    smali.BLANK_LINE(),
                    smali.CONST_STRING(logd_msg_reg, "\"Implicit flow involving sensitive data!\""),
                    smali.BLANK_LINE(),
                    smali.LOG_D(logd_tag_reg, logd_msg_reg),
                    smali.BLANK_LINE(),
                    smali.INVOKE_STATIC([taint_tag_reg], "Ljava/lang/String;->valueOf(F)Ljava/lang/String;"),
                    smali.BLANK_LINE(),
                    smali.MOVE_RESULT_OBJECT(logd_msg_reg),
                    smali.BLANK_LINE(),
                    smali.LOG_D(logd_tag_reg, logd_msg_reg),
                    smali.BLANK_LINE(),
                    jmp_label]
                    
        block = block + Instrumenter.make_comment_block("IFT INSTRUCTIONS ADDED BY STIGMA for if (implicit flow) @ end")


    return block
        

def INVOKE_instrumentation(scd, m, cur_lines, free_reg):
    if(not isinstance(cur_lines, list)):
        # no move result in this case
        # determine that this is a write() call and is therefore
        # necessary for WRITE instrumentation
        if STRING_STREAM_WRITE_FUNCTION in cur_lines or BYTE_STREAM_WRITE_FUNCTION in cur_lines or BYTE_STREAM_WRITE_FUNCTION_OVER in cur_lines or INT_STREAM_WRITE_FUNCTION in cur_lines or OBJECT_STREAM_WRITE_FUNCTION in cur_lines:
            return WRITE_instrumentation(scd, m, cur_lines, free_reg)
    else:
        return MOVE_RESULT_instrumentation(scd, m, cur_lines, free_reg)
        
    return []
    
    
def main():
    
    #sget
    Instrumenter.sign_up("sget", SGET_instrumentation)
    Instrumenter.sign_up("sget-wide", SGET_instrumentation)
    Instrumenter.sign_up("sget-object", SGET_instrumentation)
    Instrumenter.sign_up("sget-boolean", SGET_instrumentation)
    Instrumenter.sign_up("sget-byte", SGET_instrumentation)
    Instrumenter.sign_up("sget-char", SGET_instrumentation)
    Instrumenter.sign_up("sget-short", SGET_instrumentation)

    #sput
    Instrumenter.sign_up("sput", SPUT_instrumentation)
    Instrumenter.sign_up("sput-wide", SPUT_instrumentation)
    Instrumenter.sign_up("sput-object", SPUT_instrumentation)
    Instrumenter.sign_up("sput-boolean", SPUT_instrumentation)
    Instrumenter.sign_up("sput-byte", SPUT_instrumentation)
    Instrumenter.sign_up("sput-char", SPUT_instrumentation)
    Instrumenter.sign_up("sput-short", SPUT_instrumentation)
    
    #iget
    Instrumenter.sign_up("iget", IGET_instrumentation)
    Instrumenter.sign_up("iget-quick", IGET_instrumentation)
    Instrumenter.sign_up("iget-wide-quick", IGET_instrumentation)
    Instrumenter.sign_up("iget-object-quick", IGET_instrumentation)
    Instrumenter.sign_up("iget-wide", IGET_instrumentation)
    Instrumenter.sign_up("iget-object", IGET_instrumentation)
    Instrumenter.sign_up("iget-boolean", IGET_instrumentation)
    Instrumenter.sign_up("iget-byte", IGET_instrumentation)
    Instrumenter.sign_up("iget-char", IGET_instrumentation)
    Instrumenter.sign_up("iget-short", IGET_instrumentation)

    #iput
    Instrumenter.sign_up("iput", IPUT_instrumentation)
    Instrumenter.sign_up("iput-quick", IPUT_instrumentation)
    Instrumenter.sign_up("iput-wide-quick", IPUT_instrumentation)
    Instrumenter.sign_up("iput-object-quick", IPUT_instrumentation)
    Instrumenter.sign_up("iput-wide", IPUT_instrumentation)
    Instrumenter.sign_up("iput-object", IPUT_instrumentation)
    Instrumenter.sign_up("iput-boolean", IPUT_instrumentation)
    Instrumenter.sign_up("iput-byte", IPUT_instrumentation)
    Instrumenter.sign_up("iput-char", IPUT_instrumentation)
    Instrumenter.sign_up("iput-short", IPUT_instrumentation)

    #aget
    Instrumenter.sign_up("aget", AGET_instrumentation)
    Instrumenter.sign_up("aget-wide", AGET_instrumentation)
    Instrumenter.sign_up("aget-object", AGET_instrumentation)
    Instrumenter.sign_up("aget-boolean", AGET_instrumentation)
    Instrumenter.sign_up("aget-byte", AGET_instrumentation)
    Instrumenter.sign_up("aget-char", AGET_instrumentation)
    Instrumenter.sign_up("aget-short", AGET_instrumentation)

    #aput
    Instrumenter.sign_up("aput", APUT_instrumentation)
    Instrumenter.sign_up("aput-wide", APUT_instrumentation)
    Instrumenter.sign_up("aput-object", APUT_instrumentation)
    Instrumenter.sign_up("aput-boolean", APUT_instrumentation)
    Instrumenter.sign_up("aput-byte", APUT_instrumentation)
    Instrumenter.sign_up("aput-char", APUT_instrumentation)
    Instrumenter.sign_up("aput-short", APUT_instrumentation)

    #other array related
    Instrumenter.sign_up("new-array", NEW_ARRAY_instrumentation)
    Instrumenter.sign_up("array-length", ARRAY_LENGTH_instrumentation)
    Instrumenter.sign_up("filled-new-array", FILLED_NEW_ARRAY_instrumentation)
    Instrumenter.sign_up("filled-new-array-range", FILLED_NEW_ARRAY_instrumentation)

    #return 
    Instrumenter.sign_up("return", RETURN_instrumentation)
    Instrumenter.sign_up("return-wide", RETURN_instrumentation)
    Instrumenter.sign_up("return-object", RETURN_instrumentation)

    #move 
    Instrumenter.sign_up("move", MOVE_instrumentation)
    Instrumenter.sign_up("move-wide", MOVE_instrumentation)
    Instrumenter.sign_up("move-object", MOVE_instrumentation)
    
    #const 
    Instrumenter.sign_up("const", CONST_instrumentation)
    Instrumenter.sign_up("const-wide", CONST_instrumentation)
    Instrumenter.sign_up("const-string", CONST_instrumentation)

    #binaryop int
    Instrumenter.sign_up("add-int", BINARYOP_instrumenter)
    Instrumenter.sign_up("sub-int", BINARYOP_instrumenter)
    Instrumenter.sign_up("mul-int", BINARYOP_instrumenter)
    Instrumenter.sign_up("div-int", BINARYOP_instrumenter)
    
    #binaryop long
    Instrumenter.sign_up("add-long", BINARYOP_instrumenter)
    Instrumenter.sign_up("sub-long", BINARYOP_instrumenter)
    Instrumenter.sign_up("mul-long", BINARYOP_instrumenter)
    Instrumenter.sign_up("div-long", BINARYOP_instrumenter)
    
    #binaryop float
    Instrumenter.sign_up("add-float", BINARYOP_instrumenter)
    Instrumenter.sign_up("sub-float", BINARYOP_instrumenter)
    Instrumenter.sign_up("mul-float", BINARYOP_instrumenter)
    Instrumenter.sign_up("div-float", BINARYOP_instrumenter)

    #binaryop double
    Instrumenter.sign_up("add-double", BINARYOP_instrumenter)
    Instrumenter.sign_up("sub-double", BINARYOP_instrumenter)
    Instrumenter.sign_up("mul-double", BINARYOP_instrumenter)
    Instrumenter.sign_up("div-double", BINARYOP_instrumenter)
    
    #invoke-
    Instrumenter.sign_up("invoke-virtual", INVOKE_instrumentation, True)
    Instrumenter.sign_up("invoke-super", INVOKE_instrumentation, True)
    Instrumenter.sign_up("invoke-direct", INVOKE_instrumentation, True)
    Instrumenter.sign_up("invoke-static", INVOKE_instrumentation, True)
    Instrumenter.sign_up("invoke-interface", INVOKE_instrumentation, True)
    Instrumenter.sign_up("invoke-virtual/range", INVOKE_instrumentation, True)
    Instrumenter.sign_up("invoke-super/range", INVOKE_instrumentation, True)
    Instrumenter.sign_up("invoke-direct/range", INVOKE_instrumentation, True)
    Instrumenter.sign_up("invoke-static/range", INVOKE_instrumentation, True)
    Instrumenter.sign_up("invoke-interface/range", INVOKE_instrumentation, True)
    
    #convert list
    CONVERTER_INSTRUCTION_LIST = ["int-to-long",  "int-to-float", 
    "int-to-double",  "long-to-int",  "long-to-float", "long-to-double",
    "float-to-int",  "float-to-long", "float-to-double",  "double-to-int",
    "double-to-long",  "double-to-float",  "int-to-byte",  "int-to-char",
    "int-to-short"]
    for opcode in CONVERTER_INSTRUCTION_LIST:
        Instrumenter.sign_up(opcode, CONVERTER_instrumentation)
        
    
    #if and cmp
    Instrumenter.sign_up("if-eq", IF_instrumentation)
    Instrumenter.sign_up("if-ne", IF_instrumentation)
    Instrumenter.sign_up("if-lt", IF_instrumentation)
    Instrumenter.sign_up("if-ge", IF_instrumentation)
    Instrumenter.sign_up("if-gt", IF_instrumentation)
    Instrumenter.sign_up("if-le", IF_instrumentation)
    Instrumenter.sign_up("if-eqz", IF_instrumentation)
    Instrumenter.sign_up("if-nez", IF_instrumentation)
    Instrumenter.sign_up("if-ltz", IF_instrumentation)
    Instrumenter.sign_up("if-gez", IF_instrumentation)
    Instrumenter.sign_up("if-gtz", IF_instrumentation)
    Instrumenter.sign_up("if-lez", IF_instrumentation)
    Instrumenter.sign_up("cmpl-float", IF_instrumentation)
    Instrumenter.sign_up("cmpl-double", IF_instrumentation)
    Instrumenter.sign_up("cmpg-double", IF_instrumentation)
    Instrumenter.sign_up("cmpg-float", IF_instrumentation)
    Instrumenter.sign_up("cmp-long", IF_instrumentation)


    
    # Instrumenter.sign_up("rem-int", BINARYOP_instrumenter)
    # Instrumenter.sign_up("and-int", BINARYOP_instrumenter)
    # Instrumenter.sign_up("or-int", BINARYOP_instrumenter)
    # Instrumenter.sign_up("xor-int", BINARYOP_instrumenter)
    # Instrumenter.sign_up("shl-int", BINARYOP_instrumenter)
    # Instrumenter.sign_up("shr-int", BINARYOP_instrumenter)
    # Instrumenter.sign_up("ushr-int", BINARYOP_instrumenter)
    # Instrumenter.sign_up("rem-double", BINARYOP_instrumenter)
    # Instrumenter.sign_up("rem-float", BINARYOP_instrumenter)
    # Instrumenter.sign_up("rem-long", BINARYOP_instrumenter)
    # Instrumenter.sign_up("and-long", BINARYOP_instrumenter)
    # Instrumenter.sign_up("or-long", BINARYOP_instrumenter)
    # Instrumenter.sign_up("xor-long", BINARYOP_instrumenter)
    # Instrumenter.sign_up("shl-long", BINARYOP_instrumenter)
    # Instrumenter.sign_up("shr-long", BINARYOP_instrumenter)
    # Instrumenter.sign_up("ushr-long", BINARYOP_instrumenter)


if __name__ == '__main__':
    main()
            