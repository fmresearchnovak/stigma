
'''
This class contains a list of hashmaps, which are associated with each line of the method containing information about
the types of each register at each current line. 
hashmap -> key: string (register name)
        -> value: string, (type stored in the register)(32bit-64bit-object)




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


from stigma import VRegisterPool, StigmaStringParsingLib
import re
import networkx as nx
import matplotlib.pyplot as plt

class ControlFlowGraph:

    def __init__(self, text):
        # text should be a list of lines of code (e.g., [""    .locals 6", "    add v1, v2, v3", "    const v3, 0x1"])
        self.G = nx.Graph()

        # make a continguous block

        node_counter = 1
        contingous_region = []
        i = 0
        while (True):
            line = text[i]
            if ControlFlowGraph.is_not_branching(line):
                contingous_region.append(line)

            elif re.search(StigmaStringParsingLib.BEGINS_WITH_IF, line) is not None:
                self.G.add_node(node_counter, text = contingous_region)
                node_counter+=1
                contingous_region = []



                tokens = StigmaStringParsingLib.break_into_tokens(line)
                dest_label = tokens[-1]

                # store label, and node_counter since this node will be the parent when we see the label

                self.G.add_node(node_counter, text = [line])
                self.G.add_edge(node_counter-1, node_counter)
                node_counter+=1


            else: 
                break;


            i+=1



    @staticmethod
    def is_not_branching(line):
        if ((re.search(StigmaStringParsingLib.BEGINS_WITH_IF, line) is not None) or 
           (re.search(StigmaStringParsingLib.BEGINS_WITH_CMP, line) is not None) or 
           (re.search(StigmaStringParsingLib.BEGINS_WITH_GOTO, line) is not None) or 
           (re.search(StigmaStringParsingLib.BEGINS_WITH_PACKED_SWITCH, line) is not None) or
           (re.search(StigmaStringParsingLib.BEGINS_WITH_SPARSE_SWITCH, line) is not None) or
           (re.search(StigmaStringParsingLib.BEGINS_WITH_COLON, line) is not None)): # begins with colon indicates a label
            return False
        else:
            return True


    def show(self):
        nx.draw(self.G)
        plt.show()
            

    def __str__(self):
        return str(self.G.nodes.data())

