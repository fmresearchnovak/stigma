
'''
This class contains a list of hashmaps, which are associated with each line of the method containing information about
the types of each register at each current line. 
hashmap -> key: string (register name)
        -> value: string, (type stored in the register)(32bit-64bit-object)
'''
from stigma import VRegisterPool

class TypeSafetyChecker:

    def __init__(self, text, signature):
        #this is a list of all the mappings
        self.method_type_map = []
        self.signature = signature

        #check for first two lines and create a new hashmap for the first line extracting the parameters
        self.type_update_parameter(text[0], text[1])

        #now loop over the whole method and call type update 
        for i in range(len(text)):
            text[i] = text[i].replace("\n","")
            self.type_update(text[i], i)
        
        print("\n")

    def type_update_parameter(self, line1, line2):  
        """
        @parms line1 = first line of method (containing method signature
               line2 = information about total number of v registers in the current method
        """

        line1 = line1.replace("\n","")
        line2 = line2.replace("\n", "")
        line_type_map = {}
        
        #replace with num registers from the smalimethodsignature class
        #parse out the parenthesis to get the parameters out
        par_start = line1.find('(')+1
        par_end = line1.find(')')

        #check if the parameter is empty
        if(par_end - par_start == 1):
            print("no parameters in this method")
            return        
        else:
            if line2.find('.locals') == -1:
                print("invalid instruction for .locals passed in")
                #throw an exception here
                return 
            else:
                #method in smali method def does similar parsing(can be used in future)
                v_reg_index = int(line2.strip()[7:].strip())
                
                for key,value in self.signature.parameter_type_map.items():
                    v_reg = "v"+str(v_reg_index) 
                    val = self.check_value_type(value)
                    line_type_map[key] = val
                    line_type_map[v_reg] = val
                    v_reg_index = v_reg_index + 1

        self.method_type_map.append(line_type_map)
        print(line_type_map)


    def check_value_type(self,value):
        print(value)
        if(value in VRegisterPool.TYPE_LIST_OBJECT_REF):
            return "object"
        elif (value in VRegisterPool.TYPE_LIST_WORD):
            return "32-bit"
        elif (value in VRegisterPool.TYPE_LIST_WIDE):
            return "64-bit"
        else:
            return "invalid type"
                

        #this creates a hashmap for a normal line
    def type_update(self, line, line_index):        
        if(self.type_relevant(line)):
            #create hashmap
            pass
        else:
            #get index of that line and put a -1
            self.method_type_map.append(-1)
        pass

    def type_query(self, register, line):
        pass 

        #check if a current instruction on a given line is relevant or not. return boolean
    def type_relevant(self, line):
        pass