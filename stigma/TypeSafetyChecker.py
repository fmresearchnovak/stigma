
'''
This class contains a list of hashmaps, which are associated with each line of the method containing information about
the types of each register at each current line. 
hashmap -> key: string (register name)
        -> value: string, (type stored in the register)(32bit-64bit-object)
'''
from stigma import VRegisterPool, StigmaStringParsingLib
import re


class TypeSafetyChecker:

    def __init__(self, text, signature):
        """
        @parms text = all lines of method packed in a list
               signature = signature class from smd which parses the first line and returns a list of parameters and their types
        """
                
        # this should probably raise an exception instead of returning?
        if(len(text) < 3 or text == [] or text == ''):
            return
                    
        self.text = text                  #orignal method text
        self.signature = signature        #method object stored in object 

        self.most_recent_type_map = {}                             #this map is the latest hashmap at that current line
        self.most_recent_if_statement_parent_map = {}              #this list holds the latest hashmap before the if was executed
        self.control_flow_list = IF_CONDITION_PAIR_LIST()          #this list holds all the control flow maps currently in execution
        self.looping_conditions_list = []                          #We need to check if the corresponding condition exists already, if yes, we do not put it in our control flow list, assuming it is a loop e.g [':cond_7', ':cond_8']

        #this is a list of all the mappings
        self.method_type_list = []

        #check for first two lines and create a new hashmap for the first line extracting the parameters
        self.type_update_parameter(self.text[0], self.text[1])
        
        for i in range(1,len(self.text)):
            self.type_update(self.text[i], i)
        
    def type_update_parameter(self, line1, line2):  
        
        """
        @parms line1 = first line of method (containing method signature)
               line2 = information about total number of v registers in the current method
        """
        
        line_type_map = {}
        #checks for number of parameters in the method
        if(self.signature.num_of_parameters == 0):
            return 
        else:
            # if line2.find('.locals') == -1:
            #     #throw an exception here
            #     print(self.text)
            #     raise ValueError("Unable to find .locals in ", self.signature) 
            # else:
                #method in smali method def does similar parsing(can be used in future)
                #just store the p registers, because during instrumentation if .locals changes 
                #the v numbers would shift from their corresponding p registers 
            for p_num,value in self.signature.parameter_type_map.items():
                type_val = self.check_parameter_type(value)
                line_type_map[p_num] = type_val


        self.most_recent_type_map = line_type_map
        self.method_type_list.append(line_type_map) 
            
    def type_update(self, line, line_index):        
        '''
        @parms line = specific line inside the method
               line_index = index of that line in the text list 
        this method creates a hashmap for a normal line if udpate happens otherwise puts a reference to the existing hashmap
        '''

        #find all unrelevant instructions and put a -1 for them in the type list
        if(self.non_relevent_line(line)):
            self.method_type_list.append(-1)
            #self.debugging(line, line_index)
            return
        
        tokens = StigmaStringParsingLib.break_into_tokens(line)

        #if the current line is an if statement, store the most recent hashmap as most recent if statement parent map, for later access 
        if(re.search(StigmaStringParsingLib.BEGINS_WITH_IF, line) is not None):
            '''
            We need to check if the corresponding condition exists already, if yes, we donont put it in our control flow list, assuming it is a loop
            '''
            condition_number = tokens[len(tokens)-1]
            if(condition_number not in self.looping_conditions_list):                
                self.most_recent_if_statement_parent_map = self.most_recent_type_map.copy()              
                current_if_pair = IF_CONDITION_PAIR(condition_number,self.most_recent_if_statement_parent_map)
                self.control_flow_list.append(current_if_pair)
            line_type_map_new = self.most_recent_type_map.copy()
            self.method_type_list.append(line_type_map_new)
            #return

        #if the current line is a start of a condition, check if there is a correlating if statement that we have seen before this condition, if true prcoceed, otherwise go to else
        elif(re.search(StigmaStringParsingLib.BEGINS_WITH_COND, line) is not None):
            condition_number = tokens[0]
            if(not self.has_corresponding_if_statement(condition_number)):
                #this is a situation where (:cond_x) statement has no (if-eqz :cond_4) preceding, (probably a loop) so just keep going
                self.looping_conditions_list.append(condition_number)
                self.method_type_list.append(-1)
            else:
                
                map_list = self.control_flow_list.get_the_maps_of_corresponding_ifs(condition_number)
                                
                if(not self.control_flow_list.check_if_returns_exist()):
                    map_list.append(self.most_recent_type_map)
                                    
                # merge all maps
                new_map = self.merge_maps(map_list)
                self.most_recent_type_map = new_map
                self.method_type_list.append(new_map)
                self.control_flow_list.update(condition_number)

        #this is case, where we see a return statement, and we store it with the conditon and the map
        elif(re.search(StigmaStringParsingLib.BEGINS_WITH_RETURN, line) is not None):
            if(len(self.control_flow_list.l) != 0): #check if are inside an if statement or not, this could be a return at end of the method also
                latest_if_condition_pair = self.control_flow_list.l[-1] 
                latest_if_condition_pair.return_statment = tokens[0]
            self.method_type_list.append(-1)

        #this is the normal case, all other lines do the process of assigning new map as the most recent map
        else:
            instruction = tokens[0]
            registers = StigmaStringParsingLib.get_v_and_p_numbers(line)
            dest_reg = registers[0]
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

                prev_line = TypeSafetyChecker.obtain_previous_instruction(self.text, line_index-1)
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
   
        
            elif(instruction == "aget"):
                print(line)
                src_reg = registers[1]
                # the method_type_list does not yet have a hashmap
                # inserted for the current (aget) line.  So, to 
                # look at the previous line, we have to query line_index-1
                src_type = self.type_query(src_reg, line_index-1)
                line_type_map_new[dest_reg] = self.check_aget_type(src_type)
  
                                
            else:
                line_type_map_new[dest_reg] = self.check_type_list(instruction)

            self.most_recent_type_map = line_type_map_new
            self.method_type_list.append(line_type_map_new)
            
        # Debugging the smali line-by-line as program runs
        # self.debugging(line, line_index)
    
    def get_relevant_maps_to_merge(self,condition_number):
        map_list = []
        #all relevant if statements of that condition seen so far
        for if_pair in self.control_flow_list:
            if if_pair.condition_number == condition_number:
                map_list.append(if_pair.if_parent_map)
        
        return map_list

    def has_corresponding_if_statement(self, condition_number):
        for item in self.control_flow_list.l:
            if(item.condition_number == condition_number):
                return True
        return False
    
    def type_query(self, register, line_number):
        
        if(line_number == len(self.method_type_list)):
            line_number = line_number-1
        orig_line_number = line_number
        current_line_map = self.method_type_list[line_number]

        if isinstance(current_line_map, dict):            
            if(register in current_line_map):
                return current_line_map[register]
            else:
                #loop back to find the most recent hashmap which might contain this register, which was created inside a few lines of code.
                while(True):
                    line_number = line_number-1
                    current_line_map = self.method_type_list[line_number]
                    if(current_line_map != -1):
                        if(register in current_line_map):
                                break
                return current_line_map[register]

        #loop and build a connection to find the relevant hashmap
        elif(current_line_map == -1):
            while(not isinstance(current_line_map, dict) and line_number >= 0):
                line_number = line_number-1
                current_line_map = self.method_type_list[line_number]
                
            if(current_line_map == -1):
                raise ValueError("query cannot be resolved for " + str(register) + " " + str(orig_line_number))
            
            else:
                if(register in current_line_map):
                    return current_line_map[register]
                else:
                    #loop back to find the most recent hashmap which might contain this register, which was created inside a few lines of code.
                    while(True):
                        line_number = line_number-1
                        current_line_map = self.method_type_list[line_number]
                        if(current_line_map != -1):
                            if(register in current_line_map):
                                break
                    return current_line_map[register]
    
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
            raise RuntimeError ("opcode seems to has no type", opcode, )
            
    def check_aget_type(self, src_type):
        """
        This method handles the special case for checking types of array
        it takes in the type of the source register from the aget instruction
        and removes the first character to check the type
        e.g
            1)
                src_type: [I
                return "I"
            2)
                src_type: [Ljava/lang/String
                return "object"
        """
        if(len(src_type) == 1):
            # for line in self.text:
            #     print(line)
            print(src_type)
        
        value = src_type[1:]
        if(value[0] == "L"):
            return "object"
        else:
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
        elif(value in VRegisterPool.TYPE_LIST_OBJECT_REF):
            return "object"
        elif (value in VRegisterPool.TYPE_LIST_WORD):
            return "32-bit"
        elif (value in VRegisterPool.TYPE_LIST_WIDE):
            return "64-bit"
        elif (value in VRegisterPool.TYPE_LIST_WIDE_REMAINING):
            return "64-bit-2"
        else:
            return "invalid type"
        
    def check_invoke_type(self, value):
        if(value in VRegisterPool.TYPE_LIST_OBJECT_REF):
            return "object"
        elif (value in VRegisterPool.TYPE_LIST_WORD):
            return "32-bit"
        elif (value in VRegisterPool.TYPE_LIST_WIDE):
            return "64-bit"
        elif (value in VRegisterPool.TYPE_LIST_WIDE_REMAINING):
            return "64-bit-2"
        else:
            return "invalid type"
              
    def __str__(self):
        return str(self.method_type_list)

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
             and re.search(StigmaStringParsingLib.BEGINS_WITH_COND, line) is None):
            return True
        else:
            tokens = StigmaStringParsingLib.break_into_tokens(line)
            opcode = tokens[0]
            return opcode in StigmaStringParsingLib.NON_RELEVANT_INSTRUCTION_LIST

    @staticmethod
    def obtain_previous_instruction(text, start):
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
        
        cur_line = text[start]
        while(not StigmaStringParsingLib.is_valid_instruction(cur_line)):
            start = start-1
            cur_line = text[start]
        
        return cur_line

    def debugging(self, line, line_index):
        print("\nline: " + str(line_index) + line , "\nline_map: ", self.most_recent_type_map)
        print("Size of type_list:", len(self.method_type_list))
        print("Looping Condition list: ", self.looping_conditions_list)
        if(len(self.control_flow_list.l) == 0):
            print("Control flow list: Empty List []", "\n")
        else:            
            for i in range(len(self.control_flow_list.l)):
                print("Control flow list: ", i+1, ":", self.control_flow_list.l[i])
        
        #input("Continue?")
        
class IF_CONDITION_PAIR:
    def __init__(self, new_condition_number, new_parent_map):
        self.condition_number = new_condition_number                #this is a condition number (e.g ":cond_4")
        self.if_parent_map = new_parent_map                         #this is the hashmap stored for that condition number at the if statement = {p0:object, p1:object}
        self.return_statment = None                                 #e.g return-object vx, just to check if return statement exists or not line iteself doesnt matter

    def check_if_return_exists(self):
        return self.return_statment != None

    def __str__(self):
        return "Condition->" + str(self.condition_number) + ", Parent->" + str(self.if_parent_map) + ", Return->" + str(self.return_statment)
    
    
class IF_CONDITION_PAIR_LIST:
    
    def __init__(self):
        self.l = []
    
    def append(self, if_condition_pair):
        if(not isinstance(if_condition_pair, IF_CONDITION_PAIR)):
            raise TypeError("Invalid type: " + str(type(if_condition_pair)))
        else:
            self.l.append(if_condition_pair)

    def get_the_maps_of_corresponding_ifs(self,condition_number):
        map_list = []
        #all relevant if statements of that condition seen so far
        for if_pair in self.l:
            if if_pair.condition_number == condition_number:
                map_list.append(if_pair.if_parent_map)
        return map_list
    
    def check_if_returns_exist(self):
        for pair in self.l[:-1]:
            if pair.check_if_return_exists():
                raise RuntimeError("Multiple if's appear to have a return statement.")

        return self.l[-1].check_if_return_exists()

    def update(self,condition_number):
        '''This method takes in a condition number (':cond_3') and loops through the self.l list to find all instances of if_condition_pair matching this condition and removes them from the list '''
        while(len(self.l) != 0):
            last_item = self.l[-1]
            if last_item.condition_number == condition_number:
                self.l.pop()
            else:
                break

    
'''
Changes made:
    - Maintain a seperate list of possible looping conditions which do not have a preceding if statement, 
     so when we see an if with that condition we can simply ignore it rather than making a new if_condition_pair

    - The presumed type of a register when merger cannot be taken out from the first map always, as that register might not exist
      in the first map, so implemented a new method, get_register_presumed_type which can loop through all maps and 
      find a type from any first map where the register existsdatetime A combination of a date and a time. Attributes: ()
      
    - Implemented get_relevant_maps_to_merge, this method takes in a condition_number and loops through all the if_pairs stored 
    in the control flow list. if the condition number matches, we append it to the map_list. The most recent map is also appended in the map_list.
    
    - the condition_pair_list doesnt have list attributes such as length and others, so we need to access the .l (list) inside it and call list methods on that.
    
    - implemented an update method in the if_condition_pair_list which takes a condition number and removes all if-pairs matching that condition from the list. 
     
'''