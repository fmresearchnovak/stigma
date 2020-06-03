REGEX_BEGINS_WITH_DOT = r"^\s*\."  # oat "assembler" directives begin with a .dot
REGEX_BEGINS_WITH_HASHTAG = r"^\s*\#"
REGEX_BEGINS_WITH_COLON = r"^\s*:"  # code labels (locations for branches) begin with a colon
REGEX_BLANK_LINE = r"^\s*$"
REGEX_V_AND_NUMBERS = r"v[0-9]+"  # v and numbers (e.g., v5) are general purpose registers.  I think "v" means "virtual"

REGEX_BEGINS_WITH_DOT_METHOD = r"^\.method"  # directive to indicate start of a method
REGEX_BEGINS_WITH_DOT_END_METHOD = r"^\s*\.end method"  # directive to indicate end of method

REGEX_BEGINS_WITH_INVOKE = r"^invoke-"
