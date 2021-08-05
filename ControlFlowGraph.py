
'''
This class builds a control flow graph for a given method text using the networkX library.
This graph generates nodes for each block of code (list of all contingunous instructions) until
it sees an if, cond, goto, switch, or return and in that cases it branches out, creating a new node.
Then it creates an edge from existing blocks of code to this new branching node.  
https://networkx.org/documentation/stable/index.html


example demonstrating goto-s
const v2 0x1     {v2: 32-bit}

add v3 v2 v2     {v2: 32-bit, v3: 32-bit}

goto :goto_4

:goto_2

invoke-virtual{v2}   type of v2???    answer: object (string)

:goto_4

const-string v2 "hello"

goto :goto_2

goto :goto_4


# if, cmp, goto, switch (packed and sparse)
# returns (terminate a branch / is a leaf-node)
# everything else

'''

import StigmaStringParsingLib
import re
import networkx as nx
import matplotlib.pyplot as plt
from networkx.drawing.nx_pydot import graphviz_layout
import time

class ControlFlowGraph:

    def __init__(self, text):
        # text should be a list of lines of code (e.g., [""    .locals 6", "    add v1, v2, v3", "    const v3, 0x1", ])
        self.G = nx.DiGraph()   
        self.label_list = []    #this contains a list of hashmaps, where each hashmap has key:label (e.g ':cond_3') and value: nodecounter for corresponding if parent (e.g 3)
        self.visited_lines = [] #this contains all the line index which have been visited 
        self.label_dict = {}    #this dictionary has labels for nodes to display when u show the graph. (only for our visualization no real purpose)
        self.contingous_region = [] #this is a list of lines of code 
        self.node_counter = 0   #this is the current node counter where we create a new node in the graph
        self.text = text        #this is a instance of the actual method text
        self.switch_label_list = [] #this list should store all the pswitch and sswitch labels and their parent attached to them
        self.looping_label_list = [] #this contains a list of hashmap, where each hashmap is a key label, which cannot find a parent to connect to, so we store and to retreive and connect if we see a parent later
        self.try_start_flag = False
        line_index = 0
        
        
        #create a dummy head node at start of the graph, so 
        self.G.add_node(self.node_counter, text = text[line_index], node_counter = self.node_counter, visited = False, is_in_try_block = self.try_start_flag )
        line_index+=1
        self.label_dict[self.node_counter] = str(self.node_counter) + ". Method Sitgnature"
        self.node_counter+=1
        
        #this will go to the end of the method and store all the packed-switch and sparse-switch labels in a list of hashmaps
        start_time = time.time()
        self.store_switch_labels()
        
        
        #some of the lines can be SMALI ASSEMBLY OBJECTS, because we call grow_locals before building the control flow graph, so we convert each line to a string before processing it. 
        while (re.search(StigmaStringParsingLib.BEGINS_WITH_DOT_END_METHOD, text[line_index]) is None and re.search(StigmaStringParsingLib.BEGINS_WITH_PSWITCH_DATA, text[line_index]) is None and re.search(StigmaStringParsingLib.BEGINS_WITH_SSWITCH_DATA, text[line_index]) is None):
            
            line = text[line_index]
            
            if (line_index not in self.visited_lines):  
                # print(" univisted line in cfg", line, "not branching: ", ControlFlowGraph.is_not_branching(line))
                tokens = StigmaStringParsingLib.break_into_tokens(line)
                
                if ControlFlowGraph.is_not_branching(line):
                    self.contingous_region.append(line)

                #e.g line: if-eqz vx :cond_8
                elif re.search(StigmaStringParsingLib.BEGINS_WITH_IF, str(line)) is not None or re.search(StigmaStringParsingLib.BEGINS_WITH_CMP, str(line)) is not None: 
                    #create a node for the existing lines of code in the continguous region and empty the contigious_region_list
                    self.bundle_contingous_region()

                    # store label, and node_counter since this node will be the parent when we see the label    
                    dest_label = tokens[-1]
                    label_map = {}
                    label_map[dest_label] = self.node_counter
                    self.label_list.append(label_map)
                    
                    #create a new node of the if statement, and connect the edge from previous continious regiion node to this node
                    self.G.add_node(self.node_counter, text = [line], node_counter = self.node_counter, visited = False , is_in_try_block = self.try_start_flag )
                    self.G.add_edge(self.node_counter-1, self.node_counter)
                    self.label_dict[self.node_counter] = str(self.node_counter) + ". " + line.strip()     
                    
                    #if this destination was already seen, we connect it
                    for label_map in self.looping_label_list:
                        if dest_label in label_map:
                            self.G.add_edge(self.node_counter, label_map[dest_label])
                    
                    self.node_counter+=1

                #e.g line: :catch_1
                elif re.search(StigmaStringParsingLib.BEGINS_WITH_CATCH_LABEL, str(line)) is not None:
                    self.bundle_contingous_region()
                    
                    self.G.add_node(self.node_counter, text = [line], node_counter = self.node_counter, visited = False , is_in_try_block = self.try_start_flag )
                    #create a new node of the catch statement, and connect the edge from corresponding if statement node to this node
                    self.label_dict[self.node_counter] = str(self.node_counter) + ". " + line.strip()     

                    self.node_counter+=1

                #e.g line-> :cond_8 or line-> :goto_8 , :pswitch_1 or :sswitch_1
                elif re.search(StigmaStringParsingLib.BEGINS_WITH_COLON, str(line)) is not None:
                    #create a node for the existing lines of code in the continguous region and empty the contigious_region_list
                    #add an edge for this block of code, to the previous node in graph
                    
                    #if we see a try start label, we raise a flag to indicate we are inside a try block and if we see a try_end, it should make the label false 
                    
                    #this must be done before bundling, otherwise the node counter would change once u bundle it returning the wrong previous line
                    prev_prev_line = self.G.nodes[self.node_counter-1]["text"][0] 
                    self.bundle_contingous_region()
                    prev_line = self.G.nodes[self.node_counter-1]["text"][0] 
                    
                    #flip the try flag after u have bundled
                    if re.search(StigmaStringParsingLib.BEGINS_WITH_TRY, str(line)) is not None:
                        #print("found try statement: ", line.strip(), " flag: ", self.try_start_flag)
                        self.try_start_flag = not self.try_start_flag
                    
                    self.G.add_node(self.node_counter, text = [line], node_counter = self.node_counter, visited = False, is_in_try_block = self.try_start_flag )  #create a new node of the label statement, and connect the edge from corresponding if statement node to this node
                    self.label_dict[self.node_counter] = str(self.node_counter) + ". " + line.strip()     

                    if(StigmaStringParsingLib.extract_opcode(prev_line) != "goto" and re.search(StigmaStringParsingLib.BEGINS_WITH_RETURN, str(prev_line)) is None and re.search(StigmaStringParsingLib.BEGINS_WITH_CATCH_LABEL, str(prev_prev_line)) is None):
                        self.G.add_edge(self.node_counter-1, self.node_counter)
                    
                    cur_label = tokens[0]
                    
                    #e.g line-> :pswitch_1 or :sswitch_1, in this case we need to find the matching label parent from our switch label list
                    if re.search(StigmaStringParsingLib.BEGINS_WITH_PSWITCH_LABEL, str(line)) is not None or  re.search(StigmaStringParsingLib.BEGINS_WITH_SSWITCH_LABEL, str(line)) is not None:
                        cur_label = ControlFlowGraph.get_key(cur_label, self.switch_label_list)
                    
                    #get all the corresponding if statement nodes for this condition, and create an edge from all those if statements to this condition
                    parent_found = False
                    for label in self.label_list:
                        if cur_label in label:
                            self.G.add_edge(label[cur_label], self.node_counter)
                            parent_found = True

                    #incase this label has not seen a parent before and has nothing to connect, we store it so we can connect later when we see the parent
                    if not parent_found:
                        label_map = {}
                        label_map[cur_label] = self.node_counter
                        self.looping_label_list.append(label_map)
                        
                    self.node_counter+=1

                #e.g line: goto :goto_8
                elif re.search(StigmaStringParsingLib.BEGINS_WITH_GOTO, str(line)) is not None:
                    self.bundle_contingous_region()
                    
                    #create a lable for :goto_8 and store current node counter to connect the label later
                    dest_label = tokens[-1]
                    label_map = {}
                    label_map[dest_label] = self.node_counter
                    self.label_list.append(label_map)
                    
                    #add the current line as a node and make a edge with previous node in tree. 
                    self.G.add_node(self.node_counter, text = [line], node_counter = self.node_counter, visited = False , is_in_try_block = self.try_start_flag )
                    self.label_dict[self.node_counter] = str(self.node_counter) + ". " + line.strip()     
                    self.G.add_edge(self.node_counter-1, self.node_counter)
                    
                    
                    #if this destination was already seen, we connect it
                    for label_map in self.looping_label_list:
                        if dest_label in label_map:
                            self.G.add_edge(self.node_counter, label_map[dest_label])
                    
                    self.node_counter+=1
                                        
                    #we decrement the line_index by 1, so when we loop next time this new line_index is not marked as visited
                    #print("Current line: ", line)
                    line_index = self.find_label(line_index)-1

                #e.g line: return-object vx or throw v1
                elif re.search(StigmaStringParsingLib.BEGINS_WITH_RETURN, str(line)) is not None or re.search(StigmaStringParsingLib.BEGINS_WITH_THROW, str(line)) is not None:
                    self.bundle_contingous_region()
                    
                    self.G.add_node(self.node_counter, text = [line], node_counter = self.node_counter, visited = False , is_in_try_block = self.try_start_flag )
                    self.label_dict[self.node_counter] = str(self.node_counter) + ". " + line.strip()     
                    self.G.add_edge(self.node_counter-1, self.node_counter)
                    self.node_counter+=1

                    new_line_index = self.find_label(line_index)                  
                    if(new_line_index  != None):
                        line_index= new_line_index - 1
                
                #when u see a parse-switch statement, go down, store all relevant switch cases
                elif re.search(StigmaStringParsingLib.BEGINS_WITH_PACKED_SWITCH, str(line)) is not None or re.search(StigmaStringParsingLib.BEGINS_WITH_SPARSE_SWITCH, str(line)) is not None:
                    self.bundle_contingous_region()
                    
                    #store the data label in list with current counter, dest_label = ':pswitch_data_0'
                    dest_label = tokens[-1]
                    label_map = {}
                    label_map[dest_label] = self.node_counter
                    self.label_list.append(label_map)
                    
                    #create a new node of the switch statement, and connect the edge from previous continious regiion node to this node
                    self.G.add_node(self.node_counter, text = [line], node_counter = self.node_counter, visited = False , is_in_try_block = self.try_start_flag )
                    self.G.add_edge(self.node_counter-1, self.node_counter)
                    self.label_dict[self.node_counter] = str(self.node_counter) + ". " + line.strip()     
                    self.node_counter+=1
                                        
                #catch an invalid line, which doesnt fit any of the if statements above    
                else:
                    raise Exception("Invalid line: ", line);                
                
                self.visited_lines.append(line_index)      
        

            line_index+=1
            
        self.bundle_contingous_region()
        self.tail = self.text[line_index:]
    
        
    @staticmethod
    def is_not_branching(line):
        if (re.search(StigmaStringParsingLib.BEGINS_WITH_IF, line) is not None):
            return False
            
        if (re.search(StigmaStringParsingLib.BEGINS_WITH_CMP, line) is not None):
            return False

        if (re.search(StigmaStringParsingLib.BEGINS_WITH_COLON, line) is not None): # begins with colon indicates a label
            return False
            
        if (re.search(StigmaStringParsingLib.BEGINS_WITH_RETURN, line) is not None):
            return False
            
        if (re.search(StigmaStringParsingLib.BEGINS_WITH_GOTO, line) is not None):
            return False
        
        if (re.search(StigmaStringParsingLib.BEGINS_WITH_PACKED_SWITCH, line) is not None):
            return False
            
        if (re.search(StigmaStringParsingLib.BEGINS_WITH_SPARSE_SWITCH, line) is not None):
            return False
            

        return True

    @staticmethod
    def get_key(val, label_list):
        '''
        This method takes in a list of hashmaps, and looks for a value matching in any of those hashmaps
        and returns the related key. 
        '''
        
        for label_map in label_list:
            for key, value in label_map.items():
                if val in value:
                    return key
            
        return "key doesn't exist"        


    def bundle_contingous_region(self):
        ''' 
        This method wraps up the current lines of code inside contingous region and creates a node for that.
        It connect this new node of block of code to the previous node in graph by creating an edge between them. 
        '''
        if(len(self.contingous_region) == 0):
            return
        if(len(self.contingous_region) == 1):
            if(self.contingous_region[0] == ''):
                return
        
        self.G.add_node(self.node_counter, text = self.contingous_region, node_counter = self.node_counter, visited = False , is_in_try_block = self.try_start_flag )
        self.G.add_edge(self.node_counter-1, self.node_counter)
        self.label_dict[self.node_counter] = str(self.node_counter) + ". BLOCK OF CODE"  #+ self.contingous_region[-1]     
        self.contingous_region = []
        self.node_counter+=1
        
    
    def find_label(self,line_index):    
        '''
        This method takes a starting line index and keeps looking forward in the method text until it finds a valid label and returns that index
        '''
        for i in range(line_index, len(self.text)):
            if re.search(StigmaStringParsingLib.BEGINS_WITH_COLON, self.text[i]):
                return i
        return line_index+1
    
    
    def store_switch_labels(self):
        '''
        This function loops through the whole method text before building the control flow graph.
        It looks for any :pswitch_data_x or :sswitch_data_x and store there corresponding labels in a map.
        This map is then stored in a label list of switch statements, which can be used later to connect switch labels
        to their correct parent nodes. 
        e.g [ {':pswitch_data_0': [':pswitch_1', ':pswitch_0']}, {':sswitch_data_2': [':sswitch_4', ':pswitch_5']} ]
        '''   
  
        if(len(self.text) < 3):
            return
        
        index = 0 
        while(re.search(StigmaStringParsingLib.BEGINS_WITH_DOT_END_METHOD, self.text[index]) is None):
            
            if(re.search(StigmaStringParsingLib.BEGINS_WITH_PSWITCH_DATA, self.text[index]) is not None):
                switch_label_map = {}
                data_label = StigmaStringParsingLib.extract_opcode(self.text[index])
                index+=1
                label_list = []
                while(re.search(StigmaStringParsingLib.BEGINS_WITH_DOT_END_PACKED_SWITCH, self.text[index]) is None):
                    if(re.search(StigmaStringParsingLib.BEGINS_WITH_PSWITCH_LABEL, self.text[index]) is not None):
                        label_list.append(self.text[index].strip())
                    index+=1            
                switch_label_map[data_label] = label_list
                self.switch_label_list.append(switch_label_map)
                
                
            elif(re.search(StigmaStringParsingLib.BEGINS_WITH_SSWITCH_DATA, self.text[index]) is not None):
                switch_label_map = {}
                data_label = StigmaStringParsingLib.extract_opcode(self.text[index])
                index+=1
                label_list = []
                while(re.search(StigmaStringParsingLib.BEGINS_WITH_DOT_END_SPARSE_SWITCH, self.text[index]) is None):
                    tokens = StigmaStringParsingLib.break_into_tokens(self.text[index])
                    if(re.search(StigmaStringParsingLib.BEGINS_WITH_SSWITCH_LABEL, tokens[-1]) is not None):
                        label_list.append(tokens[-1].strip())
                    index+=1            
                switch_label_map[data_label] = label_list
                self.switch_label_list.append(switch_label_map)
            
            index+=1
                                

    def show(self):
        
        #this position is to avoid the random rotation of graph each time
        # random_pos = nx.random_layout(self.G, seed=180)
        # pos = nx.spring_layout(self.G, pos=random_pos)
        
        pos = graphviz_layout(self.G, prog="dot")
        nx.draw(self.G, pos, font_size = 6, labels=self.label_dict, with_labels = True)
        plt.show()

               
    @staticmethod
    def get_smallest_node(cur_nodes):
        smallest_node = cur_nodes[0]
        smallest = cur_nodes[0]["node_counter"]
        for node in cur_nodes:
            if node["node_counter"] < smallest:
                smallest = node["node_counter"]
                smallest_node = node
        return smallest_node
    
    
    def nodes_left_to_visit(self):
        '''If any node in cfg is not marked visited yet, return True meaning keep processing the graph''' 
        for i in range(len(self.G)):
            node = self.G.nodes[i]
            if(node["visited"] == False):
                return True
        return False
    
    
    def neighbors(self, node_counter):
        return self.G.neighbors(node_counter) 
    
    
    def __getitem__(self, node_counter):
        # print("node counter: ", node_counter)
        # print("node: ", self.G.nodes[node_counter])
        return self.G.nodes[node_counter]  
         
            
    def __str__(self):
        return str(self.G.nodes.data())
            
