
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
                
        text = self.clean_up_text(text)
        self.most_recent_type_map = {}
        
        #this is a list of all the mappings
        self.method_type_list = []
        self.signature = signature

        #check for first two lines and create a new hashmap for the first line extracting the parameters
        self.type_update_parameter(text[0], text[1])
        
        #now loop over the whole method and call type update 
        text.remove(text[0])
        text.remove(text[0])

        for i in range(len(text)):
            text[i] = text[i]
            self.type_update(text[i], i)
        
        print("\n")

    #remove new line elements from list and newline characters from strings
    def clean_up_text(self, text):
        if('\n' in text):
            text.remove('\n')
        for i in range(len(text)):
            text[i] = text[i].replace('\n','').strip()
        text.remove(".end method")
        return text

    def type_update_parameter(self, line1, line2):  
        """
        @parms line1 = first line of method (containing method signature)
               line2 = information about total number of v registers in the current method
        """
        
        line_type_map = {}
        
        #checks for number of parameters in the method
        if(self.signature.num_of_parameters == 0):
            print("no parameters in this method")
            return 
        else:
            if line2.find('.locals') == -1:
                print("invalid instruction for .locals passed in")
                #throw an exception here
                return 
            else:
                #method in smali method def does similar parsing(can be used in future)
                #just store the p registers, because during instrumentation if .locals changes 
                #the v numbers would shift from their corresponding p registers 
                #v_reg_index = int(line2.strip()[7:].strip())
                for p_num,value in self.signature.parameter_type_map.items():
                    #corresponding_v_num = "v"+str(v_reg_index) 
                    type_val = self.check_value_type(value)
                    line_type_map[p_num] = type_val
                    #line_type_map[corresponding_v_num] = type_val
                    #v_reg_index = v_reg_index + 1

        self.most_recent_type_map = line_type_map
        self.method_type_list.append(line_type_map) 
        self.method_type_list.append(-1) #this is for .locals line
        print(line_type_map)

    def check_value_type(self,value):
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

    #this creates a hashmap for a normal line if udpate happens otherwise puts a reference to the existing hashmap
    def type_update(self, line, line_index):        
        """
        @parms line = specific line inside the method
               line_index = index of that line in the text list 
        """
        
        if(self.type_not_relevant(line) or not StigmaStringParsingLib.is_valid_instruction(line)):
            #get index of that line and put a -1
            self.method_type_list.append(-1)
        else:
            tokens = self.break_into_tokens(line)

            print("line: " + str(line_index), line)
            print("token:" , tokens)
            
            #instruction is always the first one in the list of tokens
            instruction = tokens[0]
            registers = StigmaStringParsingLib.get_v_and_p_numbers(line)
            dest_reg = registers[0]
            line_type_map_new = self.most_recent_type_map 
            line_type_map_new[dest_reg] = self.check_type_list(instruction)
            self.most_recent_type_map = line_type_map_new
            self.method_type_list.append(line_type_map_new)

    #check if a current instruction on a given line is relevant or not. return boolean
    def type_not_relevant(self, line):
        result = any(sub in line for sub in StigmaStringParsingLib.NON_RELEVANT_INSTRUCTION_LIST)
        #if u see an empty elemenet in the text, ignore that
        if(line == ''):
            return True 
        return result
    
    def type_query(self, register, line_number):
        current_line_map = self.method_type_list[line_number]
        if isinstance(current_line_map, dict):
            return current_line_map[register]
        #loop and build a connection to find the relevant hashmap
        elif(current_line_map == -1):
            while(not isinstance(current_line_map, dict)):
                line_number = line_number-1
                current_line_map = self.method_type_list[line_number]
            return current_line_map[register]
        else:
            return "invalid line, no register type map found"
        
    def break_into_tokens(self,line):
        line = line.strip()
        tokens = line.split()
        for i in range(len(tokens)):
            if(tokens[i].find(',') != -1):
                tokens[i] = tokens[i][:-1]
        return tokens
    
    def check_type_list(self, opcode):
        if(opcode in StigmaStringParsingLib.THIRTY_TWO_BIT_TYPE_LIST):
            return "32-bit"
        elif(opcode in StigmaStringParsingLib.SIXTY_FOUR_BIT_TYPE_LIST):
            return "64-bit"
        elif(opcode in StigmaStringParsingLib.OBJECT_TYPE_LIST):
            return "object"
        else:
            raise RuntimeError ("opcode seems to has no type", opcode)
