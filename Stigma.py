
import sys
import time
import os
import subprocess
import importlib
import xml
import argparse
import tempfile

from lib import SmaliClassDef
import Instrumenter
import TaintStorageHandler
from lib import SmaliTypes
import Instrumenter
import StigmaState
from lib import SmaliCodeBase



def aapt2_helper():
    tmp_file_name = StigmaState.Environment().get_temp_file().name
    for root, dirs, files in os.walk(tmp_file_name):
        if "app-metadata.properties" in files:
            fh = open(os.path.join(root, "app-metadata.properties"), "r")
            lines = fh.readlines()
            target = lines[1].split("=")
            gradle_version = int(target[1][0])
            if gradle_version >= 3:
                return True
    return False 

def dumpApk(apk_path):
    # dump apk files
    tmp_file_name = StigmaState.Environment().get_temp_file().name
    start_time = time.time()
    # -f is necessary since temp_file already exists (apktool doesn't like that) 
    # -f means "force"
    cmd = ["java", "-jar", "pre-builts/apktool.jar", "d", apk_path, "-o", tmp_file_name, "-f"]
    if (os.name == "nt"):
        completed_process = subprocess.run(cmd, shell=True)
    elif (os.name == "posix"):
        completed_process = subprocess.run(cmd)
    completed_process.check_returncode()
    print("Apk unpacked in %.1f seconds" % (time.time() - start_time))

def findPlugin(p):
    # checks a few variations for the plugin name so Stigma is easier
    # to use on the command line.  For example
    # python3 Stigma.py SomeApp.apk -p DefaultSharedPreferencesPlugin works 
    # even though "DefaultSharedPreferencesPlugin.py" is in the plugin directory
    if (p != None):
        variations = []
        variations.append(p)
        variations.append(p + ".py")
        variations.append(os.path.join("plugin", os.path.basename(p)))
        variations.append(os.path.join("plugin", os.path.basename(p + ".py")))
        #print(variations)

        for v in variations:
            if (os.path.exists(v)):
                #print("Loading Plugin: " + str(v))
                return v
            
        plugin_path = os.path.abspath("plugin")
        print("Plugin file \'" + str(p) + "\' was not found or was not readable.\nPre-existing plugins can be found in " + plugin_path)
        exit(1)

def importPlugin(plugin_name):
    # https://mathieularose.com/plugin-architecture-in-python
    # https://docs.python.org/3/library/importlib.html

    # if the plugin is "plugin/DefaultSharedPreferencesPlugin.py"
    # then we need to import "plugin.DefaultSharedPreferencesPlugin"
    plugin_name = plugin_name.replace(".py", "")
    if (os.name == "nt"):
        # windowsOS
        plugin_name = plugin_name.replace("\\", ".") # i'm concerned they might have entered /path/from/root/to/plugin.py
    elif (os.name == "posix"):
        # macOS
        plugin_name = plugin_name.replace("/", ".")

    # plugin_name = plugin_name.replace("\\", ".")
    # plugin_name = plugin_name.replace(".\\", ".")
    print("Loading Plugin: " + str(plugin_name))
    mod = importlib.import_module(plugin_name)
    mod.main()

def _has_launcher_intent_filter(xml_element):
    for child in xml_element:
        if(child.tag == "intent-filter"):
            for grand_child in child:
                if(grand_child.tag == "category"):
                    if (grand_child.attrib['{http://schemas.android.com/apk/res/android}name'] == "android.intent.category.LAUNCHER"):
                        #print(grand_child)
                        return True
    return False
                    
def _parse_class_name(xml_element_name_attribute):
    class_name = "L" + xml_element_name_attribute + ";"
    class_name = class_name.replace(".", "/");
    c = SmaliTypes.from_string(class_name)
    return c

    
def get_launcher_activity_classes():
    tmp_file_name = StigmaState.Environment().get_temp_file().name
    manifest_path = os.path.join(tmp_file_name, "AndroidManifest.xml")
    #print("manifest path: " + manifest_path)
    xml_tree = xml.etree.ElementTree.parse(manifest_path)
    #print("tree: ", xml_tree)
    xml_tree = xml_tree.getroot()
    

    activities = xml_tree.findall("./application/activity")
    for act in activities:
        if(_has_launcher_intent_filter(act)):
            smali_obj_ref = _parse_class_name(act.attrib['{http://schemas.android.com/apk/res/android}name'])
            Instrumenter.add_new_launcher_class(smali_obj_ref)

    activity_aliases = xml_tree.findall("./application/activity-alias")
    for act in activity_aliases:
        if(_has_launcher_intent_filter(act)):
            smali_obj_ref = _parse_class_name(act.attrib['{http://schemas.android.com/apk/res/android}targetActivity'])
            Instrumenter.add_new_launcher_class(smali_obj_ref)

    #print(root)
    return Instrumenter.get_launcher_classes()


def get_package_name():
    tmp_file_name = StigmaState.Environment().get_temp_file().name
    manifest_path = os.path.join(tmp_file_name, "AndroidManifest.xml")
    #print("manifest path: " + manifest_path)
    xml_tree = xml.etree.ElementTree.parse(manifest_path)
    #print("tree: ", xml_tree)
    xml_tree = xml_tree.getroot()
    return xml_tree.attrib['package']
    


def count_non_blank_lines_of_code(path_to_directory):
    paths = SmaliCodeBase.SmaliCodeBase.findSmaliFiles(path_to_directory)
    num = 0
    for path in paths:
        fh = open(path, "r")
        for line in fh.readlines():
            if not line.isspace():
                num += 1
    return num      


def wrapString(string, wrapper):
    return wrapper + str(string) + wrapper





def runInstrumentation():
    start_time = time.time()
    print("Loading smali class files from disk")

    tmp_file = StigmaState.Environment().get_temp_file()
    scb = SmaliCodeBase.SmaliCodeBase(tmp_file.name)


    print("Instrumenting class files")
    total_files = len(scb.class_names)
    counter = 1
    for scd in scb.classes:

        # Progress bar
        print(f'...{str(counter)}/{str(total_files)}', end='\r')
        counter += 1

        # actual instrumentation
        scd.instrument()
        scd.overwrite_to_file()

    tmp_file_name = StigmaState.Environment().get_temp_file().name
    analytics_path = os.path.join(tmp_file_name, "analytics.dat")
    fh = open(analytics_path, "w")
    fh.write("Number of Comparisons: " + str(scb.comparison_instruction_count) + "\n")
    fh.write("Number of instructions in which there were not enough registers to properly instrument: " + str(scb.comparison_instruction_count))
    fh.close()

    print("Instrumentation of app finished in %.1f seconds" % (time.time() - start_time))



def writeStorageClasses():
    storage_handler = TaintStorageHandler.TaintStorageHandler.get_instance()
    # print(storage_handler)
    print("Creating Taint Storage Locations")
    temp_file = StigmaState.Environment().get_temp_file()
    path = os.path.join(temp_file.name, "smali", "net", "stigmastorage")
    os.makedirs(path, exist_ok=True)
    for storage_class in storage_handler.storage_classes:
        # print(path + storage_class.get_storage_class_name() + ".smali")
        full_path = os.path.join(path, storage_class.get_storage_class_name() + ".smali")
        with open(full_path, "w") as f:
            f.write(storage_class.generate_smali_class_text())


def extractPathParts(path, begin, end):
    # This crazy line does three things.
    # 1) split the given path on the "/" characters
    # "/path/to/the/file.txt" => ["path", "to", "the", file.txt"]
    #
    # 2) slice that list according to beginning and end.
    # Note: because begin and end are passed directly to the [:]
    # the same semantics hold.  begin is included, end is excluded,
    # and negative numbers can be used for "negative indexing"
    # begin = 1  and end = -1
    # ["to", "the"]
    #
    # 3) re-join the path using a "/"
    # "to/the"
    ans = "/".join(path.split("/")[begin:end])
    return ans


def splitSmali():
    print("Accounting For Constant Pool Limits")
    # There are separately enumerated and indexed constant pools for references to strings, types, fields, and methods.
    # https://source.android.com/devices/tech/dalvik/dalvik-bytecode

    # Our stigma instrumentation will add many fields and many classes
    # unfortunately, for a single smali_classesX folder there can only be
    # so many classes, so many fields in all the classes combined,
    # and so many methods in all classes combined .  We typically break
    # those limits.  So, we can resolve the issue by simply moving
    # some files to smali_classesX+1

    # basic algorithm is to place all smali files into a list
    # regardless of existing folder location (smali_classesX)
    # go through the list linearly and count the number of fields
    # in the classes, methods in the classes, and total number of
    # classes.  If any of those goes above THRESH
    # break the list at this point and designate all the files
    # until this point to be in smali_classesY (where Y increments)
    # each time the list is split up
    #
    # resultsLists = [file1, file2, file3] [file4, file5, file6, ...]
    #                                     ^
    #                                     |
    #                                split point
    # (number of fields in file1, 2, 3, and 4 combined is > THRESH)
    #

    THRESH = 32768  # probably isn't the correct threshold
    # max unsigned short: 65535
    # middle-ground: 16384 probably not relevant
    # max signed short: 32767
    # max unsigned byte: 255
    # max signed byte: 127
    path = StigmaState.Environment().get_temp_file().name
    smaliFiles = SmaliCodeBase.SmaliCodeBase.findSmaliFiles(path)

    # see the instructions that correspond to the 4 different
    # countable things: type_id, string_id, field_id,
    # http://pallergabor.uw.hu/androidblog/dalvik_opcodes.html
    # method_id does not exist in that file.  BUT, the
    totalFieldCount = 0
    totalMethodCount = 0

    # missing: strings, classes

    resultLists = []
    s = 0
    e = 0
    for idx, smaliFile in enumerate(smaliFiles):
        # print("file: " + str(smaliFile))
        print(f'...{str(idx)}/{str(len(smaliFiles))}', end='\r')

        scd = SmaliClassDef.SmaliClassDef(smaliFile)
        field_num = scd.get_num_field_declarations() + scd.get_num_field_references()
        method_num = scd.get_num_method_declarations() + scd.get_num_method_references()

        if (method_num > THRESH):
            # https://github.com/JesusFreke/smali/issues/301
            raise RuntimeError(
                "methods in " + str(smaliFile) + " is greater than threshold. " + str(method_num) + ">" + str(THRESH))

        if (field_num > THRESH):
            # https://github.com/JesusFreke/smali/issues/301
            raise RuntimeError(
                "methods in " + str(smaliFile) + " is greater than threshold. " + str(method_num) + ">" + str(THRESH))

        if ((totalFieldCount + field_num >= THRESH) or ((totalMethodCount + method_num) >= THRESH)):
            # do a break
            e = idx
            resultLists.append(smaliFiles[s:e])
            s = e

            # technical detail that's easy to miss / confuse
            # the file that broke the threshold
            # goes into the NEXT list
            totalFieldCount = field_num
            totalMethodCount = method_num


        else:
            totalFieldCount += field_num
            totalMethodCount += method_num

    print("...Re-arranging files")
    # print(str(len(resultLists)) + " groups")
    tmp_file_name = StigmaState.Environment().get_temp_file().name
    path = os.path.join(tmp_file_name, "smali")
    for idx, group in enumerate(resultLists):
        if (idx > 0):
            path = os.path.join(tmp_file_name, "smali_classes" + str(idx + 1))
            os.makedirs(path, exist_ok=True)

        # print("dir path: ", path)
        for smaliFile in group:
            newFolderPath = os.path.join(path, extractPathParts(smaliFile, 4, -1))
            os.makedirs(newFolderPath, exist_ok=True)
            newFileAbsPath = os.path.join(newFolderPath, os.path.basename(smaliFile))

            # Some characters need to be
            # escaped in bash shell.  For example
            # smali_classes2/edu/fandm/enovak/leaks/Main$1.smali
            # the $1 will be treated like a variable in bash unless
            # it is escaped or wrapped in quotes
            # refactored according to https://docs.python.org/3/library/subprocess.html
            # shell = true means things like "*" and "~" will be expanded in the shell
            # I DID NOT include shell=true, which means that shell=false.
            # This means that single-quotes or escaping $ is unnecessary.

            # sometimes the system determines that a file should result
            # in the place in which it already resides (smali_classes2 -> smali_classes2)
            # in those cases we don't want to do any mv at all.  Even with -n
            # mv will exit with an error, status 1
            if not os.path.exists(newFileAbsPath):
                os.rename(smaliFile, newFileAbsPath)


# rebuild apk
def rebuildApk(newAPKName, temp_directory_name):
    # rebuilds the apk
    start_time = time.time()

    temp_file = StigmaState.Environment().get_temp_file()
    # --use-aapt2
    # was found to be necessary in order to re-build myfitnesspal
    # to avoid error: invalid resource directory name: ...\res navigation
    # https://github.com/iBotPeaches/Apktool/issues/2219
    use_aapt2 = aapt2_helper()
    if (use_aapt2):
        pass
        #rebuildCMD = ["java", "-jar", "pre-builts/apktool.jar", "b", temp_file.name, "--use-aapt2", "-o", os.path.join(temp_directory_name, newAPKName)]
    #else:
    rebuildCMD = ["java", "-jar", "pre-builts/apktool.jar", "b", temp_file.name, "-o", os.path.join(temp_directory_name, newAPKName)]

    #print("Rebuilding:", rebuildCMD)
    if (os.name == "nt"):
        completedProcess = subprocess.run(rebuildCMD, shell=True)
    elif (os.name == "posix"):
        completedProcess = subprocess.run(rebuildCMD)
    try:
        completedProcess.check_returncode()
    except:
        print()
        print("Consider deleting framework files '~/.local/share/apktool/framework/1.apk'")
        response = input("continue?").lower()
        if(response != "y" and response != "yes"):
            exit(2)
    print("Apk packed in %.1f seconds" % (time.time() - start_time))

def alignApk(unalignedAPKName, modifiedAPKName, temp_directory_name):
    # https://pedrovhb.com/posts/fix_it_yourself/

    # find zipalign
    zipalign_path = "/lib/android-sdk/build-tools/debian/zipalign"
    if not os.path.exists(zipalign_path):
        zipalign_path = input("Zipalign not found in lib folder. Please manually input path to zipalign.")

    cmd = [zipalign_path, "4", os.path.join(temp_directory_name, unalignedAPKName), modifiedAPKName]
    subprocess.run(cmd)

def signApk(newAPKName):
    password = "MzJiY2ZjNjY5Z"
    password_bytes = (password + "\n").encode("utf-8")
    # print(password_bytes)
    keystore_name = "stigma-keys.keystore"
    stigma_alias = "stigma_keystore_alias"

    if (not os.path.exists(keystore_name)):
        # keytool -genkey -v -keystore my-release-key.keystore -alias alias_name -keyalg RSA -validity 10000
        cmd = ["keytool", "-genkey", "-keystore", keystore_name, "-alias", stigma_alias, "-keyalg", "RSA", "-validity",
               "10000"]
        proc = subprocess.Popen(" ".join(cmd), stdin=subprocess.PIPE, shell=True)

        proc.stdin.write(password_bytes)
        proc.stdin.write(password_bytes)
        proc.stdin.write(b"\n")
        proc.stdin.write(b"\n")
        proc.stdin.write(b"\n")
        proc.stdin.write(b"\n")
        proc.stdin.write(b"\n")
        proc.stdin.write(b"\n")
        proc.stdin.write(b"y\n")
        proc.communicate(b"\n")

    # print("Signing...")
    # apksigner sign --ks stigma-keys.keystore --ks-pass pass:MzJiY2ZjNjY5Z --ks-key-alias stigma_keystore_alias ./leak_detect_test/Tracked_StigmaTest.apk

    # find apksigner
    signer_path = "/lib/android-sdk/build-tools/debian/apksigner"
    if not os.path.exists(signer_path):
        signer_path = input("Apksigner not found in lib folder. Please manually input path to apksigner.")

    cmd = [signer_path, "sign", "--ks", keystore_name, "--ks-pass", "pass:"+password, "--ks-key-alias", stigma_alias, newAPKName]
    if (os.name == "nt"):
        cmd.insert(0, "bash")
        cmd[1] = "." + signer_path
        #print("Signing with apksigner:", cmd)
        completedProcess = subprocess.run(cmd, shell=True)
    elif (os.name == "posix"):
        completedProcess = subprocess.run(cmd)
    completedProcess.check_returncode()


def openWithThirdPartyProgram(filename):
    filename = os.path.basename(filename)
    temp_file = StigmaState.Environment().get_temp_file()
    cmd = ["find", temp_file.name, "-iname", filename, "-exec", "xdg-open", "{}", ";"] # only works on Linux for now!
    #print("cmd: " + str(cmd))
    subprocess.run(cmd)
    #input("Press Enter to Continue...")



def stigmaMainWorkflow(args):
    temp_APK = StigmaState.Environment().get_temp_file()
    print("Temp files at: " + str(temp_APK.name))

    start = time.time()

    dumpApk(args.APK)

    #ui = UI.UI(getFiles())
    #ui.launch()
    launchers = get_launcher_activity_classes()
    print("Launchers Found: " + str(launchers))
    #print("Launchers[0] type: " + str(type(launchers[0])))

    unalignedAPKName = "Unaligned_" + os.path.basename(args.APK)
    modifiedAPKName = "Modified_" + os.path.basename(args.APK)

    if(os.path.exists(modifiedAPKName)){
        print(modifiedAPKName + " already exists.  Deleting it now!")
        os.remove(modifiedAPKName)
    }

    dry_run = (args.plugin == None)
    if (not dry_run):
        importPlugin(args.plugin)
        runInstrumentation()
        writeStorageClasses() # necessary for TaintTracking plugins, should be part of those plugins' code
        #writeMarkedLocationClass() # necessary for some plugins should be part of those plugins' code
        splitSmali()

    # https://stackoverflow.com/questions/3223604/how-do-i-create-a-temporary-directory-in-python
    temp_directory = tempfile.TemporaryDirectory(prefix = "stigma_temp")

    #openWithThirdPartyProgram(launchers[0].get_object_smali_file_basename())
    rebuildApk(unalignedAPKName, temp_directory.name)
    alignApk(unalignedAPKName, modifiedAPKName, temp_directory.name)
    signApk(modifiedAPKName)

    end = time.time()

    print("Finished in %.1f seconds" % (end - start))
    print("Result: " + os.path.abspath(modifiedAPKName))

    # this input is here because it is helpful to keep the temporary files
    # around for debugging purposes.  In final release maybe remove it.
    print("\nTemp files at: " + str(temp_APK.name))
    input("Press Enter to Delete Temporary Files...")
    temp_APK.cleanup()
    temp_directory.cleanup()

    if (args.install_automatically):
        cmd = ["adb", "install", "-r", modifiedAPKName]
        print("\n" + str(cmd))
        input("Press Enter to Install Modified APK...")
        subprocess.run(cmd)

    #pkg_name = get_package_name()
    #print("\nPackage Name: " + pkg_name)
    #cmd = ["adb", "shell", "am", "start", "-n", pkg_name + "/" + str(launchers[0])]
    # The above cmd is: ['adb', 'shell', 'am', 'start', '-n', 'uk.co.broadbandspeedchecker/Luk/co/broadbandspeedchecker/activities/OnBoardingActivity;']
    # but needs to be: ['adb', 'shell', 'am', 'start', '-n', 'uk.co.broadbandspeedchecker/uk.co.broadbandspeedchecker.activities.OnBoardingActivity']
    #print(str(cmd))
    #input("Press Enter to Launch Modified APK...")
    #subprocess.run(cmd)


def main():

    parser = argparse.ArgumentParser(description='''Stigma: A tool for modifying the assembly code of closed source Android Apps.\n
                                     Example usage: python3 Stigma.py SomeApp.apk -p ./plugin/ExamplePlugin.py''')

    # required arguments
    parser.add_argument("APK", help="The path to the APK file to be modified")
    parser.add_argument("-p", "--plugin", type=str, nargs=1, help="A plugin which defines the modifications desired.  A python3 file.")

    # optional arguments
    parser.add_argument("-i", "--install-automatically", action="store_true", help="Automatically install the modified APK on a connected Android device using adb.")


    args = parser.parse_args()

    args.plugin = findPlugin(args.plugin[0])
    args.APK = SmaliCodeBase.SmaliCodeBase.findAPK(args.APK)

    stigmaMainWorkflow(args)


if __name__ == '__main__':
    main()



