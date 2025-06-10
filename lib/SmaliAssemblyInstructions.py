'''
 SmaliAssemblyInstructions.py

 This module contains many classes that represent various types of "Smali" / DEX instructions.

 Each of these classes is basically in thin wrapper around a string 
 They correspond to the instructions for smali bytecode as listed
 here: http://pallergabor.uw.hu/androidblog/dalvik_opcodes.html
'''


# When adding a new class to this file
# please consider the class hierarchy so far 
# (please update this comment)
#
# Should the new class be a child of SmaliAssemblyInstruction?
# Should the new class be a child of MOVE?
# Should the new class be a child of _SINGLE_DEST_REGISTER_INSTRUCTION?
#   * Note: _SINGLE_DEST_REGISTER_INSTRUCTION is any instruction that
#           only has ONE parameter; a register that serves as a destination.
# Should the new class be a child of CONST?
# Should the new class be a child of MOVE-RESULT?

# Here are some of the "abstract" parent classes, which all being with a _
# _SINGLE_REGISTER_INSTRUCTION
# _SINGLE_DEST_REGISTER_INSTRUCTION
# _PARAMETER_LIST_INSTRUCTION
# _TRIPLE_REGISTER_INSTRUCTION
# _IMPLICIT_REGISTER_INSTRUCTION
# _TWO_REG_EQ
# _ONE_REG_EQ_ZERO
# _I_INSTRUCTION
# _I_INSTRUCTION_QUICK
# _S_INSTRUCTION
# _TWO_REGISTER_UNARY_INSTRUCTION
# _TWO_REGISTER_BINARY_INSTRUCTION
# _TWO_REGISTER_AND_LITERAL_BINARY_INSTRUCTION

import StigmaStringParsingLib
import SmaliTypes

from SmaliRegister import SmaliRegister


def from_line(raw_line_string):
    ''' 
    Returns a SmaliAssemblyInstruction object from a given string.  
    Wrapper of SmaliAssemblyInstruction.from_line()
    Parameters:
       raw_line_string (str): The string representation of a smali assembly instruction
    Returns:
       SmaliAssemblyInstruction: The corresponding SmaliAssemblyInstruction object
    '''
    
    return SmaliAssemblyInstruction.from_line(raw_line_string)


class SmaliAssemblyInstruction():
    ''' A representation of a smali assembly instruction.  Basically a wrapper around the instruction as a string '''

    
    @staticmethod
    def from_line(raw_line_string):
        ''' 
        Returns a SmaliAssemblyInstruction object from a given string
        
        Parameters:
           raw_line_string (str): The string representation of a smali assembly instruction
        
        Returns:
           SmaliAssemblyInstruction: The corresponding SmaliAssemblyInstruction object
        '''

        #print("constructing SmaliAssemblyInstruction From: " + str(raw_line_string))
        line = raw_line_string.strip("\n")
        if(StigmaStringParsingLib.is_comment(line)):
            return COMMENT(line)

        hash_pos = line.find("#")
        if hash_pos != -1:
            # for now, delete "in-line" comments since they're a pain to retain
            line = line[:hash_pos] 


        
        tokens = StigmaStringParsingLib.break_into_tokens(line)
        #tokens = list(filter(lambda x: x != "", tokens)) # removes ""
        #print("tokens: " + str(tokens))
        if(len(tokens) == 0):
            return BLANK_LINE()


        opcode = tokens[0]

        if(opcode_has_parameter_list(opcode) or opcode_has_parameter_range(opcode)):
            start = line.index("{")
            end = line.index("}")
            args = line[start+1:end]
            #print("HERE")
            #print(args)
            if args == "":
                args = "[]"
            else:
                args = args.split(" ")
                args = str(list(map(lambda x : x.strip(","), args)))
            
            args = [ args ]
            args.append("\"" + tokens[-1] + "\"")
            #print("args before: " + str(args))
            
            
        else:
            args = tokens[1:]
            #print("args before: " + str(args))
            args = list(map(lambda x : "\"" + str(x.strip(",")) + "\"", args))
            
        #print("args: " + str(args))


        opcode = opcode.upper()
        opcode = opcode.replace("/", "_")
        opcode = opcode.replace("-", "_")
        
        
        if(opcode == "CONST_STRING" or opcode == "CONST_STRING_JUMBO"):
            smali_assembly_instruction = SmaliAssemblyInstruction._build_const_string(opcode, line)
            return smali_assembly_instruction
        else:
            eval_string = opcode + "(" + ", ".join(args) + ")"
        # example input line: "    move/from16 v1, v25"
        # output eval_string: "MOVE_FROM16("v1", "v25")"    
        #print("eval_string: " + eval_string)
            
            
        # this next part is very very technical and feels
        # pretty hacky
        # https://www.programiz.com/python-programming/methods/built-in/eval
        # https://stackoverflow.com/questions/3941517/converting-list-to-args-when-calling-function#3941529
        smali_assembly_instruction_obj = eval(eval_string)
        return smali_assembly_instruction_obj

    
    def __str__(self):
        ''' Returns a string representation of the instruction including some preceeding spaces and \n newline character.
        This method is primarily intended for writing instruction to a file.
        Returns:
              A string representation of the instruction with preceeding spaces and newline character
        '''
        return "    " + repr(self) + "\n"
    
    @staticmethod
    def _build_const_string(opcode, whole_line):
        '''
        Helper method used by from_line().  
        Builds a CONST_STRING or CONST_STRING_JUMBO object from a given single line (string) of smali assembly code.
        Parsing the CONST_STRING and CONST_STRING_JUMBO instructions are difficult due to the presence of single and double quotes.
        Parameters:
           opcode (str): The opcode of the instruction, either "CONST_STRING" or "CONST_STRING_JUMBO"
           whole_line (str): The entire line of smali assembly code as a string
        Returns:
            SmaliAssemblyInstruction: The corresponding CONST_STRING or CONST_STRING_JUMBO object

        Examples of edge-case const-string and const-string/jumbo instructions
        const-string v3, "android.permission.READ_PHONE_STATE"
        const-string v4, "    hostName: "
        const-string v3, "this ain\'t it!"
        const-string v5, "AudioTrack failed to initialize (status "
        
        const-string/jumbo v1, "unrated"\n'
        const-string/jumbo v2, "yyyy-MM-dd\'T\'HH:mm:ss.SSS\'Z\'"
        '''
        
        s = whole_line.split(", ")[-1]
        #print("s:", s)
    
        tokens = StigmaStringParsingLib.break_into_tokens(whole_line)
        reg = tokens[1].strip(", ")
        #print("reg:", reg)
        
        if(opcode == "CONST_STRING"):
            asm_obj = CONST_STRING()
        elif(opcode == "CONST_STRING_JUMBO"):
            asm_obj = CONST_STRING_JUMBO()
        else:
            raise ValueError("Instruction mis-identified as const-string:", whole_line)
            
        asm_obj.set_dest_reg(reg)
        asm_obj.set_string(s)

        return asm_obj
        

    def get_registers(self):
        ''' Returns a list of all the registers (list of SmaliRegister objects) used in this instruction.'''
        return []

    def get_p_registers(self):
        ''' Returns a list of all the "parameter" registers (list of SmaliRegister objects) used in this instruction.
        Note: "parameter" registers are those that start with "p" such as p0, p1, etc.'''
        return list(filter(lambda x : x[0] == "p", self.get_registers()))
        
    def get_implicit_registers(self):
        ''' Returns a list of all the implicit registers (list of SmaliRegister objects) used in this instruction.
        Implicit registers are those that are not explicitly listed in the instruction but are used by the instruction.
        For example, in a "move-wide" instruction, the implicit registers are the ones that are used to store the second half of the 64-bit values.
        Example: move-wide v0, v2
        v0 is a 'wide' 64-bit register containing the first half of a double or long value.  The other half of the value is stored implicitly in v1.
        The value from v2 and v3 is copied into v0 and v1.
        get_implicit_registers() would return [v1, v3].'''
        return []

    def __eq__(self, other):
        '''Checks if a SmaliAssemblyInstruction object is equal to some other thing based on their repr() string representation.
        Parameters:
            other (object): The object (of any type) to compare with this SmaliAssemblyInstruction object
        Returns:
            bool: True if the two objects are equal, False otherwise
        '''
        return repr(self) == repr(other)
    
    def get_move(self):
        ''' Returns the MOVE instruction class that corresponds to this instruction.
        MOVE_16 is used as the default instruction if no specific MOVE instruction variant is necessary.
        Returns:
            MOVE_16: The MOVE_16 class itself (not an instance).
        '''
        return MOVE_16

    def get_unique_registers(self):
        ''' Returns a list of unique registers used in this instruction.
        For example in an instruction with duplicate registers such as "move v0, v0", this function returns just [v0]
        Returns:
           A list of unique SmaliRegister objects used in this instruction
        '''
        # could probably convert to a set and back to a list for conciseness and possibly speed
        ans = []
        for item in self.get_registers():
            if(item not in ans):
                ans.append(item)
        return ans
        
    def get_register_type_implications(self):
        ''' Returns a dictionary assigning a type (SmaliTypes object) to each register when possible based on the semantics of the instruction.
        This method is used to infer the types of registers *AFTER* the instruction has executed.
        Returns:
            A hashmap (dictionary) where the keys are SmaliRegister objects and the values are SmaliTypes objects.
        Example: add-int v3, v0, v5     This instruction takes two ints, adds them together, and stores the result in v3.  
        get_register_type_implications() would return {v3: SmaliTypes.ThirtyTwoBit(), v0: SmaliTypes.ThirtyTwoBit(), v5: SmaliTypes.ThirtyTwoBit()}
        Example: int-to-long v3, v3     This instruction takes an int (in v3 RHS) and converts it to a long stored in v3 (and v4 implicitly) on the LHS.
        get_register_type_implications() would return {v3: SmaliTypes.SixtyFourBit(), v4: SmaliTypes.SixtyFourBit_2()}
        '''
        # NOTE, for all implementations of this method
        # the result should be the types AFTER the instruction
        # has executed.  This has important / tricky complications
        # with instructions that re-use the src and dest reg
        # e.g., int-to-long v3, v3
        return {}
    

    def split(self, separator):
        ''' Calls split on this instruction as a string.  Identical semantics to str.split().
        Parameters:
           separator (str): The separator to split on
        Returns:
           list: A list of strings that are the result of the split operation
        '''
        return repr(self).split(separator)
        
    

class _IMPLICIT_REGISTER_INSTRUCTION():
    ''' A parent "abstract" class that represents instructions that have implicit registers such as move-result-wide
    It should not be instantiated directly.'''
    def get_implicit_registers(self):
        ans = []
        for reg in self.get_registers():
            implicit_reg = reg + 1
            ans.append(implicit_reg)
        return ans
        
class _IMPLICIT_FIRST_REGISTER_INSTRUCTION():
    # the first register (and only that register)
    # specifies a "wide" type such as Long or Double
    def get_implicit_registers(self):
        regs = self.get_registers()
        return [regs[0] + 1]
        

class _METHOD_CALL_INSTRUCTION():
    
    def get_fully_qualified_call(self):
        return self.types_spec
    
    def get_owning_class_name(self):
        parts = self.types_spec.split("->")
        return parts[0]
        
    def get_method_name(self):
        parts = self.types_spec.split("->")
        return parts[1]
        
    def get_method_name_only(self):
        parts = self.types_spec.split("->")
        name_only = parts[1].split("(")[0]
        return name_only

# this is currently untested, can't test until fully implemented
class LABEL(SmaliAssemblyInstruction):
    '''# A label instruction, e.g., ":label_1"'''
    def __init__(self, line):
        self.l = line

    def __repr__(self):
        return self.l

    def get_label(self):
        return self.split(":")[1]
        
class _ThirtyTwoBit_Parameters():
    # instruction classes that extend this type
    # are those in which ALL the registers/parameters
    # are 32-bit types
    def get_register_type_implications(self):
        ans = {}
        for reg in self.get_registers():
            ans[reg] = SmaliTypes.ThirtyTwoBit()
        return ans
        
class _Object_Parameters():
    # instruction classes that extend this type
    # are those in which ALL the registers/parameters
    # are object types
    def get_register_type_implications(self):
        ans = {}
        for reg in self.get_registers():
            ans[reg] = SmaliTypes.NonSpecificObjectReference()
        return ans
        
class _SixtyFourBit_Dest():
    # instruction classes that extend this type
    # are those in which ALL the registers/parameters
    # are wide / "64-bit" types
    def get_register_type_implications(self):
        
        # consider the follow example
        # e.g., add-long v6, v0, v5
        # this instruction (found in the wild) re-writes
        # v6 from it's incoming value (64-bit-2) to
        # it's new value (64-bit) outgoing
        # thereby invalidating the value stored in v5
        # because of this annoying edge-case I chose to implement
        # type implications only for the dest reg
        
        explicit_regs = self.get_registers()
        implicit_regs = self.get_implicit_registers()
                
        ans = {}
        ans[explicit_regs[0]] = SmaliTypes.SixtyFourBit()
        ans[implicit_regs[0]] = SmaliTypes.SixtyFourBit_2() 
    
        return ans

# THE FOLLOWING PARENT FUNCTIONS TELL THE SLICING FUNCTION WHAT TO DO WHEN INTERPRETING THE INSTRUCTION

# if tracking the first register, the tracked register is removed. If any other register is tracked, nothing happens.
class First_Reg_Dead_End():
    def get_slicing_action(self, tracked):
        if tracked == self.get_registers()[0]:
            return ["REMOVE", tracked]
        else:
            return ["NO ACTIONS"]

# if tracking the first register, the tracked register is removed. If the second register is tracked, add the first register.
class Second_Reg_To_First_Reg():
    def get_slicing_action(self, tracked):
        if tracked == self.get_registers()[1]:
            return ["ADD", self.get_registers()[0]]
        elif tracked == self.get_registers()[0]:
            return ["REMOVE", tracked]

# if tracking the first register, the tracked register is removed. If tracking a different register, return that some of its data is in
# the first register.
class Second_Reg_To_First_Reg_Arith():
    def get_slicing_action(self, tracked):
        if len(self.get_registers()) == 3:
            if tracked == self.get_registers()[1]:
                return ["CAN GET DATA FROM", self.get_registers()[0], "WITH", self.get_registers()[2]]
            elif tracked == self.get_registers()[2]:
                return ["CAN GET DATA FROM", self.get_registers()[0], "WITH", self.get_registers()[1]]
            elif tracked == self.get_registers()[0]:
                return ["REMOVE", tracked]
        else: # len == 2 (NEG and NOT instructions)
            if tracked == self.get_registers()[1]:
                return ["PART OF DATA IN", self.get_registers()[0]]
            elif tracked == self.get_registers()[0]:
                return ["REMOVE", tracked]

class Second_Reg_To_First_Reg_Arith_2addr():
    def get_slicing_action(self, tracked):
        if tracked == self.get_registers()[1]:
            return ["PART OF DATA IN", self.get_registers()[0]]
        elif tracked == self.get_registers()[0]:
            return ["REMOVE", tracked]
        else:
            return ["NO ACTIONS"]

# if tracking the first register, the tracked register is removed. If tracking the second register, nothing happens. If tracking the instance variable,
# add the first register.
class Third_Var_To_First_Reg():
    def get_slicing_action(self, tracked):
        if tracked == self.get_instance_variable():
            return ["ADD", self.get_registers()[0]]
        elif tracked == self.get_registers()[0]:
            return ["REMOVE", tracked]
        else:
            return ["NO ACTIONS"]

# if tracking the instance variable, the tracked variable is removed. If tracking the second register, nothing happens. If tracking the first register
# add the instance variable.
class First_Reg_To_Third_Var():
    def get_slicing_action(self, tracked):
        if tracked == self.get_registers()[0]:
            return ["ADD", self.get_instance_variable()]
        elif tracked == self.get_instance_variable():
            return ["REMOVE", tracked]
        else:
            return ["NO ACTIONS"]

# if tracking the first register, the tracked register is removed. If tracking the second register, nothing happens. If tracking the third register,
# add the first register.
class Third_Reg_To_First_Reg():
    def get_slicing_action(self, tracked):
        if tracked == self.get_registers()[2]:
            return ["ADD", self.get_registers()[0]]
        elif tracked == self.get_registers()[0]:
            return ["REMOVE", tracked]
        else:
            return ["NO ACTIONS"]

# if tracking the third register, the tracked variable is removed. If tracking the second register, nothing happens. If tracking the first register
# add the third register.
class First_Reg_To_Third_Reg():
    def get_slicing_action(self, tracked):
        if tracked == self.get_registers()[0]:
            return ["ADD", self.get_registers()[2]]
        elif tracked == self.get_registers()[2]:
            return ["REMOVE", tracked]
        else:
            return ["NO ACTIONS"]

# invoke instructions
class Invoke_Instruction():
    def get_slicing_action(self, tracked):
        return ["JUMP", self.get_method_name(), self.get_registers().index(tracked)]

# jump instructions
class _JUMP_TO_LABEL_INSTRUCTION():
    def get_slicing_action(self, tracked):
        return ["JUMP", self.get_label()]
    
    def get_label(self):
        return self.split(":")[1]
    

# result instructions
class Result_Instruction():
    def get_slicing_action(self, tracked):
        # not finished
        return ["RESULT", tracked]

# has the tracking location but nothing happens with it
class No_Slicing_Actions():
    def get_slicing_action(self, tracked):
        return ["NO ACTIONS"]
        
#class _NoType_OR_NoParameters():
    # instruction classes that extend this type
    # are those in which (1) there are no parameters
    # or (2) the parameters given do not have any type rules
#    def get_register_type_implications(self):
#        return {}


class NOP(SmaliAssemblyInstruction):
    ''' nop '''
    def __repr__(self):
        return self.opcode()
        
    def opcode(self):
        return "nop"
        

class INVOKE_DIRECT_EMPTY(NOP):
    # could not find any instance of this instruction
    # in our APK files
    # From the documentation:
    #   "Stands as a placeholder for pruned empty methods 
    #   like Object.<init>. This acts as nop during 
    #   normal execution."
    def opcode(self):
        return "invoke-direct-empty"


class BLANK_LINE(SmaliAssemblyInstruction):
    def __repr__(self):
        return ""


class COMMENT(SmaliAssemblyInstruction):
    '''# A comment'''
    def __init__(self, line):
        self.l = line

    def __repr__(self):
        return "# " + self.l


class MOVE(_ThirtyTwoBit_Parameters, SmaliAssemblyInstruction, Second_Reg_To_First_Reg):
    ''' move v6, p2 '''
    def __init__(self, reg1, reg2):
        self.reg1 = SmaliRegister(reg1)
        self.reg2 = SmaliRegister(reg2)

    def get_registers(self):
        if(self.reg1 == ""):
            raise UnboundLocalError("reg1")
        if(self.reg2 == ""):
            raise UnboundLocalError("reg2")
        return [self.reg1, self.reg2]
        
    def opcode(self):
        return "move"

    def __repr__(self):
        return self.opcode() + " " + str(self.reg1) + ", " + str(self.reg2)


class MOVE_16(MOVE):
    ''' move/16 v20, p2 '''
    # this might not exist
    # I couldn't find any occurrences in the smali of leaks
    
    def opcode(self):
        return "move/16"
    
    def __repr__(self):
        return self.opcode() + " " + str(self.reg1) + ", " + str(self.reg2)
        

# This is a problem
# I need the class name to be MOVE/FROM16
# but "/" is not a valid character in a class name
class MOVE_FROM16(MOVE):
    '''move/from16 v3, v17'''
    def opcode(self):
        return "move/from16"
    
    def __repr__(self):
        return self.opcode() + " " + str(self.reg1) + ", " + str(self.reg2)

# This is a minor inconvenience
# I need the class name to be MOVE-WIDE
# but "-" is not a valid character in a class name
class MOVE_WIDE(_SixtyFourBit_Dest, _IMPLICIT_REGISTER_INSTRUCTION, MOVE):
    '''move-wide v2, v4'''
    def opcode(self):
        return "move-wide"
    
class MOVE_WIDE_FROM16(MOVE_WIDE):
    '''move-wide/from16 v2, v40'''
    def opcode(self):
        return "move-wide/from16"

class MOVE_WIDE_16(MOVE_WIDE):
    '''move-wide/16 v8, v4'''
    def opcode(self):
        return "move-wide/16"

class MOVE_OBJECT(_Object_Parameters, MOVE):
    '''move-object v3, v5'''
    def opcode(self):
        return "move-object"
        
class MOVE_OBJECT_FROM16(MOVE_OBJECT):
    '''move-object/from16 v3, v25'''
    def opcode(self):
        return "move-object/from16"

class MOVE_OBJECT_16(MOVE_OBJECT):
    '''move-object/16 v3, p0'''
    def opcode(self):
        return "move-object/16"

class _SINGLE_REGISTER_INSTRUCTION(SmaliAssemblyInstruction):
    def __init__(self, reg_dest):
        self.rd = SmaliRegister(reg_dest)

    def get_registers(self):
        return [self.rd]

    def __repr__(self):
        return self.opcode() + " " + str(self.rd)


class _SINGLE_DEST_REGISTER_INSTRUCTION(SmaliAssemblyInstruction):
    # A parent class that should never be instantiated directly.
    #   * Note: _SINGLE_DEST_REGISTER_INSTRUCTION is any instruction that
    #   only has ONE parameter; a register that serves as a destination.
    def __init__(self, reg_dest, value_arg):
        self.rd = SmaliRegister(reg_dest)
        self.value_arg = value_arg

    def get_registers(self):
        return [self.rd]
        
    def __repr__(self):
        return self.opcode() + " " + str(self.rd) + ", " + str(self.value_arg)


class MOVE_RESULT(_ThirtyTwoBit_Parameters, _SINGLE_REGISTER_INSTRUCTION):
    def opcode(self):
        return "move-result"

class MOVE_RESULT_WIDE(_SixtyFourBit_Dest, _IMPLICIT_REGISTER_INSTRUCTION, _SINGLE_REGISTER_INSTRUCTION):
    def opcode(self):
        return "move-result-wide"

class MOVE_RESULT_OBJECT(_Object_Parameters, _SINGLE_REGISTER_INSTRUCTION):
    def opcode(self):
        return "move-result-object"

class MOVE_EXCEPTION(_Object_Parameters, _SINGLE_REGISTER_INSTRUCTION):
    def opcode(self):
        return "move-exception"

class RETURN_VOID(SmaliAssemblyInstruction):
    def opcode(self):
        return "return-void"
        
    def __repr__(self):
        return self.opcode()

class RETURN(_ThirtyTwoBit_Parameters, _SINGLE_REGISTER_INSTRUCTION):
    def opcode(self):
        return "return"

class RETURN_WIDE(_SixtyFourBit_Dest, _IMPLICIT_REGISTER_INSTRUCTION, _SINGLE_REGISTER_INSTRUCTION):
    def opcode(self):
        return "return-wide"

class RETURN_OBJECT(_Object_Parameters, _SINGLE_REGISTER_INSTRUCTION):
    def opcode(self):
        return "return-object"



class CONST(_ThirtyTwoBit_Parameters, _SINGLE_DEST_REGISTER_INSTRUCTION, First_Reg_Dead_End):
        
    def opcode(self):
        return "const"


class CONST_4(CONST):
    def opcode(self):
        return "const/4"

class CONST_16(CONST):
    def opcode(self):
        return "const/16"

class CONST_HIGH16(CONST):
    def opcode(self):
        return "const/high16"

class CONST_WIDE(_IMPLICIT_REGISTER_INSTRUCTION, _SixtyFourBit_Dest, CONST):
    def opcode(self):
        return "const-wide"

class CONST_WIDE_16(CONST_WIDE):
    def opcode(self):
        return "const-wide/16"

class CONST_WIDE_32(CONST_WIDE):
    def opcode(self):
        return "const-wide/32"

class CONST_WIDE_HIGH16(CONST_WIDE):
    def opcode(self):
        return "const-wide/high16"


class CONST_STRING(SmaliAssemblyInstruction, First_Reg_Dead_End):
    # const-string v3, "this ain\'t it!"
    # const-string v5, "AudioTrack failed to initialize (status "
    # 
    # const-string/jumbo v1, "unrated"\n'
    # const-string/jumbo v2, "yyyy-MM-dd\'T\'HH:mm:ss.SSS\'Z\'"
    
    def __init__(self, reg = "", new_string = ""):
        # this constructor is invoked in the instrumenters
        # that write explicit const-string instructions
        # (for example to write the stigma logcat messages
        # inovking Log.d())
        self.rd = reg
        self.str = new_string
        
    def set_dest_reg(self, new_reg):
        # used in the from_line so that
        # const-string is not instantiated with eval()
        # which is (a) better security (marginally)
        # and (b) easier to code up
        # since it means we don't have to worry about escaping
        # escape characters _in the string_
        self.rd = SmaliRegister(new_reg)
        
    def set_string(self, new_string):
        # used in the from_line so that
        # const-string is not instantiated with eval()
        # which is (a) better security (marginally)
        # and (b) easier to code up
        # since it means we don't have to worry about escaping
        # escape characters _in the string_
        self.str = new_string
        
    def get_registers(self):
        return [self.rd]
        
    def __repr__(self):
        return self.opcode() + " " + str(self.rd) + ", " + self.str
    
    def opcode(self):
        return "const-string"
        
    def get_register_type_implications(self):
        return {self.rd: SmaliTypes.ObjectReference("Ljava/lang/String;")}
        

class CONST_STRING_JUMBO(CONST_STRING):
    # https://stackoverflow.com/questions/19991833/in-dalvik-what-expression-will-generate-instructions-not-int-and-const-strin
    # found one in com.amazon.avod.thirdpartyclient.apk 
    #       const-string/jumbo v5, "stackTrace"
    #       const-string/jumbo v1, "unrated"

    def opcode(self):
        return "const-string/jumbo"
        
    def get_register_type_implications(self):
        return {self.rd: SmaliTypes.ObjectReference("Ljava/lang/String;")}
        

class CONST_CLASS(_Object_Parameters, _SINGLE_DEST_REGISTER_INSTRUCTION):

    def opcode(self):
        return "const-class"
        
    def __repr__(self):
        return self.opcode() + " " + str(self.rd) + ", " + str(self.value_arg)


class MONITOR_ENTER(_SINGLE_REGISTER_INSTRUCTION):
    def opcode(self):
        return "monitor-enter"
        
class MONITOR_EXIT(_SINGLE_REGISTER_INSTRUCTION):
    def opcode(self):
        return "monitor-exit"
    
    
class CHECK_CAST( _Object_Parameters, _SINGLE_DEST_REGISTER_INSTRUCTION, No_Slicing_Actions): 
    def opcode(self):
        return "check-cast"
        
    def get_register_type_implications(self):
        return {self.rd: SmaliTypes.from_string(self.value_arg)}
         
        
class INSTANCE_OF(SmaliAssemblyInstruction, First_Reg_Dead_End):
    def __init__(self, reg_res, reg_arg, type_id):
        self.rr = SmaliRegister(reg_res)
        self.ra = SmaliRegister(reg_arg)
        self.type_id = type_id
        
    def get_registers(self):
        return [self.rr, self.ra]
        
    def opcode(self):
        return "instance-of"
        
    def __repr__(self):
        return self.opcode() + " " + str(self.rr) + ", " + str(self.ra) + ", " + str(self.type_id)
        
    def get_register_type_implications(self):
        res = {self.ra: SmaliTypes.NonSpecificObjectReference()}
        res[self.rr] = SmaliTypes.ThirtyTwoBit()
        return res
        

class NEW_INSTANCE(SmaliAssemblyInstruction, First_Reg_Dead_End):
    def __init__(self, reg_dest, type_id):
        self.rd = SmaliRegister(reg_dest)
        self.type_id = type_id
        
    def get_registers(self):
        return [self.rd]
            
    def opcode(self):
        return "new-instance"
        
    def __repr__(self):
        return self.opcode() + " " + str(self.rd) + ", " + str(self.type_id)
        
    def get_register_type_implications(self):
        return {self.rd: SmaliTypes.from_string(self.type_id)}
        


class ARRAY_LENGTH(SmaliAssemblyInstruction, First_Reg_Dead_End):
    # e.g., array-length v0, p2
    def __init__(self, reg_dest, reg_array_ref):
        self.rd = SmaliRegister(reg_dest)
        self.rar = SmaliRegister(reg_array_ref)
        
    def get_registers(self):
        return [self.rd, self.rar]
        
    def opcode(self):
        return "array-length"
        
    def __repr__(self):
        return self.opcode() + " " + str(self.rd) + ", " + str(self.rar)
    
    def get_register_type_implications(self):
        ans = {self.rar: SmaliTypes.NonSpecificArray()}
        ans[self.rd] = SmaliTypes.ThirtyTwoBit()
        return ans
    
        
class NEW_ARRAY(SmaliAssemblyInstruction, First_Reg_Dead_End):
    # e.g., new-array v3, v5, [Ljava/lang/String;
    def __init__(self, reg_dest, reg_size, type_id):
        self.rd = SmaliRegister(reg_dest)
        self.rs = SmaliRegister(reg_size)
        self.type_id = type_id
        
    def get_registers(self):
        return [self.rd, self.rs]
        
    def opcode(self):
        return "new-array"
        
    def __repr__(self):
        return self.opcode() + " " + str(self.rd) + ", " + str(self.rs) + ", " + str(self.type_id)   
        
    def get_register_type_implications(self):
        ans = {self.rs: SmaliTypes.ThirtyTwoBit()}
        ans[self.rd] = SmaliTypes.Array(self.type_id)
        return ans
        

class _PARAMETER_LIST_INSTRUCTION(SmaliAssemblyInstruction):
    # Not an ImplicitRegistersInstruction because both registers
    # for a wide-type will be explicitly listed in the parameter list
    def __init__(self, element_list, types_spec):
        self.register_list = [SmaliRegister(r) for r in element_list]
        self.types_spec = types_spec

    def get_registers(self):
        return self.register_list

    def __repr__(self):
        string_register_list = [str(x) for x in self.register_list]
        reg_string = ", ".join(string_register_list)
        return self.opcode() + " {" + reg_string + "}, " + str(self.types_spec)
        
        
class _PARAMETER_RANGE_INSTRUCTION(SmaliAssemblyInstruction):
    # Not an ImplicitRegistersInstruction because both registers
    # for a wide-type will be explicitly listed in the parameter list
    def __init__(self, element_list, types_spec):
        self.begin_reg = SmaliRegister(element_list[0])
        self.end_reg = SmaliRegister(element_list[-1])
        self.types_spec = types_spec
        self.register_list = self.get_registers()
        
    def get_registers(self):
        
        if(self.begin_reg.letter() != "v" or self.end_reg.letter() != "v"):
            raise ValueError("Cannot expand register range [" + str(self))
        
        ans = []
        for x in range(self.begin_reg.number(), self.end_reg.number()+1):
            sr = SmaliRegister.from_components("v", x)
            ans.append(sr)
            
        return ans
        
        
    def __repr__(self):
        return self.opcode() + " {" + str(self.begin_reg) + " .. " + str(self.end_reg) + "}, " + str(self.types_spec)


class FILLED_NEW_ARRAY(_PARAMETER_LIST_INSTRUCTION):
    # e.g., filled-new-array {v0, v1, v2, v3}, [Ljava/lang/String;
    def opcode(self):
        return "filled-new-array"
        
    def get_register_type_implications(self):
        ans = {}
        for reg in self.get_registers():
            ans[reg] = SmaliTypes.from_string(self.type_id)
        return ans
        

class FILLED_NEW_ARRAY_RANGE(_PARAMETER_RANGE_INSTRUCTION):
    # e.g., filled-new-array/range {v10 .. v16}, [Ljava/lang/String;
    def opcode(self):
        return "filled-new-array/range"
        
    def get_register_type_implications(self):
        array_content_type = SmaliTypes.from_string(self.types_spec).unwrap_layer()
        ans = {}
        for reg in self.get_registers():
            ans[reg] = array_content_type
        return ans
        

class FILL_ARRAY_DATA(_SINGLE_DEST_REGISTER_INSTRUCTION):
    # e.g., fill-array-data v2, :array_ea
    def opcode(self):
        return "fill-array-data"
    
    def get_register_type_implications(self):
        return {self.rd: SmaliTypes.NonSpecificArray()}

class THROW(_SINGLE_REGISTER_INSTRUCTION):
    def opcode(self):
        return "throw"
    
    def get_register_type_implications(self):
        return {self.rd: SmaliTypes.NonSpecificObjectReference()}


class GOTO(SmaliAssemblyInstruction, _JUMP_TO_LABEL_INSTRUCTION):
    def __init__(self, target):
        self.target = target
        
    def opcode(self):
        return "goto"

    def __repr__(self):
        return self.opcode() + " " + str(self.target)

class GOTO_16(GOTO):
    def opcode(self):
        return "goto/16"

class GOTO_32(GOTO):
    def opcode(self):
        return "goto/32"


class PACKED_SWITCH(_SINGLE_DEST_REGISTER_INSTRUCTION):
    # NOTE: there is ALSO a .packed-switch and .sparse-switch
    # compiler directive in smali
    # e.g., .packed-switch -0x9
    # this object implements the instruction packed-switch vX, :pswitch_data_Y
    # I'm not sure what type vX holds, maybe int?
    def opcode(self):
        return "packed-switch"

class SPARSE_SWITCH(_SINGLE_DEST_REGISTER_INSTRUCTION):
    def opcode(self):
        return "sparse-switch"


class _TRIPLE_REGISTER_INSTRUCTION(SmaliAssemblyInstruction):
    # A parent class that should never be instantiated directly
    def __init__(self, reg_dest, reg_arg1, reg_arg2):
        self.rd = SmaliRegister(reg_dest)
        self.ra1 = SmaliRegister(reg_arg1)
        self.ra2 = SmaliRegister(reg_arg2)
        
    def get_registers(self):
        return [self.rd, self.ra1, self.ra2]
        
    def __repr__(self):
        return self.opcode() + " " + str(self.rd) + ", " + str(self.ra1) + ", " + str(self.ra2)
        
        
class CMPL_FLOAT( _ThirtyTwoBit_Parameters, _TRIPLE_REGISTER_INSTRUCTION, First_Reg_Dead_End):
    def opcode(self):
        return "cmpl-float"
        
class CMPG_FLOAT(_ThirtyTwoBit_Parameters, _TRIPLE_REGISTER_INSTRUCTION, First_Reg_Dead_End):
    def opcode(self):
        return "cmpg-float"
        
class CMPL_DOUBLE(_TRIPLE_REGISTER_INSTRUCTION, First_Reg_Dead_End):
    def opcode(self):
        return "cmpl-double"
        
    def get_implicit_registers(self):
        regs = self.get_registers()
        ans = []
        for reg in regs[1:]:
            implicit_reg = reg + 1
            ans.append(implicit_reg)
        return ans
        
    def get_register_type_implications(self):
        ans = {}
        
        for reg in self.get_registers():
            ans[reg] = SmaliTypes.SixtyFourBit()
        for reg in self.get_implicit_registers():
            ans[reg] = SmaliTypes.SixtyFourBit_2()
            
        ans[self.rd] = SmaliTypes.ThirtyTwoBit()
        return ans
        
class CMPG_DOUBLE(_TRIPLE_REGISTER_INSTRUCTION, First_Reg_Dead_End):
    def opcode(self):
        return "cmpg-double"
    
    def get_implicit_registers(self):
        regs = self.get_registers()
        ans = []
        for reg in regs[1:]:
            implicit_reg = reg + 1
            ans.append(implicit_reg)
        return ans
        
    def get_register_type_implications(self):
        ans = {}
        
        for reg in self.get_registers():
            ans[reg] = SmaliTypes.SixtyFourBit()
        for reg in self.get_implicit_registers():
            ans[reg] = SmaliTypes.SixtyFourBit_2()
            
        ans[self.rd] = SmaliTypes.ThirtyTwoBit()
        return ans
        
class CMP_LONG(_TRIPLE_REGISTER_INSTRUCTION, First_Reg_Dead_End):
    def opcode(self):
        return "cmp-long"
        
    def get_implicit_registers(self):
        regs = self.get_registers()
        ans = []
        for reg in regs[1:]:
            implicit_reg = reg + 1
            ans.append(implicit_reg)
        return ans

    def get_register_type_implications(self):
        ans = {}
        
        for reg in self.get_registers():
            ans[reg] = SmaliTypes.SixtyFourBit()
        for reg in self.get_implicit_registers():
            ans[reg] = SmaliTypes.SixtyFourBit_2()
            
        ans[self.rd] = SmaliTypes.ThirtyTwoBit()
        return ans
        
class _TWO_REG_EQ(SmaliAssemblyInstruction, _JUMP_TO_LABEL_INSTRUCTION):
    # A parent class that should never be instantiated directly
    def __init__(self, reg_arg1, reg_arg2, target):
        self.ra1 = SmaliRegister(reg_arg1)
        self.ra2 = SmaliRegister(reg_arg2)
        self.target = target
        
    def get_registers(self):
        return [self.ra1, self.ra2]
        
    def __repr__(self):
        return self.opcode() + " " + str(self.ra1) + ", " + str(self.ra2) + ", " + str(self.target)
        
class IF_EQ(_TWO_REG_EQ):
    def opcode(self):
        return "if-eq"
        
class IF_NE(_TWO_REG_EQ):
    def opcode(self):
        return "if-ne"
        
class IF_LT(_TWO_REG_EQ):
    def opcode(self):
        return "if-lt"
        
class IF_GE(_TWO_REG_EQ):
    def opcode(self):
        return "if-ge"
        
class IF_GT(_TWO_REG_EQ):
    def opcode(self):
        return "if-gt"
        
class IF_LE(_TWO_REG_EQ):
    def opcode(self):
        return "if-le"
        
        
class _ONE_REG_EQ_ZERO(SmaliAssemblyInstruction, _JUMP_TO_LABEL_INSTRUCTION):
    # A parent class that should never be instantiated directly
    def __init__(self, reg_arg, target):
        self.ra = SmaliRegister(reg_arg)
        self.target = target
        
    def get_registers(self):
        return [self.ra]
        
    def __repr__(self):
        # It might be necessary to use repr(self.target)
        # here because self.target might be a smali.LABEL
        # object or it might be a string.  
        
        # If it is a smali.LABEL object
        # then we use repr to get a string that does not contain
        # the preceding four spaces and trailing \n which would be 
        # redundant LABELS are weird because it is possible to use a 
        # LABEL in-line
        
        # This could be a bug in other classes, maybe re-write 
        # the LABEL(SmaliAssemblyInstruction) class
        return self.opcode() + " " + str(self.ra) + ", " + str(self.target)
        

class IF_EQZ(_ONE_REG_EQ_ZERO):
    def opcode(self):
        return "if-eqz"
        
class IF_NEZ(_ONE_REG_EQ_ZERO):
    def opcode(self):
        return "if-nez"

class IF_LTZ(_ONE_REG_EQ_ZERO):
    def opcode(self):
        return "if-ltz"
        
class IF_GEZ(_ONE_REG_EQ_ZERO):
    def opcode(self):
        return "if-gez"
        
class IF_GTZ(_ONE_REG_EQ_ZERO):
    def opcode(self):
        return "if-gtz"
        
class IF_LEZ(_ONE_REG_EQ_ZERO):
    def opcode(self):
        return "if-lez"     

        
class _ARRAY_PARAMETERS_TYPE_PATTERN():
    def get_register_type_implications(self):
        # aget vX, vY, vZ
        # vX dest (or src for aput-* instructions)
        # vY a reference to an array
        # vZ index / offset into array (I think this must be a 32-bit int)
    
        self.ans = {}
        self.ans[self.ra1] = SmaliTypes.NonSpecificArray()
        self.ans[self.ra2] = SmaliTypes.Int()
        
        # this should be done last for situations such as
        # aget v4, v4, v6
        # where self.rd should definitely have final decision
        # about the type of v4
        self._set_first_param_type() 
        return self.ans
        
        
class AGET(_ARRAY_PARAMETERS_TYPE_PATTERN, _TRIPLE_REGISTER_INSTRUCTION):
    def opcode(self):
        return "aget"
        
    def _set_first_param_type(self):
        self.ans[self.rd] = SmaliTypes.ThirtyTwoBit()

class AGET_WIDE(_ARRAY_PARAMETERS_TYPE_PATTERN, _IMPLICIT_FIRST_REGISTER_INSTRUCTION, _TRIPLE_REGISTER_INSTRUCTION):
    def opcode(self):
        return "aget-wide"
        
    def _set_first_param_type(self):
        self.ans[self.rd] = SmaliTypes.SixtyFourBit()
        self.ans[self.rd + 1] = SmaliTypes.SixtyFourBit_2()

class AGET_OBJECT(_ARRAY_PARAMETERS_TYPE_PATTERN, _TRIPLE_REGISTER_INSTRUCTION):
    def opcode(self):
        return "aget-object"
        
    def _set_first_param_type(self):
        # this is a special case and should be treated as such!
        # it really should check the type of vY and do an unwrap_layer()
        # but that's not possible in this class / context
        # because we don't have a register_type_map
        #
        # NonSpecificObjectReference as a very low specificity level
        self.ans[self.rd] = SmaliTypes.NonSpecificObjectReference()

class AGET_BOOLEAN(_ARRAY_PARAMETERS_TYPE_PATTERN, _TRIPLE_REGISTER_INSTRUCTION):
    def opcode(self):
        return "aget-boolean"
        
    def _set_first_param_type(self):
        self.ans[self.rd] = SmaliTypes.Boolean()

class AGET_BYTE(_ARRAY_PARAMETERS_TYPE_PATTERN, _TRIPLE_REGISTER_INSTRUCTION):
    def opcode(self):
        return "aget-byte"
        
    def _set_first_param_type(self):
        self.ans[self.rd] = SmaliTypes.Byte()

class AGET_CHAR(_ARRAY_PARAMETERS_TYPE_PATTERN, _TRIPLE_REGISTER_INSTRUCTION):
    def opcode(self):
        return "aget-char"
        
    def _set_first_param_type(self):
        self.ans[self.rd] = SmaliTypes.Char()

class AGET_SHORT(_ARRAY_PARAMETERS_TYPE_PATTERN, _TRIPLE_REGISTER_INSTRUCTION):
    def opcode(self):
        return "aget-short"
        
    def _set_first_param_type(self):
        self.ans[self.rd] = SmaliTypes.Short()


class APUT(_ARRAY_PARAMETERS_TYPE_PATTERN, _TRIPLE_REGISTER_INSTRUCTION, First_Reg_To_Third_Reg):
    # aput vX, vY, vZ
    # vX is a value to be put into the array
    # vY is an array reference
    # vZ is an index into that array
    def opcode(self):
        return "aput"
        
    def _set_first_param_type(self):
        self.ans[self.rd] = SmaliTypes.Int()

class APUT_WIDE(_ARRAY_PARAMETERS_TYPE_PATTERN, _IMPLICIT_FIRST_REGISTER_INSTRUCTION, _TRIPLE_REGISTER_INSTRUCTION, First_Reg_To_Third_Reg):
    def opcode(self):
        return "aput-wide"
        
    def _set_first_param_type(self):
        self.ans[self.rd] = SmaliTypes.SixtyFourBit()
        self.ans[self.rd + 1] = SmaliTypes.SixtyFourBit_2()

class APUT_OBJECT(_ARRAY_PARAMETERS_TYPE_PATTERN, _TRIPLE_REGISTER_INSTRUCTION, First_Reg_To_Third_Reg):
    def opcode(self):
        return "aput-object"

    def _set_first_param_type(self):
        self.ans[self.rd] = SmaliTypes.NonSpecificObjectReference()

class APUT_BOOLEAN(_ARRAY_PARAMETERS_TYPE_PATTERN, _TRIPLE_REGISTER_INSTRUCTION, First_Reg_To_Third_Reg):
    def opcode(self):
        return "aput-boolean"
        
    def _set_first_param_type(self):
        self.ans[self.rd] = SmaliTypes.Boolean()

class APUT_BYTE(_ARRAY_PARAMETERS_TYPE_PATTERN, _TRIPLE_REGISTER_INSTRUCTION, First_Reg_To_Third_Reg):
    def opcode(self):
        return "aput-byte"

    def _set_first_param_type(self):
        self.ans[self.rd] = SmaliTypes.Byte()

class APUT_CHAR(_ARRAY_PARAMETERS_TYPE_PATTERN, _TRIPLE_REGISTER_INSTRUCTION, First_Reg_To_Third_Reg):
    def opcode(self):
        return "aput-char"

    def _set_first_param_type(self):
        self.ans[self.rd] = SmaliTypes.Char()

class APUT_SHORT(_ARRAY_PARAMETERS_TYPE_PATTERN, _TRIPLE_REGISTER_INSTRUCTION, First_Reg_To_Third_Reg):
    def opcode(self):
        return "aput-short"
        
    def _set_first_param_type(self):
        self.ans[self.rd] = SmaliTypes.Short()





class _I_INSTRUCTION(SmaliAssemblyInstruction):
    # A parent class that should never be instantiated directly
    #   Backward compatibility with how we call IGET() in Instrument
    # instance_field_name
    def __init__(self, reg_dest, reg_calling_instance, class_name , instance_field_name = ""): 
        #print("reg dest: ", reg_dest, "  reg_calling_instance", reg_calling_instance, "  class name", class_name, "  instance_field_name:", instance_field_name)
        self.rd = SmaliRegister(reg_dest)
        self.rci = SmaliRegister(reg_calling_instance)
        
        if instance_field_name != "":
            self.class_name = class_name
            self.ifn = instance_field_name
            self.class_and_field_name =  cn + "->" + ifn
        else:
            self.class_name = class_name.split("->")[0]
            self.class_and_field_name = class_name

        
    def get_registers(self):
        return [self.rd, self.rci]
        
    def get_register_type_implications(self):
        # iget vX, vY, type_id
        # vX dest (or src for iput-* instructions)
        # vY a reference to an object
        # vZ index / offset into array (I think this must be a 32-bit int)
    
        self.ans = {}
        self.ans[self.rci] = SmaliTypes.from_string(self.class_name)
        
        tmp = self.class_and_field_name.split(":")[1]
        first_reg_type = SmaliTypes.from_string(tmp)  
        self.ans[self.rd] = first_reg_type
        return self.ans

    def get_instance_variable(self):
        return str(self).split(",")[2][1:].replace("\n", "")

    def __repr__(self):
        return self.opcode() + " " + str(self.rd) + ", " + str(self.rci) + ", " + self.class_and_field_name

class IGET(_I_INSTRUCTION, Third_Var_To_First_Reg):
    def opcode(self):
        return "iget"

        
class IGET_WIDE(_IMPLICIT_FIRST_REGISTER_INSTRUCTION, _I_INSTRUCTION, Third_Var_To_First_Reg):
    def opcode(self):
        return "iget-wide"
        
    def get_register_type_implications(self):
        ans = super().get_register_type_implications()
        adj_reg = self.rd + 1
        ans[adj_reg] = SmaliTypes.SixtyFourBit_2()
        return ans
        
class IGET_OBJECT(_I_INSTRUCTION, Third_Var_To_First_Reg):
    def opcode(self):
        return "iget-object"

class IGET_BOOLEAN(_I_INSTRUCTION, Third_Var_To_First_Reg):
    def opcode(self):
        return "iget-boolean"

class IGET_BYTE(_I_INSTRUCTION, Third_Var_To_First_Reg):
    def opcode(self):
        return "iget-byte"

class IGET_CHAR(_I_INSTRUCTION, Third_Var_To_First_Reg):
    def opcode(self):
        return "iget-char"

class IGET_SHORT(_I_INSTRUCTION, Third_Var_To_First_Reg):
    def opcode(self):
        return "iget-short"

class IPUT(_I_INSTRUCTION, First_Reg_To_Third_Var):
    def opcode(self):
        return "iput"

class IPUT_WIDE(_IMPLICIT_FIRST_REGISTER_INSTRUCTION, _I_INSTRUCTION, First_Reg_To_Third_Var):
    def opcode(self):
        return "iput-wide"
        
    def get_register_type_implications(self):
        ans = super().get_register_type_implications()
        adj_reg = self.rd + 1
        ans[adj_reg] = SmaliTypes.SixtyFourBit_2()
        return ans
        
class IPUT_OBJECT(_I_INSTRUCTION, First_Reg_To_Third_Var):
    def opcode(self):
        return "iput-object"

class IPUT_BOOLEAN(_I_INSTRUCTION, First_Reg_To_Third_Var):
    def opcode(self):
        return "iput-boolean"

class IPUT_BYTE(_I_INSTRUCTION, First_Reg_To_Third_Var):
    def opcode(self):
        return "iput-byte"

class IPUT_CHAR(_I_INSTRUCTION, First_Reg_To_Third_Var):
    def opcode(self):
        return "iput-char"

class IPUT_SHORT(_I_INSTRUCTION, First_Reg_To_Third_Var):
    def opcode(self):
        return "iput-short"


class _S_INSTRUCTION(SmaliAssemblyInstruction):
    # A parent class that should never be instantiated directly
    #   Backward compatibility with how we call IGET() in Instrument
    def __init__(self, reg_dest, class_name , instance_field_name = ""): 
        self.field_fqn = ""
        self.rd = SmaliRegister(reg_dest)
        if instance_field_name != "":
            self.class_name = class_name
            ifn = instance_field_name
            self.class_and_field_name =  class_name + "->" + ifn
        else:
            self.class_and_field_name = class_name
        
    def get_registers(self):
        return [self.rd]
        
    def get_register_type_implications(self):
        # sget vX, type_id
        # vX dest (or src for iput-* instructions)
        # vY a reference to an object
        # vZ index / offset into array (I think this must be a 32-bit int)
    
        self.ans = {}
        
        tmp = self.class_and_field_name.split(":")[1]
        first_reg_type = SmaliTypes.from_string(tmp)  
        self.ans[self.rd] = first_reg_type
        return self.ans

    def get_instance_variable(self):
        return str(self).split(",")[1][1:].replace("\n", "")

    def __repr__(self):
        if self.field_fqn == "":
            return self.opcode() + " " + str(self.rd) + ", " + self.class_and_field_name

class SGET(_S_INSTRUCTION, Third_Var_To_First_Reg):
    def opcode(self):
        return "sget"

class SGET_WIDE(_IMPLICIT_REGISTER_INSTRUCTION, _S_INSTRUCTION, Third_Var_To_First_Reg):
    def opcode(self):
        return "sget-wide"

    def get_register_type_implications(self):
        ans = super().get_register_type_implications()
        adj_reg = self.rd + 1
        ans[adj_reg] = SmaliTypes.SixtyFourBit_2()
        return ans
        
class SGET_OBJECT(_S_INSTRUCTION, Third_Var_To_First_Reg):
    def opcode(self):
        return "sget-object"

class SGET_BOOLEAN(_S_INSTRUCTION, Third_Var_To_First_Reg):
    def opcode(self):
        return "sget-boolean"

class SGET_BYTE(_S_INSTRUCTION, Third_Var_To_First_Reg):
    def opcode(self):
        return "sget-byte"

class SGET_CHAR(_S_INSTRUCTION, Third_Var_To_First_Reg):
    def opcode(self):
        return "sget-char"

class SGET_SHORT(_S_INSTRUCTION, Third_Var_To_First_Reg):
    def opcode(self):
        return "sget-short"

class SPUT(_S_INSTRUCTION, First_Reg_To_Third_Var):
    def opcode(self):
        return "sput"
        
class SPUT_WIDE(_IMPLICIT_REGISTER_INSTRUCTION, _S_INSTRUCTION, First_Reg_To_Third_Var):
    def opcode(self):
        return "sput-wide"
        
    def get_register_type_implications(self):
        ans = super().get_register_type_implications()
        adj_reg = self.rd + 1
        ans[adj_reg] = SmaliTypes.SixtyFourBit_2()
        return ans
        
class SPUT_OBJECT(_S_INSTRUCTION, First_Reg_To_Third_Var):
    def opcode(self):
        return "sput-object"

class SPUT_BOOLEAN(_S_INSTRUCTION, First_Reg_To_Third_Var):
    def opcode(self):
        return "sput-boolean"

class SPUT_BYTE(_S_INSTRUCTION, First_Reg_To_Third_Var):
    def opcode(self):
        return "sput-byte"

class SPUT_CHAR(_S_INSTRUCTION, First_Reg_To_Third_Var):
    def opcode(self):
        return "sput-char"

class SPUT_SHORT(_S_INSTRUCTION, First_Reg_To_Third_Var):
    def opcode(self):
        return "sput-short"
        

class INVOKE_VIRTUAL(_METHOD_CALL_INSTRUCTION, _PARAMETER_LIST_INSTRUCTION, Invoke_Instruction):
    # I was too lazy to implement the get_register_type_implications
    # function for the below instructions
    # It could be done with the SmaliSignature class from SmaliMethodDef.py
    def opcode(self):
        return "invoke-virtual"

class INVOKE_SUPER(_METHOD_CALL_INSTRUCTION, _PARAMETER_LIST_INSTRUCTION, Invoke_Instruction):
    def opcode(self):
        return "invoke-super"

class INVOKE_DIRECT(_METHOD_CALL_INSTRUCTION, _PARAMETER_LIST_INSTRUCTION, Invoke_Instruction):
    def opcode(self):
        return "invoke-direct"

class INVOKE_STATIC(_METHOD_CALL_INSTRUCTION, _PARAMETER_LIST_INSTRUCTION, Invoke_Instruction):
    # e.g., invoke-static {v2}, Lcom/google/ads/interactivemedia/pal/NonceLoader;->zza(Ljava/lang/String;)Ljava/lang/String;
    def opcode(self):
        return "invoke-static"

class INVOKE_INTERFACE(_METHOD_CALL_INSTRUCTION, _PARAMETER_LIST_INSTRUCTION, Invoke_Instruction):
    # e.g., invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V
    def opcode(self):
        return "invoke-interface"

class INVOKE_VIRTUAL_RANGE(_METHOD_CALL_INSTRUCTION, _PARAMETER_RANGE_INSTRUCTION, Invoke_Instruction):
    def opcode(self):
        return "invoke-virtual/range"

class INVOKE_SUPER_RANGE(_METHOD_CALL_INSTRUCTION, _PARAMETER_RANGE_INSTRUCTION, Invoke_Instruction):
    def opcode(self):
        return "invoke-virtual/range"

class INVOKE_DIRECT_RANGE(_METHOD_CALL_INSTRUCTION, _PARAMETER_RANGE_INSTRUCTION, Invoke_Instruction):
    def opcode(self):
        return "invoke-direct/range"

class INVOKE_STATIC_RANGE(_METHOD_CALL_INSTRUCTION, _PARAMETER_RANGE_INSTRUCTION, Invoke_Instruction):
    def opcode(self):
        return "invoke-static/range"

class INVOKE_INTERFACE_RANGE(_METHOD_CALL_INSTRUCTION, _PARAMETER_RANGE_INSTRUCTION, Invoke_Instruction):
    def opcode(self):
        return "invoke-interface/range"


class _TWO_REGISTER_UNARY_INSTRUCTION(SmaliAssemblyInstruction, Second_Reg_To_First_Reg_Arith):
    # A parent class that should never be instantiated directly
    def __init__(self, reg_dest, reg_arg):
        super().__init__()
        self.rd = SmaliRegister(reg_dest)
        self.ra = SmaliRegister(reg_arg)

    def get_registers(self):
        return [self.rd, self.ra]

    def __repr__(self):
        return self.opcode() + " " + str(self.rd) + ", " + str(self.ra)


class NEG_INT(_ThirtyTwoBit_Parameters, _TWO_REGISTER_UNARY_INSTRUCTION, Second_Reg_To_First_Reg_Arith):
    def opcode(self):
        return "neg-int"

class NOT_INT(_ThirtyTwoBit_Parameters, _TWO_REGISTER_UNARY_INSTRUCTION, Second_Reg_To_First_Reg_Arith):
    def opcode(self):
        return "not-int"
        
class NOT_LONG(_SixtyFourBit_Dest, _IMPLICIT_REGISTER_INSTRUCTION, _TWO_REGISTER_UNARY_INSTRUCTION, Second_Reg_To_First_Reg_Arith):
    def opcode(self):
        return "neg-long"

class NEG_LONG(_SixtyFourBit_Dest, _IMPLICIT_REGISTER_INSTRUCTION, _TWO_REGISTER_UNARY_INSTRUCTION, Second_Reg_To_First_Reg_Arith):
    def opcode(self):
        return "neg-long"

class NEG_FLOAT(_ThirtyTwoBit_Parameters, _TWO_REGISTER_UNARY_INSTRUCTION, Second_Reg_To_First_Reg_Arith):
    def opcode(self):
        return "neg-float"

class NEG_DOUBLE(_SixtyFourBit_Dest, _IMPLICIT_REGISTER_INSTRUCTION, _TWO_REGISTER_UNARY_INSTRUCTION, Second_Reg_To_First_Reg_Arith):
    def opcode(self):
        return "neg-double"

class INT_TO_LONG(_IMPLICIT_FIRST_REGISTER_INSTRUCTION, _TWO_REGISTER_UNARY_INSTRUCTION):
    def opcode(self):
        return "int-to-long"
        
    def get_register_type_implications(self):
        # annoying edge-case: int-to-long v5, v5
        ans = {self.rd: SmaliTypes.Long()}
        adj_reg = self.rd + 1
        ans[adj_reg] = SmaliTypes.Long_2()
        return ans
        

class INT_TO_FLOAT(_ThirtyTwoBit_Parameters, _TWO_REGISTER_UNARY_INSTRUCTION):
    def opcode(self):
        return "int-to-float"

class INT_TO_DOUBLE(_IMPLICIT_FIRST_REGISTER_INSTRUCTION, _TWO_REGISTER_UNARY_INSTRUCTION):
    def opcode(self):
        return "int-to-double"
        
    def get_register_type_implications(self):
        ans = {self.rd: SmaliTypes.Double(), self.ra: SmaliTypes.Int()}
        adj_reg = self.rd + 1
        ans[adj_reg] = SmaliTypes.Double_2()
        return ans

class LONG_TO_INT(_TWO_REGISTER_UNARY_INSTRUCTION):
    def opcode(self):
        return "long-to-int"

    def get_implicit_registers(self):
        regs = self.get_registers()
        return [regs[1] + 1]
        
    def get_register_type_implications(self):
        ans = {self.rd: SmaliTypes.Int(), self.ra: SmaliTypes.Long()}
        adj_reg = self.ra + 1
        ans[adj_reg] = SmaliTypes.Long_2()
        return ans

class LONG_TO_FLOAT(_TWO_REGISTER_UNARY_INSTRUCTION):
    def opcode(self):
        return "long-to-float"
        
    def get_implicit_registers(self):
        regs = self.get_registers()
        return ["v" + str(int(regs[1][1:])+1)]
        
    def get_register_type_implications(self):
        ans = {self.rd: SmaliTypes.Float(), self.ra: SmaliTypes.Long()}
        adj_reg = self.ra + 1
        ans[adj_reg] = SmaliTypes.Long_2()
        return ans

class LONG_TO_DOUBLE(_SixtyFourBit_Dest, _IMPLICIT_REGISTER_INSTRUCTION, _TWO_REGISTER_UNARY_INSTRUCTION):
    def opcode(self):
        return "long-to-double"


class FLOAT_TO_INT(_ThirtyTwoBit_Parameters, _TWO_REGISTER_UNARY_INSTRUCTION):
    def opcode(self):
        return "float-to-int"

class FLOAT_TO_LONG(_IMPLICIT_FIRST_REGISTER_INSTRUCTION, _TWO_REGISTER_UNARY_INSTRUCTION):
    def opcode(self):
        return "float-to-long"
        
    def get_register_type_implications(self):
        ans = {self.rd: SmaliTypes.Long(), self.ra: SmaliTypes.Float()}
        adj_reg = self.rd + 1
        ans[adj_reg] = SmaliTypes.Long_2()
        return ans

class FLOAT_TO_DOUBLE(_IMPLICIT_FIRST_REGISTER_INSTRUCTION, _TWO_REGISTER_UNARY_INSTRUCTION):
    def opcode(self):
        return "float-to-double"
        
    def get_register_type_implications(self):
        ans = {self.rd: SmaliTypes.Double(), self.ra: SmaliTypes.Float()}
        adj_reg = self.rd + 1
        ans[adj_reg] = SmaliTypes.Double_2()
        return ans

class DOUBLE_TO_INT(_TWO_REGISTER_UNARY_INSTRUCTION):
    def opcode(self):
        return "double-to-int"
        
    def get_implicit_registers(self):
        regs = self.get_registers()
        return ["v" + str(int(regs[1][1:])+1)]
        
    def get_register_type_implications(self):
        ans = {self.rd: SmaliTypes.Int(), self.ra: SmaliTypes.Double()}
        adj_reg = self.ra + 1
        ans[adj_reg] = SmaliTypes.Double_2()
        return ans

class DOUBLE_TO_LONG(_SixtyFourBit_Dest, _IMPLICIT_REGISTER_INSTRUCTION, _TWO_REGISTER_UNARY_INSTRUCTION):
    def opcode(self):
        return "double-to-long"

class DOUBLE_TO_FLOAT(_TWO_REGISTER_UNARY_INSTRUCTION):
    def opcode(self):
        return "double-to-float"
        
    def get_implicit_registers(self):
        regs = self.get_registers()
        return ["v" + str(int(regs[1][1:])+1)]
        
    def get_register_type_implications(self):
        ans = {self.rd: SmaliTypes.Float(), self.ra: SmaliTypes.Double()}
        adj_reg = self.ra + 1
        ans[adj_reg] = SmaliTypes.Double_2()
        return ans

class INT_TO_BYTE(_ThirtyTwoBit_Parameters, _TWO_REGISTER_UNARY_INSTRUCTION):
    def opcode(self):
        return "int-to-byte"

class INT_TO_CHAR(_ThirtyTwoBit_Parameters, _TWO_REGISTER_UNARY_INSTRUCTION):
    def opcode(self):
        return "int-to-char"

class INT_TO_SHORT(_ThirtyTwoBit_Parameters, _TWO_REGISTER_UNARY_INSTRUCTION):
    def opcode(self):
        return "int-to-short"

class ADD_INT(_ThirtyTwoBit_Parameters, _TRIPLE_REGISTER_INSTRUCTION, Second_Reg_To_First_Reg_Arith):
    def opcode(self):
        return "add-int"

class SUB_INT(_ThirtyTwoBit_Parameters, _TRIPLE_REGISTER_INSTRUCTION, Second_Reg_To_First_Reg_Arith):
    def opcode(self):
        return "sub-int"

class MUL_INT(_ThirtyTwoBit_Parameters, _TRIPLE_REGISTER_INSTRUCTION, Second_Reg_To_First_Reg_Arith):
    def opcode(self):
        return "mul-int"

class DIV_INT(_ThirtyTwoBit_Parameters, _TRIPLE_REGISTER_INSTRUCTION, Second_Reg_To_First_Reg_Arith):
    def opcode(self):
        return "div-int"

class REM_INT(_ThirtyTwoBit_Parameters, _TRIPLE_REGISTER_INSTRUCTION, Second_Reg_To_First_Reg_Arith):
    def opcode(self):
        return "rem-int"

class AND_INT(_ThirtyTwoBit_Parameters, _TRIPLE_REGISTER_INSTRUCTION, Second_Reg_To_First_Reg_Arith):
    def opcode(self):
        return "and-int"

class OR_INT(_ThirtyTwoBit_Parameters, _TRIPLE_REGISTER_INSTRUCTION, Second_Reg_To_First_Reg_Arith):
    def opcode(self):
        return "or-int"

class XOR_INT(_ThirtyTwoBit_Parameters, _TRIPLE_REGISTER_INSTRUCTION, Second_Reg_To_First_Reg_Arith):
    def opcode(self):
        return "xor-int"

class SHL_INT(_ThirtyTwoBit_Parameters, _TRIPLE_REGISTER_INSTRUCTION):
    def opcode(self):
        return "shl-int"

class SHR_INT(_ThirtyTwoBit_Parameters, _TRIPLE_REGISTER_INSTRUCTION):
    def opcode(self):
        return "shr-int"

class USHR_INT(_ThirtyTwoBit_Parameters, _TRIPLE_REGISTER_INSTRUCTION):
    def opcode(self):
        return "ushr-int"

class ADD_LONG(_SixtyFourBit_Dest, _IMPLICIT_REGISTER_INSTRUCTION, _TRIPLE_REGISTER_INSTRUCTION, Second_Reg_To_First_Reg_Arith):
    def opcode(self):
        return "add-long"

class SUB_LONG(_SixtyFourBit_Dest, _IMPLICIT_REGISTER_INSTRUCTION, _TRIPLE_REGISTER_INSTRUCTION, Second_Reg_To_First_Reg_Arith):
    def opcode(self):
        return "sub-long"

class MUL_LONG(_SixtyFourBit_Dest, _IMPLICIT_REGISTER_INSTRUCTION, _TRIPLE_REGISTER_INSTRUCTION, Second_Reg_To_First_Reg_Arith):
    def opcode(self):
        return "mul-long"

class DIV_LONG(_SixtyFourBit_Dest, _IMPLICIT_REGISTER_INSTRUCTION, _TRIPLE_REGISTER_INSTRUCTION, Second_Reg_To_First_Reg_Arith):
    def opcode(self):
        return "div-long"

class REM_LONG(_SixtyFourBit_Dest, _IMPLICIT_REGISTER_INSTRUCTION, _TRIPLE_REGISTER_INSTRUCTION, Second_Reg_To_First_Reg_Arith):
    def opcode(self):
        return "rem-long"

class AND_LONG(_SixtyFourBit_Dest, _IMPLICIT_REGISTER_INSTRUCTION, _TRIPLE_REGISTER_INSTRUCTION, Second_Reg_To_First_Reg_Arith):
    def opcode(self):
        return "and-long"

class OR_LONG(_SixtyFourBit_Dest, _IMPLICIT_REGISTER_INSTRUCTION, _TRIPLE_REGISTER_INSTRUCTION, Second_Reg_To_First_Reg_Arith):
    def opcode(self):
        return "or-long"

class XOR_LONG(_SixtyFourBit_Dest, _IMPLICIT_REGISTER_INSTRUCTION, _TRIPLE_REGISTER_INSTRUCTION, Second_Reg_To_First_Reg_Arith):
    def opcode(self):
        return "xor-long"

class SHL_LONG(_SixtyFourBit_Dest, _IMPLICIT_REGISTER_INSTRUCTION, _TRIPLE_REGISTER_INSTRUCTION):
    def opcode(self):
        return "shl-long"

class SHR_LONG(_SixtyFourBit_Dest, _IMPLICIT_REGISTER_INSTRUCTION,_TRIPLE_REGISTER_INSTRUCTION):
    def opcode(self):
        return "shr-long"

class USHR_LONG(_SixtyFourBit_Dest, _IMPLICIT_REGISTER_INSTRUCTION, _TRIPLE_REGISTER_INSTRUCTION):
    def opcode(self):
        return "ushr-long"

class ADD_FLOAT(_ThirtyTwoBit_Parameters, _TRIPLE_REGISTER_INSTRUCTION, Second_Reg_To_First_Reg_Arith):
    def opcode(self):
        return "add-float"

class SUB_FLOAT(_ThirtyTwoBit_Parameters, _TRIPLE_REGISTER_INSTRUCTION, Second_Reg_To_First_Reg_Arith):
    def opcode(self):
        return "sub-float"

class MUL_FLOAT(_ThirtyTwoBit_Parameters, _TRIPLE_REGISTER_INSTRUCTION, Second_Reg_To_First_Reg_Arith):
    def opcode(self):
        return "mul-float"

class DIV_FLOAT(_ThirtyTwoBit_Parameters, _TRIPLE_REGISTER_INSTRUCTION, Second_Reg_To_First_Reg_Arith):
    def opcode(self):
        return "div-float"

class REM_FLOAT(_ThirtyTwoBit_Parameters, _TRIPLE_REGISTER_INSTRUCTION, Second_Reg_To_First_Reg_Arith):
    def opcode(self):
        return "rem-float"

class ADD_DOUBLE(_SixtyFourBit_Dest, _IMPLICIT_REGISTER_INSTRUCTION, _TRIPLE_REGISTER_INSTRUCTION, Second_Reg_To_First_Reg_Arith):
    def opcode(self):
        return "add-double"

class SUB_DOUBLE(_SixtyFourBit_Dest, _IMPLICIT_REGISTER_INSTRUCTION, _TRIPLE_REGISTER_INSTRUCTION, Second_Reg_To_First_Reg_Arith):
    def opcode(self):
        return "sub-double"

class MUL_DOUBLE(_SixtyFourBit_Dest, _IMPLICIT_REGISTER_INSTRUCTION, _TRIPLE_REGISTER_INSTRUCTION, Second_Reg_To_First_Reg_Arith):
    def opcode(self):
        return "mul-double"

class DIV_DOUBLE(_SixtyFourBit_Dest, _IMPLICIT_REGISTER_INSTRUCTION, _TRIPLE_REGISTER_INSTRUCTION, Second_Reg_To_First_Reg_Arith):
    def opcode(self):
        return "div-double"

class REM_DOUBLE(_SixtyFourBit_Dest, _IMPLICIT_REGISTER_INSTRUCTION, _TRIPLE_REGISTER_INSTRUCTION, Second_Reg_To_First_Reg_Arith):
    def opcode(self):
        return "rem-double"


class _TWO_REGISTER_BINARY_INSTRUCTION(SmaliAssemblyInstruction, Second_Reg_To_First_Reg_Arith_2addr):
    # A parent class that should never be instantiated directly
    
    def __init__(self, reg_dest_and_arg1, reg_arg2):
        super().__init__()
        self.rd = SmaliRegister(reg_dest_and_arg1)
        self.ra1 = SmaliRegister(reg_dest_and_arg1)
        self.ra2 = SmaliRegister(reg_arg2)
        
    def get_registers(self):
        return [self.rd, self.ra2]
        
    def __repr__(self):
        return self.opcode() + " " + str(self.rd) + ", " + str(self.ra2)
    
    
class ADD_INT_2ADDR(_ThirtyTwoBit_Parameters, _TWO_REGISTER_BINARY_INSTRUCTION,):
    def opcode(self):
        return "add-int/2addr"

class SUB_INT_2ADDR(_ThirtyTwoBit_Parameters, _TWO_REGISTER_BINARY_INSTRUCTION):
    def opcode(self):
        return "sub-int/2addr"

class MUL_INT_2ADDR(_ThirtyTwoBit_Parameters, _TWO_REGISTER_BINARY_INSTRUCTION):
    def opcode(self):
        return "mul-int/2addr"

class DIV_INT_2ADDR(_ThirtyTwoBit_Parameters, _TWO_REGISTER_BINARY_INSTRUCTION):
    def opcode(self):
        return "div-int/2addr"
        
class REM_INT_2ADDR(_ThirtyTwoBit_Parameters, _TWO_REGISTER_BINARY_INSTRUCTION):
    def opcode(self):
        return "rem-int/2addr"

class AND_INT_2ADDR(_ThirtyTwoBit_Parameters, _TWO_REGISTER_BINARY_INSTRUCTION):
    def opcode(self):
        return "and-int/2addr"
        
class OR_INT_2ADDR(_ThirtyTwoBit_Parameters, _TWO_REGISTER_BINARY_INSTRUCTION):
    def opcode(self):
        return "or-int/2addr"

class XOR_INT_2ADDR(_ThirtyTwoBit_Parameters, _TWO_REGISTER_BINARY_INSTRUCTION):
    def opcode(self):
        return "xor-int/2addr"

class SHL_INT_2ADDR(_ThirtyTwoBit_Parameters, _TWO_REGISTER_BINARY_INSTRUCTION):
    def opcode(self):
        return "shl-int/2addr"

class SHR_INT_2ADDR(_ThirtyTwoBit_Parameters, _TWO_REGISTER_BINARY_INSTRUCTION):
    def opcode(self):
        return "shr-int/2addr"

class USHR_INT_2ADDR(_ThirtyTwoBit_Parameters, _TWO_REGISTER_BINARY_INSTRUCTION):
    def opcode(self):
        return "ushr-int/2addr"
            
class ADD_LONG_2ADDR(_SixtyFourBit_Dest, _IMPLICIT_REGISTER_INSTRUCTION, _TWO_REGISTER_BINARY_INSTRUCTION):
    def opcode(self):
        return "add-long/2addr"

class SUB_LONG_2ADDR(_SixtyFourBit_Dest, _IMPLICIT_REGISTER_INSTRUCTION, _TWO_REGISTER_BINARY_INSTRUCTION):
    def opcode(self):
        return "sub-long/2addr"

class MUL_LONG_2ADDR(_SixtyFourBit_Dest, _IMPLICIT_REGISTER_INSTRUCTION, _TWO_REGISTER_BINARY_INSTRUCTION):
    def opcode(self):
        return "mul-long/2addr"

class DIV_LONG_2ADDR(_SixtyFourBit_Dest, _IMPLICIT_REGISTER_INSTRUCTION, _TWO_REGISTER_BINARY_INSTRUCTION):
    def opcode(self):
        return "div-long/2addr"
        
class REM_LONG_2ADDR(_SixtyFourBit_Dest, _IMPLICIT_REGISTER_INSTRUCTION, _TWO_REGISTER_BINARY_INSTRUCTION):
    def opcode(self):
        return "rem-long/2addr"

class AND_LONG_2ADDR(_SixtyFourBit_Dest, _IMPLICIT_REGISTER_INSTRUCTION, _TWO_REGISTER_BINARY_INSTRUCTION):
    def opcode(self):
        return "and-long/2addr"
        
class OR_LONG_2ADDR(_SixtyFourBit_Dest, _IMPLICIT_REGISTER_INSTRUCTION, _TWO_REGISTER_BINARY_INSTRUCTION):
    def opcode(self):
        return "or-long/2addr"

class XOR_LONG_2ADDR(_SixtyFourBit_Dest, _IMPLICIT_REGISTER_INSTRUCTION, _TWO_REGISTER_BINARY_INSTRUCTION):
    def opcode(self):
        return "xor-long/2addr"

class SHL_LONG_2ADDR(_SixtyFourBit_Dest, _IMPLICIT_REGISTER_INSTRUCTION, _TWO_REGISTER_BINARY_INSTRUCTION):
    def opcode(self):
        return "shl-long/2addr"

class SHR_LONG_2ADDR(_SixtyFourBit_Dest, _IMPLICIT_REGISTER_INSTRUCTION, _TWO_REGISTER_BINARY_INSTRUCTION):
    def opcode(self):
        return "shr-long/2addr"

class USHR_LONG_2ADDR(_SixtyFourBit_Dest, _IMPLICIT_REGISTER_INSTRUCTION, _TWO_REGISTER_BINARY_INSTRUCTION):
    def opcode(self):
        return "ushr-long/2addr"

class ADD_FLOAT_2ADDR(_ThirtyTwoBit_Parameters, _TWO_REGISTER_BINARY_INSTRUCTION):
    def opcode(self):
        return "add-float/2addr"
        
class SUB_FLOAT_2ADDR(_ThirtyTwoBit_Parameters, _TWO_REGISTER_BINARY_INSTRUCTION):
    def opcode(self):
        return "sub-float/2addr"
        
class MUL_FLOAT_2ADDR(_ThirtyTwoBit_Parameters, _TWO_REGISTER_BINARY_INSTRUCTION):
    def opcode(self):
        return "mul-float/2addr"
        
class DIV_FLOAT_2ADDR(_ThirtyTwoBit_Parameters, _TWO_REGISTER_BINARY_INSTRUCTION):
    def opcode(self):
        return "div-float/2addr"
        
class REM_FLOAT_2ADDR(_ThirtyTwoBit_Parameters, _TWO_REGISTER_BINARY_INSTRUCTION):
    def opcode(self):
        return "rem-float/2addr"
        
class ADD_DOUBLE_2ADDR(_SixtyFourBit_Dest, _IMPLICIT_REGISTER_INSTRUCTION, _TWO_REGISTER_BINARY_INSTRUCTION):
    def opcode(self):
        return "add-double/2addr"
        
class SUB_DOUBLE_2ADDR(_SixtyFourBit_Dest, _IMPLICIT_REGISTER_INSTRUCTION, _TWO_REGISTER_BINARY_INSTRUCTION):
    def opcode(self):
        return "sub-double/2addr"
        
class MUL_DOUBLE_2ADDR(_SixtyFourBit_Dest, _IMPLICIT_REGISTER_INSTRUCTION, _TWO_REGISTER_BINARY_INSTRUCTION):
    def opcode(self):
        return "mul-double/2addr"
        
class DIV_DOUBLE_2ADDR(_SixtyFourBit_Dest, _IMPLICIT_REGISTER_INSTRUCTION, _TWO_REGISTER_BINARY_INSTRUCTION):
    def opcode(self):
        return "div-double/2addr"
        
class REM_DOUBLE_2ADDR(_SixtyFourBit_Dest, _IMPLICIT_REGISTER_INSTRUCTION, _TWO_REGISTER_BINARY_INSTRUCTION):
    def opcode(self):
        return "rem-double/2addr"
        

class _TWO_REGISTER_AND_LITERAL_BINARY_INSTRUCTION(SmaliAssemblyInstruction, Second_Reg_To_First_Reg_Arith):
    # A parent class that should never be instantiated directly
    
    def __init__(self, reg_dest_and_arg1, reg_arg2, literal):
        self.rd = SmaliRegister(reg_dest_and_arg1)
        self.ra1 = SmaliRegister(reg_dest_and_arg1)
        self.ra2 = SmaliRegister(reg_arg2)
        self.lit = literal
        
    def get_registers(self):
        return [self.rd, self.ra2]
        
    def __repr__(self):
        return self.opcode() + " " + str(self.rd) + ", " + str(self.ra2) + ", " + str(self.lit)


class ADD_INT_LIT16(_ThirtyTwoBit_Parameters, _TWO_REGISTER_AND_LITERAL_BINARY_INSTRUCTION):
    def opcode(self):
        return "add-int/lit16"
        
class SUB_INT_LIT16(_ThirtyTwoBit_Parameters, _TWO_REGISTER_AND_LITERAL_BINARY_INSTRUCTION):
    def opcode(self):
        return "sub-int/lit16"

class MUL_INT_LIT16(_ThirtyTwoBit_Parameters, _TWO_REGISTER_AND_LITERAL_BINARY_INSTRUCTION):
    def opcode(self):
        return "mul-int/lit16"
        
class DIV_INT_LIT16(_ThirtyTwoBit_Parameters, _TWO_REGISTER_AND_LITERAL_BINARY_INSTRUCTION):
    def opcode(self):
        return "div-int/lit16"
        
class REM_INT_LIT16(_ThirtyTwoBit_Parameters, _TWO_REGISTER_AND_LITERAL_BINARY_INSTRUCTION):
    def opcode(self):
        return "rem-int/lit16"

class AND_INT_LIT16(_ThirtyTwoBit_Parameters, _TWO_REGISTER_AND_LITERAL_BINARY_INSTRUCTION):
    def opcode(self):
        return "and-int/lit16"

class OR_INT_LIT16(_ThirtyTwoBit_Parameters, _TWO_REGISTER_AND_LITERAL_BINARY_INSTRUCTION):
    def opcode(self):
        return "or-int/lit16"
        
class XOR_INT_LIT16(_ThirtyTwoBit_Parameters, _TWO_REGISTER_AND_LITERAL_BINARY_INSTRUCTION):
    def opcode(self):
        return "xor-int/lit16"
        
class RSUB_INT(_ThirtyTwoBit_Parameters, _TWO_REGISTER_AND_LITERAL_BINARY_INSTRUCTION):
    # this is a weird instruction, apparently there is rsub-int and rsub-int/lit8
    # rsub-int should actually be named rsub-int/lit16, but it's not and there
    # are not other variants such as rsub-long or radd-float, etc.
    def opcode(self):
        return "rsub-int"
        
class ADD_INT_LIT8(_ThirtyTwoBit_Parameters, _TWO_REGISTER_AND_LITERAL_BINARY_INSTRUCTION):
    def opcode(self):
        return "add-int/lit8"
        
class SUB_INT_LIT8(_ThirtyTwoBit_Parameters, _TWO_REGISTER_AND_LITERAL_BINARY_INSTRUCTION):
    def opcode(self):
        return "sub-int/lit8"
        
class RSUB_INT_LIT8(_ThirtyTwoBit_Parameters, _TWO_REGISTER_AND_LITERAL_BINARY_INSTRUCTION):
    def opcode(self):
        return "rsub-int/lit8"
        
class MUL_INT_LIT8(_ThirtyTwoBit_Parameters, _TWO_REGISTER_AND_LITERAL_BINARY_INSTRUCTION):
    def opcode(self):
        return "mul-int/lit8"
        
class DIV_INT_LIT8(_ThirtyTwoBit_Parameters, _TWO_REGISTER_AND_LITERAL_BINARY_INSTRUCTION):
    def opcode(self):
        return "div-int/lit8"
        
class REM_INT_LIT8(_ThirtyTwoBit_Parameters, _TWO_REGISTER_AND_LITERAL_BINARY_INSTRUCTION):
    def opcode(self):
        return "rem-int/lit8"
        
class AND_INT_LIT8(_ThirtyTwoBit_Parameters, _TWO_REGISTER_AND_LITERAL_BINARY_INSTRUCTION):
    def opcode(self):
        return "and-int/lit8"
        
class OR_INT_LIT8(_ThirtyTwoBit_Parameters, _TWO_REGISTER_AND_LITERAL_BINARY_INSTRUCTION):
    def opcode(self):
        return "or-int/lit8"
        
class XOR_INT_LIT8(_ThirtyTwoBit_Parameters, _TWO_REGISTER_AND_LITERAL_BINARY_INSTRUCTION):
    def opcode(self):
        return "xor-int/lit8"
        
class SHL_INT_LIT8(_ThirtyTwoBit_Parameters, _TWO_REGISTER_AND_LITERAL_BINARY_INSTRUCTION):
    def opcode(self):
        return "shl-int/lit8"
        
class SHR_INT_LIT8(_ThirtyTwoBit_Parameters, _TWO_REGISTER_AND_LITERAL_BINARY_INSTRUCTION):
    def opcode(self):
        return "shr-int/lit8"
        
class USHR_INT_LIT8(_ThirtyTwoBit_Parameters, _TWO_REGISTER_AND_LITERAL_BINARY_INSTRUCTION):
    def opcode(self):
        return "ushr-int/lit8"
        

        
        
class _I_INSTRUCTION_QUICK(SmaliAssemblyInstruction):
    # A parent class that should never be instantiated directly
    # No instances of any "quick" instruction found in our APKs
    def __init__(self, reg_dest, reg_calling_instance, offset): 
        self.rd = SmaliRegister(reg_dest)
        self.rci = SmaliRegister(reg_calling_instance)
        self.offset = offset
        
    def get_registers(self):
        return [self.rd, self.rci]
        
    def get_register_type_implications(self):
        # iget vX, vY, [offset value]
        # vX dest (or src for iput-* instructions)
        # vY a reference to an object
        ans = {self.rci: SmaliTypes.NonSpecificObjectReference()}
        ans[self.rd] = SmaliTypes.ThirtyTwoBit()
        return ans

    def __repr__(self):
        return self.opcode() + " " + str(self.rd) + ", " + str(self.rci) + ", " + str(self.offset)

class IGET_QUICK(_I_INSTRUCTION_QUICK, Third_Var_To_First_Reg):
    def opcode(self):
        return "iget-quick"

class IGET_WIDE_QUICK(_SixtyFourBit_Dest, _IMPLICIT_FIRST_REGISTER_INSTRUCTION, _I_INSTRUCTION_QUICK, Third_Var_To_First_Reg):
    def opcode(self):
        return "iget-wide-quick"
        
class IGET_OBJECT_QUICK(_Object_Parameters, _I_INSTRUCTION_QUICK, Third_Var_To_First_Reg):
    def opcode(self):
        return "iget-object-quick"
        
class IPUT_QUICK(_I_INSTRUCTION_QUICK, First_Reg_To_Third_Var):
    def opcode(self):
        return "iput-quick"
        
class IPUT_WIDE_QUICK(_SixtyFourBit_Dest, _IMPLICIT_FIRST_REGISTER_INSTRUCTION, _I_INSTRUCTION_QUICK, First_Reg_To_Third_Var):
    def opcode(self):
        return "iput-wide-quick"
        
class IPUT_OBJECT_QUICK(_Object_Parameters, _I_INSTRUCTION_QUICK, First_Reg_To_Third_Var):
    def opcode(self):
        return "iput-object-quick"

class INVOKE_VIRTUAL_QUICK(_PARAMETER_LIST_INSTRUCTION, Invoke_Instruction):
    def __init__(self, element_list, vtable):
        super().__init__(element_list, None)
        self.vtable = vtable
        self.calling_object = SmaliRegister(element_list[0])
        
    def opcode(self):
        return "invoke-virtual-quick"
        
    def __repr__(self):
        reg_string = ", ".join([str(r) for r in self.register_list])
        return self.opcode() + " {" + reg_string + "}, " + str(self.vtable)

class INVOKE_SUPER_QUICK(_PARAMETER_LIST_INSTRUCTION, Invoke_Instruction):
    def __init__(self, element_list, vtable):
        super().__init__(element_list, None)
        self.vtable = vtable
        self.calling_object = SmaliRegister(element_list[0])
        
    def opcode(self):
        return "invoke-super-quick"
        
    def __repr__(self):
        reg_string = ", ".join(self.register_list)
        return self.opcode() + " {" + reg_string + "}, " + str(self.vtable)


# The following classes don't seem to
# appear anywhere in our APK files
# so they are left unimplemented
# class INVOKE_VIRTUAL_QUICK_RANGE
# class INVOKE_SUPER_QUICK_RANGE
        
class STIGMA_LABEL(SmaliAssemblyInstruction):
    def __init__(self, num):
        self.n = num

    def __repr__(self):
        # LABELS are weird.  If you change this code be careful of compatibility 
        # with instructions such as IF_EQZ that use a LABEL in-line
        return ":stigma_jump_label_" + str(self.n)
        
class TRY_START_LABEL(STIGMA_LABEL):
    # e.g., :try_start_stigma_0
    def __repr__(self):
        return ":try_start_stigma_" + str(self.n) 
        
class TRY_END_LABEL(STIGMA_LABEL):
    # e.g., :try_end_stigma_0
    def __repr__(self):
        return ":try_end_stigma_" + str(self.n)
        
class CATCH_LABEL(STIGMA_LABEL):
    # e.g., :catch_stigma_0
    def __repr__(self):
        return ":catch_stigma_" + str(self.n)
        
        
        
class CATCH_DIRECTIVE(SmaliAssemblyInstruction):
    #  # .catch Lcom/fasterxml/jackson/core/JsonProcessingException; {:try_start_0 .. :try_end_0} :catch_0
    def __init__(self, exception_type_id, start_label, end_label, catch_label):
        self.exception_type_id = exception_type_id
        self.start_label = start_label
        self.end_label = end_label
        self.catch_label = catch_label
        
    def __repr__(self):
        # exception_type_id is cast with str() and not repr() because it
        # is a string and not another SmaliAssemblyInstruction (or subtype) object
        return ".catch " + str(self.exception_type_id) + " {" + repr(self.start_label) + " .. " + repr(self.end_label) + "} " + repr(self.catch_label)
        
        
        
        
    


class LOG_D(INVOKE_STATIC):
    # Not actually an assembly instruction!  More 
    # of a short-cut to quickly create an instance
    # of invoke-static for a Log.d() call
    def __init__(self, reg_tag, reg_msg):
        self.rt = SmaliRegister(reg_tag)
        self.rm = SmaliRegister(reg_msg)

    def __repr__(self):
        return "invoke-static {" + str(self.rt) + ", " + str(self.rm) + "},  Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I"



TYPE_CODE_WORD = 0
TYPE_CODE_WIDE = 1
TYPE_CODE_WIDE_REMAINING = 2
TYPE_CODE_OBJ_REF = 3

TYPE_CODE_ALL = [TYPE_CODE_WORD, TYPE_CODE_WIDE, 
    TYPE_CODE_WIDE_REMAINING, TYPE_CODE_OBJ_REF]

# https://github.com/JesusFreke/smali/wiki/TypesMethodsAndFields
TYPE_LIST_OBJECT_REF = ["L", "["]
TYPE_LIST_WIDE = ["J", "D"]
TYPE_LIST_WIDE_REMAINING = ["J2", "D2"]
TYPE_LIST_WORD = ["Z", "B", "S", "C", "I", "F"]

TYPE_LIST_ALL = TYPE_LIST_OBJECT_REF \
                    + TYPE_LIST_WIDE \
                    + TYPE_LIST_WIDE_REMAINING \
                    + TYPE_LIST_WORD


def type_code_name(type_code):
    if(type_code == None):
        return "None"
    elif(type_code == TYPE_CODE_WORD):
        return "TYPE_WORD"
    elif(type_code == TYPE_CODE_OBJ_REF):
        return "TYPE_OBJ_REF"
    elif(type_code == TYPE_CODE_WIDE):
        return "TYPE_WIDE"
    elif(type_code == TYPE_CODE_WIDE_REMAINING):
        return "TYPE_WIDE_REM"
    else:
        raise ValueError("Invalid Type Code: " + str(type_code))






def opcode_has_parameter_list(opcode):
    return opcode in ["filled-new-array", "invoke-virtual", "invoke-super", "invoke-direct",
        "invoke-static", "invoke-interface", "execute-inline", "invoke-virtual-quick", 
        "invoke-super-quick"]


def opcode_has_parameter_range(opcode):
    return opcode.endswith("/range")


def main():

    # One test for every isntruction in SmaliAssemblyInstructions.py
    # http://pallergabor.uw.hu/androidblog/dalvik_opcodes.html
    
    print("Testing SmaliAssemblyInstructions")

    # second line is intentionally a blank line
    TESTS = ["    nop\n",
             "    \n",
             "    move v6, p5\n",
             "    move/16 v6, v24\n", # synthetic example
             "    move/from16 v5, v26\n",
             "    move-wide v14, v7\n",
             "    move-wide/from16 v15, p3\n",
             "    move-wide/16 v12, p2\n", # synthetic example
             "    move-object v4, v3\n",
             "    move-object/from16 v5, v31\n",
             "    move-object/16 v2, v3\n", # synthetic example
             "    move-result v0\n", 
             "    move-result-wide v3\n",
             "    move-result-object v3\n",
             "    move-exception v0\n",
             "    return-void\n",
             "    return-wide v0\n",
             "    return-object v1\n",
             "    const v3, 0xffff\n",
             "    const/4 v1, -0x1\n",
             "    const/16 v0, 0xb\n",
             "    const/high16 v3, 0x3f800000\n", # 0xf800... is float value 1.0
             "    const-wide/16 v18, 0x1\n",
             "    const-wide/32 v6, 0x2932e00\n",
             "    const-wide v4, 0x100000000L\n",
             "    const-wide/high16 v2, -0x8000000000000000L\n",
             "    const-string v1, \"Parcelables cannot be written to an OutputStream\"\n",
             "    const-class v4, Landroidx/versionedparcelable/VersionedParcel;\n",
             "    const-string v3, \"this ain\'t it!\"\n",
             "    monitor-enter p0\n",
             "    monitor-exit p0\n",
             "    check-cast v3, Ljava/lang/String;\n",
             "    instance-of v0, p1, Ljava/lang/Integer;\n",
             "    new-instance v0, Ljava/lang/RuntimeException;\n",
             "    array-length v0, p1\n",
             "    new-array v1, v0, [J\n",
             "    filled-new-array {v0, v1, v2}, [Ljava/lang/String;\n",
             #"    filled-new-array/range {v19..v21}, [B\n",
             "    fill-array-data v1, :array_6\n",
             "    throw v1\n",
             "    goto :goto_0\n",
             "    goto/32 :goto_0\n", # synthetic example
             "    goto/16 :goto_0\n",  # synthetic example
             "    packed-switch p1, :pswitch_data_0\n",
             "    sparse-switch v3, :sswitch_data_0\n",
             "    cmpl-float v5, v4, v6\n",
             "    cmpg-float v5, p1, v5\n",
             "    cmpl-double v16, v0, v14\n",
             "    cmpg-double v13, v8, v14\n",
             "    cmp-long v6, v4, p1\n",
             "    if-eq v3, v1, :cond_2\n",
             "    if-ne v1, p1, :cond_0\n",
             "    if-lt v3, v2, :cond_0\n",
             "    if-ge v1, v0, :cond_1\n",
             "    if-gt v12, v14, :cond_8\n",
             "    if-le v3, v10, :cond_25\n",
             "    if-eqz v4, :cond_0\n",
             "    if-nez v0, :cond_0\n",
             "    if-ltz v0, :cond_7\n",
             "    if-gez v0, :cond_0\n",
             "    if-gtz v5, :cond_0\n",
             "    if-lez v0, :cond_0\n",
             "    aget v0, v0, v1\n",
             "    aput v1, v0, v2\n",
             "    iget-object v0, p0, Landroidx/transition/TransitionSet$1;->val$nextTransition:Landroidx/transition/Transition;\n",
             "    iput p2, p0, Landroidx/transition/TransitionSet$1;->val$nextTransition:Landroidx/transition/Transition;\n",
             "    sget-wide v2, Lcom/google/android/material/card/MaterialCardViewHelper;->COS_45:D\n",
             "    sput-object v0, Lcom/google/android/material/snackbar/Snackbar;->SNACKBAR_BUTTON_STYLE_ATTR:[I\n",
             "    sput-boolean v0, Lcom/google/android/material/ripple/RippleUtils;->USE_FRAMEWORK_RIPPLE:Z\n",
             "    sput-char v0, Lcom/google/android/material/ripple/RippleUtils;->USE_FRAMEWORK_RIPPLE:Z\n", # synthetic
             "    invoke-virtual {v1, v2, p1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V\n",
             "    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V\n",
             "    invoke-super {p0}, Landroid/widget/GridView;->onAttachedToWindow()V\n",
             "    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;\n",
             "    neg-int v2, v0\n",
             "    int-to-long v3, p1\n",
             "    long-to-int v7, v6\n",
             "    float-to-int v1, v1\n",
             "    double-to-float v3, v3\n",
             "    int-to-char v2, v2\n",
             "    add-int v0, v11, v13\n",
             "    or-int v6, v2, p2\n",
             "    div-double v2, p17, v2\n",
             "    add-int/2addr v3, v4\n",
             "    shl-int/2addr v7, v2\n",
             "    add-long/2addr v1, v3\n",
             "    add-float/2addr v6, v7\n",
             "    sub-double/2addr v11, v9\n",
             "    mul-int/lit16 v0, v0, 0x3e8\n",
             "    ushr-int/lit8 v2, v2, 0x1\n",
             "    const-string/jumbo v1, \"unrated\"\n",
             "    iget-quick v1, v2, [obj+0010]\n", # not sure about this
             "    invoke-virtual-quick {v15, v12}, vtable\n", # not sure about this
    # New test cases can be added by (a) selecting an instruction
    # and then (b) grep-ing some smali for that instruction
    # e.g., suppose we're looking for an example of filled-new-array
    # grep -R -n "filled-new-array" ./apkOutput/*

    ]


    obj = NOP()
    #print("obj: ", obj)

    print("\tconstructor tests...")
    for cur_line in TESTS:
        #print("\t" + cur_line.strip())
        obj = SmaliAssemblyInstruction.from_line(cur_line)
        #print(type(obj), ": " + str(obj))
        assert(str(obj) == cur_line)
        

    rando_test = "invoke-direct/range {v6 .. v11}, Lcom/google/android/gms/common/data/DataHolder;-><init>(I[Ljava/lang/String;[Landroid/database/CursorWindow;ILandroid/os/Bundle;)V"
    obj = SmaliAssemblyInstruction.from_line(rando_test)
    #print(str(obj))
    #print(rando_test)
    assert(str(obj) == "    " + rando_test + "\n")
    
    


    print("\timplicit registers tests...")
    asm_obj = SmaliAssemblyInstruction.from_line("    move-wide v0, v15\n")
    #print(asm_obj)
    #print(asm_obj.get_registers())
    #print(asm_obj.get_implicit_registers())
    assert(asm_obj.get_registers() == ["v0", "v15"])
    assert(asm_obj.get_implicit_registers() == ["v1", "v16"])
    
    asm_obj = SmaliAssemblyInstruction.from_line("    cmpl-double v0, v1, v15\n")
    assert(asm_obj.get_registers() == ["v0", "v1", "v15"])
    assert(asm_obj.get_implicit_registers() == ["v2", "v16"])
    
    asm_obj = SmaliAssemblyInstruction.from_line("    cmp-long v2, v3, v5")
    assert(asm_obj.get_registers() == ["v2", "v3", "v5"])
    assert(asm_obj.get_implicit_registers() == ["v4", "v6"])
    
    asm_obj = SmaliAssemblyInstruction.from_line("    aget-wide v15, v1, v2\n")
    assert(asm_obj.get_registers() == ["v15", "v1", "v2"])
    assert(asm_obj.get_implicit_registers() == ["v16"])
    
    asm_obj = SmaliAssemblyInstruction.from_line("    iput-wide v2, v4, Ljava/lang/String;")
    assert(asm_obj.get_registers() == ["v2", "v4"])
    assert(asm_obj.get_implicit_registers() == ["v3"])
    
    asm_obj = SmaliAssemblyInstruction.from_line("    sget-wide v2, Ljava/lang/String;->length:J")
    assert(asm_obj.get_registers() == ["v2"])
    assert(asm_obj.get_implicit_registers() == ["v3"])
    
    asm_obj = SmaliAssemblyInstruction.from_line("    int-to-long v2, v4\n")
    assert(asm_obj.get_registers() == ["v2", "v4"])
    assert(asm_obj.get_implicit_registers() == ["v3"])
    
    asm_obj = SmaliAssemblyInstruction.from_line("    long-to-int v0, v15\n")
    assert(asm_obj.get_registers() == ["v0", "v15"])
    assert(asm_obj.get_implicit_registers() == ["v16"])
    
    
    
    #print("is targeted tests...")
    #asm_obj = SmaliAssemblyInstruction.from_line("    move-wide v0, v15\n")
    #assert(asm_obj.targeted_for_instrumentation == True)
    #asm_obj.targeted_for_instrumentation = False
    #assert(asm_obj.targeted_for_instrumentation == False)
    
    #asm_obj = SmaliAssemblyInstruction.from_line("    nop\n")
    #assert(asm_obj.targeted_for_instrumentation == False)
    #asm_obj.targeted_for_instrumentation = True
    #assert(asm_obj.targeted_for_instrumentation == True)
    
    print("\tregister type implication tests...")
    asm_obj = SmaliAssemblyInstruction.from_line("nop")
    assert(str(asm_obj.get_register_type_implications()) == '{}')
    
    asm_obj = SmaliAssemblyInstruction.from_line("    move v2, v3\n")
    #print(asm_obj.get_register_type_implications())
    assert(str(asm_obj.get_register_type_implications()) == "{v2: 32-bit, v3: 32-bit}")
    
    asm_obj = SmaliAssemblyInstruction.from_line("    move-wide v4, v14\n")
    assert(str(asm_obj.get_register_type_implications()) == "{v4: 64-bit, v5: 64-bit-2}")
    
    asm_obj = SmaliAssemblyInstruction.from_line("    move-wide/16 v10, v21")
    assert(str(asm_obj.get_register_type_implications()) == "{v10: 64-bit, v11: 64-bit-2}")
    
    asm_obj = SmaliAssemblyInstruction.from_line("move-result-wide v22")
    assert(str(asm_obj.get_register_type_implications()) == "{v22: 64-bit, v23: 64-bit-2}")
    
    asm_obj = SmaliAssemblyInstruction.from_line("move-object v0, v2")
    assert(str(asm_obj.get_register_type_implications()) == "{v0: Non Specific Object, v2: Non Specific Object}")
    
    asm_obj = SmaliAssemblyInstruction.from_line("const-string v2, \"accessibility\"\n")
    assert(str(asm_obj.get_register_type_implications()) == "{v2: Ljava/lang/String;}")
    
    asm_obj = SmaliAssemblyInstruction.from_line("new-instance v4, Landroid/widget/Scroller;")
    assert(str(asm_obj.get_register_type_implications()) == "{v4: Landroid/widget/Scroller;}")
    
    asm_obj = SmaliAssemblyInstruction.from_line("aget v4, v4, v6")
    assert(str(asm_obj.get_register_type_implications()) == "{v4: 32-bit, v6: I}")
    
    asm_obj = SmaliAssemblyInstruction.from_line("array-length v7, v7")
    #print(asm_obj.get_register_type_implications())
    assert(str(asm_obj.get_register_type_implications()) == "{v7: 32-bit}")
    
    asm_obj = SmaliAssemblyInstruction.from_line("filled-new-array/range {v10 .. v16}, [Ljava/lang/String;\n")
    assert(str(asm_obj) == "    filled-new-array/range {v10 .. v16}, [Ljava/lang/String;\n")
    assert(str(asm_obj.get_register_type_implications()) == "{v10: Ljava/lang/String;, v11: Ljava/lang/String;, v12: Ljava/lang/String;, v13: Ljava/lang/String;, v14: Ljava/lang/String;, v15: Ljava/lang/String;, v16: Ljava/lang/String;}")
    assert(str(asm_obj.get_registers()) == "[v10, v11, v12, v13, v14, v15, v16]")
    
    asm_obj = SmaliAssemblyInstruction.from_line("aput-wide v2, v4, v6")
    assert(str(asm_obj.get_register_type_implications()) == "{v4: Non Specific Array, v6: I, v2: 64-bit, v3: 64-bit-2}")
    
    asm_obj = SmaliAssemblyInstruction.from_line("iget-wide v3, v0, Landroid/HypotheticalClass;->MyDouble:D")
    assert(str(asm_obj) == "    iget-wide v3, v0, Landroid/HypotheticalClass;->MyDouble:D\n")
    assert(str(asm_obj.get_register_type_implications()) == "{v0: Landroid/HypotheticalClass;, v3: D, v4: 64-bit-2}")
    
    asm_obj = SmaliAssemblyInstruction.from_line("iget-object v4, v2, Landroid/HypotheticalClass;->MyLoc:Landroid/location/LocationManager;")
    assert(str(asm_obj) == "    iget-object v4, v2, Landroid/HypotheticalClass;->MyLoc:Landroid/location/LocationManager;\n")
    assert(str(asm_obj.get_register_type_implications()) == "{v2: Landroid/HypotheticalClass;, v4: Landroid/location/LocationManager;}")
    assert(str(asm_obj.get_instance_variable()) == "Landroid/HypotheticalClass;->MyLoc:Landroid/location/LocationManager;")
    
    asm_obj = SmaliAssemblyInstruction.from_line("iget-object v13, v13, Landroid/support/constraint/solver/Cache;->mIndexedVariables:[Landroid/support/constraint/solver/SolverVariable;")
    assert(str(asm_obj.get_register_type_implications()) == "{v13: [Landroid/support/constraint/solver/SolverVariable;}")
    
    asm_obj = SmaliAssemblyInstruction.from_line("iput-object v2, v0, Ledu/fandm/enovak/leaks/Main;->MyString:Ljava/lang/String;")
    assert(str(asm_obj.get_register_type_implications()) == "{v0: Ledu/fandm/enovak/leaks/Main;, v2: Ljava/lang/String;}")
    
    asm_obj = SmaliAssemblyInstruction.from_line("iput-wide v2, v0, Ledu/fandm/enovak/leaks/Main;->MyVal:J")
    assert(str(asm_obj.get_register_type_implications()) == "{v0: Ledu/fandm/enovak/leaks/Main;, v2: J, v3: 64-bit-2}")
    
    asm_obj = SmaliAssemblyInstruction.from_line("sput-object v0, Ledu/fandm/enovak/leaks/Main;->TAG:Ljava/lang/String;")
    assert(str(asm_obj.get_register_type_implications()) == "{v0: Ljava/lang/String;}")
    
    asm_obj = SmaliAssemblyInstruction.from_line("add-long v6, v0, v5")
    assert(str(asm_obj.get_register_type_implications()) == "{v6: 64-bit, v7: 64-bit-2}")
    
    asm_obj = SmaliAssemblyInstruction.from_line("int-to-long v0, v0")
    assert(str(asm_obj.get_register_type_implications()) == "{v0: J, v1: J2}")
    
    asm_obj = SmaliAssemblyInstruction.from_line("check-cast v1, [Ljava/lang/String;")
    assert(str(asm_obj.get_register_type_implications()) == "{v1: [Ljava/lang/String;}")
    
    
    print("\ttry catch labels tests...")
    try_start_label_asm_obj = TRY_START_LABEL(4)
    num = try_start_label_asm_obj.n
    assert(num == 4)
    assert(str(try_start_label_asm_obj) == "    :try_start_stigma_4\n")
    
    try_end_label_asm_obj = TRY_END_LABEL(num)
    assert(try_end_label_asm_obj.n == 4)
    assert(str(try_end_label_asm_obj) == "    :try_end_stigma_4\n")
    
    catch_label_asm_obj = CATCH_LABEL(num)
    assert(catch_label_asm_obj.n == 4)
    assert(str(catch_label_asm_obj) == "    :catch_stigma_4\n")
    
    type_id = "Ljava/io/IOException;"
    catch_directive_asm_obj = CATCH_DIRECTIVE(type_id, try_start_label_asm_obj, try_end_label_asm_obj, catch_label_asm_obj)
    #print(str(catch_directive_asm_obj))
    #print("    .catch Ljava/io/IOException; {:try_start_stigma_4 .. :try_end_stigma_4} :catch_stigma_4\n")
    assert(str(catch_directive_asm_obj) == "    .catch Ljava/io/IOException; {:try_start_stigma_4 .. :try_end_stigma_4} :catch_stigma_4\n")
    
    
    print("\tget class and method from invoke tests...")
    try:
        asm_obj = INVOKE_VIRTUAL_RANGE(["v0", "p1"], "Lcom/fasterxml/jackson/databind/ObjectMapper;->writeValueAsString(Ljava/lang/Object;)Ljava/lang/String;")
        print("cannot construct an INVOKE_VIRTUAL_RANGE with pX registers.") # see comments below
        # it is not possible since there is no context to know what p1 alias-es to.
        # the INVOKE_* instructions try to make self.register_list
        # since Stigma does grow(), all pX registers will be replaced
        # so this particular example should never happen when 
        # running Stigma on a real app
        assert(False)
    except ValueError:
        assert(True)
        
    asm_obj = INVOKE_VIRTUAL_RANGE(["v0", "v3"], "Lcom/fasterxml/jackson/databind/ObjectMapper;->writeValueAsString(Ljava/lang/Object;)Ljava/lang/String;")
    assert(str(asm_obj) == "    invoke-virtual/range {v0 .. v3}, Lcom/fasterxml/jackson/databind/ObjectMapper;->writeValueAsString(Ljava/lang/Object;)Ljava/lang/String;\n")
    assert(asm_obj.get_owning_class_name() == "Lcom/fasterxml/jackson/databind/ObjectMapper;")
    assert(asm_obj.get_method_name() == "writeValueAsString(Ljava/lang/Object;)Ljava/lang/String;")
    assert(asm_obj.get_method_name_only() == "writeValueAsString")
    assert(asm_obj.register_list == ["v0", "v1", "v2", "v3"])
    
    asm_obj = SmaliAssemblyInstruction.from_line("    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V\n")
    assert(str(asm_obj) == "    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V\n")
    assert(asm_obj.get_owning_class_name() == "Ljava/lang/StringBuilder;")
    assert(asm_obj.get_method_name() == "<init>()V")
    assert(asm_obj.get_method_name_only() == "<init>")
    assert(asm_obj.register_list == ["v1"])
    
    
    
    print("ALL SmaliAssemblyInstructions TESTS PASSED!")

# Do nothing if this file is called directly
# this is only a library
if __name__ == "__main__":
    main()
