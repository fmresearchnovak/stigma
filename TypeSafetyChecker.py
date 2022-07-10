
'''
This class contains a list of hashmaps, which are associated with each line of the method containing information about
the types of each register at each current line. 
hashmap -> key: string (register name)
        -> value: string, (type stored in the register)(32bit-64bit-object)
'''

import StigmaStringParsingLib 
import SmaliAssemblyInstructions as smali
import SmaliTypes

from SmaliRegister import SmaliRegister

import re



class TypeSafetyChecker:

    def __init__(self, signature, cfg):
        """
        @parms text = all lines of method packed in a list
               signature = signature class from smd which parses the first line and returns a list of parameters and their types
        """
            
        self.signature = signature        #method object stored in smd, used for parameter types of signature
       
        self.cfg = cfg          #instance of the control flow graph object for this method 
        self.visited_nodes = [] #list of all nodes in the cfg that have already been visited        if(len(cfg.G)) == 0:
        
        if(len(cfg.G)) == 1:
            return        


        #this is a list of all the mappings for a node
        self.node_type_list = []

        # create a the first "types" hashmap for the types of parameters from the first line
        self.most_recent_type_map = self.signature.parameter_type_map.copy()
        
        self.node_type_list.append(self.most_recent_type_map)
        self.cfg.G.nodes[0]["visited"] = True
        self.cfg.G.nodes[0]["type_list"] = self.node_type_list
    
                                            
  
    def type_update(self, code_unit, is_first_line, node_counter):     
        '''
        @parmas code_unit = a list of lines from the method
        for most instructions, this is one line, but for some
        e.g., invoke-* there is likely a subsequent move-result
        and so code_unit will include both / all lines
        
        @params is_first_line = a boolean indicating if the given line is the
        first in this block
        
        @params node_counter = index number of node / block in the control flow graph
        
        # the goal of this method is to make new map and update:
            self.most_recent_type_map
            self.node_type_list.append
            
        # when making new versions of the type_map for this new code_unit
        # we use .copy()  This is a SHALLOW COPY!
        # a shallow copy seems adequate for our purposes
        #https://stackoverflow.com/questions/2465921/how-to-copy-a-dictionary-and-only-edit-the-copy
        '''
        
        line = str(code_unit[0])
        #print("\ttype_update(" + str(code_unit) + ")")
        
        if(re.search(StigmaStringParsingLib.BEGINS_WITH_COLON, line) is not None):
            new_map = self._type_update_colon(line, node_counter)
            
            
        elif(StigmaStringParsingLib.is_valid_instruction(line)):
            new_map = self._type_update_instruction(code_unit, is_first_line, node_counter)
            
            
        else: #.line 15, .locals 5, .end_method, etc.
            new_map = self.most_recent_type_map.copy()
               
        #print("updating most recent type map:", new_map)
        self.most_recent_type_map = new_map
        self.node_type_list.append(new_map)



    def _type_update_colon(self, line, node_counter):

        #if the current line is a start of a label, check if there is 
        # a correlating if or goto statement that we have seen before this condition
        if(re.search(StigmaStringParsingLib.BEGINS_WITH_PSWITCH_LABEL, line) is not None \
        or re.search(StigmaStringParsingLib.BEGINS_WITH_SSWITCH_LABEL, line) is not None):
            map_list = self.get_relevant_maps_to_merge(node_counter)        
            line_type_map_new = self._merge_maps(map_list)
        
        
        #if the current line is a :catch label, reset everything because 
        # we dont know which line has caused the catch 
        elif(re.search(StigmaStringParsingLib.BEGINS_WITH_CATCH_LABEL, line) is not None):
            cur_map = self.most_recent_type_map.copy()
            line_type_map_new = self._clear_map(cur_map)
            
        # if the current line is a start of a label for an if or a goto
        elif(re.search(StigmaStringParsingLib.BEGINS_WITH_COLON, line) is not None):
            tokens = StigmaStringParsingLib.break_into_tokens(line)
            label = tokens[0]
            
            # check if there is a correlating if or goto statement 
            # that we have seen before this condition / label
            if(not self.has_matching_visited_label_parent(label, node_counter)):
                # this is a situation where (:cond_x) statement has no instr
                # (if-eqz :cond_4) preceding, (probably a loop)
                #
                # we have not yet type-analyzed whatever block(s) is /are
                # the parent(s) of this block, so we can no longer 
                # assume the type of any reg.  Some optimization
                # is probably possible here!
                cur_map = self.most_recent_type_map.copy()
                line_type_map_new = self._clear_map(cur_map)


            else:
                #print("found preceeding if statement matching!")
                map_list = self.get_relevant_maps_to_merge(node_counter)        
                line_type_map_new = self._merge_maps(map_list)
                

        else:
            raise ValueError("Lost on", str(line))
            
        
        return line_type_map_new
            
            
            
            
    def _type_update_instruction(self, code_unit, is_first_line_of_method, node_counter):
        #print("type_update_instruction", code_unit)
        first_line = str(code_unit[0])
        first_line_tokens = StigmaStringParsingLib.break_into_tokens(first_line)
        first_instr = first_line_tokens[0]
        registers = [SmaliRegister(r) for r in StigmaStringParsingLib.get_v_and_p_numbers(first_line)]
        
        # ignore lines that don't affect the type of any 
        # register and don't matter to the TypeSafetyChecker
        # copy the existing type_map forward
        #if(first_instr in StigmaStringParsingLib.NON_RELEVANT_INSTRUCTION_LIST):
        #    #print("\t\tnon relevant instr!", opcode)
        #    line_type_map_new = self.most_recent_type_map.copy()
        #    return line_type_map_new

        
        #if this is a start of new block, retreive most recent map from the parent node
        #if this is not a start, keep using the most recent map assigned
        # shallow copy works for some reason?
        # seems like it should create scope issues where all the 
        # dictionaries in self.node_type_list and self.most_recent_type_map 
        # are actually references to the same one?
        # I guess copy doesn't cause that problem.
        if(is_first_line_of_method):
            line_type_map_new = self.get_most_recent_type_map(node_counter).copy() # SHALLOW COPY
        else:
            line_type_map_new = self.most_recent_type_map.copy() # SHALLOW COPY  
        
        
        last_line = str(code_unit[-1])
        if(len(code_unit) > 1 and \
        re.search(StigmaStringParsingLib.BEGINS_WITH_MOVE_RESULT, last_line) is not None):
            # an invoke-* instruction
            # or a filled-new-array instruction
            self._type_update_two_line_instruction(code_unit, line_type_map_new)
                  
        else: 
            
            if(first_instr == "aget-object"):
                #print("opcode match: ", opcode)
                # while aget and aget-boolean and others are explicit
                # about their type, 'aget-object' may be operating on an array
                # that is N-dimenstional.  e.g.,  [[[Landroid/blah/MyClass;
                # and the type in the dest register is not explicit in the instruction

                # aget-object vx, vy, vz
                # vx is the destination register
                # vy is the array
                # vz is the index (and int) into that array
                dest_reg = registers[0]
                src_reg = registers[1]
                src_type = line_type_map_new[src_reg]
        
                try:
                    return_type = src_type.unwrap_layer()
                except:
                    print("Failed to unwrap layer!")
                    print("\tunit:", code_unit)
                    print("\tsrc_reg", src_reg, "  src_type", src_type, "  line_type_map_new", line_type_map_new)
                    input("Continue?")
                TypeSafetyChecker._set_new_type_for_reg(line_type_map_new, dest_reg, return_type)
                      
            elif(re.search(StigmaStringParsingLib.BEGINS_WITH_MOVE_OBJECT, first_instr) is not None):
                dest_reg = registers[0]
                src_reg = registers[1]
                if src_reg in line_type_map_new:
                    return_type = line_type_map_new[src_reg]
                else:
                    return_type = SmaliTypes.NonSpecificObjectReference()
                    
                TypeSafetyChecker._set_new_type_for_reg(line_type_map_new, dest_reg, return_type)
                          
            else:
                TypeSafetyChecker._type_update_one_line_instruction(first_line, line_type_map_new)
                    
                    
        return line_type_map_new
        
    
    @staticmethod
    def _type_update_two_line_instruction(code_unit, line_type_map_new):
        # these two lines need to be converted to a string for most
        # of the subsequent code in this method.  In the past the conversion
        # to str was missing.  I think because none of the instrumentation
        # I ever wrote used two-line instructions (invoke & move-result)
        first_line = str(code_unit[0])
        last_line = str(code_unit[-1])
        dest_reg = SmaliRegister(StigmaStringParsingLib.get_v_and_p_numbers(last_line)[0])
        
        if(re.search(StigmaStringParsingLib.BEGINS_WITH_MOVE_RESULT_OBJECT, last_line) is not None):
            # this is a very special case.   move-result-object vx
            # may cause vx to be (a) an Object (b) an Array
            # if it is an array we need to know the type of that array
            # (array of String vs array of int, etc)
            # in order to properly handle subsequent instructions
            # such as aget vy, vx
                            
            if(re.search(StigmaStringParsingLib.BEGINS_WITH_INVOKE, first_line) is not None):
                type_start_index = first_line.rfind(")")
                tmp = first_line[type_start_index+1:].strip() 
                # note: .strip() removes the \n at the end of the line
                # e.g., if the return type is: [I\n   we need only [I
                    
            elif(re.search(StigmaStringParsingLib.BEGINS_WITH_FILLED_NEW_ARRAY, first_line) is not None):
                first_line_tokens = StigmaStringParsingLib.break_into_tokens(first_line)
                tmp = first_line_tokens[-1]

            # missing a check on the specificity level?
            new_type = SmaliTypes.from_string(tmp)
            #print("move-result-object,  setting type of " + str(dest_reg) + " to be:", str(new_type))
            line_type_map_new[dest_reg] = new_type
        
        else: # move-result or move-result wide
            TypeSafetyChecker._type_update_one_line_instruction(last_line, line_type_map_new)
            
    @staticmethod
    def _type_update_one_line_instruction(code_line, line_type_map_new):
        
        smali_asm_obj = smali.SmaliAssemblyInstruction.from_line(code_line)
        new_types = smali_asm_obj.get_register_type_implications()
        # returns something like {v2: 32-bit, v3: NonSpecificObject}
        
        for reg in new_types:
            new_reg_type = new_types[reg]
            #print("\tattempting update of reg:", reg, "  with type:", new_reg_type)
            TypeSafetyChecker._set_new_type_for_reg(line_type_map_new, reg, new_reg_type)
        
        

    @staticmethod
    def _set_new_type_for_reg(type_map, dest_reg, new_type):
        if dest_reg in type_map:
            existing_reg_type = type_map[dest_reg]
            #print("existing", existing_reg_type, type(existing_reg_type))
            #print("new", new_type, type(new_type))
            if existing_reg_type.get_generic_type() == new_type.get_generic_type():
                if new_type.specificity_level < existing_reg_type.specificity_level:
                    return
                    
        
        type_map[dest_reg] = new_type
        
        #_erase_adj_reg_if_long
        if(not isinstance(new_type, SmaliTypes.SixtyFourBit_2)):
            try:
                prev_adj_reg = dest_reg + -1
                if(prev_adj_reg in type_map):
                    if(isinstance(type_map[prev_adj_reg], SmaliTypes.SixtyFourBit)):
                        type_map[prev_adj_reg] = SmaliTypes.UnknownType() 
                        
            except ValueError:
                # exception means the prev_adj_reg is "v-1" (dest reg is v0)
                pass
            
    
    def get_relevant_maps_to_merge(self,node_counter):
        '''This gets all maps from the predecessor nodes to merge'''
        revelant_maps = []
        predecessors = list(self.cfg.G.predecessors(node_counter))
        #print("predecessors:", predecessors)
        for parent in predecessors:
            if "type_list" not in self.cfg.G.nodes[parent]:
                raise Exception("The parent node has not been visited yet.", self.cfg.G.nodes[parent]["text"])
            parent_node_map = self.cfg.G.nodes[parent]["type_list"][-1]
            #print("map of", parent, ": ", parent_node_map)
            revelant_maps.append(parent_node_map)
        return revelant_maps
    
    
    def has_matching_visited_label_parent(self, label, node_counter):
        '''This checks if the preceding node has a matching label'''
        predecessors = self.cfg.G.predecessors(node_counter)
        for parent in predecessors:
            parent_node = str(self.cfg.G.nodes[parent]["text"][0])
            parent_node_tokens = StigmaStringParsingLib.break_into_tokens(parent_node)
            if(len(parent_node_tokens) != 0) and label == parent_node_tokens[-1] and self.cfg.G.nodes[parent]["visited"] == True:
                return True
        return False
    
    
    def get_most_recent_type_map(self, node_counter):
        predecessors_iterator = self.cfg.G.predecessors(node_counter) #this should always be just one node, call this on a block of code
        predecessors_list = list(predecessors_iterator)
        if(len(predecessors_list) > 1):
            raise ValueError("There are multiple predecessors? ", str(list(predecessors_iterator)))
            
        pred_num = predecessors_list[0]
        #print("\ncur: ", node_counter)
        #print("cur code: ", self.cfg.G.nodes[node_counter]["text"])
        #print("pred:", pred_num)
        #print("pred code: ", self.cfg.G.nodes[pred_num]["text"])
        #print("pred type list: ", self.cfg.G.nodes[pred_num]["type_list"])
        return self.cfg.G.nodes[pred_num]["type_list"][-1]


        
    def get_relevent_node_for_line(self, line):
        #this loops over the each line of text in each line and tries to find which node contains
        #the relevent line for query
        line = line.strip()
        for node_counter in range(len(self.cfg.G)):
            node = self.cfg.G.nodes[node_counter]
            node_text = node["text"]
            for line_index in range(len(node_text)):
                if(node_text[line_index].strip() == line):
                    return node, line_index

        raise ValueError("Line not found in any node:", line)
    
    
    def check_type_list(self, opcode):
        '''
        This method takes in the opcode from the current line to check the type
        e.g
            1)
                opcode: add-long 
                return "64-bit"
            2)
                opcode: move
                return "32-bit"
        '''
        
        if(opcode in StigmaStringParsingLib.THIRTY_TWO_BIT_TYPE_LIST):
            return SmaliTypes.ThirtyTwoBit()
        elif(opcode in StigmaStringParsingLib.SIXTY_FOUR_BIT_TYPE_LIST):
            return SmaliTypes.SixtyFourBit()
        elif(opcode in StigmaStringParsingLib.OBJECT_TYPE_LIST):
            # this could be improved but it's complicated
            # some instructions encode the object type easily
            #     new-instance v15, Ljava/util/ArrayList;
            # others don't
            #     move-object v12, v13
            return SmaliTypes.ObjectReference("?")
        else:
            raise RuntimeError ("opcode seems to has no type", opcode)

    
    def obtain_previous_instruction(self, node_counter, start):
        # I found a situation in the whatsapp.apk which 
        # has the instruction preceeding a move-result-* instruction
        # MORE than 2 lines previous
        #
        #
        #...
        #invoke-interface {v0, v1, v4}, LX/1Fz;->AY5(Lcom/google/android/gms/dynamic/IObjectWrapper;LX/1oP;)[LX/1p7;
        #
        #
        #
        #.line 486217
        #
        #move-result-object v10
        #
        #:try_end_2
        # ...
        # such a situation means that line_index-2 is not a safe assumption
        # old code this method replaces: prev_line = self.text[line_index-2]
        #this method takes in a node counter which is the current node we are looking at, so we can extract the text of that node and look 
        #for the last valid instruction to return
        
        text = self.cfg.G.nodes[node_counter]["text"]
        cur_line = text[start]
        while(not StigmaStringParsingLib.is_valid_instruction(cur_line)):
            start = start-1
            cur_line = text[start]
        
        return cur_line          
              
   
              
    def __str__(self):
        return str(self.node_type_list)
            
    @staticmethod
    def _merge_maps(map_list):
        '''
        This method takes a list of relevant maps and takes the union of their values. if any registers type has changed in any of these maps or any register is missing out of these lists, we put a -1 for that register.
        @return: a new hashmap with key: register value: updated register types after merging
        '''
        
        
        new_map = {}
        register_set = set([])
        for m in map_list:
            register_list = list(m.keys())
            register_set.update(set(register_list))
        

        for reg in register_set:
            presumed_type = TypeSafetyChecker.get_register_presumed_type(reg,map_list)
            for m in map_list:
                if(reg not in m):
                    new_map[reg] = SmaliTypes.UnknownType()
                    break
                else:
                    t = m[reg]
                    if(t != presumed_type):
                        new_map[reg] = SmaliTypes.UnknownType()
                        break
            
            if reg not in new_map:
                new_map[reg] = presumed_type

        #print("\nmerged map", new_map)
        return new_map
        
    @staticmethod    
    def _clear_map(line_type_map_new):
        for key, value in line_type_map_new.items():
            line_type_map_new[key] = SmaliTypes.UnknownType() 
        return line_type_map_new
        
    
    @staticmethod
    def get_register_presumed_type(reg, map_list):
        ''' The given register(reg) might not exist in any of the maps 
            of the map_list, so we loop through all the maps and find 
            the first map with that reg as a key and return the value 
            which is its given type '''
        for map in map_list:
            if reg in map:
                return map[reg]
