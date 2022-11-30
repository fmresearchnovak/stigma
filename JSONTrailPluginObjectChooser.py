import os
import sys
import glob
import tempfile
import subprocess
import re

import StigmaStringParsingLib



# https://docs.python.org/3/library/tempfile.html
temp_file = tempfile.TemporaryDirectory(prefix="apkOutput_")



def getOriginalAPKPath():
    if (not os.path.exists(sys.argv[1])):
        raise ValueError("Input file (" + sys.argv[1] + ") was not found or was not readable.")
    return sys.argv[1]


def getNewAPKName():
    name = os.path.basename(getOriginalAPKPath())
    return "Tracked_" + name


def dumpApk():
    # dump apk files
    # -f is necessary since temp_file already exists (apktool doesn't like that) 
    # -f means "force"
    cmd = ["java", "-jar", "include/apktool.jar", "d", getOriginalAPKPath(), "-o", temp_file.name, "-f"]
    if (os.name == "nt"):
        completed_process = subprocess.run(cmd, shell=True)
    elif (os.name == "posix"):
        completed_process = subprocess.run(cmd)
    completed_process.check_returncode()

    


def getFiles():
    # find relevant files (strong assumptions here!)
    # This first chunk basically is hard-coded to
    # select the non-framework files written in the leaks
    # test-bed app.  The non-framework files are usually thought
    # of as "the code the developer actually wrote"
    # This chunk is for debugging purposes to debug stigma itself.

    # path1 = "./apkOutput/smali_classes2"
    # dirs = listdir(path1)

    # dirsExtracted = [s for s in dirs if s != "androidx" and s!= "android"]

    # path2 = path1 +"/" + dirsExtracted[0]

    # path3 = path2 +"/" + listdir(path2)[0]

    # path4 = path3 +"/" + listdir(path3)[0]

    # path5 = path4 +"/" + listdir(path4)[0]

    # smaliFiles = listdir(path5)

    # relevantFilePaths = [path5 + "/" + file for file in smaliFiles if file != "BuildConfig.smali" and file[:2] != "R$" and file != "R.smali"]
    # End of first chunk

    # beginning of second chunk
    # This gets all the files that end in ".smali" from the entire
    # application.  This assumes all of the framework files
    # as well as any files authored by the app developer.
    relevantFilePaths = glob.glob(temp_file.name + '/**/*.smali', recursive=True)
    # print(relevantFilePaths)
    # end of second chunk

    # This is just a quick sanity test.
    if (len(set(relevantFilePaths)) != len(relevantFilePaths)):
        print("There are duplicates!!")
        for item in relevantFilePaths:
            print(item)

        exit(1);
    # end of sanity test

    return relevantFilePaths





    
def buildObjectsSet():
    
    smaliFilePaths = getFiles()
    objects_set = set()
    #print("smaliFilePaths:" + str(smaliFilePaths))
    for path in smaliFilePaths:
        fh = open(path, "r")
        lines = fh.readlines()
        fh.close()
        
        for line in lines:
            #print("line: " + line)
            matches = re.findall(StigmaStringParsingLib.OBJECT, line)
            #print("matches: " + str(matches))
            objects_set.update(matches)
            
    return objects_set
    




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


def deleteFiles():
    temp_file.cleanup()


if __name__ == '__main__':
    # we need a better interface haha!
    # Also ./apk should be a sys.argv param to the location of an APK file
    deleteFiles()
    if (len(sys.argv) >= 3):
        dry_run = "--dry-run" in sys.argv[2:]
    else:
        dry_run = False


    dumpApk()
    objs = buildObjectsSet()
    
    for obj in objs:
        print(obj)



