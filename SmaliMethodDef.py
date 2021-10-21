import re

import SmaliTypes
import SmaliAssemblyInstructions as smali
import StigmaStringParsingLib
import Instrumenter

from ControlFlowGraph import ControlFlowGraph
from TypeSafetyChecker import TypeSafetyChecker
import inspect
        
class SmaliMethodSignature:

    # This should maybe be an inner-class of SmaliMethodDef
    
    # self.sig_line
    # self.name

    # self.is_static
    # self.is_abstract

    # self.parameter_type_map
    # self.num_of_parameters
    # self.num_of_parameter_registers
    
    def __init__(self, sig_line, class_name):
        
        self.sig_line = sig_line
        
        sig_tokens = sig_line.split(" ")
        #print("\n\n" + str(sig_tokens))
        assert(sig_tokens[0] == ".method")
        
        name = sig_tokens[-1]
        self.name = name.split("(")[0]
        
        modifiers = sig_tokens[1:-1]
        self.is_static = False
        if "static" in modifiers:
            self.is_static = True
            
        self.is_abstract = False
        self.is_native = False
        if "abstract" in modifiers:
            self.is_abstract = True
        
        if "native" in modifiers:
            self.is_native = True
        
        
        #print("name: " + str(self.name))
        #print("static: " + str(self.is_static))
        
        self.parameter_type_map = {}
        
        # note, if there is a 64-bit parameter
        # it counts as one param, but two param-regs
        self.num_of_parameters = 0 
        self.num_of_parameter_registers = 0
        p_idx = 0 # number for "pX" notation
        
        if(not self.is_static):
            # the implicit "this" register p0
            # The first parameter for non-static methods is always 
            # the object that the method is being invoked on,
            # p0 holds the object reference and p1 the second 
            # parameter register.

            self.parameter_type_map["p0"] = SmaliTypes.from_string(class_name)
            self.num_of_parameters = 1
            self.num_of_parameter_registers = 1
            p_idx = 1

        
        parameter_raw = re.search(StigmaStringParsingLib.PARAMETERS, sig_line).group(1)
        # e.g., Landroid/support/design/widget/CoordinatorLayout;Landroid/view/View;Landroid/view/View;II[I
        
        i = 0
        while i < len(parameter_raw):
            self.num_of_parameters += 1
            
            if parameter_raw[i] in smali.TYPE_LIST_WORD: 
                self.num_of_parameter_registers += 1
                p_name = "p" + str(p_idx)
                self.parameter_type_map[p_name] = SmaliTypes.from_string(parameter_raw[i])
                
                
            elif parameter_raw[i] in smali.TYPE_LIST_WIDE: # long or double
                self.num_of_parameter_registers += 2
                p_name = "p" + str(p_idx)
                self.parameter_type_map[p_name] = SmaliTypes.from_string(parameter_raw[i])
                p_idx+=1
                p_name = "p" + str(p_idx)
                self.parameter_type_map[p_name] = SmaliTypes.from_string(parameter_raw[i]+"2")
                
                
            elif parameter_raw[i] == "L": # some object
                self.num_of_parameter_registers += 1
                p_name = "p" + str(p_idx)
                
                # skip past all the characters in the type
                # e.g., MyMethod(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
                # we should skip from "L" all the way to ";" for each parameter
                end = parameter_raw.find(";", i)
                obj_str = parameter_raw[i:end+1]
                self.parameter_type_map[p_name] = SmaliTypes.from_string(obj_str)
                i = end
                
                    
                    
            elif parameter_raw[i] == "[": # an array
                # note arrays are n-dimensional
                # e.g., [[[I
                start_index = i
                i = SmaliMethodSignature.fast_forward_to_not_bracket(i, parameter_raw)
                
                if(parameter_raw[i] == "L"):
                    # this is an array of objects (L indicates beginning of object FQN)
                    i = SmaliMethodSignature.fast_forward_to_semicolon(i, parameter_raw)
                    

                #to get the last character of array type, we add a +1 to the end_index
                #fast_forward methods ignore the last character itself, so to include it we have to increment the index by 1
                end_index = i+1

                self.num_of_parameter_registers += 1
                p_name = "p" + str(p_idx)
                self.parameter_type_map[p_name] = SmaliTypes.from_string(parameter_raw[start_index:end_index])

            p_idx += 1        
            i += 1
            

    @staticmethod
    def fast_forward_to_semicolon(idx, string):
        while(string[idx] != ";"):
            idx+=1
            #print("this one")
        return idx
        
    @staticmethod
    def fast_forward_to_not_bracket(idx, string):
        while(string[idx] == "["):
            #print("that one")
            idx+=1
        return idx
      
      
    def __str__(self):
        return str(self.sig_line.strip()) # + " " + str(self.parameter_type_map)

        

class SmaliMethodDef:

    def __init__(self, text, scd):
        # text should be a list of strings (lines)
        # starting from ".method..." and ending in "... .end method"
        # scd should be a SmaliClassDef object
        
        if(text == []):
            raise ValueError("Attempting to instantiate method with no code!")
        
        self.raw_text = text
        
        self.num_jumps = 0 # not used except for a sanity check

        
        self.ORIGINAL_LOCAL_NUMBER_REGS = self.get_locals_directive_num()
        self.reg_number_float = self.ORIGINAL_LOCAL_NUMBER_REGS

        class_name = "Lunknownclass;"
        if(scd != None):
            self.scd = scd # smali class definition
            class_name = self.scd.class_name
        
            
        self.signature = SmaliMethodSignature(self.raw_text[0], class_name)

        
        self.instrumented_code = [] #this is a list containing new instrumented code
        
        self.moves_before = []
        self.moves_after = []
        
        # Used to count the number of times the instrumentation process cannot
        # free up Instrumenter.DESIRED_NUM_REGISTERS
        self.not_enough_free_registers_count = 0
        
        # state that is modified when "grow_locals()" is called
        self.has_grown = 0 # number passed to grow locals
        self.top_regs = None # list of the registers established at the top
        #this is the first free reg after we grow the locals number for the method
        self.first_new_free_reg_num = 0  
        
        
    def get_register_meta_data(self):
        num_locals = self.get_locals_directive_num()
        num_params = self.signature.num_of_parameter_registers
        num_regs = self.get_num_registers()
        #print("num regs: " + str(num_regs))
        
        l = []
        for i in range(num_regs):
            l.append("v" + str(i))
        #print("l: " + str(l))
        
        p_idx_start = num_locals - self.has_grown
        #print("p_idx_start: " + str(p_idx_start))
        p_num = 0
        for p_idx in range(p_idx_start, p_idx_start+num_params):
            #print("p_idx: " + str(p_idx))
            l[p_idx] = l[p_idx] + "/p" + str(p_num)
            p_num += 1
        
        return str(l)
        
            

    def grow_locals(self, n):
        # grows the .locals from the current value such that there are
        # n new registers in the method
        # moves the parameters so that they don't incur maximum register value
        # issues when used in instructions

        # Only registers v0 - v15 are allowed for general purpose use.
        # This is enforced by apktool.  The documentation indicates that
        # some instrucions allow many many more registers (up to v65535)
        # https://source.android.com/devices/tech/dalvik/dalvik-bytecode

        # Consider the following method which came from whatsapp
        # This is a rare edge-case
        # the .locals is originally 1 indicating that v0 is the only local register.
        # that is true. BUT, the first use of v0 is to store a long (J)
        # so actually v0 and v1 are used.  I assume that p0 is v1, but p0 is
        # over-written immediately after it's first and only use.
        # If we attempt to use v1 for some taint-tag propagation
        # it will cause a verify error since v1 is supposed to hold the second
        # half of a long
        '''
        .method public static A0C(Ljava/lang/Long;J)Ljava/lang/Long;
        .locals 1

        invoke-virtual {p0}, Ljava/lang/Number;->longValue()J

        move-result-wide v0

        sub-long/2addr p1, v0

        invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

        move-result-object v0

        return-object v0
        
        .end method
        '''


        if(n < 0):
            raise ValueError("Cannot grow locals by a negative amount: " + str(n))
            
        if(self.signature.is_abstract or self.signature.is_native):
            # We shouldn't grow abstract methods since they don't have 
            # code / locals
            return []
            
        if(self.has_grown > 0):
            raise ValueError("Cannot grow locals twice on the same method!")
        self.has_grown = n
            

        old_locals_num = self.get_locals_directive_num()
                
        # Convert all "pX" references to their corresponding "vX" register
        # names BEFORE adjusting .locals so the references are correct
        # Note: part of the algorithm is to move the values from
        # the new location (after adjusting .locals) into their original
        # location    
        self.convert_all_lines_p_to_v_numbers()
        
        
        # determine the names of the new registers (to return later)
        self.first_new_free_reg_num = old_locals_num + self.signature.num_of_parameter_registers
        new_regs = []
        for num in range(self.first_new_free_reg_num, self.first_new_free_reg_num+n):
            new_regs.append("v" + str(num))
        

        # Set the new locals number
        # this is the "main event" / primary purpose
        # of this method
        # I need to expand the locals to hold
        #   (a) all of the existing locals used in the mod
        #   (b) all of the parameters for this method
        #   (c) n new registers, which will be used for taint-tracking
        new_locals_num = old_locals_num + n
        self.set_locals_directive(new_locals_num)
        

        # Write the necessary move values so that the vX
        # registers that originally contained the parameters
        # contain the parameter values
        block = []

        #print(self.signature.parameter_type_map)
        for param in self.signature.parameter_type_map:

            param_type_obj = self.signature.parameter_type_map[param]
            #print("smali type object: " + str(param_type_obj) + "  :  " + str(type(param_type_obj)))
            mv_cmd = param_type_obj.get_move_instr()
            
            if(param_type_obj.get_generic_type() != "64-bit-2"):
                mv_cmd = mv_cmd("v" + str(old_locals_num), param)
                mv_cmd.targeted_for_instrumentation = False
                
                block.append(mv_cmd)
                block.append(smali.BLANK_LINE())
                
            old_locals_num += 1


        if(len(block) != 0):
            block = Instrumenter.make_comment_block("for moving parameters") + block
            block = block + Instrumenter.make_comment_block("for moving parameters")
        
        # convert all of these from SmaliAssemblyObjects to string so that
        # the instrumentation plugins can interact with them
        # I think this may be unnecessary due to some changes
        # recently made in the TypeSafteyChecker
        for i in range(len(block)):
            block[i] = str(block[i])
        
        insert_idx = self.find_first_valid_instruction()
        self.embed_block(insert_idx, block)
        
        self.top_regs = new_regs



    def dereference_p_to_v_number(self, p_register):
        # e.g., _get_v_frl(p2, 2) -> v4
        locals_num = self.get_locals_directive_num()
        p_num = int(p_register[1:])
        corresponding_v_num = locals_num + p_num
        return "v" + str(corresponding_v_num)


    def dereference_p_to_v_numbers(self, line):
        # de-reference p registers
        # Replace all instances of pX with corresponding vY
        # For example...
        #     v0, v1, v2, v3, v4
        #             p0, p1, p2
        # (note: even if p1 is a long, there will still be a p2
        #  and it will still correspond to v4)

        # a nasty edge-case that must be considered is a const-string
        # or comment or something that contains substrings
        # that look like register references
        # 
        # For example...
        # const-string vX, "bad string p0 v2"
        
        opcode = StigmaStringParsingLib.break_into_tokens(line)[0]            
        regs = StigmaStringParsingLib.get_v_and_p_numbers(line)

        for r in regs:
            if r[0] == "p":
                v_reg = self.dereference_p_to_v_number(r)

                # str.replace(x, y, 1) replaces only the first occurence
                # so, this will not replace instances of
                # "v4" and other register-like strings in instructions
                # such as: const-string v4, "edge v2 case p0 string v4\n"
                line = line.replace(r, v_reg, 1)
        return line
             

    def convert_all_lines_p_to_v_numbers(self):
        for i in range(len(self.raw_text)):
            cur_line = self.raw_text[i]
            if(StigmaStringParsingLib.is_valid_instruction(cur_line)):
                new_line = self.dereference_p_to_v_numbers(cur_line)
                self.raw_text[i] = new_line

                        
    def find_first_valid_instruction(self):
        for i in range(len(self.raw_text)):
            cur_line = self.raw_text[i]
            if(StigmaStringParsingLib.is_valid_instruction(cur_line) or cur_line.startswith("    :")):
                return i


    def set_locals_directive(self, new_val):
        self.raw_text[1] = "    .locals " + str(new_val) + "\n"


    def get_locals_directive_line(self):
        return self.raw_text[1].strip()


    def get_locals_directive_num(self):
        line = self.get_locals_directive_line()
        search_object = re.search(r"[0-9]+", line)
        if search_object is not None:
            num = search_object.group()
            #print("number: " +  str(num))
            return int(num)
        else:
            return 0


    def get_num_registers(self):
        # the total number of registers used by this function
        ans = self.get_locals_directive_num() + self.signature.num_of_parameter_registers
        #if(not self.signature.is_static):
            # +1 at the end is necessary to account for p0 ("this") reference
            # this may be a bug, I'm not sure how the other parts of the code
            # count registers
        #    ans+=1
        return ans
        

    def get_num_comparison_instructions(self):
        count = 0
        
        # this could be improved in two ways
        #   1) we could cache the value of count, but that would require
        #      cache invalidation
        #   2) we could join the strings in the list raw_text into
        #      one large string and use the regular expression matching
        #      to find _ALL_ matches in one call.
        #      The challenge with this approach is that comments and 
        #      other extraneous text might contain "if-eqz" and others 
        #      by coincidnence
        for cur_line in self.raw_text:
        
            search_object = re.search(StigmaStringParsingLib.BEGINS_WITH_IF, cur_line)
            search_object2 = re.search(StigmaStringParsingLib.BEGINS_WITH_CMP, cur_line)
            if (search_object is not None) or (search_object2 is not None):
                # of course the line can't be both an if and a cmp
                count = count + 1
        return count

    



    def get_name(self):
        # kinda hacky!  Sorry 'bout that!
        s = str(self)
        s = s.split("(")
        #print("name: " + str(s))
        s = s[0].split(" ")
        name = s[-1]
        #print("name: " + str(name))
        return name


    def make_new_jump_label(self):
        res = smali.LABEL(self.num_jumps)
        self.num_jumps += 1
        return res
        
        
    def write_to_file(self, filename):
        fh = open(filename, "w")
        
        for line in self.raw_text:
            s = str(line)
            if(s == "" or s[-1] != "\n"):
                s = s + "\n"
            fh.write(s)

        fh.close()
        
        
    def embed_line(self, position, line):
        self.raw_text.insert(position, line)


    def embed_block_with_replace(self, position, block):
        self.raw_text = self.raw_text[:position] + block + self.raw_text[position + 1:]


    def embed_block(self, position, block):
        # put the code in this block just before the position
        self.raw_text = self.raw_text[:position] + block + self.raw_text[position:]

                
    def instrument(self):
                        
        #dont instrument methods without any text
        if(len(self.raw_text) < 3):
            return
        
        
        # grow the local variables in this method to make
        # some spare registers (at the top)
        self.grow_locals(Instrumenter.DESIRED_NUM_REGISTERS)        

        #create the control flow graph for the method text and pass it to the type safety checker
        #this will check and track types of each register on each line 
        self.cfg = ControlFlowGraph(self.raw_text)
        self.tsc = TypeSafetyChecker(self.signature, self.cfg) 
        
        #incase the graph is empty, we dont instrument
        if(len(self.cfg.G)) == 1:
            return     
        
        # start walking the graph at node 1 and go in ascending order
        # this counter starts at 1, becuase when we initialize the type safety checker we already updated the types of the signautre line so we dont do it again
        # as the signature line never shows up in our walk of the graph, we add it to our new instrumented code here
        counter = 1
        self.instrumented_code.append(self.raw_text[0])
        
        while(self.cfg.nodes_left_to_visit()):
            node = self.cfg[counter]
            
            if(not node["visited"]):
                node["visited"] = True 
                
                #call type_update on each line of code inside the node. 
                for index in range(len(node["text"])):
                    line = node["text"][index]        
                    #print(type(line), ": " + str(line))         
                    self.tsc.type_update(line, index, counter)
                    node["type_list"] = self.tsc.node_type_list
                    self._do_instrumentation_plugins(node, line, index)

                #assign the register type list to this current node after its processed
                # I'm very suspicious of this step.  Why?
                self.tsc.node_type_list = []
                        
            counter+=1  

        # # assign the newly instrumented code to the orignal raw text of the method, 
        # # and add the tail from teh cfg, which contains the ending lines of the method
        # # such as the .end method and the pswitch data and the sswitch data. 
        self.raw_text = self.instrumented_code    
        self.raw_text.extend(self.cfg.tail)
        self.fix_larger_if_offsets()
        
                       

        
    def _do_instrumentation_plugins(self, node, line, idx):
        self.moves_before = []
        self.moves_after = []
        
        opcode = StigmaStringParsingLib.extract_opcode(line)        
        #1)        
            # we need to know if we are in a try block so we can avoid
            # the one type of instrumentation where that matters
            # internal-function move-result lines
            # If we are in a try block, then adding instructions
            # may affect the control flow / type checking done 
            # by the verifier.  This causes java.lang.VerifyError
            # with  messages like this:
            # [0x35] register v0 has type Precise Reference: java.lang.String[] but expected Long
            # https://github.com/JesusFreke/smali/issues/797
        if node["is_in_try_block"]:
            self.instrumented_code.append(line)
            return
        
        #2  
            # if a line begins with "move-result", it has already been processed 
            # by the instrumenter of its preceding opcode (i.e., an invoke instruction)
            #
            # a thought that might occur is that the instrumentation plugin should 
            # handle this by simply not "signing-up" for move-result-* instructions
            # this solution is not valid.  If we pass in a move-result-* line
            # even if there is no instrumentation done, that line will be 
            # added to the method code.  So, it will be added twice (once 
            # passed on it's own, and again passed by the preceeding invoke-* 
            # instruction
        if re.search(StigmaStringParsingLib.BEGINS_WITH_MOVE_RESULT, line) is not None:
            return
            
        if not self.is_relevant(line):
            self.instrumented_code.append(line)
            
        else:
            instrumentation_method = Instrumenter.instrumentation_map[opcode][0]
            instrumeter_inserts_original_lines = Instrumenter.instrumentation_map[opcode][1]
            
            if(re.search(StigmaStringParsingLib.BEGINS_WITH_INVOKE, line) is not None or re.search(StigmaStringParsingLib.BEGINS_WITH_FILLED_NEW_ARRAY, line) is not None):
                next_line = self.tsc.obtain_next_instruction(node["node_counter"], idx+1)
                if(re.search(StigmaStringParsingLib.BEGINS_WITH_MOVE_RESULT, next_line) is not None):
                    line = [line, str(smali.BLANK_LINE()), next_line]
            

            regs = self.gen_list_of_safe_registers(node, idx)                
            
            
            #if we are unable to get enough free registers, worse case possible if all the types are ?
            if(len(regs) < Instrumenter.DESIRED_NUM_REGISTERS and instrumeter_inserts_original_lines):
                new_block = []
                if(isinstance(line,list)):
                    new_block.extend(line)
                else:
                    new_block.append(line)

            elif len(regs) < Instrumenter.DESIRED_NUM_REGISTERS:
                new_block = []
   
            else:
                new_block = instrumentation_method(self.scd, self, line, regs)
            
            self.insert_instrumented_code(line, new_block, instrumeter_inserts_original_lines)
            
            

    def gen_list_of_safe_registers(self, node, idx):
        # "safe" registers are 
        #  (a) low numbered (less than v16)
        #  (b) not containing original program data
        #      (or such original program data has been moved to another register)
        #  (c) not the second 1/2 of a wide value
        
        # The algorithm aims to get to goal_size
        # for the number of registers returned
        # it will stop early if possible and it will
        # throw an exception if goal_size cannot be reached
        

        
        # generate a list of available registers        
        safe_regs = set()
        
        #this first free reg is later used as a destination for the "register juggling" move instructions, 
        # so we need to count how many are already used in the safe reg list so we can ignore those
        # for the moves implemented later in this algorithm      
        count = self.first_new_free_reg_num
        
        # 1) Try to use the top registers available after growing
        for r in self.top_regs:
            n = int(r[1:])
            if(n < 16):
                count = count + 1
                safe_regs.add(r)
        
        
        if(len(safe_regs) >= Instrumenter.DESIRED_NUM_REGISTERS):
            return sorted_list(safe_regs)
        
        
        # 2) Try to use the regiters not yet used uptil now in this method according to tsc
        #get the registers being used in the current line
        line = node["text"][idx]
        cur_line_reg = set(StigmaStringParsingLib.get_v_and_p_numbers(line))
        
        #if the instruction is a move-result, we cannot use the registers from the preceding invoke line
        #in our safe registers list
        if(re.search(StigmaStringParsingLib.BEGINS_WITH_MOVE_RESULT, line) is not None):
            prev_line = self.tsc.obtain_previous_instruction(node["node_counter"], idx-1)
            prev_line_reg = set(StigmaStringParsingLib.get_v_and_p_numbers(prev_line))
            cur_line_reg = cur_line_reg.union(prev_line_reg)
    
        line_type_map = node["type_list"][idx-1]
        for i in range(16):
            reg = "v" + str(i)
            # each node has a list of hashmaps (typelist)
            # each hashmap in the list corresponds to a line from the original
            # program.
            if(reg not in line_type_map):
                safe_regs.add(reg)

        safe_regs.difference_update(cur_line_reg)

        if(len(safe_regs) >= Instrumenter.DESIRED_NUM_REGISTERS):
            return sorted_list(safe_regs)
        
        
        #3) implement moves to free up lower numbered registers if possible
        
        #empty old / pre-existing move lists
        self.moves_before = [smali.COMMENT("IFT INSTRUCTIONS ADDED BY STIGMA to free up low numbered registers")]
        self.moves_after = []
        dest_reg = count
        for reg in line_type_map:
            # reg not in cur_line_reg 
            # it looks like that we can use the registers from the current line being processed, however there is a BIG UNSURE
            if reg not in safe_regs and line_type_map[reg] != '?' and line_type_map[reg] != '64-bit-2' and reg[0] != 'p' and int(reg[1:]) < 16 and reg not in cur_line_reg:
                #print(str(line_type_map[reg]) + "  " + str(type(line_type_map[reg])))
                move_instr = line_type_map[reg].get_move_instr()
                self.moves_before.append(move_instr("v" + str(dest_reg),reg))
                self.moves_after.append(move_instr(reg, "v" + str(dest_reg)))
                safe_regs.add(reg)
                if(line_type_map[reg] == "64-bit"):
                    dest_reg+=2
                else:
                    dest_reg+=1
            
            if len(safe_regs) == Instrumenter.DESIRED_NUM_REGISTERS:
                self.moves_after.append(smali.COMMENT("IFT INSTRUCTIONS ADDED BY STIGMA to free up low numbered registers"))
                return sorted_list(safe_regs)
        
        
        if len(safe_regs) < Instrumenter.DESIRED_NUM_REGISTERS:
            self.not_enough_free_registers_count += 1
            print("not enough registers! This has occurred: " + str(self.not_enough_free_registers_count) + " times in this method.")
            #raise ValueError("Unable to find enough safe registers.  Trying for " + str(Instrumenter.DESIRED_NUM_REGISTERS) + "  got: " + str(safe_regs))
            #print(ve)
            #print(self.scd.file_name)
            #print(self.signature)
            #print("node number: " + str(node["node_counter"]))
            #print()
            #print(node["text"])
            #print()
            #print("line " + str(idx) + ":  " + str(line))
            #print("type map: " + str(node["type_list"][idx-1]))
            #self.cfg.show()
            #exit(1)
        
        
        return sorted_list(safe_regs)

        
        
    def insert_instrumented_code(self, line, new_block, instrumeter_inserts_original_lines):
        #invoke foo()
        #move-result vx
        #for such a line which contains a move result, we cannot put the new block of code between the 
        #move-result and the invoke as it would case a java verifier error, so in for this case, the instrumenter for move result
        #returns the new block with the orignal line inerted at the correct spot, so we donot need to append the line again
        #there are three cases for the invokes, preceding the move-result
            #1)Sources (getLastKnownLocation, IMEI etc) -> new code comes before/after the original line
            #2)Internal Functions, -> new code comes before and after the original lines (invoke,move-result)
            #3)External Functions, -> new code comes before/after the original line
        #Note: No valid code can come in between an invoke and a move result
        if(not instrumeter_inserts_original_lines):
            self.instrumented_code.extend(self.moves_before)
            self.instrumented_code.extend(new_block)
            self.instrumented_code.extend(self.moves_after)
            if(isinstance(line,list)):
                self.instrumented_code.extend(line)
            else:
                self.instrumented_code.append(line)
        else:
            self.instrumented_code.extend(self.moves_before)
            self.instrumented_code.extend(new_block)
            self.instrumented_code.extend(self.moves_after)
            
            
    def is_relevant(self, line):     
        opcode = StigmaStringParsingLib.extract_opcode(line)  
         
        # The lines of code that we add (instrument) will be instances of smali.SmaliAssemblyInstruction
        # the lines of code that are existing already will be type string
        # So, this check prevents us from instrumenting our new, additional code
        if isinstance(line, smali.SmaliAssemblyInstruction):
            return False
        
        # Only do instrumentation if line is a valid instruction
        elif not StigmaStringParsingLib.is_valid_instruction(line):
            return False
            
        elif opcode in Instrumenter.instrumentation_map:
            return True
    
    
    def fix_larger_if_offsets(self):
        table = []
        label_map = {} #this stores the label and the line number corresponding
        
        for idx in range(len(self.raw_text)):
            line = str(self.raw_text[idx])
            tokens = StigmaStringParsingLib.break_into_tokens(line)
            
            #store the label of :cond and :goto in a map with their corresponding line number
            if(re.search(StigmaStringParsingLib.BEGINS_WITH_COND, line) is not None or re.search(StigmaStringParsingLib.BEGINS_WITH_GOTO_LABEL, line) is not None):
                 label_map[tokens[0]] = idx
            
            #when you see an if statement or a goto statement, there are two options
            elif re.search(StigmaStringParsingLib.BEGINS_WITH_IF, line) is not None or re.search(StigmaStringParsingLib.BEGINS_WITH_GOTO, line) is not None:
                
                row = [line, tokens[0], idx]                
                label = tokens[-1]
                
                #1) if the label was already seen, retreive it from existing map and fill all details for the row
                if label in label_map:
                    label_idx = label_map[label]
                    label_offset = label_idx - idx
                    row.extend([label, label_idx, label_offset])
                    table.append(row)
                
                #2) if the label was not seen before, we can safetly loop from the current index to till the end and whenever u see a label fill the row and break the loop
                else:
                    for label_idx in range(idx, len(self.raw_text)):
                        new_line = str(self.raw_text[label_idx])
                        if re.search(StigmaStringParsingLib.BEGINS_WITH_COLON, new_line) is not None:     
                            label_tokens = StigmaStringParsingLib.break_into_tokens(new_line)
                            if label_tokens[0] == label:
                                label_offset = label_idx-idx
                                row.extend([label, label_idx, label_offset])
                                table.append(row)
                                break
                            
                    
        #5461 is 1/6th of 32767
        #This checks for any if statements which have a jump to the label line greater than 5461, because Stigma causes can error
        #if the jump is bigger than that. We have computed a safe threshold limit based on different offsets from multiple opcodes. 
        #The largest offset found is const-wide with an code offset of 6.
        
        opposite_if_map = {"if-eq":smali.IF_NE, "if-ne":smali.IF_EQ, "if-lt":smali.IF_GE, "if-ge":smali.IF_LT,  "if-gt":smali.IF_LE, "if-le":smali.IF_GT, "if-eqz":smali.IF_NEZ, "if-nez":smali.IF_EQZ, "if-ltz":smali.IF_GEZ, "if-gez":smali.IF_LTZ, 
                           "if-gtz":smali.IF_LEZ, "if-lez":smali.IF_GTZ, "goto":smali.GOTO_32, "goto/16": smali.GOTO_32, "goto/32": smali.GOTO_32}
        
        
        #when we use embed_replace it changes length of the raw text, so the current idx doesnt match 
        #so we offset it by the length of the new block added each time - 1
        #if you have one line and you replace it by 5, you have actually only inserted 4 new lines 
        idx_offset = 0
        for row in table:
            if abs(row[-1] > 5461):
                idx = row[2] + idx_offset
                opcode = row[1]
                original_line = row[0]
                new_instr = opposite_if_map[opcode]
                block = [smali.COMMENT(original_line.strip()), smali.BLANK_LINE()]
                register = StigmaStringParsingLib.get_v_and_p_numbers(original_line)

                old_label = row[3]
                
                if(re.search(StigmaStringParsingLib.BEGINS_WITH_GOTO, row[1]) is not None):
                    block.append(new_instr(old_label))
                    block.append(smali.BLANK_LINE())
                    idx_offset += len(block)-1
                    self.embed_block_with_replace(idx, block)
                else:
                    new_label = self.make_new_jump_label()
                    if(len(inspect.signature(new_instr).parameters) == 3):
                        block.append(new_instr(register[0], register[1], repr(new_label)))
                    elif (len(inspect.signature(new_instr).parameters) == 2):
                        block.append(new_instr(register[0], repr(new_label)))
                    else:
                        raise Exception("unable to convert if")
                    
                    block.append(smali.BLANK_LINE())
                    block.append(smali.GOTO_32(old_label))
                    block.append(smali.BLANK_LINE())
                    block.append(new_label)
                    block.append(smali.BLANK_LINE())
                    
                    idx_offset += len(block)-1
                    self.embed_block_with_replace(idx, block)
        
    
    def __repr__(self):
        return self.get_signature()


    def __str__(self):
        return str(self.signature)


    def __eq__(self, other):
        if isinstance(other, str):
            return self.get_signature() == other

        elif isinstance(other, SmaliMethodDef):
            return self.get_signature() == other.get_signature()

        else:
            return False
       

# It is on purpose that this is not a member of the SmaliMethodDef 
# class or the SmaliMethodSignature class.
def sorted_list(x):
    if not isinstance(x, set):
        raise ValueError("Input parameter should be a set.  You passed a: " + str(type(x)))
    
    ans = sorted(list(x))
    return ans


def tests():
    print("Testing SmaliMethodDef")
    
    
    print("\tSmaliMethodSignature...")
    sig = SmaliMethodSignature(".method public setBackgroundResource(I)V", "Lmy/package/MyClass;")
    assert(sig.name == "setBackgroundResource")
    assert(sig.is_static == False)
    assert(sig.parameter_type_map == {"p0": "Lmy/package/MyClass;", "p1": "I"})
    assert(sig.num_of_parameters == 2)
    assert(sig.num_of_parameter_registers == 2)
    
    sig = SmaliMethodSignature(".method private constructor <init>(Ljava/lang/String;I)V", "Lmy/package/MyClass;")
    assert(sig.name == "<init>")
    assert(sig.is_static == False)
    #print("map: " + str(sig.parameter_type_map))
    assert(str(sig.parameter_type_map) == "{'p0': Lmy/package/MyClass;, 'p1': Ljava/lang/String;, 'p2': I}")
    assert(sig.num_of_parameters == 3)
    assert(sig.num_of_parameter_registers == 3)
    
    sig = SmaliMethodSignature(".method private prefetchInnerRecyclerViewWithDeadline(Landroid/support/v7/widget/RecyclerView;J)V", "Lmy/package/MyOtherClass;")
    assert(sig.name == "prefetchInnerRecyclerViewWithDeadline")
    assert(sig.is_static == False)
    #print("map: " + str(sig.parameter_type_map))
    assert(str(sig.parameter_type_map) == "{'p0': Lmy/package/MyOtherClass;, 'p1': Landroid/support/v7/widget/RecyclerView;, 'p2': J, 'p3': J2}")
    assert(sig.num_of_parameters == 3)
    assert(sig.num_of_parameter_registers == 4)
    
    sig = SmaliMethodSignature(".method public static reverseTransit(I)I", "Lmy/package/MyClass;")
    assert(sig.name == "reverseTransit")
    assert(sig.is_static)
    assert(sig.parameter_type_map == {"p0": "I"})
    assert(sig.num_of_parameters == 1)
    assert(sig.num_of_parameter_registers == 1)


    text = open("./test/leakPasswd.smali").readlines()
    smd = SmaliMethodDef(text, None)
    
    print("\tfind_first_valid_instruction...")
    assert(smd.find_first_valid_instruction() == 8)
    
    print("\tlocals...")
    assert(smd.get_locals_directive_line() == ".locals 9")
    assert(smd.get_locals_directive_num() == 9)
    smd.set_locals_directive(10)
    assert(smd.get_locals_directive_line() == ".locals 10")
    assert(smd.get_locals_directive_num() == 10)
    smd.set_locals_directive(9) # set it back for subsequent tests
    
    
    print("\tregister counting...")
    assert(smd.get_num_registers() == 11)


    print("\tdereference_p_v_to_number")
    assert(smd.dereference_p_to_v_number("p1") == "v10")
    assert(smd.dereference_p_to_v_number("p0") == "v9")
    assert(smd.dereference_p_to_v_number("p0") == "v9")
    assert(smd.dereference_p_to_v_number("p3") == "v12")


    print("\tdereference_p_to_v_numbers...")
    assert(smd.dereference_p_to_v_numbers("    filled-new-array {v0, v1, p2}, [Ljava/lang/String;\n") == "    filled-new-array {v0, v1, v11}, [Ljava/lang/String;\n")
    assert(smd.dereference_p_to_v_numbers("    throw p1\n") == "    throw v10\n")
    assert(smd.dereference_p_to_v_numbers("    filled-new-array {p0, p1, p2}, [Ljava/lang/String;\n") == "    filled-new-array {v9, v10, v11}, [Ljava/lang/String;\n")
    assert(smd.dereference_p_to_v_numbers("    if-eqz p3, :cond_6\n") == "    if-eqz v12, :cond_6\n")
    assert(smd.dereference_p_to_v_numbers("    const-string p1, \"nasty p1 example\"\n") == "    const-string v10, \"nasty p1 example\"\n")
    

        
    print("ALL SmaliMethodDef TESTS PASSED!")


if __name__ == "__main__":
    tests()


'''
Problem:
    Orignal Instruction:     aget v3, p3, v2
    Type_map = {'p0': 'object', 'p1': '32-bit', 'p2': '[Ljava/lang/String;', 'p3': '[I'}

    After grow_locals
    Updated Instruction:     aget v3, v7, v2
    {'p0': 'object', 'p1': '32-bit', 'p2': '[Ljava/lang/String;', 'p3': '[I', 'v4': 'object', 'v5': '32-bit', 'v6': 'object', 'v7': 'object'}

    The reason type of v7 is "object" because, when we used our move instruction to move p3 into v7 (move-object/16 v7, p3)
    Type safety checker assigned an object to v7 where as v7 which was originally p3, had a type of [I
'''
