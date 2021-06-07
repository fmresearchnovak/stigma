
'''
This class contains a list of hashmaps, which are associated with each line of the method containing information about
the types of each register at each current line. 
'''

class TypeSafetyChecker:


    def __init__(self, text):
        #this is a list of all the mappings
        self.map = []

        #check for first two lines and create a new hashmap for the first line extracting the parameters
        self.type_update_parameter(text[0], text[1])

        #now loop over the whole method and 
        for i in range(len(text)):
            self.type_update(text[i], i)
        
            
        #this creates a hashmap for line 1 and 2 (line 2 is just a -1)
    def type_update_parameter(self, line1, line2):
        print("line1:", line1)
        print("line2:", line2)
        pass

        #this creates a hashmap for a normal line
    def type_update(self, line, line_index):
        print(line)
        if(self.type_relevant(line)):
            #create hashmap
            pass
        else:
            #get index of that line and put a -1
            self.map[line_index] = -1

        pass

    def type_query(self, register, line):
        pass 

        #check if a current instruction on a given line is relevant or not. return boolean
    def type_relevant(self, line):
        
        
        pass