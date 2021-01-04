from stigma import StigmaStringParsingLib
import re
from stigma import Instrumenter as inst
from stigma import SmaliAssemblyInstructions as smali
from stigma.SmaliMethodDef import SmaliMethodDef


class SmaliClassDef:
    # self.other_scds: a dictionary of other SmaliClassDef objects for this project / app
    # self.header: a list of strings, lines from the beginning of the file
    # self.static_fields: a list of strings, the static fields in this class
    # self.instance_fields: a list of strings, the instance fields in this class
    # self.methods: a list of SmaliMethodDef objects in this class
    # self.instrumenter: don't touch it yo!
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

        self.instrumenter = inst.Instrumenter()

        self.file_name = file_name
        
        fh = open(file_name, "r")
        lines = fh.readlines()
        fh.close()

        self.class_name = lines[0].split()[-1].strip("\n")
        #print("Class: " + self.class_name)

        cur_dest = self.header
        pre_methods = True
        idx = 0
        while idx < len(lines):

            # print("processing line: " + str(lines[idx]))
            match_object = re.match(StigmaStringParsingLib.BEGINS_WITH_DOT_METHOD, lines[idx])
            if match_object is not None:  # This is the start of a method defintion
                # print(str(match_object) + " in line: " + lines[idx])
                method_code = []

                match_object = re.match(StigmaStringParsingLib.BEGINS_WITH_DOT_END_METHOD, lines[idx])
                while match_object is None:
                    # print(str(idx) + "    " + lines[idx])
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
        # somefield_p1_TAINT:I <- foo_v2_taint:I
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


    def instrument(self):
        if self.other_scds == {}:
            raise ValueError("Other SCDs list not passed to scd")

        for m in self.methods:

            # not really necessary, just an optimization to avoid
            # processing methods when they have more than 16 registers
            # before any instrumentation
            if(m.get_num_registers() > 16):
                continue
                
                
            idx = 0
            while idx < len(m.raw_text):
                # print("line: " + m.raw_text[idx])
                
                # we need to know if we are in a try block so we can avoid
                # the one type of instrumentation where that matters
                # internal-function move-result lines
                if(m.raw_text[idx].startswith("    :try_start_")):
                    m.is_in_try_block = True
                    
                if(m.raw_text[idx].startswith("    :try_end_")):
                    m.is_in_try_block = False
                    
                
                # The lines of code that we add (instrument) will be instances of smali.SmaliAssemblyInstruction
                # the lines of code that are existing already will be type string
                # So, this check prevents us from instrumenting our new, additional code
                if not isinstance(m.raw_text[idx], smali.SmaliAssemblyInstruction):
                    
                    # If we are in a try block, then adding instructions
                    # may affect the control flow / type checking done 
                    # by the verifier.  This causes java.lang.VerifyError
                    # with  messages like this:
                    # [0x35] register v0 has type Precise Reference: java.lang.String[] but expected Long
                    # https://github.com/JesusFreke/smali/issues/797
                    if not m.is_in_try_block:
                    
                        # Only do instrumentation if line is a valid instruction
                        #print(m.raw_text[idx])
                        if StigmaStringParsingLib.is_valid_instruction(m.raw_text[idx]):
                            
                            # only do instrumentation if the length of the method is
                            # not too long.  This is specifically in place to avoid
                            # issues such as Invalid instruction offset: 36077. Offset must be in [-32768, 32767]
                            # which arises from instructions like this:
                            # if-nez v0, :cond_0
                            # the :cond_0 is actually a 16-bit number
                            if len(m.raw_text) < 32767:
                            
                                idx = self._do_instrumentation_plugins(m, idx)

                idx = idx + 1



        


    def _do_instrumentation_plugins(self, m, idx):

        for inst_method in self.instrumenter.instrumentation_methods:

            # The lines of code that we add (instrument) will always leave
            # a comment on the line before their target instruction
            # in order to indicate that the target instruction has
            # already been addressed by instrumentation.
            # This check prevents "double" cases where two different instrumenters
            # both try to add code for the same original instruction
            # print("\n\ncur line: " + str(m.raw_text[idx]) + "   prev line: " + str(m.raw_text[idx-1]))
            lines_added = inst_method(self, m, idx)
            idx = idx + lines_added
            if lines_added != 0:
                #in the case an instrumentation has happened, end loop (prevents downstream double instrumentation)
                break

        return idx

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


    def get_num_fields(self):
        return self.get_num_static_fields() + self.get_num_instance_fields()
        
        
    def get_num_methods(self):
        return len(self.methods)


    def get_num_field_references(self):
        # this should be computed here and not computed else- where 
        # and cached.  The reasoning is because the number of field
        # references changes drastically after the instrumentation
        field_ref_set = set()
        for m in self.methods:
            for line in m.raw_text:
                if StigmaStringParsingLib.is_field_instruction(line):
                    field_name = StigmaStringParsingLib.break_into_tokens(line)[-1]
                    field_ref_set.add(field_name)
        #print(field_ref_set)
        return len(field_ref_set)
                

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


