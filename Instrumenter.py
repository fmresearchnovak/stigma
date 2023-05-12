
import SmaliAssemblyInstructions as smali
import StigmaStringParsingLib
from TaintStorageHandler import TaintStorageHandler
import re


# this is a global populated by Stigma.py
LAUNCHER_ACTIVITIES = []

# this is a global that is incremented by
# the sign_up method
MAX_DESIRED_NUM_REGISTERS = 0 #we grow our .locals by this number


# The structure of the constructor and the register_instrumentation_method functions
# are an attempt to make this a "plugin" style application where others can write
# more instrumentation functions.  I'm not sure it's 100% there and maybe this
# attempt just makes the code uglier for no benefit.

start_of_method_handler = None  # handler to insert code at start every method
start_of_launcher_oncreate_method_handler = None # handler to insert code at start of launcher's oncreate method only

instrumentation_map = {}
storage_handler = TaintStorageHandler.get_instance()




class InstrumentationSignupBundle():
    def __init__(self, new_opcode, new_method, new_num_regs, new_instrumenter_inserts):
        self.opcode = new_opcode
        self.handler = new_method
        self.num_regs_necessary = new_num_regs
        self.handler_reinserts_original_lines = new_instrumenter_inserts
        
    def __str__(self):
        return str(self.handler)
        

def add_new_launcher_class(smali_types_obj_ref):
    global LAUNCHER_ACTIVITIES
    if(smali_types_obj_ref not in LAUNCHER_ACTIVITIES):
        LAUNCHER_ACTIVITIES.append(smali_types_obj_ref)


def get_launcher_classes():
    global LAUNCHER_ACTIVITIES
    return LAUNCHER_ACTIVITIES



def sign_up_method_start(new_method):
    global start_of_method_handler
    # this method allows the plugin author to submit a handler function
    # which will be called to insert new code at the start of each and every
    # method
    
    # Needs to also check num args of new method but I don't know how
    # to do that in python (reflection)
    # this is _ideally_ to allow a sort of "plugin" system where
    # other developers could add instrumentation
    # I think the answer is "python protocols"
    start_of_method_handler = new_method


def sign_up_launcher_activity_oncreate_start(new_method, num_regs, instrumeter_inserts_original_lines = False):
    global start_of_launcher_oncreate_method_handler
    global MAX_DESIRED_NUM_REGISTERS

    if(start_of_launcher_oncreate_method_handler == None):
        # keep track of the "all time max" so there are 
        # at least that many registers (possibly high numbered)
        # the method will be grow()-ed to ensure this
        if(num_regs > MAX_DESIRED_NUM_REGISTERS):
            MAX_DESIRED_NUM_REGISTERS = num_regs

        start_of_launcher_oncreate_method_handler = new_method

    else:
        raise Exception("A handler is already registered for launcher oncreate:" + str(start_of_launcher_oncreate_method_handler))


    

def sign_up(opcode, new_method, num_regs, instrumeter_inserts_original_lines = False):
    global MAX_DESIRED_NUM_REGISTERS
    global instrumentation_map
    # this method allows the plugin author to submit a handler function
    # which will be called to insert new code before each and every line
    # of original smali code.
    # 
    # opcode is the instruction to match
    #
    # new_method is the method / handler the plugin author wants to be called
    # this method should return instrumentation code
    #
    # num_registers_necessary is the number of registers this method / 
    # plugin requires to function (e.g., to do tag propagation) 
    #
    # instrumenter_inserts_original_lines can be set to True
    # in order to indicate that new_method will return a block of code
    # that INCLUDES the original instruction (and so this side of the
    # system won't insert it)

    # Needs to also check num args of new method but I don't know how
    # to do that in python (reflection)
    # this is _ideally_ to allow a sort of "plugin" system where
    # other developers could add instrumentation
    # I think the answer is "python protocols"
    # try to find: typing.Protocol which "is stdlib"
    # typing.runtime_checkable()
    
    # not sure why we don't have to do:
    # global instrumentation_map
    if opcode.startswith("move-result"):
        raise Exception("Move-result cannot have an independent instrumenter, signup for the related preceding instruction.")
        
    if opcode not in instrumentation_map:
        bundle = InstrumentationSignupBundle(opcode, new_method, num_regs, instrumeter_inserts_original_lines)
        instrumentation_map[opcode] = bundle
        
        # keep track of the "all time max" so there are 
        # at least that many registers (possibly high numbered)
        # the method will be grow()-ed to ensure this
        if(num_regs > MAX_DESIRED_NUM_REGISTERS):
            MAX_DESIRED_NUM_REGISTERS = num_regs
        
    else:
        raise Exception(str(opcode) + " is already registered for:" + str(instrumentation_map[opcode]))




def make_comment_block(comment_detail=""):
        block = [smali.BLANK_LINE(), smali.COMMENT("IFT INSTRUCTIONS ADDED BY STIGMA " + comment_detail), smali.BLANK_LINE()]
        return block

def _make_merge_core(scd, m, registers, free_reg):
    block = []
    block.append(smali.CONST_16(free_reg[0], "0x0"))

    for r in registers:
        taint_loc_param = storage_handler.add_taint_location(scd.class_name, m.get_name(), r)
        block.append(smali.BLANK_LINE())
        block.append(smali.SGET(free_reg[1], taint_loc_param))
        block.append(smali.BLANK_LINE())
        block.append(smali.ADD_FLOAT(free_reg[0], free_reg[0], free_reg[1]))

    block.append(smali.BLANK_LINE())
    return block

def make_sink_merge_block(scd, m, registers, free_reg):
    block =_make_merge_core(scd, m, registers, free_reg)
    block.append(smali.BLANK_LINE())
    return block
def make_merge_block(scd, m, registers, taint_loc_result, free_reg):
    # This function creates a "merge block"
    # A merge block takes every one of the registers in the 
    # registers parameter (a list), and performs an ADD-FLOAT operation on their
    # values storing the result in taint_loc_result
    # Note: external methods may merge several registers
    #
    # block = []
    # block.append(smali.CONST_16(free_reg[0], "0x0"))
    #
    # for r in registers:
    #     taint_loc_param = storage_handler.add_taint_location(scd.class_name, m.get_name(), r)
    #     block.append(smali.BLANK_LINE())
    #     block.append(smali.SGET(free_reg[1], taint_loc_param))
    #     block.append(smali.BLANK_LINE())
    #     block.append(smali.ADD_FLOAT(free_reg[0], free_reg[0], free_reg[1]))
    #
    # block.append(smali.BLANK_LINE())
    block = _make_merge_core(scd, m, registers, free_reg)
    block.append(smali.SPUT(free_reg[0], taint_loc_result))

    return block
    

def create_logd_block(m, tag, message, tmp_reg_for_tag, tmp_reg_for_msg):

    block = [smali.CONST_STRING(tmp_reg_for_tag, tag),
            smali.BLANK_LINE(),
            smali.CONST_STRING(tmp_reg_for_msg, message),
            smali.BLANK_LINE(),
            smali.LOG_D(tmp_reg_for_tag, tmp_reg_for_msg),
            smali.BLANK_LINE()]
    
    return block
    

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
 
