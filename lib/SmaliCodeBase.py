
import glob
import os


import SmaliClassDef



class SmaliCodeBase():
    ''' This class represents the entire code base of a smali project. '''

    def __init__(self, path_to_directory):
        ''' This class represents the entire code base of a smali project.
        Parameters:
           path_to_directory (str): The absolute path to the directory containing the smali files
        '''
        file_paths = SmaliCodeBase.findSmaliFiles(path_to_directory)
        print(path_to_directory)


        # getting list of all classes in this project
        self.class_names = []
        for path in file_paths:
            self.class_names.append(SmaliClassDef.SmaliClassDef.extract_class_name_from_file(path))


        # for analytics
        self.comparison_instruction_count = 0
        self.not_enough_registers_count = 0

        # build the SCD objects in parallel to speed it up
        self.classes = self._loadSCDs(file_paths)

        
    @staticmethod
    def findSmaliFiles(path):
        ''' Find all the smali files in the given directory and return their absolute paths.
        Parameters:
           path (str): The absolute path to the directory containing the smali files
        Returns:
           A list of absolute file paths to all the smali files in the given directory
        '''
        # This gets all the files that end in ".smali" from the entire
        # directory give (the whole app).
        # Essentially it returns "the code the developer actually wrote"


        # TODO: make this OS agnostic by using os.path or something
        # TODO: consider how to cache this list (it's a static method and we might need to rescan the directory)
        relevantFilePaths = glob.glob(path + '/**/*.smali', recursive=True) 


        # This is just a quick sanity test.
        if (len(set(relevantFilePaths)) != len(relevantFilePaths)):
            print("There are duplicates!!")
            for item in relevantFilePaths:
                print(item)

            exit(1);
        # end of sanity test

        return relevantFilePaths
    

        

    def _loadSCDs(self, list_of_paths):
        ''' This function loads all the smali classes from disk into memory.
        It creates a list of SmaliClassDef objects, one for each smali class file.
        
        Parameters:
           list_of_paths (list of str): The absolute file paths of each and every smali class file
        
        Returns:
           A list of SmaliClassDef objects
        '''

        SCDs = []

        for path in list_of_paths:
            try:
                scd = SmaliClassDef.SmaliClassDef(path)

                scd.internal_class_names = self.class_names
                # analytics stuff
                self.comparison_instruction_count = self.comparison_instruction_count + scd.get_num_comparison_instructions()
                for every_method in scd.methods:
                    self.not_enough_registers_count += every_method.not_enough_free_registers_count

                SCDs.append(scd)

            except Exception as e:
                print("Error loading smali class from path: " + path)
                print("Error message: " + str(e))
                raise e




        return SCDs



def tests():
    print("Testing SmaliCodeBase")

    # Test 1: Create a SmaliCodeBase object and check if it loads classes correctly
    scb = SmaliCodeBase("test")
    print("LENGTH " + str(len(scb.classes)))
    assert(len(scb.classes)  == 75)
    assert("Landroid/support/v4/util/ContainerHelpers;" in scb.class_names);

    # Check the class names match SCB objects created
    for i in range(0, len(scb.class_names)):
        assert(isinstance(scb.classes[i], SmaliClassDef.SmaliClassDef))

        # Put the SmaliClassDef on the LHS so that we invoke the __eq__ method of SmaliClassDef
        assert(scb.classes[i] == scb.class_names[i])




    print("ALL SmaliCodeBase TESTS PASSED")


if __name__ == "__main__":
    tests()