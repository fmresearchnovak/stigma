BEGINS_WITH_DOT = r"^\s*\."  # oat "assembler" directives begin with a .dot
BEGINS_WITH_HASHTAG = r"^\s*\#"
BEGINS_WITH_COLON = r"^\s*:"  # code labels (locations for branches) begin with a colon
BLANK_LINE = r"^\s*$"

BEGINS_WITH_DOT_METHOD = r"^\.method"  # directive to indicate start of a method
BEGINS_WITH_DOT_END_METHOD = r"^\s*\.end method"  # directive to indicate end of method

BEGINS_WITH_INVOKE = r"^invoke-"

# one space and then a v and then some number of digits and then a comma
V_AND_NUMBERS = r"\s(v[0-9]+)[,]"  # v and numbers (e.g., v5) are general purpose registers.  I think "v" means "virtual"
V_AND_P_AND_NUMBERS = r"\s(v[0-9]+)[,]|\s(p[0-9]+)[,]"
P_AND_NUMBERS = r"\s(p[0-9]+)[,]"
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
    print(tokens)
    ans = []
    for token in tokens[1:]:
        if(token != ""):
            if(token[0] == "p" or token[0] == "v"):
                ans.append(token.rstrip(","))
            
    return ans
        



# There is also "filled-new-array" instruction
