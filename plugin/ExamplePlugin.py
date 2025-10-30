
import Instrumenter
from lib import SmaliAssemblyInstructions as smali



def new_method_handler(scd, smd):

    # Create a block of smali code to be inserted.
    block = []

    if (scd in Instrumenter.get_launcher_classes() and smd.signature.name == "onCreate"):
        print("Inserting new code in: " + str(smd.signature) + " of " + str(scd.class_name))
        #print("reg metadata: " + smd.get_register_meta_data())


        # const-string vA, "STIGMA"
        # const-string vB, "Example Plugin"
        # invoke-static {vA, vB}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

        block.append(smali.CONST_STRING("v0", "\"STIGMA\""))
        block.append(smali.BLANK_LINE()) # In smali it's customary to leave every other line blank
        block.append(smali.CONST_STRING("v1", "\"Example Plugin\""))
        block.append(smali.BLANK_LINE())
        block.append(smali.INVOKE_STATIC(["v0", "v1"], "Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I"))
        block.append(smali.BLANK_LINE())

        # Note: This block can use v0, v1, v2 (3 total registers) because this instrumentation plugin set
        # the MAX_DESIRED_NUM_REGISTERS to 3 by passing 3 to sign_up_launcher_activity_oncreate_start in main()

    return block



def main():
    
    # Inserts code at the beginning of the launcher activity of the app.
    Instrumenter.sign_up_launcher_activity_oncreate_start(new_method_handler, 3)


if __name__ == "__main__":
    main()

