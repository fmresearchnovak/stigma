import re

import Instrumenter
import SmaliTypes
import StigmaStringParsingLib

import SmaliAssemblyInstructions as smali

# *static* variants left out of list below
from SmaliRegister import SmaliRegister

RELEVANT_INVOKE_INSTRUCTIONS = ["invoke-virtual",
                                "invoke-super",
                                "invoke-interface",
                                "invoke-static",
                                "invoke-direct",
                                "invoke-virtual/range",
                                "invoke-super/range",
                                "invoke-direct/range",
                                "invoke-interface/range",
                                "invoke-static/range"]
IPUT_INSTRUCTIONS = ["iput",
                     "iput-quick",
                     "iput-wide-quick",
                     "iput-object-quick",
                     "iput-wide",
                     "iput-object",
                     "iput-boolean",
                     "iput-byte",
                     "iput-char",
                     "iput-short"]
OBJECT_MAPPER_TYPE_ID = "Lcom/fasterxml/jackson/databind/ObjectMapper;"
# a list of SmaliType.ObjectReference objects
TARGET_CLASSES = []


def _check_is_low_numbered(smd, reg):
    # it is safe to use the (static) dereference method below
    # since this function will only be passed a pX type register
    # in the context of new_method_handler(), which means it may
    # put a pX register BEFORE the move(s) inserted by grow()
    # Furthermore, within this context, it is safe to use the
    # smd.dereference method since it is not aware of grow() at all
    # this is effectively an ugly hack for situations where reg is not
    # lower-numbered
    if (reg.letter() == "p"):
        reg = SmaliRegister(smd.dereference_p_to_v_number(str(reg)))
    return reg.is_high_numbered()


def dump(scd, smd, target_reg, free_regs):
    if (not smd.signature.is_static):
        super_class = scd.get_super_class()
        super_class_str = str(super_class)
        if (super_class_str.endswith("AppCompatActivity;") or super_class_str.endswith("Activity;")):
            v_reg = smd.dereference_p_to_v_number("p0")
            if (smd.has_grown):
                v_reg += -smd.has_grown
            if (v_reg.number() <= 15):
                return file_do_jackson_json_dump(scd, smd, target_reg, v_reg)
    return log_do_jackson_json_dump(scd, smd, target_reg, free_regs)


def file_do_jackson_json_dump(scd, smd, target_reg, instance_reg):
    block = []
    block.append(smali.INVOKE_STATIC([target_reg, instance_reg],
                                     "Lcom/example/jsondumper/JSON_dumper;->json_dumper_func(Ljava/lang/Object;Landroid/app/Activity;)V"))
    block.append(smali.BLANK_LINE())
    return block


def log_do_jackson_json_dump(scd, smd, target_reg, free_regs):
    free_reg_a = free_regs[0]
    free_reg_b = free_regs[1]

    block = []
    block.append(smali.NEW_INSTANCE(free_reg_a, OBJECT_MAPPER_TYPE_ID))
    block.append(smali.BLANK_LINE())
    block.append(smali.INVOKE_DIRECT([free_reg_a], OBJECT_MAPPER_TYPE_ID + "-><init>()V"))
    block.append(smali.BLANK_LINE())
    # I should do SerializationFeature;->FAIL_ON_EMPTY_BEANS, false

    # would like to use INVOKE_VIRTUAL_RANGE (below) since the target_reg (a p-reg maybe)
    # could be higher-numbered and regular INVOKE_VIRTUAL uses only 4 bits
    # for each argument register
    # BUT, I can't really use INVOKE_VIRTUAL_RANGE since free_reg_a is not
    # likely not adjacent to target_reg
    # so, I decided to use a MOVE (but assuming it's an OBJECT seems hacky)
    # technically it's not always necessary to move (if target_reg isn't higher-numbered)
    # but it is always ok to move since free_reg_b is always there and usable
    block.append(smali.MOVE_OBJECT_16(free_reg_b, target_reg))
    block.append(smali.BLANK_LINE())
    try_start_label = smd.make_new_try_start_label()
    try_catch_num = try_start_label.n
    block.append(try_start_label)
    block.append(smali.INVOKE_VIRTUAL([free_reg_a, free_reg_b],
                                      "Lcom/fasterxml/jackson/databind/ObjectMapper;->writeValueAsString(Ljava/lang/Object;)Ljava/lang/String;"))
    block.append(smali.BLANK_LINE())
    block.append(smali.MOVE_RESULT_OBJECT(free_reg_b))  # a string
    block.append(smali.BLANK_LINE())
    s = "\"STIGMA JSON\""
    block.append(smali.CONST_STRING(free_reg_a, s))
    block.append(smali.BLANK_LINE())
    block.append(smali.LOG_D(free_reg_a, free_reg_b))
    try_end_label = smali.TRY_END_LABEL(try_catch_num)
    block.append(try_end_label)
    try_catch_label = smali.CATCH_LABEL(try_catch_num)
    exception_type_id = "Lcom/fasterxml/jackson/core/JsonProcessingException;"
    block.append(smali.CATCH_DIRECTIVE(exception_type_id, try_start_label, try_end_label, try_catch_label))
    block.append(smali.BLANK_LINE())
    block.append(try_catch_label)

    return block


def new_method_handler(scd, smd):
    # I can use v0 and v1 since this instrumentation plugin
    # signs up for at least 2 free regs (see it's main())
    # assuming the method was grown() by n or more where n > 0
    # then there are n vX registers open (v0, v1, ..., v(n-1))
    # these registers are (a) used by the method, in which case they
    # will be given a value later in the method or (b) was used to store p0
    # which is technically not possible since we have used grow(n) and n > 0

    for p_reg in smd.signature.parameter_type_map:
        p_reg_type = smd.signature.parameter_type_map[p_reg]

        if (p_reg_type in TARGET_CLASSES):
            # since the p_reg given here is p0, p1, p2, etc.
            # they will actually alias to the highest v_num register(s)
            # since the method has already been grown()
            # that register will have the correct / valid data in it
            # since this instrumentation will happen BEFORE the moves
            # added by the grow() method

            block = log_do_jackson_json_dump(scd, smd, p_reg, ["v0", "v1"])

            comment_chunk = Instrumenter.make_comment_block("for parameters at method start")
            block = comment_chunk + block + comment_chunk
            # bug if there is more than one parameter
            # matching the TARGET_CLASSES list
            return block

    return []


def check_cast_handler(scd, smd, code_unit, free_regs):
    asm_obj = smali.SmaliAssemblyInstruction.from_line(code_unit[0])

    if (asm_obj.value_arg in TARGET_CLASSES):
        block = log_do_jackson_json_dump(scd, smd, asm_obj.rd, free_regs)
        comment_chunk = Instrumenter.make_comment_block("for check-cast")
        block = code_unit + comment_chunk + block + comment_chunk
        return block

    return code_unit


def iput_handler(scd, smd, code_unit, free_regs):
    asm_obj = smali.SmaliAssemblyInstruction.from_line(code_unit[0])

    if (asm_obj.class_name in TARGET_CLASSES):
        block = log_do_jackson_json_dump(scd, smd, asm_obj.rd, free_regs)
        comment_chunk = Instrumenter.make_comment_block("for iput object modification")
        block = code_unit + comment_chunk + block + comment_chunk
        return block

    return code_unit


def invoke_handler(scd, smd, code_unit, free_regs):
    # invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    # instrumentation below looks at the type of the calling instance which is shown
    # before the arrow in the fully qualified method call
    asm_obj = smali.SmaliAssemblyInstruction.from_line(code_unit[0])
    # maybe make smali types out of it?
    method_name = asm_obj.get_method_name()
    method_name_list = method_name.split(")")
    return_type = method_name_list[1]
    # owning_class = asm_obj.get_owning_class_name()
    if (return_type in TARGET_CLASSES and len(code_unit) > 1):
        if (re.search(StigmaStringParsingLib.BEGINS_WITH_MOVE_RESULT, code_unit[-1])):
            # the first register is the calling instance since the sign-up
            # for this does not include static invokes
            asm_obj_mr = smali.SmaliAssemblyInstruction.from_line(code_unit[-1])
            instance_reg = asm_obj_mr.get_registers()
            block = dump(scd, smd, instance_reg[0], free_regs)
            comment_chunk = Instrumenter.make_comment_block("for method invocation object modification")
            block = code_unit + comment_chunk + block + comment_chunk
            return block

    # invoke - virtual
    # {v0, v1}, Ljava / lang / String;->equals(Ljava / lang / Object;)Z
    #
    # move - result v0
    #
    # # IFT INSTRUCTIONS ADDED BY STIGMA for method invocation object modification
    #
    # new - instance v6, Lcom / fasterxml / jackson / databind / ObjectMapper;
    #
    # invoke - direct {v6}, Lcom / fasterxml / jackson / databind / ObjectMapper;-> < init > ()V
    # move - object / 16 v7, v0
    # The string is turned into a boolean (the return value of the equals is stored in v0)
    # The move object tries to move the boolean and crashes

    # it would maybe be good to look at the return type for TARGET_CLASSES as well
    return code_unit


def main():
    # getting / setting the target objects from the user
    # should probably be done here!
    global TARGET_CLASSES
    TARGET_CLASSES = [SmaliTypes.from_string("Landroid/location/Location;"),
                      SmaliTypes.from_string("Ljava/lang/String;")]

    # this can create objects if the method is a callback
    # e.g., onLocationChanged
    Instrumenter.sign_up_method_start(new_method_handler)

    # these essentially create objects
    Instrumenter.sign_up("check-cast", check_cast_handler, 2, True)

    # Any function that returns an object of our choosing(e.g a string), we dump that object
    for instruction in RELEVANT_INVOKE_INSTRUCTIONS:
        Instrumenter.sign_up(instruction, invoke_handler, 2, True)


if __name__ == "__main__":
    main()
