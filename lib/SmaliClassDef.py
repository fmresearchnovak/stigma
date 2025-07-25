import os.path
import re

from lib import SmaliTypes
from lib import StigmaStringParsingLib
from lib import SmaliMethodDef
from lib import SmaliAssemblyInstructions


import Instrumenter


class SmaliClassDef:
    ''' This class represents a Smali class definition.
    Each smali class definition exists entirely in one .smali file.
    Roughly, the structure of a smali class definition is:
    1) OOP and name information
    2) Class fields
    3) Method definitions
    
    self.header: a list of strings, lines from the beginning of the file, OOP and name information.
        example: ['.class public Lcom/google/android/material/animation/AnimationUtils;',
                  '.super Ljava/lang/Object;',
                  '.source "AnimationUtils.java"']
    self.static_fields: a list of strings, the static fields in this class
        example: ['.field public static final ANIMATION_DURATION:I']
    self.instance_fields: a list of strings, the instance fields in this class
        example: ['.field private mInterpolator:Landroid/animation/TimeInterpolator;']
    self.fields: a list of SmaliClassField objects, each representing a field in this class.  Contains static and regular instance fields
        example: [SmaliClassField('.field public static ANIMATION_DURATION:I'), ...]
        Note: .field public static ANIMATION_DURATION:I IS EQUAL to Lcom/google/android/material/animation/AnimationUtils;->ANIMATION_DURATION:I assuming the former is in the AnimationUtils class.
    self.internal_class_names: a list of strings, the of all the classes defined in the entire smali code base
        example: ['Lcom/google/android/material/animation/AnimationUtils$1;',
                  'Lcom/google/android/material/animation/AnimationUtils$2;']
        This is used to determine if a class is internal
    self.methods: a list of SmaliMethodDef objects in this class
    self.file_name: the (absolute) path to the file, a string
    self.class_name: extracted from the first line of the smali file, the "fully qualified" name of the class, a string
        example: "Lcom/google/android/material/animation/AnimationUtils;"
    '''


    def __init__(self, file_name):
        ''' Constructor for SmaliClassDef.
        Parameters:
            file_name: a path to a smali file, a string
        '''
        # These are just lists of strings
        # Should be filled in before instrument
        self.header = []
        self.static_fields = [] #TODO: replace this throughout code base with self.field_objects
        self.instance_fields = [] #TODO: replace this throughout code base with self.field_objects

        self.fields = [] # SmaliClassField objects

        # list of the class names (strings) of all internal classes
        self.internal_class_names = [] # TODO: Properly initialize this with a value here in the constructor

        # This is a list of SmaliMethodDef (as seen above) which aids instrumentation later
        self.methods = []
        
        self.file_name = file_name
        self.class_name = SmaliClassDef.extract_class_name_from_file(file_name)
        
        fh = open(file_name, "r")
        self.raw_text = fh.readlines()
        fh.close()


        cur_dest = self.header
        pre_methods = True
        idx = 0
        while idx < len(self.raw_text):
            #print("processing line: " + str(lines[idx]))
            match_object = re.match(StigmaStringParsingLib.BEGINS_WITH_DOT_METHOD, self.raw_text[idx])
            if match_object is not None:  # This is the start of a method defintion
                #print(str(match_object) + " in line: " + lines[idx])
                method_code = []

                match_object = re.match(StigmaStringParsingLib.BEGINS_WITH_DOT_END_METHOD, self.raw_text[idx])
                while match_object is None:
                    #print(str(idx))
                    method_code.append(self.raw_text[idx])
                    match_object = re.match(StigmaStringParsingLib.BEGINS_WITH_DOT_END_METHOD, self.raw_text[idx])
                    idx += 1

                #print(str(match_object) + " in line: " + lines[idx])
                smd = SmaliMethodDef.SmaliMethodDef(method_code, self)
                self.methods.append(smd)
            
            #if all file is eaten up (eating last method)
            if idx >= len(self.raw_text):
                #print("stopping!")
                break
                
            if "# static fields\n" == self.raw_text[idx]:
                cur_dest = self.static_fields

            if "# instance fields\n" == self.raw_text[idx]:
                cur_dest = self.instance_fields

            if "# direct methods\n" == self.raw_text[idx]:
                pre_methods = False

            if pre_methods:
                cur_dest.append(self.raw_text[idx])
            #debugging left in
            #print("\n")
            #print(lines)
            #print("len(lines): " + str(len(lines)))
            #
            #print("idx: " + str(idx))
            idx = idx + 1


        for f in self.static_fields:
            if(f.startswith(".field")):
                self.fields.append(SmaliClassField(self.class_name, f))
        for f in self.instance_fields:
            if(f.startswith(".field")):
                self.fields.append(SmaliClassField(self.class_name, f))
            
        
    @staticmethod
    def extract_class_name_from_file(filename):
        ''' Returns the "fully qualified name of the class contained in the file given by filename
        For example if the file name is "./edu/enovak/MainActivity.smali"" this function returns "Ledu/enovak/MainActivity;"
        Parameters:
            filename: a file path, a string
        Returns:
            The "fully qualified" name of the class, a string
        '''
        fh = open(filename, 'r')
        line = fh.readline()
        class_name = line.split()[-1].strip("\n")
        try:
            SmaliTypes.from_string(class_name)
        except Exception as e:
            raise Exception("Error parsing class name from file: " + filename + "\n" + str(e))
        return class_name
    
    @staticmethod
    def is_function(line):
        ''' Checks if the given line is a valid smali function call or not.  It checks if the line begins with "invoke-"
        Parameters:
            line: A line from a smali file, maybe a string, a SmaliAssemblyInstruction, or anything that
            can be converted to a string
        Returns:
            True if the line is a function call, False otherwise
        '''
        #print("is_function: " + str(line))
        # check this line is a method (begins with "invoke-*")
        match_object = re.match(StigmaStringParsingLib.BEGINS_WITH_INVOKE, str(line))
        return match_object is not None


    def get_original_file_path(self):
        '''Returns the original path to the file that was given when constructing
        this SmaliClassDef instance.  A string (e.g., "/tmp/apkOutput_blah/smali/class2.smali")'''
        return self.file_name

    def get_fully_qualified_name(self):
        ''' Returns the "fully qualified" name of this class, a string.
        Example: "Ledu/fandm/enovak/leaks/Main;"
        '''
        return self.class_name
    
    def get_file_basename(self):
        return os.path.basename(self.file_name)


    def get_super_class(self):
        ''' Returns the super (parent) class of this class based on the value in self.header
        Returns:
            A SmaliTypes.ObjectReference object representing the super class of this class.
        '''
        return SmaliTypes.from_string(self.header[1].split(" ")[1].strip())


    
    def is_inter_class_function_call(self, line):
        ''' Checks if the given line is a function call to a function defined in this class.
        This is the inverse of is_extra_class_function_call.
        Parameters:
            line: A line from a smali file, maybe a string, a SmaliAssemblyInstruction, or anything that
            can be converted to a string
        Returns:
            True if the line is a function call to a function defined in this class, False otherwise
        '''
        if not self.is_function(line):
            return False
        
        if( isinstance(line, SmaliAssemblyInstructions._INVOKE_INSTRUCTION) ):
            return line.get_fully_qualified_call() in self.methods
        
        func_name = line.split(" ")[-1]
        return func_name in self.methods


    def is_extra_class_function_call(self, line):
        ''' Checks if the given line is a function call to a function not defined in this class.
        This is the inverse of is_inter_class_function_call.
        Parameters:
            line: A line from a smali file, maybe a string, a SmaliAssemblyInstruction, or anything that
            can be converted to a string
        Returns:
            True if the line is a function call to a function not defined in this class, False otherwise
        '''
        return not self.is_inter_class_function_call(line) and self.is_function(line)


    def instrument(self):
        ''' Instrument (modify) the methods of this class.
        Increases the number of local registers (.locals) in the target methods.
        Calls the instrument() method on each SmaliMethodDef object in the target methods.
        Returns:
            None
        '''
        for m in self.methods:
            if(self._should_instrument_method(m)):   
                #print("Instrumenting: " + str(m.signature.name))      
                m.grow_locals(Instrumenter.MAX_DESIRED_NUM_REGISTERS)
                m.instrument()


    def _should_instrument_method(self, m):
        '''Determines if a given method should be modified (instrumented) or not.
        Parameters:
            m: a SmaliMethodDef object representing the method to check
        Returns:
            True if the method should be instrumented, False otherwise
        '''
        
        # TODO: maybe this method should be in the Instrumenter.py class?
        if(m.signature.is_abstract or m.signature.is_native):
            # We shouldn't instrument methods that don't have code / locals
            return False
        
        launcher_oncreate = (Instrumenter.start_of_launcher_oncreate_method_handler != None and self.is_launcher_activity() and m.signature.name == "onCreate")
        method_start = (Instrumenter.start_of_method_handler != None)
        opcodes = (Instrumenter.instrumentation_map != {})
        # opcodes = (none of Instrumenter.instrumentation_map.keys() are in m)

        return (launcher_oncreate or method_start or opcodes)


    def is_launcher_activity(self):
        ''' Checks if this class is a launcher activity.  In Android, when an app is launched
         a launcher activity is started.  This method checks if this class is one of those.
         Returns:
            True if this class is a launcher activity, False otherwise
        '''
        # Remember, Instrumenter.LAUNCHER_ACTIVITIES is a list of SmaliTypes.ObjectReference
        for item in Instrumenter.LAUNCHER_ACTIVITIES:
            if item == self: #invokes the __eq__ on the SmaliTypes.ObjectReference
                return True

    def write_to_file(self, class_smali_file):
        ''' Writes the current state of this class to a smali file.  If changes were made to the content
        of this class (perhapes via a plugin executed by calling SmaliClassDef.instrument()), this function writes those changes to disk.
        Parameters:
            class_smali_file: a path, likely ending in .smali; a string
        Returns:
            None'''
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
        ''' Overwrites the current state of this class to the smali file.  If changes were made to the content
        of this class (perhaps via a plugin executed by calling SmaliClassDef.instrument()), this function writes those changes to disk.
        It Calls write_to_file() with the existing file_name attribute of this class as the path.
        Returns:
            None
        '''
        self.write_to_file(self.file_name)


    def get_num_lines(self):
        ''' Returns the number of lines in this class.
        This is the sum of the number of lines in the header, static fields, instance fields, and methods including blank lines.
        Returns:
            The number of lines in this class, an integer
        '''
        total_lines = len(self.header) + len(self.static_fields) + len(self.instance_fields)
        for m in self.methods:
            total_lines = total_lines + len(m.raw_text)
        return total_lines
        

    def verboseprint(self):
        for line in self.header + self.static_fields + self.instance_fields:
            print(line)
        print("# methods\n")
        for m in self.methods:
            for line in m.raw_text:
                print(str(line))
            print("\n")


    def get_num_comparison_instructions(self):
        ''' Returns the number of comparison (if statement) instructions in this class.
        This is the sum of the number of comparison instructions in each method.
        This is used for gathering statistics about the class.
        Returns:
            The number of comparison instructions in this class, an integer
        '''
        count = 0
        for m in self.methods:
            count = count + m.get_num_comparison_instructions()
            #print("count: " + str(count))
        return count


    def get_num_field_declarations(self):
        ''' Returns the number of field declarations in this class.
        This is the sum of the number of static fields and instance fields.
        This is used for gathering statistics about the class.
        Returns:
            The number of field declarations in this class, an integer 
        '''
        return len(self.static_fields) + len(self.instance_fields)
        
        
    def get_num_method_declarations(self):
        ''' Returns the number of method declarations in this class.
        This is the number of methods in this class.
        This is used for gathering statistics about the class.
        Returns:
            The number of method declarations in this class, an integer
        '''
        return len(self.methods)


    def _count_references(self, filter_function):
        ''' Counts the number of occurrences of a specific type of reference in this class.
        Specifically, it is used to count the unique field names and unique method names used in this class.
        This information is used for splitting the smali files into sub-folders, which is done in splitSmali() in Stigma.py.
        Parameters:
            filter_function: a function that takes a line of smali code and returns True or False depending on desired filtering.
            Examples of a filter function would be a function that returns True if the given line is a method call instruction.
        Returns:
            The number of unique references in this class, an integer.

        Example, suppose the class calls Log.d() 5 times and Log.e() 3 times in the various methods.  
        When passed the "is_method_call_instruction" filter, _count_references() will return 2 since there are 2 unique methods called.
        '''

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
        ''' Wrapper for _count_references() that counts the number of field references in this class.
        Parameters:
            None
        Returns:
            The number of unique field references in this class, an integer

        Example, suppose the class has 3 fields "String TAG", "Context mContext", and "int x" and references a field called "String UserName" from a different class.
        This function will return 4 since there are 4 unique fields referenced.
        '''
        return self._count_references(StigmaStringParsingLib.is_field_instruction)

        
    def get_num_method_references(self):
        ''' Wrapper for _count_references() that counts the number of method references in this class.
        Parameters:
            None
        Returns:
            The number of unique method references in this class, an integer
        Example, suppose the class calls foo() 6 times and blah() 3 times, with blah() being defined in another class.
        This function will return 2 since there are 2 unique methods called.
        '''
        return self._count_references(StigmaStringParsingLib.is_method_call_instruction)
                    
        
    def is_internal_class(self, other_class_name):
        ''' Checks if the given class name is an "internal" class of the SmaliCodeBase.
        A class is considered internal if the definition (smali file) of the class can be found in this SmaliCodeBase.
        Parameters:
            other_class_name: a string representing the name of the class to check
        Returns:
            True if the class is an internal class, False otherwise

        Example: Ledu/fandm/enovak/leaks/Main; is likely to be an internal class of the SmaliCodeBase
        Example: Ljava/lang/String; is likely to be an external class of the SmaliCodeBase since the definition of this class is part of the Java library and not the app being analyzed.
        '''
        #print("\nis_internal_class(" + str(other_class_name) + ")")
        #print("self.class_name:" + str(self.class_name))
        # print("self.internal_class_names:", self.internal_class_names)
        if other_class_name in self.internal_class_names:
            #print("\tTRUE!")
            return True
        
        #print("\tFALSE!")
        return False
        
    def __str__(self):
        ''' Returns a string representation of this class.
        Uses self.file_name and likely returns something of the form "/tmp/apkOutput_blah/smali_classes2/edu/fandm/enovak/leaks/Main.smali"
        '''
        return str(self.file_name)
        
    def __eq__(self, other):
        ''' Checks if this class is equal to another class.
        Two classes are considered equal if they have the same self.class_name.
        Note: self.class_name is the "fully qualified" name of the class, e.g. "Ljava/lang/String;"
        Parameters:
            other: another SmaliClassDef object, a SmaliTypes.ObjectReference, or a string representing the class name in "fully qualified" format.
        Returns:
            True if the class names are equal, False otherwise
        '''
        #print("checking equality on " + str(self) + " and " + str(other))
        if isinstance(other, SmaliClassDef):
            return self.get_fully_qualified_name() == other.get_fully_qualified_name()
        
        elif isinstance(other, SmaliTypes.ObjectReference):
            #print(self.class_name, "  ==  ", other.raw_type_string, "=>", self.class_name == other.raw_type_string)
            return self.get_fully_qualified_name() == other.raw_type_string
        
        elif isinstance(other, str):
            return self.get_fully_qualified_name() == other
        
        return False


    def get_method_by_fully_qualified_name(self, name):
        '''Returns a SmaliMethodDef object matching the given fully qualified name (a string)
        Parameters:
            name: A fully qualified name of a method (e.g., "Ledu/fandm/enovak/leaks/Main;->foo(Landroid/os/Bundle;)V"), a string
        Returns:
            A SmaliMethodDef object matching the given name or None if no such method is found.
        '''
        #TODO: make this faster by checking the class in the given name first
        for m in self.methods:
            if (m == name):
                return m


    def get_method_by_name(self, name):
        '''Returns a SmaliMethodDef object matching the given base name (a string)
        Parameters:
            name: The basic name of a method (e.g., "foo"), a string
        Returns:
            A SmaliMethodDef object matching the given name or None if no such method is not found.
            If more than one method of this name exists in this class (overloaded e.g., foo(I), foo(), foo(Ljava/lang/String;)) the first one found in the smali file is returned.
        '''
        for m in self.methods:
            if(m.get_name() == name):
                return m
    

    def contains_method(self, method):
        ''' Checks if this class contains the given method.
        Parameters:
            method: A SmaliMethodDef object, a SmaliMethodSignature object, or a "fully qualified name" string such as Ledu/fandm/enovak/SomeApp/Main;->onCreate()V
        Returns:
            True if the class contains the method, False otherwise
        '''
        if isinstance(method, SmaliMethodDef.SmaliMethodDef) or \
        isinstance(method, SmaliMethodDef.SmaliMethodSignature) or \
        isinstance(method, str):
            return method in self.methods
        
        return False
    

    def contains_field(self, field):
        ''' Checks if this class contains the given field.
        Parameters:
            field: A SmaliClassField object or a "fully qualified name" string such as Ledu/fandm/enovak/SomeApp/Main;->balance:D
        Returns:
            True if the class contains the field, False otherwise
        '''
        if isinstance(field, SmaliClassField) or isinstance(field, str):
            return field in self.fields
        
        return False


    def __contains__(self, other):
        ''' Checks if this class contains a method or field with the given name.
        Parameters:
            other: A SmaliMethodDef object or a SmaliMethodSignature object or a SmaliClassField objects or "fully qualified name" string such as Ledu/fandm/enovak/SomeApp/Main;->onCreate()V
            Note: fully qualified name string may be that of a method or a field
        Returns:
            True if the class contains the method or field, False otherwise
        '''
        return self.contains_method(other) or self.contains_field(other)


class SmaliClassField:
    ''' A class to represent a field in a Smali class.
    This is used for instrumentation and analysis of smali code.
    Example: double balance = 0.0; or .field private Lorg/fandm/MyBank;->balance:D
    '''

    def __init__(self, class_name, field_line):
        ''' Constructor for SmaliClassField
        Parameters:
            class_name: a string representing the fully qualified name of the class this field belongs to
            Example: "Lcom/google/android/material/animation/AnimationUtils;"
            field_line: a string representing the field line from a smali file
            Example: ".field private Landroid/support/v7/app/AppCompatActivity;->TAG:Ljava/lang/String; = "Compat Tag 1""
            Example: ".field private static final MY_PERMISSIONS_REQUEST:I = 0x1"
            Example: ".field private static final PERMS:[Ljava/lang/String;"

        TODO: Implement is_static, is_private, is_public, is_protected, is_final, get_modifiers, etc.
        '''
        match_object = re.match(StigmaStringParsingLib.BEGINS_WITH_DOT_FIELD, field_line)
        if match_object is not None:  # This is the start of a method defintion
            self.field_line = field_line
            self.class_name = class_name
        else:
            raise Exception("Invalid field line: " + field_line)
        
    def get_fully_qualified_name(self):
        ''' Returns the fully qualified name of this field.
        This is the class name and field name combined, e.g. "Lcom/example/MyClass;->myField:I"
        Returns:
            A string representing the fully qualified name of this field
        '''
        parts = self.field_line.split()
        if "=" in parts:
            location = parts.index("=")
            parts = parts[:location]
        return self.class_name + "->" + parts[-1]

    def __str__(self):
        return self.field_line
    
    def __repr__(self):
        str(self)

    def __eq__(self, other):
        if(isinstance(other, str)):
            return self.get_fully_qualified_name() == other
        
        elif(isinstance(other, SmaliClassField)):
            return self.get_fully_qualified_name() == other.get_fully_qualified_name()  
        
        return False



class MockSmaliClassDef(SmaliClassDef):
    '''A fake version of SmaliClassDef used for debugging and development purposes.
    TODO: Move this to StigmaTests.py since that's the only place it's used.'''

    def __init__(self):
        '''The constructor for a MockSmaliClassDef'''

        self.file_name = ""
        self.class_name = "LMockClass;"
        
        self.internal_class_names = [self.class_name]
        
        self.header = []
        self.header.append(".class LMockClass;\n")
        self.static_fields = []
        self.instance_fields = []
        
        self.methods = []
        
    def is_internal_class(self, other):
        return False

def tests():
    print("Testing SmaliClassDef")

    print("\tConstructor and class name extraction...")
    SCD = SmaliClassDef(os.path.join("test", "Main.smali"))
    scd_same = SmaliClassDef(os.path.join("test", "Main.smali"))
    #print(type(ts.get_super_class()))
    assert (SCD.get_super_class() == "Landroid/support/v7/app/AppCompatActivity;")
    assert (SCD.class_name == "Ledu/fandm/enovak/leaks/Main;");
    assert(SmaliClassDef.extract_class_name_from_file("./test/Main.smali") == "Ledu/fandm/enovak/leaks/Main;")

    tsdifferent = SmaliClassDef(os.path.join("test", "investigation_class.smali"))
    assert(SCD == scd_same)
    assert(SCD != tsdifferent)
    assert(SCD == "Ledu/fandm/enovak/leaks/Main;")
    assert(SCD.get_original_file_path() == "test/Main.smali")



    print("\tis_function variants...")
    #print([str(x) for x in ts.methods]) 

    extra_class_function_call_line = "invoke-virtual {p0}, Landroid/support/v7/app/AppCompatActivity;->getSupportActionBar()Landroid/support/v7/app/ActionBar;"
    extra_class_function_call_instruction = SmaliAssemblyInstructions.from_line(extra_class_function_call_line)
    #print("function_call_line: " + str(extra_class_function_call_instruction))
    assert(SmaliClassDef.is_function(extra_class_function_call_instruction))
    assert(SmaliClassDef.is_function(extra_class_function_call_line))
    assert(SmaliClassDef.is_function("iput-object v0, p0, Lnet/stigma/Main;->TAG:Ljava/lang/String;") == False)

    #print([str(x) for x in ts.methods])
    #print(ts.methods[8])
    inter_class_function_call_line = SCD.methods[8].raw_text[135].strip('\n')
    inter_class_function_call_instruction = SmaliAssemblyInstructions.from_line(inter_class_function_call_line)
    #print("inter_class_function_call_line: " + str(inter_class_function_call_line))

    assert(SCD.is_inter_class_function_call(extra_class_function_call_line) == False)
    assert(SCD.is_inter_class_function_call(extra_class_function_call_instruction) == False)
    assert(SCD.is_inter_class_function_call(inter_class_function_call_line) == True)
    assert(SCD.is_inter_class_function_call(inter_class_function_call_instruction) == True)

    assert(SCD.is_extra_class_function_call(extra_class_function_call_line) == True)
    assert(SCD.is_extra_class_function_call(extra_class_function_call_instruction) == True)
    assert(SCD.is_extra_class_function_call(inter_class_function_call_line) == False)
    assert(SCD.is_extra_class_function_call(inter_class_function_call_instruction) == False)


    print("\tSmaliClassField tests...")
    field_line = ".field private TAG:Ljava/lang/String;"
    field_line2 = ".field public static final ANIMATION_DURATION:I"
    scf = SmaliClassField("Lmy/class;", field_line)
    scfsame = SmaliClassField("Lmy/class;", field_line)
    assert(scf.get_fully_qualified_name() == "Lmy/class;->TAG:Ljava/lang/String;")
    scf2 = SmaliClassField("Lmy/class;", field_line2)
    scf3 = SmaliClassField("Lmy/other/class;", field_line2)


    assert(scf == scf)
    assert(scf == scfsame)
    assert(scf == "Lmy/class;->TAG:Ljava/lang/String;")
    assert(scf != scf2)
    assert(scf != scf3)
    assert(scf2 != scf3)


    print("\tcontains...")
    scf_present = SmaliClassField("Ledu/fandm/enovak/leaks/Main;", ".field private TAG:Ljava/lang/String;")
    smd_present = SCD.methods[2] # random method
    assert(SCD.contains_method("Ledu/fandm/enovak/leaks/Main;->onCreate(Landroid/os/Bundle;)V"))
    assert(SCD.contains_field("Ledu/fandm/enovak/leaks/Main;->MY_PERMISSIONS_REQUEST:I"))
    assert(SCD.contains_method("Ledu/fandm/enovak/leaks/Main;->foo(Landroid/os/Bundle;)V") == False)
    assert(SCD.contains_field("Ledu/fandm/enovak/leaks/Main;->bar:D") == False)
    assert(SCD.contains_method("Ledu/fandm/enovak/leaks/MadeUpClass;->onCreate(Landroid/os/Bundle;)V") == False)


    assert(SCD.contains_field(scf_present))
    assert(SCD.contains_field(scf_present))

    assert(SCD.contains_method(smd_present))
    assert(SCD.contains_method(scd_same.methods[3])) # random method

    SCD2 = SmaliClassDef(os.path.join("test", "investigation_class.smali"))
    smd_not_present = SCD2.methods[1] # random method
    field_not_present = SCD2.fields[2] # random field


    assert("Ledu/fandm/enovak/leaks/Main;->MY_PERMISSIONS_REQUEST:I" in SCD)
    assert(smd_present in SCD)
    assert(scf_present in SCD)
    assert(smd_not_present not in SCD)
    assert(field_not_present not in SCD)
    assert(smd_present.signature in SCD)
    assert(smd_not_present.signature not in SCD)


    print("\tget method functions...")
    fqmn = "Ledu/fandm/enovak/MockClass;->OtherMethod(I)I"
    mn = "OtherMethod"
    assert(SCD2.get_method_by_fully_qualified_name(fqmn) == SCD2.methods[1])
    assert(SCD2.get_method_by_name(mn) == SCD2.methods[1])
    assert(SCD2.get_method_by_name("foo") == None)



    print("ALL SmaliClassDef TESTS PASSED")

    # TODO: Write more tests!  One for each method in SmaliClassDef
    

if __name__ == "__main__":
    tests()


