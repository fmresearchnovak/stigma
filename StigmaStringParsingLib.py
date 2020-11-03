import re

BEGINS_WITH_DOT = r"^\s*\."  # oat "assembler" directives begin with a .dot
BEGINS_WITH_HASHTAG = r"^\s*\#"
BEGINS_WITH_COLON = r"^\s*:"  # code labels (locations for branches) begin with a colon
BLANK_LINE = r"^\s*$"

BEGINS_WITH_DOT_METHOD = r"^\.method"  # directive to indicate start of a method
BEGINS_WITH_DOT_END_METHOD = r"^\s*\.end method"  # directive to indicate end of method

BEGINS_WITH_INVOKE = r"^invoke-"

# one space and then a v and then some number of digits and then a comma
FIELD_NAME = "->(.+):"
CLASS_NAME = "(L.+)->"
PARAMETERS = "[(](.*)[)]"


BEGINS_WITH_INVOKE = r"^\s*invoke-"
BEGINS_WITH_MOVE_RESULT = r"^\s*move-result-"

BEGINS_WITH_ADD = r"^\s*add-"
BEGINS_WITH_SUB = r"^\s*sub-"
BEGINS_WITH_MUL = r"^\s*mul-"
BEGINS_WITH_DIV = r"^\s*div-"

BEGINS_WITH_IPUT = r"^\s*iput"
BEGINS_WITH_IGET = r"^\s*iget"
BEGINS_WITH_SPUT = r"^\s*sput"
BEGINS_WITH_SGET = r"^\s*sget"

BEGINS_WITH_AGET = r"^\s*aget"
BEGINS_WITH_APUT = r"^\s*aput"
BEGINS_WITH_ARRAY_LENGTH = r"^\s*array-length"
BEGINS_WITH_NEW_ARRAY = r"^\s*new-array"


BEGINS_WITH_MOVE = r"^\s*move"
ENDS_WITH_RANGE = r"/range"




def get_v_and_p_numbers(line):
    tokens = line.split(" ")
    ans = []
    for token in tokens[1:]:
        token = token.lstrip("{")
        token = token.rstrip(",")
        token = token.rstrip("}")
        if(token != ""):
            if(token[0] == "p" or token[0] == "v"):
                ans.append(token)
            
    return ans
        


def get_p_numbers(line):
    line = parse_instruction(line)

    # TO-DO: fix this
    #if(has_parameter_list(line[0]) or has_parameter_range(line[0]):


    ans = []
    for token in tokens[1:]:
        token = token.lstrip("{")
        token = token.rstrip(",")
        token = token.rstrip("}")
        if(token != ""):
            if(token[0] == "p"):
                ans.append(token)
            
    return ans

'''

def get_num_register_parameters(instr):
    if (has_zero_register_parameters(instr)):
        return 0

    elif (has_one_register_parameters(instr)):
        return 1

    elif (has_two_register_parameters(instr)):
        return 2

    elif (has_three_register_parameters(instr)):
        return 3






def has_zero_register_parameters(instr):
    return instr in ["nop", "return-void", "const-string-jumbo", "goto", "goto/16",
    "goto/32", "invoke-direct-empty"]


def has_one_register_parameters(instr):
    return instr in ["return", "return-wide", "return-object", "const/4",
        "const/16", "const", "const/high16", "const-wide/16", "const-wide/32",
        "const-wide", "const-wide/high16", "const-string", "const-string-jumbo",
        "const-class", "monitor-enter", "monitor-exit", "check-cast",
        "new-instance", "fill-array-data", "throw", "packed-switch", "sparse-switch"
        "if-eqz", "if-nez", "if-ltz", "if-gez", "if-gtz", "if-lez", "sget",
        "sget-wide", "sget-object", "sget-boolean", "sget-byte", "sget-char",
        "sget-short", "sput", "sput-wide", "sput-object", "sput-boolean",
        "sput-byte", "sput-char", "sput-short"]


def has_two_register_parameters(instr):

    ends_with_2addr = instr.endswith("2addr")
    ends_with_lit16 = instr.endswith("lit16")
    ends_with_lit8 = instr.endswith("lit8")
    in_list = instr in ["move", "move/from16", "move/16", "move-wide", "move-wide/from16",
        "move-wide16", "move-object", "move-object/from16", "move-object16", 
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
    return instr in ["cmpl-float", "cmpg-float", "cmpg-double", "cmp-long", "aget",
        "aget-wide", "aget-object", "aget-boolean", "aget-byte", "aget-char",
        "aget-short", "aput", "aput-wide", "aput-object", "aput-boolean", "aput-byte",
        "aput-char", "aput-short", "add-int", "sub-int", "mul-int", "div-int", "rem-int",
        "and-int", "or-int", "xor-int", "shl-int", "shr-int", "ushr-int", "add-long",
        "sub-long", "mul-long", "div-long", "rem-long", "and-long", "or-long", "xor-long",
        "shl-long", "shr-long", "ushr-long", "add-float", "sub-float", "mul-float", "div-float",
        "rem-float", "add-double", "sub-double", "mul-double", "div-double", "rem-double"]


'''        

