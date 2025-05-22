import re

import SmaliRegister
import SmaliClassDef
import SmaliAssemblyInstructions
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
    full_text = SmaliCodeIterator.SmaliCodeIterator(smali_method_def_obj.raw_text)

    # forward tracing
    signature_string_found = False

    registers_to_check = []
    registers_to_check.append(reg)

    for line in SmaliCodeIterator.SmaliCodeIterator(smali_method_def_obj.raw_text):
        line = "".join(line)

        for register in registers_to_check:
            if line.replace("\n", "") == method_signature_str:
                signature_string_found = True
            if register in line and signature_string_found:
                instruction = SmaliAssemblyInstructions.SmaliAssemblyInstruction().from_line(line)

                # MOVE instances: if reg is origin, add destination to regs
                # Destination is first
                # If reg is destination, remove from regs
                if isinstance(instruction, SmaliAssemblyInstructions.MOVE):
                    print("MOVE")

                    # only dealing with two register instructions right now, will deal with the others later
                    if not isinstance(instruction, SmaliAssemblyInstructions._SINGLE_REGISTER_INSTRUCTION):
                        instruction_regs = instruction.get_registers()
                        if instruction_regs[0] == reg:
                            print("TARGET IS DESTINATION, OVERWRITTEN")
                            #registers_to_check.remove(reg)
                        else: # instruction_regs[1] == reg
                            print("TARGET IS ORIGIN, ADD DESTINATION " + str(instruction_regs[0]))
                            #registers_to_check.append(instruction_regs[0])

                # GET instances

                print(instruction)

        #signature_string_found = False
            
                
main("SendMessagesHelper.smali", 27946, "v4")