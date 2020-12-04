import StigmaStringParsingLib
import re
import Instrumenter as inst
import SmaliAssemblyInstructions as smali
from SmaliMethodDef import SmaliMethodDef


class SmaliClassDef:

    @staticmethod
    def is_function(line):
        # check this line is a method (begins with "invoke-*")
        match_object = re.match(StigmaStringParsingLib.REGEX_BEGINS_WITH_INVOKE, line)
        return match_object is not None

    def __init__(self, file_name):
        # These are just lists of strings
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
                    del lines[idx]
                    match_object = re.match(StigmaStringParsingLib.BEGINS_WITH_DOT_END_METHOD, lines[idx])

                # Eat the final ".end method" line
                method_code.append(lines[idx])

                del lines[idx]
                idx -= 1

                # print(str(match_object) + " in line: " + lines[idx])
                smd = SmaliMethodDef(method_code, self)
                self.methods.append(smd)
            
            #if all file is eaten up
            if idx == -1:
                break
            if "# static fields\n" == lines[idx]:
                cur_dest = self.static_fields

            if "# instance fields\n" == lines[idx]:
                cur_dest = self.instance_fields

            if "# direct methods\n" == lines[idx]:
                pre_methods = False

            if pre_methods:
                cur_dest.append(lines[idx])
                del lines[idx]
                idx = idx - 1
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

        # identifier = method name or instance field name
        # most method names are expected: "getIMEI(0", "leakSomething())"
        # edge case 1: constructors show up as  <init> and <cinit>
        identifier = identifier.replace("<", "")
        identifier = identifier.replace(">", "")
        if reg_name != "":
            static_f_name = str(identifier) + "_" + str(reg_name) + "_TAINT:I"
        else:
            static_f_name = str(identifier) + "_TAINT:I"
        full_name = ".field public static " + static_f_name + "\n"

        return (static_f_name, full_name)


    def get_taint_field(self, identifier, reg_name=""):
        # Gets a taint_storage field if it exists in this class already

        static_f_name, full_name = self._get_taint_storage_name_pair(identifier, reg_name)

        # could be more efficient as a hash map instead of a list but that might change the order
        # AND, the number of items is small (probably < 50) so it doesn't really matter
        if full_name not in self.static_fields:
            return None

        return static_f_name


    def create_taint_field(self, identifier, reg_name=""):
        # Makes a new taint_storage field in this class

        static_f_name, full_name = self._get_taint_storage_name_pair(identifier, reg_name)

        # could be more efficient as a hash map instead of a list but that might change the order
        # AND, the number of items is small (probably < 50) so it doesn't really matter
        if full_name not in self.static_fields:
            self.static_fields.append(full_name)
            self.static_fields.append("\n") # because entire list will be appended to output file

        return static_f_name


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
        for m in self.methods:

            idx = 0
            while idx < len(m.raw_text):
                # print("line: " + m.raw_text[idx])
                # The lines of code that we add (instrument) will be instances of smali.SmaliAssemblyInstruction
                # the lines of code that are existing already will be type string
                # So, this check prevents us from instrumenting our new, additional code
                if not isinstance(m.raw_text[idx], smali.SmaliAssemblyInstruction):
                    idx = self._do_instrumentation_plugins(m, idx)

                idx = idx + 1
           

            # Consider a function that has 20 parameters total, and 6 parameter registers
            # v0, v1, ... v14, v15, v16, v17, v18, v19
            #              p0   p1   p2   p3   p4   p5
            # if we add e.g., 2 registers, we push p0 and p1 from
            # small numbered to large number registers.  Therefore,
            # keeping AND ORIGINAL_NUM_REGISTERS < 16 in the below
            # if statement is NOT correct 
            if(m.get_num_registers() > 16):
                m.fix_register_limit() #iterates through whole method



        


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
        
    def __str__(self):
        return str(self.file_name)


