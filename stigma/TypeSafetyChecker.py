
'''
This class contains a list of hashmaps, which are associated with each line of the method containing information about
the types of each register at each current line. 
hashmap -> key: string (register name)
        -> value: string, (type stored in the register)(32bit-64bit-object)
'''
from stigma import VRegisterPool
from stigma import StigmaStringParsingLib
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
                    
        self.text = text
        self.most_recent_type_map = {}                  #this map is the latest hashmap at that current line
        self.most_recent_if_statement_parent_map = {}   #this list holds the latest hashmap before the if was executed
        self.control_flow_list = []                     #this list holds all the control flow maps currently in execution
        self.control_flow_map = {}                      #this map holds as the key, cond: and the value is the if_statement parent map

        #this is a list of all the mappings
        self.method_type_list = []
        self.signature = signature        

        #check for first two lines and create a new hashmap for the first line extracting the parameters
        self.type_update_parameter(self.text[0], self.text[1])
        
        #now loop over the whole method and call type update 
        #self.text.remove(self.text[0])
        #self.text.remove(self.text[0])

        for i in range(1,len(self.text)):
            #text[i] = text[i]
            self.type_update(self.text[i], i)
        
    def type_update_parameter(self, line1, line2):  
        """
        @parms line1 = first line of method (containing method signature)
               line2 = information about total number of v registers in the current method
        """
        
        line_type_map = {}
        
        #checks for number of parameters in the method
        if(self.signature.num_of_parameters == 0):
            #print("no parameters in this method")
            return 
        else:
            if line2.find('.locals') == -1:
                #print("invalid instruction for .locals passed in")
                #throw an exception here
                return 
            else:
                #method in smali method def does similar parsing(can be used in future)
                #just store the p registers, because during instrumentation if .locals changes 
                #the v numbers would shift from their corresponding p registers 
                #v_reg_index = int(line2.strip()[7:].strip())
                for p_num,value in self.signature.parameter_type_map.items():
                    #corresponding_v_num = "v"+str(v_reg_index) 
                    type_val = self.check_parameter_type(value)
                    line_type_map[p_num] = type_val
                    #line_type_map[corresponding_v_num] = type_val
                    #v_reg_index = v_reg_index + 1

        self.most_recent_type_map = line_type_map
        self.method_type_list.append(line_type_map) 
        #print("map after parameters update: ", line_type_map)
        #input("Continue after parameter")
            
    def type_update(self, line, line_index):        

        '''
        @parms line = specific line inside the method
               line_index = index of that line in the text list 
        this method creates a hashmap for a normal line if udpate happens otherwise puts a reference to the existing hashmap
        '''

        #find all unrelevant instructions and put a -1 for them in the type list
        if(self.non_relevent_line(line)):
            print("line: " + str(line) + " non relevant")
            self.method_type_list.append(-1)
            return

        tokens = StigmaStringParsingLib.break_into_tokens(line)

        #if the current line is an if statement, store the most recent hashmap as most recent if statement parent map, for later access 
        if(re.search(StigmaStringParsingLib.BEGINS_WITH_IF, line) is not None):
            self.most_recent_if_statement_parent_map = self.most_recent_type_map.copy()              
            condition_number = tokens[len(tokens)-1]
            current_pair_to_store = CustomControlFlowHashMap(condition_number,self.most_recent_if_statement_parent_map)
            self.control_flow_list.append(current_pair_to_store)
            line_type_map_new = self.most_recent_type_map.copy()
            self.method_type_list.append(line_type_map_new)
            return

        #if the current line is a start of a condition, retreive the latest if condition appended, and match
        elif(re.search(StigmaStringParsingLib.BEGINS_WITH_COND, line) is not None):
            if(self.has_corresponding_if_statement(tokens[0])):
                latest_if_condition_pair = self.control_flow_list.pop(-1)
                #match for our last seen if statement condition (if-eqz vx: :cond_1) and the current starting condition (:cond_1)
                if(condition_number == latest_if_condition_pair.condition_number):
                    #this means there was a return before we hit the conditions, so even if types change we dont care
                    parent_map = latest_if_condition_pair.if_parent_map.copy()
                    if(latest_if_condition_pair.check_if_return_exists()):
                        self.most_recent_type_map = parent_map
                        self.method_type_list.append(parent_map)
                    else: 
                        #if there was no return compare the parent and current map to see what types were changed
                        #extract all relevant maps and merge them
                        map_list = self.extract_relevant_maps_to_merge(condition_number)
                        new_map = merge_maps(map_list)
                        self.most_recent_type_map = new_map
                        self.method_type_list.append(new_map)
                else:
                    raise ValueError("Latest stored condition is, " + str(latest_condition_number_stored), " while looking for: " + str(condition_number) + ", line number: " + str(line_index))
            else:
                #this is a situation where (:cond_x) statement has no (if-eqz :cond_4) preceding, (probably a loop) so just keep going
                self.method_type_list.append(-1)
            return

        #this is case, where we see a return statement, and we store it with the conditon and the map
        elif(re.search(StigmaStringParsingLib.BEGINS_WITH_RETURN, line) is not None):
            latest_if_condition_pair = self.control_flow_list[-1] 
            latest_if_condition_pair.set_return(tokens[0])

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
        print("line: " + str(line_index) + line , "\nline_map: ", self.most_recent_type_map)
        input("\n-----------Conitnue after update -------------\n")
    
    def extract_relevant_maps_to_merge(self,condition_number):
        pass

    def has_corresponding_if_statement(self, condition_number):
        for item in self.control_flow_list:
            if(item.key == condition_number):
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
        new_map = {}
        register_set = set([])
        for m in map_list:
            register_list = list(m.keys())
            register_set.update(set(register_list))

        for reg in register_set:
            presumed_type = map_list[0][reg]
            for m in map_list:
                if(reg not in m):
                    new_map[reg] = '?'
                    break
                else:
                    t = m[reg]
                    if(t != presumed_type):
                        new_map[reg] = '?'
                        break
            new_map[reg] = presumed_type

        return new_map

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
    def merge_maps(map_list):
        new_map = {}
        register_set = set([])
        for m in map_list:
            register_list = list(m.keys())
            register_set.update(set(register_list))

        for reg in register_set:
            presumed_type = map_list[0][reg]
            for m in map_list:
                if(reg not in m):
                    new_map[reg] = '?'
                    break
                else:
                    t = m[reg]
                    if(t != presumed_type):
                        new_map[reg] = '?'
                        break
            new_map[reg] = presumed_type

        return new_map

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

class IF_CONDITiON_PAIR:
    def __init__(self, new_condition_number, new_parent_map):
        self.condition_number = new_condition_number                #this is a condition number (e.g ":cond_4")
        self.if_parent_map = new_parent_map                         #this is the hashmap stored for that condition number at the if statement = {p0:object, p1:object}
        self.return_statment = None                                 #e.g return-object vx, just to check if return statement exists or not line iteself doesnt matter

    def check_if_return_exists(self):
        return self.return_statment != None

    def __str__(self):
        return "KEY->" + str(self.condition_number) + ", VALUE->" + str(self.if_parent_map) + ", RETURN->" + str(self.return_statment)