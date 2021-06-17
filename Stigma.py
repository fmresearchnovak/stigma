from stigma import SmaliClassDef
import os
import time
import sys
from os import listdir
import subprocess
#import multiprocessing
from subprocess import Popen, PIPE
import shutil
import glob
import tempfile
from stigma import TaintStorageHandler


# https://docs.python.org/3/library/tempfile.html
temp_file = tempfile.TemporaryDirectory(prefix="apkOutput_")

def getOriginalAPKPath():
    if(not os.path.exists(sys.argv[1])):
        raise ValueError("Input file (" + sys.argv[1] + ") was not found or was not readable.")
    return sys.argv[1]


def getNewAPKName():
    name = os.path.basename(getOriginalAPKPath())
    return "Tracked_" + name


def dumpApk():
    #dump apk files
    start_time = time.time()
    # -f is necessary since temp_file already exists (apktool doesn't like that) 
    # -f means "force"
    cmd = ["apktool", "d", getOriginalAPKPath(), "-o", temp_file.name, "-f"]
    completed_process = subprocess.run(cmd)
    completed_process.check_returncode()
    print("Apk unpacked in %.1f seconds" % (time.time() - start_time))


def getFiles():

    #find relevant files (strong assumptions here!)
    # This first chunk basically is hard-coded to 
    # select the non-framework files written in the leaks
    # test-bed app.  The non-framework files are usually thought
    # of as "the code the developer actually wrote"
    # This chunk is for debugging purposes to debug stigma itself.
    
    #path1 = "./apkOutput/smali_classes2"
    #dirs = listdir(path1)

    #dirsExtracted = [s for s in dirs if s != "androidx" and s!= "android"]

    #path2 = path1 +"/" + dirsExtracted[0]

    #path3 = path2 +"/" + listdir(path2)[0]

    #path4 = path3 +"/" + listdir(path3)[0]

    #path5 = path4 +"/" + listdir(path4)[0]

    #smaliFiles = listdir(path5)

    #relevantFilePaths = [path5 + "/" + file for file in smaliFiles if file != "BuildConfig.smali" and file[:2] != "R$" and file != "R.smali"]
    # End of first chunk


    # beginning of second chunk
    # This gets all the files that end in ".smali" from the entire
    # application.  This assumes all of the framework files
    # as well as any files authored by the app developer.
    relevantFilePaths = glob.glob(temp_file.name + '/**/*.smali', recursive=True)
    #print(relevantFilePaths)
    # end of second chunk

    # This is just a quick sanity test.
    if(len(set(relevantFilePaths)) != len(relevantFilePaths)):
        print("There are duplicates!!")
        for item in relevantFilePaths:
            print(item)

        exit(1);
    # end of sanity test

    return relevantFilePaths

def count_non_blank_lines_of_code():
    paths = getFiles()
    num = 0
    for path in paths:
        fh = open(path, "r")
        for line in fh.readlines():
            if not line.isspace():
                num += 1
    return num

def wrapString(string, wrapper):
    return wrapper + str(string) + wrapper


def runStigma():
    print("Running Stigma")
    relevantFilePaths = getFiles()
    analytics_path = os.path.join(temp_file.name, getNewAPKName() + "_analytics.dat")
    
    scd_hashmap = {}
    start_time2 = time.time()
    #run stigma on all file paths
    print("...Parsing class files")
    for path in relevantFilePaths:
        #print("Parsing: " + str(path))
        scd = SmaliClassDef.SmaliClassDef(path)
        scd_hashmap[scd.class_name] = scd

    print("...Instrumenting class files")
    counter = 1
    total_files = len(scd_hashmap)
    for name in scd_hashmap.keys():
        # Do the actual instrumentation
        #print("Instrumenting: " + str(class_smali_file))
        scd = scd_hashmap[name]
        scd.other_scds = scd_hashmap
        #Progress bar
        print(f'...{str(counter)}/{str(total_files)}', end = '\r')
        counter += 1
        scd.instrument()
        
    
    print("...Overwriting smali classes")    
    for name in scd_hashmap.keys():
        #print("Overwriting: " + str(scd.file_name))
        scd = scd_hashmap[name]
        scd.overwrite_to_file()


    print("Stigma ran in %.1f seconds" % (time.time() - start_time2))

def writeStorageClasses():
    storage_handler = TaintStorageHandler.TaintStorageHandler.get_instance()
    #print(storage_handler)
    print("Creating Taint Storage Locations")
    path = os.path.join(temp_file.name, "smali", "net", "stigmastorage")
    os.makedirs(path, exist_ok=True)
    for storage_class in storage_handler.storage_classes:
        #print(path + storage_class.get_storage_class_name() + ".smali")
        full_path = os.path.join(path, storage_class.get_storage_class_name() + ".smali")
        with open(full_path , "w") as f:
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
    


    THRESH = 32768 # probably isn't the correct threshold
    # max unsigned short: 65535
    # middle-ground: 16384 probably not relevant
    # max signed short: 32767
    # max unsigned byte: 255
    # max signed byte: 127


    smaliFiles = getFiles()

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
        scd = SmaliClassDef.SmaliClassDef(smaliFile)
        field_num = scd.get_num_field_declarations() + scd.get_num_field_references()
        method_num = scd.get_num_method_declarations() + scd.get_num_method_references()
        
        
        if(method_num > THRESH):
            # https://github.com/JesusFreke/smali/issues/301
            raise RuntimeError("methods in " + str(smaliFile) + " is greater than threshold. " + str(method_num) + ">" + str(THRESH))
            
        if(field_num > THRESH):
            # https://github.com/JesusFreke/smali/issues/301
            raise RuntimeError("methods in " + str(smaliFile) + " is greater than threshold. " + str(method_num) + ">" + str(THRESH))

        if( (totalFieldCount + field_num >= THRESH) or ((totalMethodCount + method_num) >= THRESH)):
            
            if((totalMethodCount + method_num >= THRESH)):
                print("  ...crossing method threshold at:" + str(scd) + ":   " + str(totalMethodCount) + "->" + str(totalMethodCount + method_num))
                
            if((totalFieldCount + field_num >= THRESH)):
                print("  ...crossing field threshold at:" + str(scd) + ":   " + str(totalFieldCount) + "->" + str(totalFieldCount + field_num))
                
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
            totalFieldCount+=field_num
            totalMethodCount+=method_num

    print("...Re-arranging files")
    #print(str(len(resultLists)) + " groups")
    for idx, group in enumerate(resultLists):
        path = os.path.join(temp_file.name, "smali/")
        if(idx > 0):
            path = os.path.join(temp_file.name, "smali_classes" + str(idx+1) + "/")
            os.makedirs(path, exist_ok=True)

        for smaliFile in group:
            newFolderPath = path + extractPathParts(smaliFile, 4, -1)
            #print("newFolderPath: " + str(newFolderPath))
            #print("newFolderPath: " + newFolderPath)
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
            if(smaliFile != newFileAbsPath):
                os.rename(smaliFile, newFileAbsPath)

#rebuild apk
def rebuildApk():
    # dumps the apk file in current working directory
    start_time = time.time()
    newName = getNewAPKName()
    rebuildCMD = ["apktool", "b", temp_file.name, "-o", getNewAPKName()]
    completedProcess = subprocess.run(rebuildCMD)
    try:
        completedProcess.check_returncode()
    except:
        input("continue?")
    print("Apk packed in %.1f seconds" % (time.time() - start_time))


def signApk():
    password = "MzJiY2ZjNjY5Z"
    password_bytes = (password+"\n").encode("utf-8")
    #print(password_bytes)
    keystore_name = "stigma-keys.keystore"
    stigma_alias = "stigma_keystore_alias"
    
    if(not os.path.exists(keystore_name)):
        # keytool -genkey -v -keystore my-release-key.keystore -alias alias_name -keyalg RSA -validity 10000
        cmd = ["keytool", "-genkey", "-keystore", keystore_name, "-alias", stigma_alias, "-keyalg", "RSA", "-validity", "10000"]
        proc = Popen(" ".join(cmd), stdin=PIPE, shell=True)
        
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

    #print("Signing...")
    newAppName = getNewAPKName()
    #jarsigner -keystore stigma-keys.keystore -storepass MzJiY2ZjNjY5Z ./leak_detect_test/Tracked_StigmaTest.apk stigma_keystore_alias
    cmd = ["jarsigner", "-keystore", keystore_name, "-storepass", password, newAppName, stigma_alias]
    completedProcess = subprocess.run(cmd)
    completedProcess.check_returncode()


def deleteFiles():
    temp_file.cleanup()




if __name__ == '__main__':
    # we need a better interface haha!
    # Also ./apk should be a sys.argv param to the location of an APK file

    start = time.time()
    print("Working In: " + str(temp_file.name))
    dumpApk()
    runStigma()
    writeStorageClasses()
    splitSmali()
    rebuildApk()
    signApk()
    end = time.time()
    
    print("Finished in %.1f seconds" % (end - start))
    print("Result: " + os.path.abspath(getNewAPKName()))
    
    
    # this input is here because it is helpful to keep the temporary files
    # around for debugging purposes.  In final release maybe remove it.
    input("Press Enter to Delete Temporary Files: ")
    deleteFiles()


