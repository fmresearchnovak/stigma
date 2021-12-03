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



def NEW_ARRAY_instrumentation(scd, m, code_unit, free_reg):
    #new-array vx,vy,type_id ; puts length vy array into vx
    return _simple_instrumentation(scd, m, code_unit, 0, 1, "for NEW-ARRAY", free_reg)


def ARRAY_LENGTH_instrumentation(scd, m, code_unit, free_reg):
    #array-length vx,vy ; puts length of array vy into vx
    return _simple_instrumentation(scd, m, code_unit, 0, 1, "for ARRAY-LENGTH", free_reg)


def AGET_instrumentation(scd, m, code_unit, free_reg):
    #aget vx,vy, vz ; gets data of array vy into register vx
    return _simple_instrumentation(scd, m, code_unit, 0, 1, "for AGET", free_reg)


def APUT_instrumentation(scd, m, code_unit, free_reg):
    #aput vx,vy, vz ; puts data of register vx into array vy
    return _simple_instrumentation(scd, m, code_unit, 1, 0, "for APUT", free_reg)
    
    
def _simple_instrumentation(scd, m, code_unit, dest_num, source_num, comment_string, free_reg):
    
    cur_line = code_unit[0]
    
    regs = StigmaStringParsingLib.get_v_and_p_numbers(cur_line)
    taint_field_src = storage_handler.add_taint_location(scd.class_name, m.get_name(), regs[source_num])
    taint_field_dest = storage_handler.add_taint_location(scd.class_name, m.get_name(), regs[dest_num])


    block = Instrumenter.make_comment_block(comment_string)
    block = block + [smali.SGET(free_reg[0], taint_field_src),
    smali.BLANK_LINE(),
    smali.SPUT(free_reg[0], taint_field_dest)]
    block = block + Instrumenter.make_comment_block(comment_string)

    return block



def SGET_instrumentation(scd, m, code_unit, free_reg):
    cur_line = code_unit[0]
    
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


def SPUT_instrumentation(scd, m, code_unit, free_reg):
    #sput vx, field_id
    #Puts vx into a static field.
    cur_line = code_unit[0]
        
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


def IPUT_instrumentation(scd, m, code_unit, free_reg):
    # iput vx, vy, field_id puts the data in vx into the field
    # specified by field_id (vy is the instance / OBJ_REF)
    cur_line = code_unit[0]

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
    

def IGET_instrumentation(scd, m, code_unit, free_reg):
    #iget vx, vy field_id
    #gets data from field in instance vy and places data in vx
    #EXAMPLE: iget v1, p2, Landroid/graphics/Rect;->left:I
    cur_line = code_unit[0]

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
    
    
def _move_result_instrumentation(scd, m, code_unit, free_reg):
    #line1: invoke-virtual { v4, v0, v1, v2, v3}, Test2.method5:(IIII)V
    #line2: move-result vx
    
    #this instrumenter takes in two lines (the current move-result line and the preceding invoke line)
    #based on the invoke instruction method call, it decides which of the following instrumenter to call
    
    if STRING_GET_LATITUDE in code_unit[0]: # short cut
        block = LATITUDE_instrumentation(scd, m, code_unit, free_reg)
        
    elif STRING_GET_LAST_KNOWN_LOCATION_FUNCTION in code_unit[0]: # short cut
        block = LOCATION_instrumentation(scd, m, code_unit, free_reg)
        
    elif STRING_GET_LONGITUDE in code_unit[0]: # short cut
        block = LONGITUDE_instrumentation(scd, m, code_unit, free_reg)
        
    elif STRING_PHONE_NUM_FUNCTION in code_unit[0]: # short cut
        block = PHONE_NUM_instrumentation(scd, m, code_unit, free_reg)
        
    elif re.search(StigmaStringParsingLib.BEGINS_WITH_FILLED_NEW_ARRAY, code_unit[0]) is not None: # short cut
        block = FILLED_NEW_ARRAY_instrumentation(scd, m, code_unit, free_reg)  
          
    else:
        
        callee_method_name, callee_class_obj = _get_callee_parts(code_unit[0], scd)
        
        # At this point it is known that both this class (ClassA)
        # and the callee class (ClassB) are both inside this project.
        # We call this an "internal" method
        if(callee_class_obj is not None):
            block = INTERNAL_FUNCTION_instrumentation(scd, m, code_unit, free_reg)
            
        # At this point it is known that the callee class (ClassB) 
        # is outside this project.
        # We call this an "external" method
        elif(callee_class_obj is None):
            block = EXTERNAL_FUNCTION_instrumentation(scd, m, code_unit, free_reg)
            
    #print(block)
    # the spacing might be wrong in the final result
    # see EXTERNAL_FUNCTION
    # .rstrip() is necessary to remove \n characters
    return block



def LOCATION_instrumentation(scd, m, code_unit, free_reg):
    #invoke -> getLastKnownLocation()
    #move-result
        
    result_line = code_unit[-1]
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
    block.extend(code_unit)
    # the spacing might be wrong in the final result
    # see EXTERNAL_FUNCTION
    # .rstrip() is necessary to remove \n characters
        
    return block
    

def LONGITUDE_instrumentation(scd, m, code_unit, free_reg):
    #invoke -> Landroid/location/Location;->getLongitude()D
    #move-result
    
    result_line = code_unit[-1]        
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
    block.extend(code_unit)
    # the spacing might be wrong in the final result
    # see EXTERNAL_FUNCTION
    # .rstrip() is necessary to remove \n characters
        
    return block
    

def LATITUDE_instrumentation(scd, m, code_unit, free_reg):
    #invoke -> Landroid/location/Location;->getLatitude()D
    #move-result
    
    result_line = code_unit[-1]        
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
    block.extend(code_unit)
    # the spacing might be wrong in the final result
    # see EXTERNAL_FUNCTION
    # .rstrip() is necessary to remove \n characters
        
    return block
    
    
def PHONE_NUM_instrumentation(scd, m, code_unit, free_reg):
    #invoke -> Landroid/telephony/TelephonyManager;->getLine1Number()Ljava/lang/String;
    #move-result
    
    result_line = code_unit[-1]        
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
    block.extend(code_unit)
    # the spacing might be wrong in the final result
    # see EXTERNAL_FUNCTION
    # .rstrip() is necessary to remove \n characters

    return block


def IMEI_instrumentation(scd, m, code_unit, free_reg):  
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
    block.extend(code_unit)

    return block


def FILLED_NEW_ARRAY_instrumentation(scd, m, code_unit, free_reg):
    #filled-new-array {parameters},type_id ; new array reference goten by move line

    regs = StigmaStringParsingLib.get_v_and_p_numbers(code_unit[0])
    result_line = code_unit[-1]    
    result_reg = StigmaStringParsingLib.get_v_and_p_numbers(result_line)[0]

    #taint_loc_result = scd.create_taint_field(m.get_name(), result_reg)
    taint_loc_result = storage_handler.add_taint_location(scd.class_name, m.get_name(), result_reg)
    block = Instrumenter.make_comment_block("for FILLED-NEW-ARRAY")
    block = block + Instrumenter.make_merge_block(scd, m, regs, taint_loc_result, free_reg)
    block = block + Instrumenter.make_comment_block("for FILLED-NEW-ARRAY")
    
    # seems like the re-insertion of the original code_unit is missing?
    
    # the spacing might be wrong in the final result
    # see EXTERNAL_FUNCTION
    # .rstrip() is necessary to remove \n characters

    return block


def INTERNAL_FUNCTION_instrumentation(scd, m, code_unit, free_reg):

    # Part 1, instrumentation for the invoke-* line
    block = _one_line_invoke_instrumentation(scd, m, [code_unit[0]], free_reg)
    
    # this might be inserting extra \n characters?
    block.append(smali.BLANK_LINE())
    block.append(code_unit[-1])
    block.append(smali.BLANK_LINE())

    
    # Part 2, instrumentation for move-result line (if one is present)
    
    # note: I will be inserting these lines AFTER, the move-result 
    # this is highly unusual but I think necessary for two reasons
    # 1) We have to grab the data AFTER the function has completed
    # since the "return" instrumentation needs to have run
    # 2) We cannot add code between a invoke line and the corresponding
    # move-result line
    
    callee_method_name, callee_class_obj = _get_callee_parts(code_unit[0], scd)


    result_line = code_unit[-1]
        
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
    
    # the spacing might be wrong in the final result
    # see EXTERNAL_FUNCTION
    # .rstrip() is necessary to remove \n characters
    
    
    return block
    
    

    
def _one_line_invoke_instrumentation(scd, m, code_unit, free_reg):
    
    # Part 1, instrumentation for the invoke-* line
    
    # Imagine we are in a Class "ClassA"
    # inside this class is a method bar()
    # and in method bar() is this instruction:
    #
    # invoke-direct {p0, v2} Lcom/example/ClassB;->foo(I)C
    # 
    # we need to create the following inside ClassB:
    # we assume for this method that ClassB is internal to the project
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
    
    #print("code unit inside one line invoke: ", code_unit)
    
    invoke_line = code_unit[0]
    callee_method_name, callee_class_obj = _get_callee_parts(invoke_line, scd)

    # I should replace this with a function like
    # get implicit v and p
    # for *-range functions
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
    
    block.extend(code_unit)
    
    return block
    

def _get_callee_parts(invoke_line, scd):

    tokens = StigmaStringParsingLib.break_into_tokens(invoke_line)
    method_sig = tokens[-1]
    
    parts = method_sig.split("->")
    callee_class_name = parts[0]
    callee_method_name = parts[1].split("(")[0]
    callee_class_obj = scd.get_other_class(callee_class_name)
    
    return callee_method_name,callee_class_obj
    


def EXTERNAL_FUNCTION_instrumentation(scd, m, code_unit, free_reg):
    
    # Note: This is a pitfall
    # Landroid/telephony/TelephonyManager;->getDeviceId() method (IMEI)
    # This function is both external (covered by this instrumentation)
    # and also a "source" of sensitive information (covered by IMEI_instrumentation())
    # So, the system would apply both instrumentation insertions which ended up as
    # incoherent / incorrect assembly.
    
    #print("INTERNAL FUNCTION")
    #print("cur lines: " + str(cur_lines))
    #print("\tfree regs given inside EXTERNAL_FUNCTION_instrumentation: " + str(free_reg))

    # Should the following few lines be a static
    # function in the SmaliClassDef somewhere?
    invoke_line = code_unit[0]
    param_regs = StigmaStringParsingLib.get_v_and_p_numbers(invoke_line)
    
    # blank line inbetween 
    result_line = code_unit[-1]
        
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
    

    block.append(code_unit[0])
    block.append(smali.BLANK_LINE())
    block.append(code_unit[-1])
    return block


def RETURN_instrumentation(scd, m, code_unit, free_reg):
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
    cur_line = code_unit[0]
    
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
        

def BINARYOP_instrumenter(scd, m, code_unit, free_reg):
    # Currently covers "ADD" "SUB" "MUL" and "DIV"
    # could probably be expanded to cover other / all
    # binary operations, add-int vx,vy,vz
    
    cur_line = code_unit[0]

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
        

def MOVE_instrumentation(scd, m, code_unit, free_reg):
    # move vx vy
    # this instrumenter doesn't handle move-result or move-exception
    cur_line = code_unit[0]
        
    regs = StigmaStringParsingLib.get_v_and_p_numbers(cur_line)
    
    taint_field_dest = storage_handler.add_taint_location(scd.class_name, m.get_name(), regs[0])
    taint_field_src = storage_handler.add_taint_location(scd.class_name, m.get_name(), regs[1])
    
    block = Instrumenter.make_comment_block("for MOVE")
    block = block + [smali.SGET(free_reg[0], taint_field_src),
    smali.BLANK_LINE(),
    smali.SPUT(free_reg[0], taint_field_dest)]
    block = block + Instrumenter.make_comment_block("for MOVE")
    
    return block

def MOVE_special_instrumentation(scd, m):
    # when calling grow locals some new moves are inserted which
    # are a special edge-case.  Consider the example below 
    #   (Example show is after grow() but before instrumentation)

    '''
    .method private prependToLog(Ljava/lang/String;)V
    .locals 8
    .param p1, "newPart"    # Ljava/lang/String;

    .line 368
    
    # IFT INSTRUCTIONS ADDED BY STIGMA for moving parameters
    
    move-object/16 v4, p0
    
    move-object/16 v5, p1
    
    
    # IFT INSTRUCTIONS ADDED BY STIGMA for moving parameters
    '''
    # 0
    # Use the free_reg list given as all other instrumentation does
    # THIS SOLUTION DOES NOT WORK because the system assumes that the
    # free registers (at the top, created by grow()) are open
    # but actually they are not yet becuase all of the special-case
    # moves have not yet been done.  (if the number of parameter 
    # registers is MORE than the number passed to grow()
    #
    # 1
    # a proposed solution is that we can use the destination register
    # for the tag propagation real quick before it is used to
    # store pX (i.e., use v4 and v5 for the two instructions
    # in the example respectively)
    # THIS SOLUTION DOES NOT WORK when the destination register
    # is v16 or larger (could happen if .locals >= 16)
    # 
    # 2
    # another solution is to just always use v0
    #   if v0 is used in the method it will be written (re-written)
    #   by the method's original code at some point before it is used
    #   if v0 is not used in the method, then the method has no code?
    #   in such a situation .locals = 0 and there are no parameters 
    #   (if there were parameters, p0 would be v0)
    # THIS SOLUTION DOES NOT WORK when there are multiple parameters
    # and the first parameter is moved to p0.  Then, v0 will be used to
    # store the tag of the first parameter fine, but v0 is then _also_
    # used for tag propagation of subsequent parameters thereby 
    # causing it to have the wrong value when it is used later, 
    # by the original program.
    #
    # 3
    # another solution is to reverse the order of the parameter moves
    # AND to use v0.  If p0 is moved to v0, it will happen last 
    # THIS SOLUTION DOES NOT WORK when there are more parameters
    # than the growth factor
    # suppose
    # .locals = 1, there are 5 p registers, and we just grew(4), 
    # we would have:
    # v0, v1, v2, v3, v4, v5, v6, v7, v8, v9
    #                     p0, p1, p2, p3, p4
    # if we move p4 first it will overwrite the value in v5
    # then when we move p0 down to v1 it will have the wrong value in it
    #
    # 4
    # another solution is to use v0, and edit grow_locals so that
    # it adds an extra "move-object v0, pX" (if necessary) at the end.
    # This seems like a bad solution since it breaks the core <-> plugin 
    # interface and feels really hacky / messy.  But it does seem like 
    # it would work
    # THIS SOLUTION DOES NOT WORK when there are more than 5 params
    # v0, v1, v2, v3, v4, v5, v6, v7, v8, v9
    #                 p0  p1  p2  p3  p4  p5
    # p0 gets moved to v0
    # p1 gets moved to v1
    # ...
    # p5 gets moved to v4
    # then the extra line:
    # p0 gets moved to v0, but p0 = v4 and so it was overwritten with
    # different data in the previous move (of p5   
    #
    # 5
    # another solution is to do an extra move-object v0, pX immediately
    # after the first move instruction if the first instruction does
    # involve v0 at all.  This can be achieved if this function
    # signs up with instrumeter_inserts_original_lines = True
    # THIS SOLUTION DOES NOT WORK because the subsequent instructions
    # will continue to use / overwrite v0 for purposes of tag propagation
    #
    # 6
    # another solution is to do all the tag propagation first
    # before even the parameter moving instructions
    # we'll use v0
    # this requires a new signup
    # sign_up_method_start
    
    #print("m: ", m)
    #print("params: ", m.signature.parameter_type_map)
    #print("num params: ", m.signature.num_of_parameters)
    #print("num param registers: ", m.signature.num_of_parameter_registers)
    #print("old locals num: ", m.old_locals_num)

    #tokens = StigmaStringParsingLib.get_v_and_p_numbers(cur_line)
    #free_reg = tokens[0] # solution 1
    free_reg = "v0"
    dest_reg_num = m.old_locals_num
    
    block = Instrumenter.make_comment_block("for METHOD START")
    
    for p_reg in m.signature.parameter_type_map:
        taint_field_src = storage_handler.add_taint_location(scd.class_name, m.get_name(), p_reg)
        taint_field_dest = storage_handler.add_taint_location(scd.class_name, m.get_name(), "v" + str(dest_reg_num))
        dest_reg_num += 1
        
        block.append(smali.SGET(free_reg, taint_field_src))
        block.append(smali.BLANK_LINE())
        block.append(smali.SPUT(free_reg, taint_field_dest))
        block.append(smali.BLANK_LINE())
        
    
    block = block + Instrumenter.make_comment_block("for METHOD START")
    
    return block


    
def NEW_INSTANCE_instrumentation(scd, m, code_unit, free_reg):
    # new-instance v14, Landroid/graphics/Rect;
    cur_line = code_unit[0]

    regs = StigmaStringParsingLib.get_v_and_p_numbers(cur_line)    
    taint_field_loc = storage_handler.add_taint_location(scd.class_name, m.get_name(), regs[0])

    
    block = Instrumenter.make_comment_block("for NEW-INSTANCE")
    block.append(smali.CONST(free_reg[0], "0x0"))
    block.append(smali.BLANK_LINE())
    block.append(smali.SPUT(free_reg[0], taint_field_loc))
    block = block + Instrumenter.make_comment_block("for NEW-INSTANCE")
        
    
    return block


def CONST_instrumentation(scd, m, code_unit, free_reg):
    # const v0, 0x2
    cur_line = code_unit[0]
    
    regs = StigmaStringParsingLib.get_v_and_p_numbers(cur_line)    
    taint_field_loc = storage_handler.add_taint_location(scd.class_name, m.get_name(), regs[0])

    
    block = Instrumenter.make_comment_block("for CONST")
    block.append(smali.CONST(free_reg[0], "0x0"))
    block.append(smali.BLANK_LINE())
    block.append(smali.SPUT(free_reg[0], taint_field_loc))
    block = block + Instrumenter.make_comment_block("for CONST")
        
    
    return block
    

def NEG_instrumentation(scd, m, code_unit, free_reg):
    #neg-int v1,v0
    cur_line = code_unit[0]
    
    regs = StigmaStringParsingLib.get_v_and_p_numbers(cur_line)
    
    taint_field_src = storage_handler.add_taint_location(scd.class_name, m.get_name(), regs[1])
    taint_field_dest = storage_handler.add_taint_location(scd.class_name, m.get_name(), regs[0])
    
    block = Instrumenter.make_comment_block("for NEG")
    block = block + [smali.SGET(free_reg[0], taint_field_src),
    smali.BLANK_LINE(),
    smali.SPUT(free_reg[0], taint_field_dest)]    
    block = block + Instrumenter.make_comment_block("for NEG")
    
    return block
    

def CONVERTER_instrumentation(scd, m, code_unit, free_reg):
    #int-to-long vx, vy
    cur_line = code_unit[0]
    
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


def WRITE_instrumentation(scd, m, code_unit, free_reg):  # "write()" sinks
    
    cur_line = code_unit[0]

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
                smali.IF_EQZ(zero_reg, repr(jmp_label)),
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

    block.extend(code_unit)
    return block
    
    
def IF_instrumentation(scd, m, code_unit, free_reg): # if statement implicit flow "sinks"
    
    cur_line = code_unit[0]
        
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
        
        block = Instrumenter.make_comment_block("for if (implicit flow)")

        block = block + [smali.SGET(taint_tag_reg, taint_tag_field),
                    smali.BLANK_LINE(),
                    smali.CONST_16(zero_reg, "0x0"),
                    smali.BLANK_LINE(),
                    smali.CMPL_FLOAT(zero_reg, taint_tag_reg, zero_reg),
                    smali.BLANK_LINE(),
                    smali.IF_EQZ(zero_reg, repr(jmp_label)),
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
                    
        block = block + Instrumenter.make_comment_block("for if (implicit flow) @ end")


    return block
    

        
        

def INVOKE_instrumentation(scd, m, code_unit, free_reg):     
    
    ##############################
    #           1 line | 2 lines #
    # internal    yes  |   yes   #
    # external    NO   |   yes   #
    ##############################
    # * 1 line external functions exist
    #   but I can't do any instrumentation
    #   for them.
    #
    
    # INVOKE_instrumentation (this function)
    #  |
    #  |-WRITE_instrumentation (1 line)
    #  |-_one_line_invoke_instrumentation (1 line)
    #  +-_move_result_instrumentation (2 lines)
    #     |
    #     |- LOCATION_instrumentation
    #     |- LATITUDE_instrumentation
    #     |- LONGITUDE_instrumentation
    #     |- PHONE_NUM_instrumentation
    #     |- FILLED_NEW_ARRAY_instr...
    #     |- EXTERNAL_FUNCTION_instr...
    #     +- INTERNAL_FUNCTION_instr...
    #         |
    #         |- _one_line_invoke_instr...
    
    #print("\tINVOKE instrumentation: ", code_unit)   
    
    if(len(code_unit) > 1 and \
    re.search(StigmaStringParsingLib.BEGINS_WITH_MOVE_RESULT, str(code_unit[-1]))):
        # multiple lines
        return _move_result_instrumentation(scd, m, code_unit, free_reg)
        
    else:
        # no move result in this case
        # determine that this is a write() call and is therefore
        # necessary for WRITE instrumentation, (short cut)
        line = code_unit[0]
        if (STRING_STREAM_WRITE_FUNCTION in line or \
        BYTE_STREAM_WRITE_FUNCTION in line or \
        BYTE_STREAM_WRITE_FUNCTION_OVER in line or \
        INT_STREAM_WRITE_FUNCTION in line or \
        OBJECT_STREAM_WRITE_FUNCTION in line):
            return WRITE_instrumentation(scd, m, code_unit, free_reg)
        
        callee_method_name, callee_class_obj = _get_callee_parts(line, scd)
        if(callee_class_obj is not None): #internal
            return _one_line_invoke_instrumentation(scd, m, code_unit, free_reg)
        
    return code_unit
    
    
def main():
    
    # these are special cases because the grow_locals algorithm
    # writes some move(s) which cannot use the typical "free registers"
    # see the move_special_instrumentation for more details
    Instrumenter.sign_up_method_start(MOVE_special_instrumentation)
    
    
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
    Instrumenter.sign_up("filled-new-array/range", FILLED_NEW_ARRAY_instrumentation)

    #return 
    Instrumenter.sign_up("return", RETURN_instrumentation)
    Instrumenter.sign_up("return-wide", RETURN_instrumentation)
    Instrumenter.sign_up("return-object", RETURN_instrumentation)

    #move 
    Instrumenter.sign_up("move", MOVE_instrumentation)
    Instrumenter.sign_up("move/from16", MOVE_instrumentation)
    Instrumenter.sign_up("move/16", MOVE_instrumentation)
    Instrumenter.sign_up("move-wide", MOVE_instrumentation)
    Instrumenter.sign_up("move-wide/from16", MOVE_instrumentation)
    Instrumenter.sign_up("move-wide/16", MOVE_instrumentation)
    Instrumenter.sign_up("move-object", MOVE_instrumentation)
    Instrumenter.sign_up("move-object/from16", MOVE_instrumentation)
    Instrumenter.sign_up("move-object/16", MOVE_instrumentation)
    
    #const 
    Instrumenter.sign_up("const", CONST_instrumentation)
    Instrumenter.sign_up("const/4", CONST_instrumentation)
    Instrumenter.sign_up("const/16", CONST_instrumentation)
    Instrumenter.sign_up("const/high16", CONST_instrumentation)
    Instrumenter.sign_up("const-wide", CONST_instrumentation)
    Instrumenter.sign_up("const-wide/16", CONST_instrumentation)
    Instrumenter.sign_up("const-wide/32", CONST_instrumentation)
    Instrumenter.sign_up("const-wide/high16", CONST_instrumentation)
    Instrumenter.sign_up("const-class", CONST_instrumentation)
    Instrumenter.sign_up("const-string-jumbo", CONST_instrumentation)
    Instrumenter.sign_up("const-string", CONST_instrumentation)
    
    #new-instance
    Instrumenter.sign_up("new-instance", NEW_INSTANCE_instrumentation)

    #binaryop int
    Instrumenter.sign_up("add-int", BINARYOP_instrumenter)
    Instrumenter.sign_up("add-int/2addr", BINARYOP_instrumenter)
    Instrumenter.sign_up("add-int/lit16", BINARYOP_instrumenter)
    Instrumenter.sign_up("add-int/lit8", BINARYOP_instrumenter)

    Instrumenter.sign_up("sub-int", BINARYOP_instrumenter)
    Instrumenter.sign_up("sub-int/2addr", BINARYOP_instrumenter)
    Instrumenter.sign_up("sub-int/lit16", BINARYOP_instrumenter)
    Instrumenter.sign_up("sub-int/lit8", BINARYOP_instrumenter)
    
    Instrumenter.sign_up("mul-int", BINARYOP_instrumenter)
    Instrumenter.sign_up("mul-int/2addr", BINARYOP_instrumenter)
    Instrumenter.sign_up("mul-int/lit16", BINARYOP_instrumenter)
    Instrumenter.sign_up("mul-int/lit8", BINARYOP_instrumenter)
    
    Instrumenter.sign_up("div-int", BINARYOP_instrumenter)
    Instrumenter.sign_up("div-int/2addr", BINARYOP_instrumenter)
    Instrumenter.sign_up("div-int/lit16", BINARYOP_instrumenter)
    Instrumenter.sign_up("div-int/lit8", BINARYOP_instrumenter)
    
    #binaryop long
    Instrumenter.sign_up("add-long", BINARYOP_instrumenter)
    Instrumenter.sign_up("add-long/2addr", BINARYOP_instrumenter)
        
    Instrumenter.sign_up("sub-long", BINARYOP_instrumenter)
    Instrumenter.sign_up("sub-long/2addr", BINARYOP_instrumenter)

    Instrumenter.sign_up("mul-long", BINARYOP_instrumenter)
    Instrumenter.sign_up("mul-long/2addr", BINARYOP_instrumenter)

    Instrumenter.sign_up("div-long", BINARYOP_instrumenter)
    Instrumenter.sign_up("div-long/2addr", BINARYOP_instrumenter)

    
    #binaryop float
    Instrumenter.sign_up("add-float", BINARYOP_instrumenter)
    Instrumenter.sign_up("add-float/2addr", BINARYOP_instrumenter)

    Instrumenter.sign_up("sub-float", BINARYOP_instrumenter)
    Instrumenter.sign_up("sub-float/2addr", BINARYOP_instrumenter)

    Instrumenter.sign_up("mul-float", BINARYOP_instrumenter)
    Instrumenter.sign_up("mul-float/2addr", BINARYOP_instrumenter)

    Instrumenter.sign_up("div-float", BINARYOP_instrumenter)
    Instrumenter.sign_up("div-float/2addr", BINARYOP_instrumenter)

    #binaryop double
    Instrumenter.sign_up("add-double", BINARYOP_instrumenter)
    Instrumenter.sign_up("add-double/2addr", BINARYOP_instrumenter)

    Instrumenter.sign_up("sub-double", BINARYOP_instrumenter)
    Instrumenter.sign_up("sub-double/2addr", BINARYOP_instrumenter)
    
    Instrumenter.sign_up("mul-double", BINARYOP_instrumenter)
    Instrumenter.sign_up("mul-double/2addr", BINARYOP_instrumenter)
    
    Instrumenter.sign_up("div-double", BINARYOP_instrumenter)
    Instrumenter.sign_up("div-double/2addr", BINARYOP_instrumenter)
    
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
            
