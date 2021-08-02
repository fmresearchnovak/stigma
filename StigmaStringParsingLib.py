import re
import ValidSmaliInstructions

BEGINS_WITH_DOT = r"^\s*\."  # oat "assembler" directives begin with a .dot
BEGINS_WITH_HASHTAG = r"^\s*\#"
BEGINS_WITH_COLON = r"^\s*:"  # code labels (locations for branches) begin with a colon
BLANK_LINE = r"^\s*$"

BEGINS_WITH_DOT_METHOD = r"^\.method"  # directive to indicate start of a method
BEGINS_WITH_DOT_END_METHOD = r"^\s*\.end method"  # directive to indicate end of method

# one space and then a v and then some number of digits and then a comma
FIELD_NAME = "->(.+):"
CLASS_NAME = "(L.+)->"
PARAMETERS = "[(](.*)[)]"

VALID_REGISTER = r"^[vp][0-9]+$"


BEGINS_WITH_INVOKE = r"^\s*invoke-"
BEGINS_WITH_MOVE_RESULT = r"^\s*move-result"
BEGINS_WITH_MOVE_EXCEPTION = r"^\s*move-exception"
BEGINS_WITH_MOVE = r"^\s*move"
BEGINS_WITH_CONST = r"^\s*const"
BEGINS_WITH_NEG = r"^\s*neg-"
BEGINS_WITH_RETURN = r"^\s*return"
BEGINS_WITH_PACKED_SWITCH = r"^\s*packed-switch"
BEGINS_WITH_SPARSE_SWITCH = r"^\s*sparse-switch"
BEGINS_WITH_IF = r"^\s*if-"
BEGINS_WITH_CMP = r"^\s*cmp"
BEGINS_WITH_COND = r"^\s*:cond_"
BEGINS_WITH_COLON = r"^\s*:"
BEGINS_WITH_GOTO = r"^\s*goto"
BEGINS_WITH_GOTO_LABEL = r"^\s*:goto_"
BEGINS_WITH_THROW = r"^\s*throw"
BEGINS_WITH_CATCH_LABEL = r"^\s*:catch"
BEGINS_WITH_TRY = r"^\s*:try_"


BEGINS_WITH_PSWITCH_LABEL = r"^\s*:pswitch_"
BEGINS_WITH_SSWITCH_LABEL = r"^\s*:sswitch_"
BEGINS_WITH_PSWITCH_DATA = r"^\s*:pswitch_data_"
BEGINS_WITH_SSWITCH_DATA = r"^\s*:sswitch_data_"
BEGINS_WITH_DOT_END_PACKED_SWITCH = r"^\s*\.end packed-switch"
BEGINS_WITH_DOT_END_SPARSE_SWITCH = r"^\s*\.end sparse-switch"

BEGINS_WITH_ADD = r"^\s*add-"
BEGINS_WITH_SUB = r"^\s*sub-"
BEGINS_WITH_MUL = r"^\s*mul-"
BEGINS_WITH_DIV = r"^\s*div-"
BEGINS_WITH_REM = r"^\s*rem-"
BEGINS_WITH_AND = r"^\s*and-"
BEGINS_WITH_OR = r"^\s*or-"
BEGINS_WITH_XOR = r"^\s*xor-"
BEGINS_WITH_SHL = r"^\s*shl-"
BEGINS_WITH_SHR = r"^\s*shr-"
BEGINS_WITH_USHR = r"^\s*ushr-"


BEGINS_WITH_IPUT = r"^\s*iput"
BEGINS_WITH_IGET = r"^\s*iget"
BEGINS_WITH_SPUT = r"^\s*sput"
BEGINS_WITH_SGET = r"^\s*sget"

BEGINS_WITH_AGET = r"^\s*aget"
BEGINS_WITH_APUT = r"^\s*aput"
BEGINS_WITH_ARRAY_LENGTH = r"^\s*array-length"
BEGINS_WITH_NEW_ARRAY = r"^\s*new-array"
BEGINS_WITH_FILLED_NEW_ARRAY = r"^\s*filled-new-array"
BEGINS_WITH_TWO_SQUARE_BRACKETS = r"^\s*\[\["


BEGINS_WITH_MOVE = r"^\s*move"
BEGINS_WITH_COMMENT = r"^\s*#"

    



def get_num_registers(line):
    tokens = break_into_tokens(line)
    #print("tokens[0]: " + str(tokens[0]))
    #print("Line:" + str(line))
    number_registers = get_num_register_parameters(tokens[0])
    if number_registers is None:
        number_registers = _param_list_len(line)
    return number_registers


def get_v_and_p_numbers(line):

    tokens = break_into_tokens(line)
    if "range" in tokens[0]:
        range_spec = re.search(r"{(.+)}", line).group(0)
        #print("range_spec: " + str(range_spec))
        parts = range_spec.split("..")
        #print("parts: " + str(parts))
        start = parts[0].strip(" {")
        end = parts[1].strip(" }")
        registers = [start, end]

    else:    
        number_registers = get_num_registers(line)
        relevant_list = tokens[1:number_registers + 1]

        registers = []
        for token in relevant_list:
            registers += re.findall(r"p[0-9]+|v[0-9]+", token)
            
    return registers
    

def get_p_numbers(line):
    registers = get_v_and_p_numbers(line)
    p_only_registers = list(filter(lambda x : x[0] == "p", registers))
    return p_only_registers   


def is_high_numbered_register(reg_name):
    letter = str(reg_name[0])
    number = int(reg_name[1:])
    
    if(letter != "v"):
        raise ValueError("Cannot determine if register is high numbered: " + str(reg_name))
    
    # Note, I cannot do this check because this function does not know
    # the type of the data stored in the given register
    #if(register_type in smali.TYPE_LIST_WIDE):
    #    return (number > 14)
        
    return (number > 15)


def break_into_tokens(line):
    #print("calling break into tokens on: " + line)
    line = line.strip()
    tokens = line.split()
    return tokens

def extract_opcode(line):
    tokens = break_into_tokens(line)
    if(tokens == []):
        return ""
    return tokens[0]
    
def is_valid_instruction(line):        
    opcode = extract_opcode(line)
    return opcode in ValidSmaliInstructions.SET
    
def is_field_instruction(line):
    search_object = re.search(BEGINS_WITH_SPUT, line)
    if search_object is not None:
        return True
        
    search_object = re.search(BEGINS_WITH_SGET, line)
    if search_object is not None:
        return True
        
    search_object = re.search(BEGINS_WITH_IPUT, line)
    if search_object is not None:
        return True
        
    search_object = re.search(BEGINS_WITH_IGET, line)
    if search_object is not None:
        return True

        
    return False
    
def is_method_call_instruction(line):
    search_object = re.search(BEGINS_WITH_INVOKE, line)
    if search_object is not None:
        return True
    return False

def get_num_register_parameters(instr):
    #print("calling get num register parameters on: " + instr)
    if (has_zero_register_parameters(instr)):
        return 0
        
    elif (has_one_register_parameters(instr)):
        return 1

    elif (has_two_register_parameters(instr)):
        return 2

    elif (has_three_register_parameters(instr)):
        return 3
    
    return None


def _param_list_len(line):
    #print("get_param_list_number_register_parameters: " + str(line))
    result = re.search(r"{(.+)}", line)
    other_result = re.search(r"{.*}", line)
    #print("other result: " + str(other_result))
    if(result == None and (other_result is not None)):
        return 0
        
    return len(result.group(0).split())


def has_zero_register_parameters(instr):
    return instr in ["nop", "return-void", "goto", "goto/16",
    "goto/32", "invoke-direct-empty"]


def has_one_register_parameters(instr):
    return instr in ["move-result", "move-exception", "move-result-wide", "move-result-object", "move-result-exception",
        "return", "return-wide", "return-object", "const/4",
        "const/16", "const", "const/high16", "const-wide/16", "const-wide/32",
        "const-wide", "const-wide/high16", "const-string", "const-string/jumbo",
        "const-class", "monitor-enter", "monitor-exit", "check-cast",
        "new-instance", "fill-array-data", "throw", "packed-switch", "sparse-switch",
        "if-eqz", "if-nez", "if-ltz", "if-gez", "if-gtz", "if-lez", "sget",
        "sget-wide", "sget-object", "sget-boolean", "sget-byte", "sget-char",
        "sget-short", "sput", "sput-wide", "sput-object", "sput-boolean",
        "sput-byte", "sput-char", "sput-short"]


def has_two_register_parameters(instr):

    ends_with_2addr = instr.endswith("2addr")
    ends_with_lit16 = instr.endswith("lit16")
    ends_with_lit8 = instr.endswith("lit8")
    in_list = instr in ["move", "move/from16", "move/16", "move-wide", "move-wide/from16",
        "move-wide/16", "move-object", "move-object/from16", "move-object/16", 
        "instance-of", "array-length", "new-array", "if-eq", "if-ne", "if-lt", "if-ge", 
        "if-gt", "if-le","iget", "iget-wide", "iget-wide", "iget-object", "iget-boolean",
        "iget-byte", "iget-char", "iget-short", "iput", "iput-wide", "iput-object",
        "iput-boolean", "iput-byte", "iput-char", "iput-short", "neg-int", "not-int", 
        "neg-long", "not-long", "neg-float", "neg-double", "int-to-long", "int-to-float",
        "int-to-double", "long-to-int", "long-to-float", "long-to-double", "float-to-int",
        "float-to-long", "float-to-double", "double-to-int", "double-to-long", "double-to-float",
        "int-to-byte", "int-to-short", "int-to-char", "iget-quick", "iget-wide-quick",
        "iget-object-quick", "iput-quick", "iput-wide-quick", "iput-object-quick" ]

    return (ends_with_2addr or ends_with_lit8 or ends_with_lit16 or in_list)


def has_three_register_parameters(instr):
    return instr in ["cmpl-float", "cmpg-float", "cmpg-double", "cmpl-double", "cmp-long", "aget",
        "aget-wide", "aget-object", "aget-boolean", "aget-byte", "aget-char",
        "aget-short", "aput", "aput-wide", "aput-object", "aput-boolean", "aput-byte",
        "aput-char", "aput-short", "add-int", "sub-int", "mul-int", "div-int", "rem-int",
        "and-int", "or-int", "xor-int", "shl-int", "shr-int", "ushr-int", "add-long",
        "sub-long", "mul-long", "div-long", "rem-long", "and-long", "or-long", "xor-long",
        "shl-long", "shr-long", "ushr-long", "add-float", "sub-float", "mul-float", "div-float",
        "rem-float", "add-double", "sub-double", "mul-double", "div-double", "rem-double"]
        
   
# GLOBAL
# these lists of instructions specify the type of the destination register
# e.g add-int assigns a 32-bit type to the dest register
THIRTY_TWO_BIT_TYPE_LIST = ["move", "move/from16", "move/16", "return", 
    "move-result", "const/4", "const/16", "const", "const/high16", 
    "instance-of", "array-length", "packed-switch", "sparse-switch",
    "cmpl-float", "cmpg-float", "if-eq", "if-ne", "if-lt", "if-ge",
    "if-gt", "if-le", "if-eqz", "if-nez", "if-ltz", "if-gez", 
    "if-gtz", "if-lez", "aget", "aget-boolean" , "aget-byte" , "aget-char", 
    "aget-short", "aput", "aput-boolean", "aput-byte", "aput-char",
    "aput-short", "iget", "iget-boolean", "iget-byte", "iget-char",
    "iget-short", "iput", "iput-boolean", "iput-byte", "iput-char", 
    "iput-short", "sget", "sget-boolean", "sget-byte", "sget-char",
    "sget-short", "sput", "sput-boolean", "sput-byte", "sput-char", 
    "sput-short", "neg-int", "not-int", "neg-float", "int-to-float",
    "long-to-int", "long-to-float", "float-to-int", "double-to-int",
    "double-to-float", "add-int", "sub-int", "mul-int", "div-int",
    "rem-int", "and-int", "or-int", "xor-int", "shl-int", "shr-int",
    "ushr-int", "add-float", "sub-float", "mul-float", "div-float",
    "rem-float", "iput-quick", "iget-quick", "ushr-int/lit8", 
    "shr-int/lit8", "shl-int/lit8", "xor-int/lit8", "or-int/lit8", 
    "and-int/lit8", "rem-int/lit8", "div-int/lit8", "mul-int/lit8", 
    "sub-int/lit8", "add-int/lit8","xor-int/lit16", "or-int/lit16", 
    "and-int/lit16", "rem-int/lit16", "div-int/lit16", "mul-int/lit16", 
    "sub-int/lit16", "add-int/lit16", "rem-float/2addr", 
    "div-float/2addr", "mul-float/2addr", "sub-float/2addr", 
    "add-float/2addr", "or-int/2addr", "and-int/2addr", "xor-int/2addr",
    "shl-int/2addr", "shr-int/2addr", "ushr-int/2addr", "rem-int/2addr",
    "div-int/2addr", "mul-int/2addr", "sub-int/2addr", "add-int/2addr", 
    "int-to-byte", "int-to-char", "int-to-short"]
    
SIXTY_FOUR_BIT_TYPE_LIST = ["move-wide", "move-wide/from16", "move-wide/16", 
    "move-result-wide", "return-wide", "const-wide/16", 
    "const-wide/32", "const-wide", "const-wide/high16", "cmpl-double",
    "cmpg-double", "cmp-long", "aget-wide", "aput-wide",
    "iget-wide", "iput-wide", "sget-wide", "sput-wide", "neg-long", 
    "not-long", "neg-double", "int-to-long", "int-to-double", 
    "long-to-double", "float-to-long", "float-to-double", 
    "double-to-long", "add-long", "sub-long", "mul-long", "div-long", 
    "rem-long", "and-long", "or-long", "xor-long", "shl-long", 
    "shr-long", "ushr-long", "add-double", "sub-double", "mul-double", "div-double",
    "rem-double", "iput-wide-quick", "iget-wide-quick", 
    "rem-double/2addr", "div-double/2addr", "mul-double/2addr", 
    "sub-double/2addr", "add-double/2addr", "ushr-long/2addr", 
    "shr-long/2addr", "shl-long/2addr","xor-long/2addr", 
    "or-long/2addr", "and-long/2addr", "rem-long/2addr", 
    "div-long/2addr", "mul-long/2addr", "sub-long/2addr", 
    "add-long/2addr"]
    
OBJECT_TYPE_LIST = ["move-object", "move-object/from16", "move-object/16",
    "move-result-object", "move-exception", "return-object",
    "const-string", "const-string-jumbo", "const-string/jumbo", "const-class", 
    "monitor-enter", "check-cast", "new-instance", "new-array", 
    "throw", "aput-object", "aget-object", "iget-object", "iput-object", "sget-object",
    "sput-object", "iput-object-quick", "iget-object-quick"]

    
#"if-eq","if-ne" ,"if-lt" ,"if-ge" ,"if-gt" ,"if-le" ,"if-eqz" ,"if-nez" ,"if-ltz" ,"if-gez" ,"if-gtz ","if-lez" , removed these for now
#"return" ,"return-wide", "return-object", "return-void", "check-cast"
NON_RELEVANT_INSTRUCTION_LIST = ["nop","monitor-enter" , "monitor-exit", "throw" ,"goto" , "goto/16", "goto/32" , "packed-switch", 
 "sparse-switch", "neg-int","not-int" ,"neg-long" ,"not-long" ,"neg-float" ,"neg-double" ,"execute-inline" ,"invoke-virtual" ,"invoke-super","invoke-direct" ,
 "invoke-static","invoke-interface","invoke-interface/range","invoke-static/range","invoke-direct/range","invoke-virtual/range",
 "invoke-super/range","invoke-direct-empty","invoke-virtual-quick","invoke-virtual-quick/range","invoke-super-quick",
 "invoke-super-quick/range","invoke-direct-empty", "fill-array-data", "filled-new-array", "filled-new-array-range",
 ".local", ".param", ".line", "aput", "aput-wide",  "aput-object", "aput-boolean", "aput-byte",
 "aput-char", "aput-short"]
        
def main():
    print("Minimal Tests for String Parsing Library")

    assert(get_v_and_p_numbers("const-string v1, \"Parcelables cannot be written to an OutputStream\"\n") == ["v1"])
    assert(get_v_and_p_numbers("filled-new-array {v0, v1, v2}, [Ljava/lang/String;\n") == ["v0", "v1", "v2"])
    assert(get_v_and_p_numbers("invoke-static/range {v0 .. v7}, Lcom/example/class1;->foo()Z;") == ["v0", "v1", "v2", "v3", "v4", "v5", "v6", "v7"])

    assert(get_p_numbers("const-string p0, \"Parcelables cannot be written to an OutputStream\"\n") == ["p0"])
    assert(get_p_numbers("filled-new-array {v0, p1, v2}, [Ljava/lang/String;\n") == ["p1"])

    assert(has_one_register_parameters("if-eqz") == True)
    assert(_param_list_len("filled-new-array {v0, v1, v2}, [Ljava/lang/String;\n") == 3)
    assert(get_num_registers("const-string v1, \"hard example: v2\"\n") == 1)

    assert(is_valid_instruction("    .line 36") == False)
    
    assert(break_into_tokens("    invoke-static/range {v0 .. v7}, Lcom/example/class1;->foo()Z;")[-1] == "Lcom/example/class1;->foo()Z;")
    print("ALL StringParsingLib TESTS PASSED")

if __name__ == "__main__":
    main()
