import re

import SmaliRegister
import SmaliClassDef
import StigmaStringParsingLib
import SmaliCodeIterator

def get_function_name(filename, line_number):
    fh = open(filename, "r")
    lines = fh.readlines()
    fh.close()

    # account for index 0
    line_number -= 1

    match_object = re.match(StigmaStringParsingLib.BEGINS_WITH_DOT_METHOD, lines[line_number])
    while(match_object == None):
        line_number -= 1
        match_object = re.match(StigmaStringParsingLib.BEGINS_WITH_DOT_METHOD, lines[line_number])
    
    method_signature_str = lines[line_number].replace("\n", "")
    return method_signature_str

def find_smali_method_def_obj(method_signature_str, smali_class):
    method_index = 0
    curr_method = smali_class.methods[method_index]

    while(curr_method != method_signature_str):
        method_index += 1
        curr_method = smali_class.methods[method_index]

    return curr_method


def main(filename, line_number, reg):
    smali_reg = SmaliRegister.SmaliRegister(reg)
    smali_class = SmaliClassDef.SmaliClassDef(filename)

    method_signature_str = get_function_name(filename, line_number)
    smali_method_def_obj = find_smali_method_def_obj(method_signature_str, smali_class)

    for line in SmaliCodeIterator.SmaliCodeIterator(smali_method_def_obj.raw_text):
        print(line)

main("SendMessagesHelper.smali", 27946, "v4")