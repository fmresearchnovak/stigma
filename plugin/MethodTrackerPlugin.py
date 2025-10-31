
import Instrumenter
from lib import SmaliTypes

from lib import SmaliAssemblyInstructions as smali



def new_method_handler(scd, smd):
    
    block = []

    if (scd in Instrumenter.get_launcher_classes() and smd.signature.name == "onCreate"):
        block.append(smali.CONST_STRING("v0", smd.signature.name))
        block.append(smali.BLANK_LINE())
        block.append(smali.CONST_STRING("v1", "\"Stigma Method Tracker\""))
        block.append(smali.BLANK_LINE())
        block.append(smali.INVOKE_STATIC(["v1", "v0"], "Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I"))
        block.append(smali.BLANK_LINE())

    return block



def main():
    
    Instrumenter.sign_up_method_start(new_method_handler, 2)

    


if __name__ == "__main__":
    main()


