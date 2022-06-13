
import os

import SmaliClassDef
import TaintTrackingInstrumentationPlugin
import Instrumenter

path = os.path.join("test", "investigation_class.smali")
print("Input File: " + str(path))
scd = SmaliClassDef.SmaliClassDef(path)
first_method = scd.methods[0]
print()
print("first method: " + str(first_method) + "  (" + first_method.get_locals_directive_line() + ")")

print("---first method before growth---")
print(first_method.get_register_meta_data())
assert(first_method.get_register_meta_data() == str(['v0', 'v1', 'v2', 'v3', 'v4', 'v5', 'v6', 'v7', 'v8', 'v9', 'v10', 'v11', 'v12', 'v13', 'v14', 'v15', 'v16/p0', 'v17/p1', 'v18/p2', 'v19/p3']))

# def run plugin's main so it can signup so 
# that MAX_DESIRED_NUM_REGISTERS is not 0
TaintTrackingInstrumentationPlugin.main() 
scd.grow_locals(Instrumenter.MAX_DESIRED_NUM_REGISTERS)

print()
print("--first method after growth---")
print(first_method.get_register_meta_data())
assert(first_method.get_register_meta_data() == str(['v0', 'v1', 'v2', 'v3', 'v4', 'v5', 'v6', 'v7', 'v8', 'v9', 'v10', 'v11', 'v12', 'v13', 'v14', 'v15', 'v16/p0', 'v17/p1', 'v18/p2', 'v19/p3', 'v20', 'v21', 'v22', 'v23']))


scd.instrument()
new_path = os.path.join("test", "investigation_class_after.smali")
scd.write_to_file(new_path)

print()
print("Output File:", new_path)
