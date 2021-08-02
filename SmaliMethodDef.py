import re

import SmaliAssemblyInstructions as smali
import StigmaStringParsingLib
import Instrumenter

from ControlFlowGraph import ControlFlowGraph
from TypeSafetyChecker import TypeSafetyChecker

        
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
        if "abstract" in modifiers:
            self.is_abstract = True
        
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

            self.parameter_type_map["p0"] = class_name
            self.num_of_parameters = 1
            self.num_of_parameter_registers = 1
            p_idx = 1

        
        parameter_raw = re.search(StigmaStringParsingLib.PARAMETERS, sig_line).group(1)
        i = 0
        while i < len(parameter_raw):
            self.num_of_parameters += 1
            
            if parameter_raw[i] in smali.TYPE_LIST_WORD: 
                self.num_of_parameter_registers += 1
                p_name = "p" + str(p_idx)
                self.parameter_type_map[p_name] = parameter_raw[i]
                
                
            elif parameter_raw[i] in smali.TYPE_LIST_WIDE: # long or double
                self.num_of_parameter_registers += 2
                p_name = "p" + str(p_idx)
                self.parameter_type_map[p_name] = parameter_raw[i]
                p_idx+=1
                p_name = "p" + str(p_idx)
                self.parameter_type_map[p_name] = parameter_raw[i]+"2"
                
                
            elif parameter_raw[i] == "L": # some object
                self.num_of_parameter_registers += 1
                p_name = "p" + str(p_idx)
                self.parameter_type_map[p_name] = parameter_raw[i]

            
                # skip past all the characters in the type
                # e.g., MyMethod(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
                # we should skip from "L" all the way to ";" for each parameter
                i = SmaliMethodSignature.fast_forward_to_semicolon(i, parameter_raw)
                    
                    
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
                self.parameter_type_map[p_name] = parameter_raw[start_index:end_index]

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
        self.is_in_try_block = False
        
        self.num_jumps = 0 # not used except for a sanity check
        self.first_new_free_reg_num = None  #this is the first free reg after we grow the locals number for the method
        
        self.ORIGINAL_LOCAL_NUMBER_REGS = self.get_locals_directive_num()
        self.reg_number_float = self.ORIGINAL_LOCAL_NUMBER_REGS

        class_name = "Lunknownclass;"
        if(scd != None):
            self.scd = scd # smali class definition
            class_name = self.scd.class_name
            
        self.signature = SmaliMethodSignature(self.raw_text[0], class_name)

        
        self.instrumented_code = [] #this is a list containing new instrumented code
        self.moves_after = []


        #print("Running Smali Method Def on: " + str(self.signature) + " in " + str(scd))
        self.cfg = ControlFlowGraph(text)
        self.tsc = TypeSafetyChecker(self.signature, self.cfg) 
            

    def grow_locals(self, n):
        # grows the .locals from the current value such that there are
        # n new registers in the method
        # moves the parameters so that they don't incur maximum register value
        # issues when used in instructions

        # Only v0 - v16 registers are allowed for general purpose use.
        # This is enforced by apktool.  The documentation indicates that
        # some instrucions allow many many more registers (up to v65535)
        # https://source.android.com/devices/tech/dalvik/dalvik-bytecode

        # Consider the following method which came from whatsapp
        # This is a very special case
        # the .locals is 1 indicating that v0 is the only local register.
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
            
        if(self.signature.is_abstract):
            # We shouldn't grow abstract methods since they don't have 
            # code / locals
            return
        
        
        # Convert all "pX" references to their corresponding "vX" register
        # names BEFORE adjusting .locals so the references are correct
        # Note: part of the algorithm is to move the values from
        # the new location (after adjusting .locals) into their original
        # location    
        self.convert_all_lines_p_to_v_numbers()

    

        old_locals_num = self.get_locals_directive_num()
        
        # determine the names of the new registers (to return later)
        self.first_new_free_reg_num = old_locals_num + self.signature.num_of_parameter_registers
        new_regs = []
        for num in range(self.first_new_free_reg_num, self.first_new_free_reg_num+n):
            new_regs.append("v" + str(num))
        
        #orig_locals_num = old_locals_num
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
        # contain the correct values
        block = Instrumenter.make_comment_block("")

        #print(self.signature.parameter_type_map)
        for param in self.signature.parameter_type_map:

            param_type = self.signature.parameter_type_map[param]
            if(param_type in smali.TYPE_LIST_OBJECT_REF or param_type[0] in smali.TYPE_LIST_OBJECT_REF):
                # param_type might be "THIS" or "Lsome/class;" etc.
                mv_cmd = smali.MOVE_OBJECT_16
            elif(param_type in smali.TYPE_LIST_WIDE):
                mv_cmd = smali.MOVE_WIDE_16
            elif(param_type in smali.TYPE_LIST_WIDE_REMAINING):
                # the MOVE_WIDE_16 from the first part of the wide
                # will move both the first part and this second part
                mv_cmd = None 
                old_locals_num += 1
                continue
            elif(param_type in smali.TYPE_LIST_WORD):
                mv_cmd = smali.MOVE_16
            else:
                raise ValueError("Unknown type for parameter " + str(param) + ": " + str(param_type))


            mv_cmd = mv_cmd("v" + str(old_locals_num), param)

            block.append(mv_cmd)
            block.append(smali.BLANK_LINE())
            
            old_locals_num += 1
            
        
        #while(old_locals_num < new_locals_num):
            # this loop should repeat n times
            #   (n is the input parameter to this function)
        #    block.append(smali.CONST("v" + str(old_locals_num), "0x1"))
        #    block.append(smali.BLANK_LINE())
        #    old_locals_num+=1

        block = block + Instrumenter.make_comment_block("")
        
        # we converted the SMALI ASSEMBLY INSTRUCTION OBJECT to the string for each line in the block
        # so we donot ignore those lines while instrumenting
        # we need to instrument on these new moves added, because the tags also move from orignal p0 to the new p0 location
        # the while loop in the control flow graph assumes that all the lines in the input text are a string , otherwise it would crash while parsing
        for i in range(len(block)):
            block[i] = str(block[i])
        
        insert_idx = self.find_first_valid_instruction()
        self.embed_block(insert_idx, block)
        
        return new_regs


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
            if(StigmaStringParsingLib.is_valid_instruction(cur_line)):
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
            # print("number: " +  str(num))
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

    
    def get_signature(self):
        return str(self.signature)


    def get_name(self):
        # kinda hacky!  Sorry 'bout that!
        s = self.get_signature()
        s = s.split("(")
        # print("name: " + str(s))
        s = s[0].split(" ")
        name = s[-1]
        # print("name: " + str(name))
        return name


    def make_new_jump_label(self):
        res = smali.LABEL(self.num_jumps)
        self.num_jumps += 1
        if self.num_jumps > 500:
            raise Exception("too many jumps")
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
        
        
        # print("embedding block as position: " + str(position))

        # print("--- before ---")
        # for i in range(position-5, position+len(block) + 5):
        # print(self.raw_text[i], end="")
        # print("\n\n")
        self.raw_text = self.raw_text[:position] + block + self.raw_text[position:]

        # print("--- after ---")
        # for i in range(position-5, position+len(block) + 5):
        # print(self.raw_text[i], end="")
        # print("\n\n")

                
    def instrument(self):        
        
        #print("Instrumenting Method: ", str(self.signature), " in file: ", self.scd.file_name)
        #create the control flow graph for the method text and pass it to the type safety checker
        #this will check and track types of each register on each line 
        #self.cfg = ControlFlowGraph(text)

        #initialize the type checker as a instance variable for each method. 
        #this will check and track types of each register on each line 
        #print("Running Smali Method Def on: " + str(self.signature) + " in " + str(scd))
        # these are the newly freed registers at the top
        free_regs = self.grow_locals(Instrumenter.NUM_REGISTER)
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
            
            #if the cur_nodes is not empty process the smallest node
            node = self.cfg[counter]
            node_counter = node["node_counter"]
            
            if(not node["visited"]):
                node["visited"] = True 
                #get neighbors of current node and store for breadth first search
                # neighbors = self.cfg.neighbors(node_counter)    
                # for neighbor in neighbors:                               
                #     neighbor_node = self.cfg[neighbor]
                #     if neighbor_node["visited"] == False:
                #         cur_nodes.append(neighbor_node)

                #print("\n\nNODE")
                #for line in node["text"]:
                #    print(line)
                
                #call type_update on each line of code inside the node. 
                for index in range(len(node["text"])):
                    line = node["text"][index]
                    self.tsc.type_update(line, index, node_counter)
                    node["type_list"] = self.tsc.node_type_list                                            
                    self._do_instrumentation_plugins(free_regs, node, line, index)

                #assign the register type list to this current node after its processed processed
                # node["type_list"] = self.tsc.node_type_list
                self.tsc.node_type_list = []
                counter+=1  

            else:
                #if current node is visited, increment the counter, get the next node
                counter+=1   

    
        # assign the newly instrumented code to the orignal raw text of the method, 
        # and add the tail from teh cfg, which contains the ending lines of the method
        # such as the .end method and the pswitch data and the sswitch data. 
        self.raw_text = self.instrumented_code
        self.raw_text.extend(self.cfg.tail)
        
        
        # for line in self.raw_text:
        #     print(line)
        # input("?")
        
                   
    def gen_list_of_safe_registers(self, free_regs, node, idx, goal_size):
        # "safe" registers are 
        #  (a) low numbered (less than v16)
        #  (b) not used in the instruction on line idx
        #  (c) not currently assigned a type in the method on line idx
        #  (d) not the second 1/2 of a wide value
        
        # The algorithm aims to get to goal_size
        # for the number of registers return
        # it will stop early if possible and it will
        # throw an exception if goal_size cannot be reached
        
        #empty the move lists
        self.moves_before = []
        self.moves_after = []

        # generate a list of available registers        
        safe_regs = set()
        
        # if "type_list" not in node:
        #     print("no type list found")
        #     print(node)
        #     self.cfg.show()
        
        line_type_map = node["type_list"][idx-1]
        # 1) Try to use the top registers available after growing
        for r in free_regs:
            n = int(r[1:])
            if(n < 16):
                safe_regs.add(r)
                
                
        if(len(safe_regs) >= goal_size):
            return list(safe_regs)
        
        #get the registers being used in the current line
        line = node["text"][idx]
        cur_line_reg = set(StigmaStringParsingLib.get_v_and_p_numbers(line))
        
        #if the instruction is a move-result, we cannot use the registers from the preceding invoke line
        #in our safe registers list
        if(re.search(StigmaStringParsingLib.BEGINS_WITH_MOVE_RESULT, line) is not None):
            prev_line = self.tsc.obtain_previous_instruction(node["node_counter"], idx-1)
            prev_line_reg = set(StigmaStringParsingLib.get_v_and_p_numbers(prev_line))
            cur_line_reg = cur_line_reg.union(prev_line_reg)
    
        # 2) Try to use the regiters not yet used uptil now in this method according to tsc
        for i in range(16):
            reg = "v" + str(i)
            # each node has a list of hashmaps (typelist)
            # each hashmap in the list corresponds to a line from the original
            # program.
            if(reg not in line_type_map):
                safe_regs.add(reg)
    
        safe_regs.difference_update(cur_line_reg)
        if(len(safe_regs) >= goal_size):
            return list(safe_regs)
        
        #3) implement moves to free up lower numbered registers if possible
        dest_reg = self.first_new_free_reg_num
        for reg in line_type_map:
            # reg not in cur_line_reg 
            # it looks like that we can use the registers from the current line being processed, however there is a BIG UNSURE
            if reg not in safe_regs and line_type_map[reg] != '?' and line_type_map[reg] != '64-bit-2' and reg[0] != 'p' and int(reg[1:]) < 16 and reg not in cur_line_reg:
                move_instr = TypeSafetyChecker.get_move_instr(line_type_map[reg])
                self.moves_before.append(move_instr("v" + str(dest_reg),reg))
                self.moves_after.append(move_instr(reg, "v" + str(dest_reg)))
                safe_regs.add(reg)
                
                if(line_type_map[reg] == "64-bit"):
                    dest_reg+=2
                else:
                    dest_reg+=1
            
            if len(safe_regs) == goal_size:
                break
    
        return list(safe_regs)               
         
        
    def _do_instrumentation_plugins(self, free_regs, node, line, idx):
        # extract opcode
        # get the relevant instrumentation method from the instrumentation_map and call it
        # print("calling _do_instrumentation_plugins on line: ", line)
        
        opcode = StigmaStringParsingLib.extract_opcode(line)
        if self.is_relevant(line, node) and opcode in Instrumenter.instrumentation_map:
            instrumentation_method = Instrumenter.instrumentation_map[opcode][0]
            instrumeter_inserts_original_lines = Instrumenter.instrumentation_map[opcode][1]
            
            if(re.search(StigmaStringParsingLib.BEGINS_WITH_INVOKE, line) is not None or re.search(StigmaStringParsingLib.BEGINS_WITH_FILLED_NEW_ARRAY, line) is not None):
                next_line = self.tsc.obtain_next_instruction(node["node_counter"], idx+1)
                if(re.search(StigmaStringParsingLib.BEGINS_WITH_MOVE_RESULT, next_line) is not None):
                    line = [line,next_line]
            
            regs = self.gen_list_of_safe_registers(free_regs, node, idx, Instrumenter.NUM_REGISTER)
            
            #if we are unable to get enough free registers, worse case possible if all the types are ?
            if(len(regs) < Instrumenter.NUM_REGISTER):
                new_block = []
            else:
                new_block = instrumentation_method(self.scd, self, line, regs)
        
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
                
        else:
            self.instrumented_code.append(line)
            
            
    def is_relevant(self, line, node):
        # only do instrumentation if the length of the method is
        # not too long.  This is specifically in place to avoid
        # issues such as Invalid instruction offset: 36077. Offset must be in [-32768, 32767]
        # which arises from instructions like this:
        # if-nez v0, :cond_0
        # the :cond_0 is actually a 16-bit number
        if len(self.raw_text) > 32767:
            return False
        
        # The lines of code that we add (instrument) will be instances of smali.SmaliAssemblyInstruction
        # the lines of code that are existing already will be type string
        # So, this check prevents us from instrumenting our new, additional code
        elif isinstance(line, smali.SmaliAssemblyInstruction):
            return False
        
        # we need to know if we are in a try block so we can avoid
        # the one type of instrumentation where that matters
        # internal-function move-result lines
        # If we are in a try block, then adding instructions
        # may affect the control flow / type checking done 
        # by the verifier.  This causes java.lang.VerifyError
        # with  messages like this:
        # [0x35] register v0 has type Precise Reference: java.lang.String[] but expected Long
        # https://github.com/JesusFreke/smali/issues/797
        elif node["is_in_try_block"]:
            return False
        
        # Only do instrumentation if line is a valid instruction
        elif not StigmaStringParsingLib.is_valid_instruction(line):
            return False
        else:
            return True
    

    # This method was pulled from VRegisterPool
    def get_spot(self, max_val, type_code, exclude_list = []):
        # Look for empty spot to use
        # 1) empty spots prioritized
        # 2) spots of the matching type
        # 3) a convenient spot cannot be found:
        #       just return a spot of different type
        # 4) if the requested type is WIDE and a convenient
        #       spot cannot be found: raise an exception

        # 1
        for i in range(max_val):
            reg_name = "v" + str(i)
            
            if(reg_name in exclude_list):
                continue
            
            if(self[reg_name] == None):
                if(type_code == TYPE_CODE_WIDE):
                    adjacent_reg_name = "v" + str(i+1)
                    if(self[adjacent_reg_name] == None):
                        return reg_name
                    else:
                        continue
                        
                else:
                    return reg_name
                    
        # 2
        for i in range(max_val):
            reg_name = "v" + str(i)
            
            if(reg_name in exclude_list):
                continue
                
            if(type_code == self[reg_name]):
                return reg_name

        # conclusions 3 and 4
        # theoretically possible if user is looking for TYPE_CODE_OBJ_REF
        # and max value is X and all registers below X are TYPE_CODE_WORD

        # 4
        if type_code == TYPE_CODE_WIDE:
            #print(self.pretty_string(0, 20))
            raise ValueError("Could not find a spot for type: " + type_code_name(type_code) + " in first " + str(max_val) + " registers.")  

        # 3
        for i in range(max_val):
            reg_name = "v" + str(i)

            if(reg_name in exclude_list):
                continue

            # this might return a TYPE_WIDE when user
            # is actually looking for a TYPE_WORD
            # but that should be ok, bigger problem
            # is when user is looking for WIDE and can't
            # get one, that is resolved by conclusion 4
            return reg_name
        
        #return None

    # This method was pulled from VRegisterPool
    def get_consecutive_non_wide_reg_pair(self, max_val, exclude_list = []):
        for i in range(max_val):
            reg_name = "v" + str(i)
            reg_name_adjoining = "v" + str(i+1)

            if(reg_name in exclude_list):
                continue

            if(self[reg_name] != TYPE_CODE_WIDE and
                self[reg_name] != TYPE_CODE_WIDE_REMAINING):
                return (reg_name, reg_name_adjoining)

    
    '''
    @staticmethod
    def _append_move_instr_frl(block, reg_pool, to_reg_name, from_reg_name):
        custom_move = reg_pool.get_move_instr(from_reg_name)
        
        # this happens when the register has None type or WIDE_REM type
        if(custom_move != None):
            CUSTOM_MOVE = custom_move(to_reg_name, from_reg_name)
            block.append(CUSTOM_MOVE)
            block.append(smali.BLANK_LINE())

            reg_pool.update(str(CUSTOM_MOVE))

    @staticmethod
    def fix_register_limit_for_line(line, shadows, reg_pool):
        
        # imagine...

        # reg_pool =
        # v0: TYPE_CODE_OBJ_REF
        # v1: TYPE_CODE_WIDE
        # ...

        # line  = "    instance-of v3, v16, Ljava/lang/String;\n"

        # shadow_registers = ["v16", "v17", "v18"]


        # shad <- corr
        # corr <-- high

        # low/corr, shadow, high

        asm_obj = smali.parse_line(line)
        
        original_registers = asm_obj.get_registers() + asm_obj.get_implicit_registers()
        # implicit registers are necessary for example:
        # int-to-long v0, v18
        # v18 is a long, v0 is currently undefined / open
        # the corresponding register should NOT be v0 and it should NOT be v1
        # yet both v0 and v1 will be listed in the reg_pool as None

        new_line = line # will be used for the re-write
        
        # before block
        before_block = []
        after_block = []
        shadow_idx = 0
        
        for reg_high_name in asm_obj.get_unique_registers():
            if(reg_pool.is_high_numbered(reg_high_name)):
                #print("fixing reg: " + str(reg_high_name))

                is_wide = (reg_pool[reg_high_name] == smali.TYPE_CODE_WIDE)

        
                try:
                    reg_corr_name = reg_pool.get_spot(15, reg_pool[reg_high_name], exclude_list = original_registers)
                
                except ValueError:
                    # this happens when there is no appropriate spot
                    # to be given.  e.g., a WIDE is needed, but all
                    # low numbered registers are filled with WORD and/or OBJ_REF
                    pair = reg_pool.get_consecutive_non_wide_reg_pair(15, exclude_list = original_registers)
                    #print("self.scd.file_name: " + str(self.scd.file_name))
                    #print("pair: " + str(pair))
                    #print("shadows: " + str(shadows))
                    #print("shadow_idx: " + str(shadow_idx))
                    #print("reg_pool: " + reg_pool.pretty_string(0, 21))
                    reg_corr_name = pair[0]
                    reg_corr_name_second = pair[1]
                    reg_shad_name_second = shadows[shadow_idx+1]
                    
                    SmaliMethodDef._append_move_instr_frl(before_block, reg_pool, reg_shad_name_second, reg_corr_name_second)
                    SmaliMethodDef._append_move_instr_frl(after_block, reg_pool, reg_corr_name_second, reg_shad_name_second)
                    
                    # it goes right here!!

                # corresponding register might be empty in which case
                # we should not do a move on it
                # the "previous" is referring to the fact that this is
                # the type held in the register BEFORE the instruction 
                # on line is executed.  For example instruction might be
                # add-int corr, vx, vy wherein corr has type OBJ_REF before
                # instruction, it will have type WORD after this instruction
                corr_previous_type = reg_pool[reg_corr_name]
                if(corr_previous_type != None):
                    reg_shad_name = shadows[shadow_idx]
                    if(is_wide):
                        shadow_idx += 2
                    else:
                        shadow_idx += 1
                    SmaliMethodDef._append_move_instr_frl(before_block, reg_pool, reg_shad_name, reg_corr_name)
                
                if(reg_pool[reg_high_name] != None):
                    # high register might be empty / might not exist / might have type "None"
                    # for example in const v32, 0x1 
                    # v32 might not contain any data before this instruction
                    # in such a situation it's appropriate to not do any move on it
                    # before, but it is still necessary to do a move after
                    SmaliMethodDef._append_move_instr_frl(before_block, reg_pool, reg_corr_name, reg_high_name)
                
                
                # the "occurrences" at the end here means that only X occurrences will be replaced
                occurrences = asm_obj.get_registers().count(reg_high_name)
                new_line = new_line.replace(reg_high_name, reg_corr_name, occurrences)
                

                # Reason, Bug:
                # v0 is int, v21 is obje
                # move-obj v0, v21
                # const/4 v0(v21)
                # move-int v21, v0
                reg_pool.update(new_line)

                SmaliMethodDef._append_move_instr_frl(after_block, reg_pool, reg_high_name, reg_corr_name)

                if(corr_previous_type != None):
                    SmaliMethodDef._append_move_instr_frl(after_block, reg_pool, reg_corr_name, reg_shad_name)

     
            
        ans_block = before_block + [new_line, smali.BLANK_LINE()] + after_block
        #print("block produced: " + str(ans_block))
        #print("\n\n")
        return ans_block
   

    def fix_register_limit(self):
        #print("self.scd.file_name: " + str(self.scd.file_name))
        #print("fix_register_limit(" + str(self.signature) + ")")

        # Step 1: Initiate shadow registers
        # -- Example --  MyMethod(JI)  .locals = 17
        # Before: [v0, v1, ... , v15, v16, v17(p0), v18(p1), v19(p2), v20(p3)]
        # After:  [v0, v1, ... , v15, v16, v17,     v18,     v19,     v20,     v21, v22(p0), v23(p1), v24(p2), v25(p3)]
        #                             |_|  |_____________________________________|  |________________________________|
        #                              |                      |                                     |
        #              "higher numbered" regsiters      "Shadow" registers                "higher numbered" registers
        #       
        # In the above example, get_num_regisers() is 21 so we will create
        # (21 - 16) = 5 new registers
        #                     
        # v17 up to v21 are the shadow registers (free temp registers) that we can use as general purpose
        # The 'corresponding' registers are lower numberd registers that will be used temporarily
        # for a specific instruction
        shadows = []
        # The number of remanining shadows is number of high-num registers * 2 because
        # Each of the high-num registers could be a word (single-registered  type)
        # While each of the corresponding could store a wide (double-registered type)
        # So to store each corresponding temporarily in a shadow, we would need
        # 2 times the number of higher-numbered registers
        for i in range((self.get_num_registers() - 16) * 2): 
            #print("creating shadow register: " + str(i))
            shadows.append(self.make_new_reg())
        
        #print("remaining shadows: " + str(self.remaining_shadows))

        # Step 2: Initiate reg_pool with parameters of funciton
        # -- Example -- MyMethod(JI)  .locals = 17
        # p0 = v22 type: object reference ("this") => TYPE_CODE_OBJ_REF
        # p1 = v23 type: long => TYPE_CODE_WIDE
        # p2 = v24 type: long2 => TYPE_CODE_WIDE_REM
        # p3 = v25 type: int => TYPE_CODE_WORD
        # key: register name (v's only)
        # value: smali.TYPE_CODE corresponding to register type
        reg_pool = VRegisterPool.VRegisterPool(self.signature, self.get_locals_directive_num())
        
        #print(self)
        
        line_num = 1;
        while line_num < len(self.raw_text):
            cur_line = str(self.raw_text[line_num])
            #print(cur_line)
            # Check if this line is actually a smali instruction (starts with a valid opcode)
            if(not StigmaStringParsingLib.is_valid_instruction(cur_line)):
                line_num += 1
                continue
                
            # Step 3: Dereference p registers
            locals_num = self.get_locals_directive_num()
            cur_line = SmaliMethodDef._dereference_p_registers_frl(cur_line, locals_num)
            self.raw_text[line_num] = cur_line
            
            # Step 4: Update move_type_hashmap with this instruction
            #print("line: " + cur_line)
            reg_pool.update(cur_line)
            
            # identify lines that should be skipped for the rest of this
            if(SmaliMethodDef._should_skip_line_frl(cur_line)):
                line_num += 1
                continue
                    
           
            
            # Step 5: Call algorithm to fix each line
            ans_block = SmaliMethodDef.fix_register_limit_for_line(cur_line, shadows, reg_pool)
            
            self.embed_block_with_replace(line_num, ans_block)


            # go to next line!
            line_num += len(ans_block)
    '''
    
    def __repr__(self):
        return self.get_signature()


    def __str__(self):
        return self.get_signature()


    def __eq__(self, other):
        if isinstance(other, str):
            return self.get_signature() == other

        elif isinstance(other, SmaliMethodDef):
            return self.get_signature() == other.get_signature()

        else:
            return False
            


def tests():
    print("Testing SmaliMethodDef")
    
    
    print("\tSmaliMethodSignature...")
    sig = SmaliMethodSignature(".method public setBackgroundResource(I)V")
    assert(sig.name == "setBackgroundResource")
    assert(sig.is_static == False)
    assert(sig.parameter_type_map == {"p0": "THIS", "p1": "I"})
    assert(sig.num_of_parameters == 2)
    assert(sig.num_of_parameter_registers == 2)
    
    sig = SmaliMethodSignature(".method private constructor <init>(Ljava/lang/String;I)V")
    assert(sig.name == "<init>")
    assert(sig.is_static == False)
    assert(sig.parameter_type_map == {"p0": "THIS", "p1": "L", "p2": "I"})
    assert(sig.num_of_parameters == 3)
    assert(sig.num_of_parameter_registers == 3)
    
    sig = SmaliMethodSignature(".method private prefetchInnerRecyclerViewWithDeadline(Landroid/support/v7/widget/RecyclerView;J)V")
    assert(sig.name == "prefetchInnerRecyclerViewWithDeadline")
    assert(sig.is_static == False)
    assert(sig.parameter_type_map == {"p0": "THIS", "p1": "L", "p2": "J", "p3": "J2"})
    assert(sig.num_of_parameters == 3)
    assert(sig.num_of_parameter_registers == 4)
    
    sig = SmaliMethodSignature(".method public static reverseTransit(I)I")
    assert(sig.name == "reverseTransit")
    assert(sig.is_static)
    assert(sig.parameter_type_map == {"p0": "I"})
    assert(sig.num_of_parameters == 1)
    assert(sig.num_of_parameter_registers == 1)



    print("\t_should_skip_line_frl...")
    assert(SmaliMethodDef._should_skip_line_frl("    .locals 3\n"))
    assert(SmaliMethodDef._should_skip_line_frl("    filled-new-array/range {v19..v21}, [B\n"))
    assert(SmaliMethodDef._should_skip_line_frl("    move-wide/16 v12, p2\n"))
    assert(SmaliMethodDef._should_skip_line_frl("    new-array v1, v0, [J\n") == False)
    assert(SmaliMethodDef._should_skip_line_frl("    move-object v1, v0 \n") == False)
    assert(SmaliMethodDef._should_skip_line_frl("    invoke-super-quick/range {v0..v5}"))
    assert(SmaliMethodDef._should_skip_line_frl("    invoke-super {v12, v13, v14, v15, v16}, Landroid/view/ViewGroup;->drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z\n") == False)
    assert(SmaliMethodDef._should_skip_line_frl("    move-object v0, p1\n") == False)



    print("\tStigmaStringParsingLib._get_v_from_p...")
    assert(StigmaStringParsingLib.get_v_from_p("p2", 2) == "v4")
    assert(StigmaStringParsingLib.get_v_from_p("p0", 5) == "v5")
    assert(StigmaStringParsingLib.get_v_from_p("p0", 0) == "v0")
    assert(StigmaStringParsingLib.get_v_from_p("p3", 0) == "v3")


    print("\t_dereference_p_registers_frl...")
    assert(SmaliMethodDef._dereference_p_registers_frl("    filled-new-array {v0, v1, p2}, [Ljava/lang/String;\n", 2) == "    filled-new-array {v0, v1, v4}, [Ljava/lang/String;\n")
    assert(SmaliMethodDef._dereference_p_registers_frl("    throw p1\n", 16) == "    throw v17\n")
    assert(SmaliMethodDef._dereference_p_registers_frl("    filled-new-array {p0, p1, p2}, [Ljava/lang/String;\n", 2) == "    filled-new-array {v2, v3, v4}, [Ljava/lang/String;\n")
    assert(SmaliMethodDef._dereference_p_registers_frl("    if-eqz p3, :cond_6\n", 13) == "    if-eqz v16, :cond_6\n")
    assert(SmaliMethodDef._dereference_p_registers_frl("    const-string p2, \"nasty p2 example\"\n", 2) == "    const-string v4, \"nasty p2 example\"\n")
    

        

    '''
    
    print("\tfix_register_limit()...")
    ans_block = smali.parse_line("    const v21, 0x800053\n").fix_register_limit()
    #print(ans_block)
    assert(ans_block == ["    const/16 v21, 0x800053\n"])
    # This test raises a concern about introducing logical bugs
    # -0x1 is 1111 in 4bit 2's compliment binary
    # -0x1 is 1111 1111 1111 1111 in 16bit 2's compliment binary
    
    # 0xFFFF = 65535 = 0000 0000 0000 0000 1111 1111 1111 1111 (in 32-bit binary)
    # imagine the instruction const/32 vx 0xFFFF
    # if we convert this to const/16 without changing anything else we have
    # const/16 vx, 0xFFFF
    # 1111 1111 1111 1111 which is now interpreted as
    # -1 (two's compliment).
    ans_block = smali.parse_line("    const/4 v25, -0x1\n").fix_register_limit()
    assert(ans_block == ["    const/16 v25, -0x1\n"])

    asm_obj = smali.parse_line("    const-string v16, \"hey there! v4, test string!\"\n")
    #print(test2_shadow_map)
    ans_block = asm_obj.fix_register_limit(test2_shadow_map, {"v0": smali.MOVE_OBJECT_16})
    #print("TEST HERE")
    soln_block = [smali.COMMENT("FRL MOVE ADDED BY STIGMA"), 
            smali.BLANK_LINE(),
            smali.MOVE_OBJECT_16("v19", "v0"),
            smali.BLANK_LINE(),
            smali.CONST_STRING("v0", "\"hey there! v4, test string!\""),
            smali.BLANK_LINE(),
            smali.MOVE_OBJECT_16("v16", "v0"),
            smali.BLANK_LINE(),
            smali.MOVE_OBJECT_16("v0", "v19"),
            smali.BLANK_LINE(),
            smali.COMMENT("END OF FRL MOVE ADDED BY STIGMA"),
            smali.BLANK_LINE()]
    
    #print(ans_block)
    #print(soln_block)
    assert(ans_block == soln_block)

    asm_obj = smali.parse_line("    const-class v16, Ljavax/swingx/JFrame;")
    #print(test2_shadow_map)
    ans_block = asm_obj.fix_register_limit(test2_shadow_map, {"v0": smali.MOVE_OBJECT_16})
    soln_block = [smali.COMMENT("FRL MOVE ADDED BY STIGMA"), 
            smali.BLANK_LINE(),
            smali.MOVE_OBJECT_16("v19", "v0"),
            smali.BLANK_LINE(),
            smali.CONST_CLASS("v0", "Ljavax/swingx/JFrame;"),
            smali.BLANK_LINE(),
            smali.MOVE_OBJECT_16("v16", "v0"),
            smali.BLANK_LINE(),
            smali.MOVE_OBJECT_16("v0", "v19"),
            smali.BLANK_LINE(),
            smali.COMMENT("END OF FRL MOVE ADDED BY STIGMA"),
            smali.BLANK_LINE()]
    
    #print(ans_block)
    #print(soln_block)
    assert(ans_block == soln_block)

    asm_obj = smali.parse_line("    move-result v16")
    #print(test2_shadow_map)
    ans_block = asm_obj.fix_register_limit(test2_shadow_map, {"v0": smali.MOVE_OBJECT_16})
    soln_block = [smali.COMMENT("FRL MOVE ADDED BY STIGMA"), 
            smali.BLANK_LINE(),
            smali.MOVE_OBJECT_16("v19", "v0"),
            smali.BLANK_LINE(),
            smali.MOVE_RESULT("v0"),
            smali.BLANK_LINE(),
            smali.MOVE_16("v16", "v0"),
            smali.BLANK_LINE(),
            smali.MOVE_OBJECT_16("v0", "v19"),
            smali.BLANK_LINE(),
            smali.COMMENT("END OF FRL MOVE ADDED BY STIGMA"),
            smali.BLANK_LINE()]
    
    #print(ans_block)
    #print(soln_block)
    assert(ans_block == soln_block)
    
    asm_obj = smali.parse_line("    throw v16")
    #print(test2_shadow_map)
    ans_block = asm_obj.fix_register_limit(test2_shadow_map, {"v0": smali.MOVE_16, "v16" : smali.MOVE_OBJECT_16})
    soln_block = [smali.COMMENT("FRL MOVE ADDED BY STIGMA"), 
            smali.BLANK_LINE(),
            smali.MOVE_16("v19", "v0"),
            smali.BLANK_LINE(),
            smali.MOVE_OBJECT_16("v0", "v16"),
            smali.BLANK_LINE(),
            smali.THROW("v0"),
            smali.BLANK_LINE(),
            smali.MOVE_OBJECT_16("v16", "v0"),
            smali.BLANK_LINE(),
            smali.MOVE_16("v0", "v19"),
            smali.BLANK_LINE(),
            smali.COMMENT("END OF FRL MOVE ADDED BY STIGMA"),
            smali.BLANK_LINE()]
    
    #print(ans_block)
    #print(soln_block)
    assert(ans_block == soln_block)
    '''
    

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

    The reason type of v7 is "object" is because, when we used our move instruction to move p3 into v7 (move-object/16 v7, p3)
    Type safety checker assigned an object to v7 where as v7 which was originally p3, had a type of [I
'''