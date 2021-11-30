
'''
This class contains a list of hashmaps, which are associated with each line of the method containing information about
the types of each register at each current line. 
hashmap -> key: string (register name)
        -> value: string, (type stored in the register)(32bit-64bit-object)
'''

import StigmaStringParsingLib 
import SmaliAssemblyInstructions as smali
import SmaliTypes

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

                                   #this map is the latest hashmap at that current line
        self.looping_conditions_list = []                          #We need to check if the corresponding condition exists already, if yes, we do not put it in our control flow list, assuming it is a loop e.g [':cond_7', ':cond_8']

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
        #print("\ntype_update(" + str(code_unit) + ")")
        
        if(re.search(StigmaStringParsingLib.BEGINS_WITH_COLON, line) is not None):
            new_map = self._type_update_colon(line, node_counter)
            
            
        if(StigmaStringParsingLib.is_valid_instruction(line)):
            new_map = self._type_update_instruction(code_unit, is_first_line, node_counter)
            
        else: #.line 15, .locals 5, .end_method, etc.
            new_map = self.most_recent_type_map.copy()
               
        self.most_recent_type_map = new_map
        self.node_type_list.append(new_map)



    def _type_update_colon(self, line, node_counter):

        #if the current line is a start of a label, check if there is a correlating if or goto statement that we have seen before this condition
        if(re.search(StigmaStringParsingLib.BEGINS_WITH_PSWITCH_LABEL, line) is not None \
        or re.search(StigmaStringParsingLib.BEGINS_WITH_SSWITCH_LABEL, line) is not None):
            map_list = self.get_relevant_maps_to_merge(node_counter)        
            line_type_map_new = self.merge_maps(map_list)
        
        
        #if the current line is a :catch label, reset everything because we dont know which line has caused the catch 
        elif(re.search(StigmaStringParsingLib.BEGINS_WITH_CATCH_LABEL, line) is not None):
            line_type_map_new = self.most_recent_type_map.copy()
            for key, value in line_type_map_new.items():
                line_type_map_new[key] = SmaliTypes.UnknownType() 
            
            
        #if the current line is a start of a label, check if there is a correlating if or goto statement that we have seen before this condition
        elif(re.search(StigmaStringParsingLib.BEGINS_WITH_COLON, line) is not None):
            tokens = StigmaStringParsingLib.break_into_tokens(line)
            label = tokens[0]
            if(not self.has_matching_visited_label_parent(label, node_counter)):
                #this is a situation where (:cond_x) statement has no (if-eqz :cond_4) preceding, (probably a loop) so just keep going
                self.looping_conditions_list.append(label)
                line_type_map_new = self.most_recent_type_map.copy()

            else:
                map_list = self.get_relevant_maps_to_merge(node_counter)        
                line_type_map_new = self.merge_maps(map_list)
            

        else:
            raise ValueError("Lost on", str(line))
            
            
        return line_type_map_new
            
            
            
            
    def _type_update_instruction(self, code_unit, is_first_line, node_counter):
        
        first_line = str(code_unit[0])
        first_line_tokens = StigmaStringParsingLib.break_into_tokens(first_line)
        first_instr = first_line_tokens[0]
        
        # ignore lines that don't affect the type of any 
        # register and don't matter to the TypeSafetyChecker
        # copy the existing type_map forward
        if(first_instr in StigmaStringParsingLib.NON_RELEVANT_INSTRUCTION_LIST):
            #print("\t\tnon relevant instr!", opcode)
            line_type_map_new = self.most_recent_type_map.copy()
            return line_type_map_new
            
        


        #this is the "normal" case, 
        
        #if this is a start of new block, retreive most recent map from the parent node
        #if this is not a start, keep using the most recent map assigned
        if(is_first_line):
            line_type_map_new = self.get_most_recent_type_map(node_counter).copy() # SHALLOW COPY
        else:
            line_type_map_new = self.most_recent_type_map.copy() # SHALLOW COPY  
        
        
        last_line = str(code_unit[-1])
        if(len(code_unit) > 1 and \
        re.search(StigmaStringParsingLib.BEGINS_WITH_MOVE_RESULT, last_line) is not None):
            # an invoke-* instruction
            # or a filled-new-array instruction
            
            # the corresponding move-result instruction
            last_instr = StigmaStringParsingLib.extract_opcode(last_line)
            dest_reg = StigmaStringParsingLib.get_v_and_p_numbers(last_line)[0]
            
            if(re.search(StigmaStringParsingLib.BEGINS_WITH_MOVE_RESULT_OBJECT, last_instr) is not None):
                # this is a very special case.   move-result-object vx
                # may cause vx to be (a) an Object (b) an Array
                # if it is an array we need to know the type of that array
                # (array of String vs array of int, etc)
                # in order to properly handle subsequent instructions
                # such as aget vy, vx
                                
                if(re.search(StigmaStringParsingLib.BEGINS_WITH_INVOKE, first_instr) is not None):
                    type_start_index = first_line.rfind(")")
                    tmp = first_line[type_start_index+1:].strip() 
                    # note: .strip() removes the \n at the end of the line
                    # e.g., if the return type is: [I\n   we need only [I
                        
                elif(re.search(StigmaStringParsingLib.BEGINS_WITH_FILLED_NEW_ARRAY, first_instr) is not None):
                    tmp = first_line_tokens[-1]

                return_type = SmaliTypes.from_string(tmp)   
                #print("move-result-object,  setting type:", str(return_type))
                line_type_map_new[dest_reg] = return_type
                
            else:
                # must be a move-result or a move-result wide
                return_type = self.check_type_list(last_instr)
                registers = StigmaStringParsingLib.get_v_and_p_numbers(last_line)
                dest_reg = registers[0]
                line_type_map_new[dest_reg] = return_type
                
                if(isinstance(return_type, SmaliTypes.SixtyFourBit)):
                    adj_reg = StigmaStringParsingLib.register_addition(dest_reg, 1)
                    line_type_map_new[adj_reg] = SmaliTypes.SixtyFourBit_2()
                    #print(dest_reg, " is now: ", str(reg_type))
                    #print(adj_reg, " is now: ", str(SmaliTypes.SixtyFourBit_2()))
                    
        elif(re.search(StigmaStringParsingLib.BEGINS_WITH_INVOKE, first_instr) is not None):
            # this is a single invoke-* line that doesn't
            # have a corresponding move-result in the code unit
            # such a situation with filled-new-array is valid, but
            # logically pointless and should never happen
            return line_type_map_new
                  
        else:

            registers = StigmaStringParsingLib.get_v_and_p_numbers(first_line)
            dest_reg = registers[0]
            opcode = first_instr
            #print("updating tsc with line: ", line)
                        
            if(opcode == "new-array"): 
                # note: this is NOT filled-new-array
                tmp = first_line_tokens[-1]
                return_type = SmaliTypes.from_string(tmp)  
                line_type_map_new[dest_reg] = return_type

            #if iget-object is an array, we have to store the exact type of array, otherwise just store object
            #error:     
                # iget-object v6, p0, Landroid/support/design/widget/CoordinatorLayout;->mKeylines:[I
                # aget v7, v6, v5
            #not sure if have to consider aget-object
            #iput-object can also contain an array, so we need to consider that case also while checking for array
            elif(opcode == "iget-object" or \
            opcode == "sget-object" or \
            opcode == "iget-object-quick" or \
            opcode == "iput-object"):
                tmp = first_line_tokens[-1]
                tmp = tmp.split(":")[1]
                    
                return_type = SmaliTypes.from_string(tmp)  
                line_type_map_new[dest_reg] = return_type
            
            
            elif(opcode == "aget-object"):
                #print("opcode match: ", opcode)
                # while aget and aget-boolean and others are explicit
                # about their type, 'aget-object' may be operating on an array
                # that is N-dimenstional.  e.g.,  [[[Landroid/blah/MyClass;

                # aget-object vx, vy, vz
                # vx is the destination register
                # vy is the array
                # vz is the index (and int) into that array
                src_reg = registers[1]
                src_type = line_type_map_new[src_reg]
                #print("src_reg", src_reg, "  src_type", src_type, "  line_type_map_new", line_type_map_new)
                return_type = self.check_aget_object_type(src_type)
                line_type_map_new[dest_reg] = return_type
                
                
            #check-cast vx, type_id
            #Checks whether the object reference in vx can be cast to an instance of a class referenced by type_id. Throws ClassCastException if the cast is not possible, continues execution otherwise.
            elif(opcode == "check-cast"):
                return_type = SmaliTypes.from_string(tokens[-1])
                line_type_map_new[dest_reg] = return_type

                      
            elif(re.search(StigmaStringParsingLib.BEGINS_WITH_MOVE_OBJECT, opcode) is not None):
                src_reg = registers[1]
                return_type = line_type_map_new[src_reg]
                line_type_map_new[dest_reg] = return_type
                          
            else:
                return_type = self.check_type_list(opcode)
                line_type_map_new[dest_reg] = return_type
                
                if(isinstance(return_type, SmaliTypes.SixtyFourBit)):
                    adj_reg = StigmaStringParsingLib.register_addition(dest_reg, 1)
                    line_type_map_new[adj_reg] = SmaliTypes.SixtyFourBit_2()
                    #print(dest_reg, " is now: ", str(reg_type))
                    #print(adj_reg, " is now: ", str(SmaliTypes.SixtyFourBit_2()))
                    
                    
        return line_type_map_new

    
    def get_relevant_maps_to_merge(self,node_counter):
        '''This gets all maps from the predecessor nodes to merge'''
        revelant_maps = []
        predecessors = self.cfg.G.predecessors(node_counter)
        for parent in predecessors:
            if "type_list" not in self.cfg.G.nodes[parent]:
                raise Exception("The parent node has not been visited yet.", self.cfg.G.nodes[parent]["text"])
            parent_node_map = self.cfg.G.nodes[parent]["type_list"][-1]
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

    def check_aget_object_type(self, src_type):
        # src_type = [[I
        #   return [I
        
        #print("src type: " + str(src_type) + "    type: " + str(type(src_type)))
        smali_array_type_obj = src_type
        if(isinstance(smali_array_type_obj, SmaliTypes.UnknownType)):
            return smali_array_type_obj
            
        result = smali_array_type_obj.unwrap_layer()
        
        return result

    
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
    def merge_maps(map_list):
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

        return new_map
    
    @staticmethod
    def get_register_presumed_type(reg, map_list):
        ''' The given register(reg) might not exist in any of the maps of the map_list, so we loop through all the maps and find the first map with that reg as a key and return the value which is its given type '''
        for map in map_list:
            if reg in map:
                return map[reg]
