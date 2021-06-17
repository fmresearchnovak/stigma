GENERIC_STORAGE_CLASS_NAME = "net/stigmastorage/StorageClass"


# TODO provide a location for "return v0" tag propagation

class TaintStorageHandler:
    __instance = None

    @staticmethod 
    def get_instance():
        #method to access TaintStorageHandler Singleton
        if TaintStorageHandler.__instance == None:
         TaintStorageHandler()
        return TaintStorageHandler.__instance
    
    @staticmethod
    def gen_field_name(source_class_fqn, method_name, register_name):
        return "_".join([source_class_fqn, method_name, register_name])
        
    def __init__(self):
        #Virtually private constructor
        if TaintStorageHandler.__instance != None:
            raise Exception("This class is a singleton!")
        else:
            TaintStorageHandler.__instance = self
            self.current_storage_class_num = 1
            self.current_storage_class = StorageClass(GENERIC_STORAGE_CLASS_NAME + 
                str(self.current_storage_class_num))
            self.storage_classes = [self.current_storage_class]
            #self.max_fields = 100
            #self.max_fields = 16384
            self.max_fields = 8190
            #max 'fields per class' parameter
            ### TODO why isn't max_fields 1000 or 32768?

            self.cache_locations = {}
            #key: smali location_field_name, value: storage class fq name
            

    def add_taint_location(self, source_class_fqn, method_name, register_name):  
        if self.current_storage_class.get_locations_len() >= self.max_fields:
            self.current_storage_class_num += 1
            self.current_storage_class = StorageClass(GENERIC_STORAGE_CLASS_NAME + 
                str(self.current_storage_class_num))
            self.storage_classes.append(self.current_storage_class)

        #Location name should have format : Source class FQN + _methodName + _registerName
        source_class_fqn = source_class_fqn.replace("/", "") # Replace / because special character in Java
        method_name = method_name.replace("<", "")
        method_name = method_name.replace(">", "")
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
        source_class_fqn = source_class_fqn.replace("/", "") # Replace / because special character in Java
        method_name = method_name.replace("<", "")
        method_name = method_name.replace(">", "")
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

        # TODO: why is there an "f" at the beginning?
        # Also, python3 long strings should use three single quotes '''
        # it seems that double quotes works fine too.
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

if __name__ == "__main__":
    #Tests

    storageHandler = TaintStorageHandler.get_instance()
    for i in range(1, 1001):
        storageHandler.add_taint_location("Example/com/class", "method", "v" + str(i))
    #Testing singleton property
    storageHandler2 = TaintStorageHandler.get_instance()
    for i in range(1, 1001):
        #Testing auto-increment in storage_classes property
        storageHandler2.add_taint_location("Example/com/class2", "method", "v" + str(i))
    
    assert(storageHandler2.storage_classes[0].get_storage_class_fqn() == "net/stigmastorage/StorageClass1")
    assert(storageHandler.storage_classes[1].get_storage_class_fqn() == "net/stigmastorage/StorageClass2")
    assert(storageHandler.add_taint_location("Example/com/class3", "method3", "v1") == "Lnet/stigmastorage/StorageClass21;->Examplecomclass3_method3_v1:F")
    assert(storageHandler.get_taint_location_accessor("Example/com/class", "method", "v1") == "Lnet/stigmastorage/StorageClass1;->Examplecomclass_method_v1:F")
    #assert(storageHandler.get_taint_storage_location_accessor("Example/com/class2", "method_v", "v1") == "Lstigmacom/stigmastorage/package1/StorageClass2;->Example/com/class2_method_v_v1")

    print("All Test Passed!")

