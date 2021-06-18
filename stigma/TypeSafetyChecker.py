
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
                
        if(len(text) < 3 or text == [] or text == ''):
            return
                    
        #self.clean_up_text(text)
        self.text = text
        
        self.most_recent_type_map = {}
        
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
        
    #remove new line elements from list and newline characters from strings
    #this method is not required now as we check for a valid instruction anyways, so ingnore this.
    def clean_up_text(self, text):
        # remove newlines s
        for i in range(len(text)):
            text[i] = text[i].strip()
        text.remove(".end method")

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
            
        #check for non relevant instructions and ignore them here
        if(self.type_not_relevant(line) or not StigmaStringParsingLib.is_valid_instruction(line)):
            #get index of that line and put a -1
            self.method_type_list.append(-1)
        else:
            tokens = self.break_into_tokens(line)
            instruction = tokens[0]
            registers = StigmaStringParsingLib.get_v_and_p_numbers(line)
            dest_reg = registers[0]
            
            #SHALLOW COPY
            #the keys and values are strings (immutable), so a shallow copy is adequateable
            #https://stackoverflow.com/questions/2465921/how-to-copy-a-dictionary-and-only-edit-the-copy
            line_type_map_new = self.most_recent_type_map.copy()


            if(instruction == "move-result-object"):
                # this is a very special case.   move-result-object vx
                # may cause vx to be (a) an Object (b) an Array
                # if it is an array we need to know the type of that array
                # (array of String vs array of int, etc)
                # in order to properly handle subsequent instructions
                # such as aget vy, vx
                
                prev_line = self.text[line_index-2]
                prev_line_tokens = self.break_into_tokens(prev_line)
                prev_line_instruction = prev_line_tokens[0]
                #print("prev line instruction for move result: ", prev_line)
                
                if(re.search(StigmaStringParsingLib.BEGINS_WITH_INVOKE, prev_line_instruction) is not None):
                    type_start_index = prev_line.rfind(")")
                    if(type_start_index != -1):
                        instruction_type = prev_line[type_start_index+1:]
                                                    
                        if("[" not in instruction_type):
                            line_type_map_new[dest_reg] = self.check_invoke_type(instruction_type[0])
                        else:
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
                src_type = self.type_query(src_reg, line_index-1)
                line_type_map_new[dest_reg] = self.check_aget_type(src_type)
                                
            else:
                line_type_map_new[dest_reg] = self.check_type_list(instruction)
            
                        
            self.most_recent_type_map = line_type_map_new
            self.method_type_list.append(line_type_map_new)
            
            # Debugging the smali line-by-line as program runs
            #print("line: " + str(line_index) + line , "\n", self.method_type_list)
            #input("\nConitnue after update")
        
    def type_not_relevant(self, line):
        #check if a current instruction on a given line is relevant or not. return boolean
        result = any(sub in line for sub in StigmaStringParsingLib.NON_RELEVANT_INSTRUCTION_LIST)
        #if u see an empty elemenet in the text, ignore that
        if(line == ''):
            return True 
        return result
    
    def type_query(self, register, line_number):
        orig_line_number = line_number
        current_line_map = self.method_type_list[line_number]
        if isinstance(current_line_map, dict):
            return current_line_map[register]
        #loop and build a connection to find the relevant hashmap
        elif(current_line_map == -1):
            while(not isinstance(current_line_map, dict) and line_number >= 0):
                line_number = line_number-1
                current_line_map = self.method_type_list[line_number]
                
            if(current_line_map == -1):
                raise ValueError("query cannot be resolved for " + str(register) + " " + str(orig_line_number))
            
            else:
                return current_line_map[register]

    def break_into_tokens(self,line):
        line = line.strip()
        tokens = line.split()
        for i in range(len(tokens)):
            if(tokens[i].find(',') != -1):
                tokens[i] = tokens[i][:-1]
        return tokens
    
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
