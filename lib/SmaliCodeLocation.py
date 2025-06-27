class SmaliCodeLocation():
    '''
    SmaliCodeLocation is a class that represents a location in a SmaliCodeBase
    A code location is a class / filename and a line number pair
    Example: SendMessagesHelper, line# 27946
    '''


    def __init__(self, SCB, class_name, line_num):
        ''' The constructor for a location.  Invalid locations can be generated with this constructor.
        It is recommended to use SmaliCodeBase.get_location() to obtain valid locations.
        Parameters:
            class_name: A fully qualified class name, a string
            line_num: the line number in that class / file, an int
        '''
        
        self.fqclass_name = class_name
        self.line_number = line_num

        # Avoid allowing the user to create an invalid SmaliCodeLocation
        if(self.is_valid_in(SCB) == False):
            raise ValueError("Cannot construct invalid SmaliCodeLocation", str(self))




    def is_valid_in(self, SCB):
        ''' Checks if this smali code location is a valid location in the given smali code base
        Parameters:
            SCB: A SmaliCodeBase object to check if the given location exists in
        Returns:
            True if this location exists in the given SCB, False otherwise'''
        
        if(SCB.is_internal_class(self.fqclass_name)):
           if(self.line_number >= 1 and self.line_number <= SCB.get_num_lines()):
               return True

    def __eq__(self, other):
        if self.fqclass_name == other.fqclass_name:
            return self.line_number == other.line_number
        return False
    

    def __str__(self):
        return self.fqclass_name + ", line#: " + str(self.line_number)