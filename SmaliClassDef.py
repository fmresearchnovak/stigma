import StigmaStringParsingLib
import re
import SmaliAssemblyInstructions as smali
from SmaliMethodDef import SmaliMethodDef


class SmaliClassDef:
    # self.other_scds: a dictionary of other SmaliClassDef objects for this project / app
    # self.header: a list of strings, lines from the beginning of the file
    # self.static_fields: a list of strings, the static fields in this class
    # self.instance_fields: a list of strings, the instance fields in this class
    # self.methods: a list of SmaliMethodDef objects in this class
    # self.file_name: the (absolute?) path to the file
    # self.class_name: extracted from the first line of the smali file
    #       example: Lcom/google/android/material/animation/AnimationUtils;

    @staticmethod
    def is_function(line):
        # check this line is a method (begins with "invoke-*")
        match_object = re.match(StigmaStringParsingLib.REGEX_BEGINS_WITH_INVOKE, line)
        return match_object is not None

    def __init__(self, file_name):
        # These are just lists of strings
        # Should be filled in before instrument
        
        # key: name of class (a string)
        # value: SmaliClassDef object
        self.other_scds = {}
        
        self.header = []
        self.static_fields = []
        self.instance_fields = []
        

        # This is a list of SmaliMethodDef (as seen above) which aids instrumentation later
        self.methods = []
        self.file_name = file_name
        
        fh = open(file_name, "r")
        lines = fh.readlines()
        fh.close()

        self.class_name = lines[0].split()[-1].strip("\n")
        #print("Class: " + self.class_name + " lines: ", lines)

        cur_dest = self.header
        pre_methods = True
        idx = 0
        while idx < len(lines):
            #print("processing line: " + str(lines[idx]))
            match_object = re.match(StigmaStringParsingLib.BEGINS_WITH_DOT_METHOD, lines[idx])
            if match_object is not None:  # This is the start of a method defintion
                # print(str(match_object) + " in line: " + lines[idx])
                method_code = []

                match_object = re.match(StigmaStringParsingLib.BEGINS_WITH_DOT_END_METHOD, lines[idx])
                while match_object is None:
                    #print(str(idx))
                    method_code.append(lines[idx])
                    match_object = re.match(StigmaStringParsingLib.BEGINS_WITH_DOT_END_METHOD, lines[idx])
                    idx += 1

                # print(str(match_object) + " in line: " + lines[idx])
                smd = SmaliMethodDef(method_code, self)
                self.methods.append(smd)
            
            #if all file is eaten up (eating last method)
            if idx >= len(lines):
                #print("stopping!")
                break
                
            if "# static fields\n" == lines[idx]:
                cur_dest = self.static_fields

            if "# instance fields\n" == lines[idx]:
                cur_dest = self.instance_fields

            if "# direct methods\n" == lines[idx]:
                pre_methods = False

            if pre_methods:
                cur_dest.append(lines[idx])
            # debugging left in
            # print("\n")
            # print(lines)
            # print("len(lines): " + str(len(lines)))
            #
            # print("idx: " + str(idx))
            idx = idx + 1


    @staticmethod
    def _get_taint_storage_name_pair(identifier, reg_name):
        # computes the name of a taint_storage field given the
        # identifier and the register name

        # <init> and v2 as input => init_v2_TAINT:I
        # assert("init_v2_TAINT:I" in scd.static_fields)

        # add-int v2, v3, v4
        # foo_v2_Taint:I <- foo_v3_taint:I OR foo_v4_taint:I
        # 
        # 
        # Some bug here?
        # iput v2, p1, someclass->somefield
        # iget v3, p2, someclass->somefield
        # 
        # somefield_p1_TAINT:I <- foo_v2_taint:F
        # 

        # identifier = method name or instance field name
        # most method names are expected: "getIMEI(0", "leakSomething())"
        # edge case 1: constructors show up as  <init> and <cinit>
        identifier = identifier.replace("<", "")
        identifier = identifier.replace(">", "")
        if reg_name != "":
            static_f_name = str(identifier) + "_" + str(reg_name) + "_TAINT:F"
        else:
            static_f_name = str(identifier) + "_TAINT:F"
        full_name = ".field public static " + static_f_name + "\n"

        return (static_f_name, full_name)



    def create_taint_field(self, identifier, reg_name=""):
        # Makes a new taint_storage field in this class

        static_f_name, full_name = self._get_taint_storage_name_pair(identifier, reg_name)

        # could be more efficient as a hash map instead of a list but that might change the order
        # AND, the number of items is small (probably < 50) so it doesn't really matter
        if full_name not in self.static_fields:
            self.static_fields.append(full_name)
            self.static_fields.append("\n") # because entire list will be appended to output file

        return static_f_name
        
        
    def create_taint_field_smart(self, calling_method, reg_name=""):
        # Currently not called anywhere in the program.  This method
        # might be useful in the future if we decide that the taint
        # tags need to be instance fields and not always static
        # That decision would require substantial changes to the instrumenters
        
        # See comments in create_taint_field()
        identifier = calling_method.get_name()
        identifier = identifier.replace("<", "")
        identifier = identifier.replace(">", "")
        
        # might have two consecutive under-scores but who cares
        name = "_".join([identifier, reg_name, "TAINT:T"])
        
        if(calling_method.is_static()):
            full_name = ".field public static " + name + "\n"
            fields_list = self.static_fields

        else:
            full_name = ".field public " + name + "\n"
            fields_list = self.instance_fields

        # could be more efficient as a hash map instead of a list but that might change the order
        # AND, the number of items is small (probably < 50) so it doesn't really matter
        if full_name not in fields_list:
            fields_list.append(full_name)
            fields_list.append("\n") # because entire list will be appended to output file

        return name


    def is_internal_function(self, line):
        if not self.is_function(line):
            return False

        func_name = line.split(" ")[-1]
        return func_name in self.methods


    def is_external_function(self, line):
        if not self.is_function(line):
            return False

        func_name = line.split(" ")[-1]
        return func_name not in self.methods
        
        
    def grow_locals(self, n):
        
        if(n < 0):
            raise ValueError("Cannot grow locals by a negative amount: " + str(n))
        
        for m in self.methods:
            m.grow_locals(n)


    def instrument(self):
        if self.other_scds == {}:
            raise ValueError("Other SCDs list not passed to scd")

        #this will signup our methods for instrumentation with their related opcodes
        for m in self.methods:                
            m.instrument()


    def write_to_file(self, class_smali_file):
        # Write new "program" out to file
        fh = open(class_smali_file, "w")

        for line in self.header + self.static_fields + self.instance_fields:
            fh.write(line)

        fh.write("# methods\n")
        for m in self.methods:
            for line in m.raw_text:
                fh.write(str(line))  # because we're converting to str, SmaliAssemblyInstruction object's repr() called
            fh.write("\n")

        fh.close()
        
    def overwrite_to_file(self):
        self.write_to_file(self.file_name)


    def get_num_lines(self):
        total_lines = len(self.header) + len(self.static_fields) + len(self.instance_fields)
        for m in self.methods:
            total_lines = total_lines + len(m.raw_text)
        return total_lines
        
        

    def verbose(self):
        for line in self.header + self.static_fields + self.instance_fields:
            print(line)
        print("# methods\n")
        for m in self.methods:
            for line in m.raw_text:
                print(str(line))
            print("\n")

    def get_num_comparison_instructions(self):
        count = 0
        for m in self.methods:
            count = count + m.get_num_comparison_instructions()
            #print("count: " + str(count))
        return count

    def get_num_field_declarations(self):
        return self.get_num_static_fields() + self.get_num_instance_fields()
        
        
    def get_num_method_declarations(self):
        return len(self.methods)


    def _count_references(self, filter_function):
        # this should be computed here and not computed else-where 
        # and cached.  The reasoning is because the number of field
        # references changes drastically after the instrumentation
        ref_set = set()
        for m in self.methods:
            for line in m.raw_text:
                if filter_function(line):
                    name = StigmaStringParsingLib.break_into_tokens(line)[-1]
                    ref_set.add(name)
        #print(field_ref_set)
        return len(ref_set)
        

    def get_num_field_references(self):
        return self._count_references(StigmaStringParsingLib.is_field_instruction)

        
    def get_num_method_references(self):
        return self._count_references(StigmaStringParsingLib.is_method_call_instruction)
                    
                

    @staticmethod
    def _count_fields(fieldsList):
        regexBeginsWithField = r"^\s*.field"
        count = 0
        for line in fieldsList:
            search_object = re.search(regexBeginsWithField, line)
            if(search_object != None):
                count+=1
        return count

    def get_num_static_fields(self):
        return self._count_fields(self.static_fields)

    def get_num_instance_fields(self):
        return self._count_fields(self.instance_fields)
        
    def get_other_class(self, other_class_name):
        #print("\nget_other_class(" + str(other_class_name) + ")")
        if other_class_name in self.other_scds:
            return self.other_scds[other_class_name]
        return None
        
    def __str__(self):
        return str(self.file_name)
        
    def __eq__(self, other):
        return self.class_name == other.class_name




