import re
import os
import subprocess

import Instrumenter
import SmaliTypes
import StigmaStringParsingLib
import StigmaState

import SmaliAssemblyInstructions as smali


from SmaliRegister import SmaliRegister


OBJECT_MAPPER_TYPE_ID = "Lcom/fasterxml/jackson/databind/ObjectMapper;"
# a list of SmaliType.ObjectReference objects



def new_method_handler(scd, smd):
    # I can use v0, v1, v2, ..., v6 (7 total) since this instrumentation plugin
    # specifically sets the MAX_DESIRED_NUM_REGISTERS global to be 7 in the main.
    # assuming the method was grown() by n or more where n > 0
    # then there are n vX registers open (v0, v1, ..., v(n-1))
    # these registers are (a) used by the method, in which case they
    # will be given a value later in the method or (b) were used to store p0
    # which is technically not possible since we have used grow(n) and n > 0


    #print("scd: " + str(scd) + "   is launcher: " + str(scd in Instrumenter.LAUNCHER_ACTIVITIES))
    block = []

    # this thing would be waaaaaay more efficient if we could do this if statement check earlier
    # in the process (maybe at sign-up time?)
    if (scd in Instrumenter.get_launcher_classes() and smd.signature.name == "onCreate"):
        print("Inserting new code in: " + str(smd.signature) + " of " + str(scd.class_name))
        #print("reg metadata: " + smd.get_register_meta_data())
        #print("has grown: " + str(smd.has_grown))
        #print("locals directive num: " + str(smd.get_locals_directive_num()))
        #print("v: " + str(smd.get_locals_directive_num() - smd.has_grown))

        block = []
        # invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;
        # the method has already been grown, so the p0 above is likely larger than v15
        # so we need to move (copy actually) the value of p0 into a small numbered register
        # I ca n use v0, since it is unused at the beginning of the method anyway
        # p0 is "this", so I am feeling confident I can just use move-object/16 v0, p0 and then use v0 as "this"

        # to replace p0 in the line above, we need to compute where p0 used to be, that's the current (after being grown) num registers
        # minus the amount the registers were grown.
        #this_reg = "v" + str(smd.get_locals_directive_num() - smd.has_grown)

        # get entry set from shared preferences data base (default one, not the named one)
        block.append(smali.MOVE_OBJECT_16("v0", "p0"))
        block.append(smali.BLANK_LINE())
        block.append(smali.INVOKE_STATIC(["v0"], "Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;"))
        block.append(smali.BLANK_LINE())
        block.append(smali.MOVE_RESULT_OBJECT("v0"))
        block.append(smali.BLANK_LINE())
        block.append(smali.INVOKE_INTERFACE(["v0"], "Landroid/content/SharedPreferences;->getAll()Ljava/util/Map;"))
        block.append(smali.BLANK_LINE())
        block.append(smali.MOVE_RESULT_OBJECT("v2"))
        block.append(smali.BLANK_LINE())
        block.append(smali.INVOKE_INTERFACE(["v2"], "Ljava/util/Map;->entrySet()Ljava/util/Set;"))
        block.append(smali.BLANK_LINE())
        block.append(smali.MOVE_RESULT_OBJECT("v3"))
        block.append(smali.BLANK_LINE())

        # print the number of items in the entry set
        block.append(smali.NEW_INSTANCE("v4", "Ljava/lang/StringBuilder;"))
        block.append(smali.BLANK_LINE())
        block.append(smali.INVOKE_DIRECT(["v4"], "Ljava/lang/StringBuilder;-><init>()V"))
        block.append(smali.BLANK_LINE())
        block.append(smali.CONST_STRING("v5", "\"Shared Prefs Num Items: \""))
        block.append(smali.BLANK_LINE())
        block.append(smali.INVOKE_VIRTUAL(["v4", "v5"], "Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;"))
        # Although it might seem like we need a move-result-object here, we don't because the append method 
        # modifies the existing StringBuilder on which it was called in addition to returning it.
        block.append(smali.BLANK_LINE())
        block.append(smali.INVOKE_INTERFACE(["v2"], "Ljava/util/Map;->size()I"))
        block.append(smali.BLANK_LINE())
        block.append(smali.MOVE_RESULT("v5"))
        block.append(smali.BLANK_LINE())
        block.append(smali.INVOKE_VIRTUAL(["v4", "v5"], "Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;"))
        block.append(smali.BLANK_LINE())
        block.append(smali.INVOKE_VIRTUAL(["v4"], "Ljava/lang/StringBuilder;->toString()Ljava/lang/String;"))
        block.append(smali.BLANK_LINE())
        block.append(smali.MOVE_RESULT_OBJECT("v4"))
        block.append(smali.BLANK_LINE())
        block.append(smali.CONST_STRING("v5", "\"Stigma Shared Prefs Dump\""))
        block.append(smali.BLANK_LINE())
        block.append(smali.INVOKE_STATIC(["v5", "v4"], "Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I"))
        block.append(smali.BLANK_LINE())

        # print the contents of the entry set
        block.append(smali.INVOKE_INTERFACE(["v3"], "Ljava/util/Set;->iterator()Ljava/util/Iterator;"))
        block.append(smali.BLANK_LINE())
        block.append(smali.MOVE_RESULT_OBJECT("v3"))
        block.append(smali.BLANK_LINE())

        block.append(smali.LABEL(1))

        block.append(smali.BLANK_LINE())
        block.append(smali.INVOKE_INTERFACE(["v3"], "Ljava/util/Iterator;->hasNext()Z"))
        block.append(smali.BLANK_LINE())
        block.append(smali.MOVE_RESULT("v4"))
        block.append(smali.BLANK_LINE())
        block.append(smali.IF_EQZ("v4", str(smali.LABEL(2))))
        block.append(smali.BLANK_LINE())
        block.append(smali.INVOKE_INTERFACE(["v3"], "Ljava/util/Iterator;->next()Ljava/lang/Object;"))
        block.append(smali.BLANK_LINE())
        block.append(smali.MOVE_RESULT_OBJECT("v4"))
        block.append(smali.BLANK_LINE())
        block.append(smali.CHECK_CAST("v4", "Ljava/util/Map$Entry;"))
        block.append(smali.BLANK_LINE())
        block.append(smali.NEW_INSTANCE("v5", "Ljava/lang/StringBuilder;"))
        block.append(smali.BLANK_LINE())
        block.append(smali.INVOKE_DIRECT(["v5"], "Ljava/lang/StringBuilder;-><init>()V"))
        block.append(smali.BLANK_LINE())
        block.append(smali.CONST_STRING("v6", "\"Default[\""))
        block.append(smali.BLANK_LINE())
        block.append(smali.INVOKE_VIRTUAL(["v5", "v6"], "Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;"))
        block.append(smali.BLANK_LINE())
        block.append(smali.INVOKE_INTERFACE(["v4"], "Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;"))
        block.append(smali.BLANK_LINE())
        block.append(smali.MOVE_RESULT_OBJECT("v6"))
        block.append(smali.BLANK_LINE())
        block.append(smali.CHECK_CAST("v6", "Ljava/lang/String;"))
        block.append(smali.BLANK_LINE())
        block.append(smali.INVOKE_VIRTUAL(["v6"], "Ljava/lang/String;->toString()Ljava/lang/String;"))
        block.append(smali.BLANK_LINE())
        block.append(smali.MOVE_RESULT_OBJECT("v6"))
        block.append(smali.BLANK_LINE())
        block.append(smali.INVOKE_VIRTUAL(["v5", "v6"], "Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;"))
        block.append(smali.BLANK_LINE())
        block.append(smali.CONST_STRING("v6", "\"]: \""))
        block.append(smali.BLANK_LINE())
        block.append(smali.INVOKE_VIRTUAL(["v5", "v6"], "Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;"))
        block.append(smali.BLANK_LINE())
        block.append(smali.INVOKE_INTERFACE(["v4"], "Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;"))
        block.append(smali.BLANK_LINE())
        block.append(smali.MOVE_RESULT_OBJECT("v6"))
        block.append(smali.BLANK_LINE())
        block.append(smali.INVOKE_VIRTUAL(["v6"], "Ljava/lang/Object;->toString()Ljava/lang/String;"))
        block.append(smali.BLANK_LINE())
        block.append(smali.MOVE_RESULT_OBJECT("v6"))
        block.append(smali.BLANK_LINE())
        block.append(smali.INVOKE_VIRTUAL(["v5", "v6"], "Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;"))
        block.append(smali.BLANK_LINE())
        block.append(smali.INVOKE_VIRTUAL(["v5"], "Ljava/lang/StringBuilder;->toString()Ljava/lang/String;"))
        block.append(smali.BLANK_LINE())
        block.append(smali.MOVE_RESULT_OBJECT("v5"))
        block.append(smali.BLANK_LINE())
        block.append(smali.CONST_STRING("v6", "\"Stigma Shared Prefs Dump\""))
        block.append(smali.BLANK_LINE())
        block.append(smali.INVOKE_STATIC(["v6", "v5"], "Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I"))
        block.append(smali.BLANK_LINE())
        block.append(smali.GOTO(smali.LABEL(1)))
        block.append(smali.BLANK_LINE())

        block.append(smali.LABEL(2))

        block.append(smali.BLANK_LINE())

    return block



def _look_for_individual_string(s):
    loc = StigmaState.Environment().get_temp_file().name
    grep_cmd = ["grep", "-r", "-I", "-H", s, loc]
    wc_cmd = ["wc", "-l"]
    
    grep_process = subprocess.Popen(grep_cmd, stdout=subprocess.PIPE)
    wc_process = subprocess.run(wc_cmd, stdin=grep_process.stdout, capture_output=True, text=True)

    grep_process.stdout.close()

    # decode is needed if text=True is False (the default) in 
    # the above call to subprocess.run()
    #count = completed_process.stdout.decode("utf-8") 

    count = wc_process.stdout.strip()
    print("\t\'" + s + "\' appears " + count + " times")


def look_for(strings):
    if(strings == []):
        return 
    
    if(os.name == "posix"):
        print("Searching for strings: " + str(strings))
        for s in strings:
            _look_for_individual_string(s)

    else:
        print("look_for(strings) is only available on Linux systems")



def main():
    
    Instrumenter.sign_up_launcher_activity_oncreate_start(new_method_handler, 7)

    # getPreferences comes from the activity, it is activity specific, so the FQN might be something like
    #       Lorg/telegram/MessageActivity;->getPreferences(I)Landroid/content/SharedPreferences;
    #
    # getSharedPreferences comes from any context so it's app wide (note, activity is a type of context), it allows you to specify the name
    # getDefaultSharedPreferences comes from the PreferenceManager and it is app-wide.
    #strings = ["getPreferences", "getSharedPreferences", "getDefaultSharedPreferences"]
    strings = [";->getPreferences(I)Landroid/content/SharedPreferences;", 
        "Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;", 
        "Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;",
        "Landroid/content/SharedPreferences;"]
    look_for(strings)


if __name__ == "__main__":
    main()


