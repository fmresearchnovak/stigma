GENERIC_STORAGE_CLASS_NAME = "net/stigmastorage/StorageClass"


# TODO provide a location for "return v0" tag propagation

class TaintStorageHandler:
    __instance = None
    
    #MAX_FIELDS = 100
    #MAX_FIELDS = 16384
    #max 'fields per class' parameter
    ### TODO why isn't MAX_FIELDS 1000 or 32768?
    MAX_FIELDS = 8190

    @staticmethod 
    def get_instance():
        #method to access TaintStorageHandler Singleton
        if TaintStorageHandler.__instance == None:
         TaintStorageHandler()
        return TaintStorageHandler.__instance
        
    def erase(self):
        self._build()
    
    @staticmethod
    def gen_field_name(source_class_fqn, method_name, register_name):
        #Location name should have format : Source class FQN + _methodName + _registerName
        method_name = method_name.replace("<", "")
        method_name = method_name.replace(">", "")
        source_class_fqn = source_class_fqn.replace("/", "_") # Replace / because special character in Java
        
        # we cannot have "L" as the first character and we can't have ";" 
        # as the last character becuase those letters have special meaning
        # in smali bytecode (the L is certainly a strange edge-case
        # can a java object have a field named "Lfoo" ?
        # public int Lfoo; = 5;
        source_class_fqn = source_class_fqn.lstrip("L")
        source_class_fqn = source_class_fqn.rstrip(";")
        
        return "_".join([source_class_fqn, method_name, str(register_name)])
        
    def __init__(self):
        #Virtually private constructor
        if TaintStorageHandler.__instance != None:
            raise Exception("This class is a singleton!")
        else:
            TaintStorageHandler.__instance = self
            self._build()
            
    def _build(self):
        self.current_storage_class_num = 1
        self.current_storage_class = StorageClass(GENERIC_STORAGE_CLASS_NAME + 
            str(self.current_storage_class_num))
        self.storage_classes = [self.current_storage_class]
        #print("inside len", len(self.storage_classes))

        self.cache_locations = {}
        #key: smali location_field_name, value: storage class fq name
            

    def add_taint_location(self, source_class_fqn, method_name, register_name):  
        if self.current_storage_class.get_locations_len() >= TaintStorageHandler.MAX_FIELDS:
            self.current_storage_class_num += 1
            self.current_storage_class = StorageClass(GENERIC_STORAGE_CLASS_NAME + 
                str(self.current_storage_class_num))
            self.storage_classes.append(self.current_storage_class)

        location_field_name = TaintStorageHandler.gen_field_name(source_class_fqn, method_name, register_name)
        
        if location_field_name in self.cache_locations:
            return "L" + self.cache_locations[location_field_name] + ";->" + location_field_name + ":F"

        self.cache_locations[location_field_name] = self.current_storage_class.get_storage_class_fqn()
        self.current_storage_class.add_taint_storage_location(location_field_name)

        #Returns FQ accessor in smali format of static taint location field
        #Example : sget v1, Lcom/alibaba/analytics/core/store/LogStoreMgr;->mLogChangeListeners_p0_TAINT:F
        location_smali_accessor = "L" + self.current_storage_class.get_storage_class_fqn() + ";->" + location_field_name + ":F"
        return location_smali_accessor
    
    #Try and use add_taint to immediatly get accessor. This is an expensive operation!
    def get_taint_location_accessor(self, source_class_fqn, method_name, register_name):
        location_field_name = TaintStorageHandler.gen_field_name(source_class_fqn, method_name, register_name)
        if location_field_name not in self.cache_locations:
            raise ValueError("Taint storaged accessed before created")
        
        return "L" + self.cache_locations[location_field_name] + ";->" + location_field_name + ":F"

    def __repr__(self):
        all_locations = ""
        for storage_class in self.storage_classes:
            all_locations += storage_class.get_storage_class_fqn() + "\n"
            for location in storage_class.taint_storage_locations:
                all_locations += "    " + location + "\n"

        return all_locations
        
        
        
class StorageClass:
    def __init__(self, storage_class_fqn):
        self.storage_class_fqn = storage_class_fqn
        self.storage_class_name = self.storage_class_fqn.split("/")[-1]
        
        self.taint_storage_locations = []
        #Example of tain_storage_locations: ["Example/test.method1_v1", "Example/test.method1_v2"]
        #Format of location name: Source class FQN + _methodName + _registerName

    def has_location(self, location_field_name):
        return location_field_name in self.taint_storage_locations

    def get_locations_len(self):
        return len(self.taint_storage_locations)

    def get_storage_class_fqn(self):
        return self.storage_class_fqn

    def get_storage_class_name(self):
        return self.storage_class_name

    def add_taint_storage_location(self, location_field_name):
        #Format of location name: Source class FQN + _methodName + _registerName
        self.taint_storage_locations.append(location_field_name)

    def generate_smali_class_text(self):
        all_locations = ""
        for location in self.taint_storage_locations:
            location_field_name = ".field public static " + location + ":F\n"
            all_locations += location_field_name

        # TODO: the f at the beginning indicates this is a "formatted"
        # string and so it will replace things like {self.storage_class_fqn};
        smali_class_text_temp = f""".class public L{self.storage_class_fqn};
.super Ljava/lang/Object;
.source "{self.storage_class_name}.java"


# static fields\n""" + all_locations + """


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
"""
        return smali_class_text_temp
    
    def __repr__(self):
        return self.generate_smali_class_text()



def main():
    #Tests
    print("Testing TaintStorageHandler...")

    print("\tbasic tests...")
    storageHandler = TaintStorageHandler.get_instance()
    for i in range(1, TaintStorageHandler.MAX_FIELDS * 3):
        storageHandler.add_taint_location("Example/com/class", "method", "v" + str(i))
    #Testing singleton property
    storageHandler2 = TaintStorageHandler.get_instance()
    for i in range(1, TaintStorageHandler.MAX_FIELDS):
        #Testing auto-increment in storage_classes property
        storageHandler2.add_taint_location("Example/com/class2", "method", "v" + str(i))
    
    assert(storageHandler2.storage_classes[0].get_storage_class_fqn() == "net/stigmastorage/StorageClass1")
    assert(storageHandler.storage_classes[1].get_storage_class_fqn() == "net/stigmastorage/StorageClass2")
    assert(storageHandler.add_taint_location("Example/com/class3", "method3", "v1") == "Lnet/stigmastorage/StorageClass4;->Example_com_class3_method3_v1:F")
    assert(storageHandler.get_taint_location_accessor("Example/com/class", "method", "v1") == "Lnet/stigmastorage/StorageClass1;->Example_com_class_method_v1:F")
    #print(storageHandler.get_taint_location_accessor("Example/com/class3", "method3", "v1"))
    assert(storageHandler.get_taint_location_accessor("Example/com/class3", "method3", "v1") == "Lnet/stigmastorage/StorageClass4;->Example_com_class3_method3_v1:F")
    
    
    print("\twholistic test...")
    #print("before: ", len(storageHandler.storage_classes))
    storageHandler.erase()
    #print("after: ", len(storageHandler.storage_classes))
    assert(len(storageHandler.storage_classes) == 1)
    
    
    for i in range(1, 7):
        storageHandler.add_taint_location("Example/com/fictionalTestingClass", "fakeTestMethod", "v" + str(i))
    
    storageHandler.add_taint_location("Example/com/fictionalTestingClass", "", "fakeStaticInstanceVariable")


    fh = open("./test/StorageClassSoln.smali", "r")
    lines = fh.readlines()
    fh.close()
    soln = "".join(lines)
    #print(soln)
    
    result = storageHandler.storage_classes[0].generate_smali_class_text()
    
    #print(result)
    assert(result == soln)

    print("All Test Passed!")
    
if __name__ == "__main__":
    main()


