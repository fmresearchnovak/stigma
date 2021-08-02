
'''
This class contains a list of hashmaps, which are associated with each line of the method containing information about
the types of each register at each current line. 
hashmap -> key: string (register name)
        -> value: string, (type stored in the register)(32bit-64bit-object)
'''

import StigmaStringParsingLib 
import SmaliAssemblyInstructions as smali
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

        self.most_recent_type_map = {}                             #this map is the latest hashmap at that current line
        self.looping_conditions_list = []                          #We need to check if the corresponding condition exists already, if yes, we do not put it in our control flow list, assuming it is a loop e.g [':cond_7', ':cond_8']

        #this is a list of all the mappings for the a node
        self.node_type_list = []

        #check for the signature and create a new hashmap for the types of parameters from the first line
        self.type_update_parameter()
        
        #traverse through the control flow graph to build a type safety list for each node
        #self.walk()
  
    def walk(self):
        #start processing the graph from second node, frst is just the signature       
        counter = 1
        cur_nodes = [self.cfg.G.nodes[1]]    
        
        while(self.nodes_left_to_visit()):

            #if the cur_nodes is not empty process the smallest node
            if(len(cur_nodes) != 0):
                node = self.get_smallest_node(cur_nodes)
                cur_nodes.remove(node)
                node_counter = node["node_counter"]

                if(not node["visited"]):
                    node["visited"] = True 
                    #get neighbors of current node and store for breadth first search
                    neighbors = self.cfg.G.neighbors(node_counter)    
                    for neighbor in neighbors:                               
                        neighbor_node = self.cfg.G.nodes[neighbor]
                        if neighbor_node["visited"] == False:
                            cur_nodes.append(neighbor_node)
                    
                    #call type_update on each line of code inside the node. 
                    for index in range(len(node["text"])):
                        self.type_update(node["text"][index], index, node_counter)
                    
                    #assign the register type list to this current node after its processed processed
                    node["type_list"] = self.node_type_list
                    self.node_type_list = []
                    #self.debug_node(node, cur_nodes)

            else:
                #if cur_nodes was empty, insert a new node
                cur_nodes = [self.cfg.G.nodes[counter]]
                counter+=1    
                                                
    def type_update_parameter(self):  
        
        line_type_map = {}
        #checks for number of parameters in the method
        if(self.signature.num_of_parameters == 0):
            self.cfg.G.nodes[0]["visited"] = True
            self.cfg.G.nodes[0]["type_list"] = self.node_type_list    
            return 
        else:
            #method in smali method def does similar parsing(can be used in future)
            #just store the p registers, because during instrumentation if .locals changes 
            #the v numbers would shift from their corresponding p registers 
            for p_num,value in self.signature.parameter_type_map.items():
                type_val = self.check_parameter_type(value)
                line_type_map[p_num] = type_val

        self.most_recent_type_map = line_type_map
        self.node_type_list.append(line_type_map) 
        self.node_type_list = []
        
        #mark the first node visited, and assign it the method type list containing parameter types
        self.cfg.G.nodes[0]["visited"] = True
        self.cfg.G.nodes[0]["type_list"] = self.node_type_list    
  
    def type_update(self, line, line_index, node_counter):     
        '''
        @parms line = specific line inside the method
               line_index = index of that line in the text list 
        this method creates a hashmap for a normal line if udpate happens otherwise puts a reference to the existing hashmap
        '''
            
        #find all unrelevant instructions and put a -1 for them in the type list
        if(self.non_relevent_line(line)):
            self.node_type_list.append(self.most_recent_type_map)
            # print("\n------NON RELECVENT LINE:", line.strip())
            # print(self.node_type_list[-1])
            return
        
        tokens = StigmaStringParsingLib.break_into_tokens(line)
        
        if(re.search(StigmaStringParsingLib.BEGINS_WITH_MOVE, line) is not None and re.search(StigmaStringParsingLib.BEGINS_WITH_MOVE_RESULT, line) is None and re.search(StigmaStringParsingLib.BEGINS_WITH_MOVE_EXCEPTION, line) is None):
            reg = StigmaStringParsingLib.get_v_and_p_numbers(line)       
            line_type_map_new = self.most_recent_type_map.copy()
            #in this case the types might not be known to us
            if(reg[-1] not in self.most_recent_type_map):
                reg_type = '?'
            else:
                reg_type = self.most_recent_type_map[reg[-1]]
            line_type_map_new[reg[0]] = reg_type
            self.most_recent_type_map = line_type_map_new.copy()
            self.node_type_list.append(line_type_map_new)
            
            # print("\n*****line:", line.strip())
            # print(self.node_type_list[-1])
            
            return
        
        #if the current line is an if statement, store the most recent hashmap as most recent if statement parent map, for later access 
        if(re.search(StigmaStringParsingLib.BEGINS_WITH_IF, line) is not None):
            line_type_map_new = self.most_recent_type_map.copy()
            self.node_type_list.append(line_type_map_new)
        
        #if the current line is a packed switch or a sparse switch
        elif(re.search(StigmaStringParsingLib.BEGINS_WITH_PACKED_SWITCH, line) is not None or re.search(StigmaStringParsingLib.BEGINS_WITH_SPARSE_SWITCH, line) is not None):
            line_type_map_new = self.most_recent_type_map.copy()
            self.node_type_list.append(line_type_map_new)

        #if the current line is a start of a label, check if there is a correlating if or goto statement that we have seen before this condition
        elif(re.search(StigmaStringParsingLib.BEGINS_WITH_PSWITCH_LABEL, line) is not None or re.search(StigmaStringParsingLib.BEGINS_WITH_SSWITCH_LABEL, line) is not None):
            map_list = self.get_relevant_maps_to_merge(node_counter)        
            new_map = self.merge_maps(map_list)
            self.most_recent_type_map = new_map
            self.node_type_list.append(new_map)
        
        #if the current line is a :catch label, reset everything because we dont know which line has caused the catch 
        elif(re.search(StigmaStringParsingLib.BEGINS_WITH_CATCH_LABEL, line) is not None):
            self.node_type_list.append({})
            self.most_recent_type_map = {}
            
        #if the current line is a start of a label, check if there is a correlating if or goto statement that we have seen before this condition
        elif(re.search(StigmaStringParsingLib.BEGINS_WITH_COLON, line) is not None):
            label = tokens[0]
            if(not self.has_matching_visited_label_parent(label, node_counter)):
                #this is a situation where (:cond_x) statement has no (if-eqz :cond_4) preceding, (probably a loop) so just keep going
                self.looping_conditions_list.append(label)
                line_type_map_new = self.most_recent_type_map.copy()
                self.node_type_list.append(line_type_map_new)
            else:
                map_list = self.get_relevant_maps_to_merge(node_counter)        
                new_map = self.merge_maps(map_list)
                self.most_recent_type_map = new_map
                self.node_type_list.append(new_map)

        #this is case, where we see a return statement, and we store it with the conditon and the map
        elif(re.search(StigmaStringParsingLib.BEGINS_WITH_RETURN, line) is not None):
            line_type_map_new = self.most_recent_type_map.copy()
            self.node_type_list.append(line_type_map_new)
            
        #this is the normal case, all other lines do the process of assigning new map as the most recent map
        else:
            instruction = tokens[0]
            registers = StigmaStringParsingLib.get_v_and_p_numbers(line)
            dest_reg = registers[0]
            #if this is a start of new block, retreive most recent map from the parent node
            #if this is not a start, keep using the most recent map assigned
            if(line_index == 0):
                line_type_map_new = self.get_most_recent_type_map(node_counter).copy()
            else:
                line_type_map_new = self.most_recent_type_map.copy()

            #SHALLOW COPY
            #the keys and values are strings (immutable), so a shallow copy is adequateable
            #https://stackoverflow.com/questions/2465921/how-to-copy-a-dictionary-and-only-edit-the-copy

            if(instruction == "move-result-object"):
                # this is a very special case.   move-result-object vx
                # may cause vx to be (a) an Object (b) an Array
                # if it is an array we need to know the type of that array
                # (array of String vs array of int, etc)
                # in order to properly handle subsequent instructions
                # such as aget vy, vx

                prev_line = self.obtain_previous_instruction(node_counter, line_index-1)
                prev_line_tokens = StigmaStringParsingLib.break_into_tokens(prev_line)
                prev_line_instruction = prev_line_tokens[0]
                
                if(re.search(StigmaStringParsingLib.BEGINS_WITH_INVOKE, prev_line_instruction) is not None):
                    type_start_index = prev_line.rfind(")")
                    if(type_start_index != -1):
                        instruction_type = prev_line[type_start_index+1:]
                        if("[" not in instruction_type):
                            line_type_map_new[dest_reg] = self.check_invoke_type(instruction_type[0])
                        else:
                            instruction_type = instruction_type.replace("\n", "")  #need to replace new line char from end, otherwise stores [I\n -> we need only [I
                            line_type_map_new[dest_reg] = instruction_type
                        
                elif("new-array" in prev_line_instruction):
                    instruction_type = prev_line_tokens[-1]
                    line_type_map_new[dest_reg] = instruction_type
                          
            #if instruction == new-array , get the whole type, including the ['s
            elif(instruction == "new-array"):
                instruction_type = tokens[-1]
                line_type_map_new[dest_reg] = instruction_type

            #if iget-object is an array, we have to store the exact type of array, otherwise just store object
            #error:     
                # iget-object v6, p0, Landroid/support/design/widget/CoordinatorLayout;->mKeylines:[I
                # aget v7, v6, v5
            #not sure if have to consider aget-object
            elif(instruction == "iget-object" or instruction == "sget-object" or instruction == "iget-object-quick"):
                instruction_type = tokens[-1]
                idx = instruction_type.find("[")
                if(idx != -1):
                    reg_type = instruction_type[idx:]
                    line_type_map_new[dest_reg] = reg_type
                else:
                    line_type_map_new[dest_reg] = "object"
            
            
            elif(instruction == "aget-object"):
                # while aget and aget-boolean and others are explicit
                # about their type, 'aget-object' may be operating on an array
                # that is N-dimenstional.  e.g.,  [[[Landroid/blah/MyClass;

                # aget-object vx, vy, vz
                # vx is the destination register
                # vy is the array
                # vz is the index (and int) into that array
                src_reg = registers[1] 
                src_type = line_type_map_new[src_reg]
                #if(re.search(StigmaStringParsingLib.BEGINS_WITH_TWO_SQUARE_BRACKETS, src_type) is not None):
                #    print("N-dimenstional array found: " + str(src_type))
                line_type_map_new[dest_reg] = self.check_aget_object_type(src_type)
                      
                                
            else:
                line_type_map_new[dest_reg] = self.check_type_list(instruction)
            
            self.most_recent_type_map = line_type_map_new.copy()
            self.node_type_list.append(line_type_map_new)
        
        # print("\n*****line:", line.strip())
        # print(self.node_type_list[-1])
        # input("Continue???")
        # Debugging the smali line-by-line as program runs
        # self.debugging(line, line_index)
    
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
            parent_node = self.cfg.G.nodes[parent]["text"][0]
            parent_node_tokens = StigmaStringParsingLib.break_into_tokens(parent_node)
            if(len(parent_node_tokens) != 0) and label == parent_node_tokens[-1] and self.cfg.G.nodes[parent]["visited"] == True:
                return True
        return False
    
    def get_most_recent_type_map(self, node_counter):
        predecessors = self.cfg.G.predecessors(node_counter) #this should always be just one node, call this on a block of code
        for parent in predecessors:
            parent_type_list = self.cfg.G.nodes[parent]["type_list"]
            parent_type_map = parent_type_list[-1]
            return parent_type_map

    def type_query(self, register, line):
        #find which node contains the given line number
        #extract the type map for that line from the node type list
        node, line_index = self.get_relevent_node_for_line(line)
        line_map = node["type_list"][line_index]
        if register in line_map:
            return line_map[register]
        else:
            raise ValueError("query cannot be resolved for " + str(register) + " " + str(line))
        
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
            return "32-bit"
        elif(opcode in StigmaStringParsingLib.SIXTY_FOUR_BIT_TYPE_LIST):
            return "64-bit"
        elif(opcode in StigmaStringParsingLib.OBJECT_TYPE_LIST):
            return "object"
        else:
            raise RuntimeError ("opcode seems to has no type", opcode)


    def check_aget_object_type(self, src_type):
        """
        The special case for checking types of array with an aget-object instruction
        Algorithm: remove the first character to check the type
        e.g
            1)
                src_type: [[I
                return "[I"
            2)
                src_type: [Ljava/lang/String
                return "object"
            3) 
                src_type: ?
                return "?"
        """     
        #print("src_type: " + str(src_type))   

        if(src_type == "?"):
            return "?"

        value = src_type[1:]

        if(value[0] == "L"):
            return "object"
        else:
            if(value in smali.TYPE_LIST_WIDE):
                return "64-bit"
            elif(value in smali.TYPE_LIST_WIDE_REMAINING):
                # note: this should never happen!
                return "64-bit-2"
            elif(value in smali.TYPE_LIST_WORD):
                return "32-bit"
            else:
                # scenario one
                return value





    def check_parameter_type(self,value):
        '''
        This method takes in the value from the parameter_type_map of the signature class 
        and converts it to equivalent types required for type safety checker class.
        e.g
            1)value:THIS
            return object,
            2)value:Z
            return 32-bit
        '''

        if("[" in value):
            return value
        elif(value in smali.TYPE_LIST_OBJECT_REF or value[0] == "L"):
            return "object"
        elif (value in smali.TYPE_LIST_WORD):
            return "32-bit"
        elif (value in smali.TYPE_LIST_WIDE):
            return "64-bit"
        elif (value in smali.TYPE_LIST_WIDE_REMAINING):
            return "64-bit-2"
        else:
            raise Exception("Invalid Value: ", value)
        
    def check_invoke_type(self, value):
        if(value in smali.TYPE_LIST_OBJECT_REF):
            return "object"
        elif (value in smali.TYPE_LIST_WORD):
            return "32-bit"
        elif (value in smali.TYPE_LIST_WIDE):
            return "64-bit"
        elif (value in smali.TYPE_LIST_WIDE_REMAINING):
            return "64-bit-2"
        else:
            raise Exception("Invalid Value: ", value)
    
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
              
    def obtain_next_instruction(self, node_counter, start):
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

        if(start>=len(text)):
            return ""

        cur_line = text[start]        
        # print("text: ", text)
        
        while(not StigmaStringParsingLib.is_valid_instruction(cur_line) and start < len(text)):
            cur_line = text[start]
            start = start+1
        
        return cur_line    
              
    def __str__(self):
        return str(self.node_type_list)

    @staticmethod
    def get_move_instr(type):
        if type == "32-bit":
            return smali.MOVE_16
        elif type == "64-bit":
            return smali.MOVE_WIDE_16
        elif type == "object" or type[0] == "[":
            return smali.MOVE_OBJECT_16
        else:
            raise Exception("Invalid type to move", type)
            
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
                    new_map[reg] = '?'
                    break
                else:
                    t = m[reg]
                    if(t != presumed_type):
                        new_map[reg] = '?'
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

    @staticmethod
    def non_relevent_line(line):
        #non relevant list
        #blank lines
        #all the compiler directive (check for a invalid instruction unless condition, if or return put a -1)
        if(line == ''):
            return True
        elif(not StigmaStringParsingLib.is_valid_instruction(line)
             and re.search(StigmaStringParsingLib.BEGINS_WITH_RETURN, line) is None 
             and re.search(StigmaStringParsingLib.BEGINS_WITH_IF, line) is None 
             and re.search(StigmaStringParsingLib.BEGINS_WITH_COLON, line) is None
             and re.search(StigmaStringParsingLib.BEGINS_WITH_PACKED_SWITCH, line) is None
             and re.search(StigmaStringParsingLib.BEGINS_WITH_SPARSE_SWITCH, line) is None):
            return True
        else:
            tokens = StigmaStringParsingLib.break_into_tokens(line)
            opcode = tokens[0]
            return opcode in StigmaStringParsingLib.NON_RELEVANT_INSTRUCTION_LIST
