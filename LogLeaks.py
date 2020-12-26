import subprocess
import os
import time
import io
import re
import csv
import sys
from datetime import datetime


STIGMA_GENERATED_MESSAGE = "LEAK via LOGD OCCURING!" # message stigma generates when it detects a leak
TEST_TAG_START = "D stigmatestapp" # start of each test's tag according to above format
END_REACHED_FLAG = "endstigmatestapp" # StigmaTestApp Logs this to help detect end of testing

sourceDict = {}
sourceDict['A'] = "IMEI"
sourceDict['B'] = "Phone Number"
sourceDict['C'] = "Location"

sinkDict = {}
sinkDict['Z'] = "Write"
sinkDict['Y'] = "Logd"

'''def internal_tests():

    cmd = ["python3", "VRegisterPool.py"]
    finished_proc = subprocess.run(cmd)
    finished_proc.check_returncode()

    cmd = ["python3", "StigmaStringParsingLib.py"]
    finished_proc = subprocess.run(cmd)
    finished_proc.check_returncode()

    cmd = ["python3", "SmaliMethodDef.py"]
    finished_proc = subprocess.run(cmd)
    finished_proc.check_returncode()

    # no tests in SmaliClassDef, I included it for robustness
    cmd = ["python3", "SmaliClassDef.py"]
    finished_proc = subprocess.run(cmd)
    finished_proc.check_returncode()

    cmd = ["python3", "SmaliAssemblyInstructions.py"]
    finished_proc = subprocess.run(cmd)
    finished_proc.check_returncode()

    # no tests in Instrumenter.py, I included it for robustness
    cmd = ["python3", "Instrumenter.py"]
    finished_proc = subprocess.run(cmd)
    finished_proc.check_returncode()

    print("\n--FINISHED RUNNING TESTS!--\n")'''

def main():
    ## Note: run emulator before running test

    # get apk path from console input
    if(not os.path.exists(sys.argv[1])):
        raise ValueError("Input file (" + sys.argv[1] + ") was not found or was not readable.")
        return sys.argv[1]

    path = sys.argv[1]

    # Clear logcat to remove past test logs
    clear_completed = False
    while not clear_completed:
        try:
            print("Clearing Logcat")
            clearLog = ["adb", "logcat", "-c"]
            completedProcess = subprocess.run(clearLog)
            completedProcess.check_returncode()
            clear_completed = True
        except Exception as e:
            print("Clear failed. Retrying...")
            #adb logcat -b all -c 
            clearLog = ["adb", "logcat", "-b", "all", "-c"]
            completedProcess = subprocess.run(clearLog)
            completedProcess.check_returncode()
    # Reinstall instrumented StigmaTestApp (Note: Needs to be installed manually once)

    # the -r means "re-install" it also means that
    # the permissions for the app are not wiped
    installApk = ["adb", "install", "-r", path]
    completedProcess2 = subprocess.run(installApk)
    completedProcess2.check_returncode()

    '''# Run StigmaTestApp and read tests from logcat
                runApk = ["adb", "shell", "am", "start", "-n", "com.example.stigmatestapp/com.example.stigmatestapp.MainActivity"]
                completedProcess3 = subprocess.run(runApk)
                completedProcess3.check_returncode()'''

    # -d means to "dump" i.e., just give all the logcat output up until this point 
    # and then stop the process
    #time.sleep(3)
    #os.system("adb logcat -d | python3 ReadLogCat.py")
    logcatProcess = subprocess.Popen(["adb", "logcat"], stdout=subprocess.PIPE)

    ReadLogCat(logcatProcess, path)



def ReadLogCat(logcatProcess, inputPath):
    # Logcat Leak Detection Protocol

    #Tag: STIGMA__

    #1st Pos:
    #A = Source
    #Z = Sink

    #2nd Pos:
    #A-N for sources
    #O-Z for sinks

    #A = IMEI
    #B = Phone Number

    #Z = Write
    #Y = Logd

    #remove apk extension with -4. make more robust
    outputPath = inputPath[:len(inputPath)-4] + "_Leaks.csv"

    
    if(not os.path.exists(outputPath)): #So we dont override previous data
        outputFile = open(outputPath, 'w', newline='')
        fieldnames = ['date_time', 'apk_path', 'source', 'sink']
        writer = csv.DictWriter(outputFile, fieldnames=fieldnames)

        writer.writeheader()

        outputFile.close()
    
    print ("LEAK DETECTION STARTED")
    print()
    for line in io.TextIOWrapper(logcatProcess.stdout, encoding="utf-8"): 
        if "STIGMAZ" in line:
            # Data leaked out of sink
            #So we can check csv file while LogLeaks is running
            outputFile = open(outputPath, 'a', newline='')
            fieldnames = ['date_time', 'apk_path', 'source', 'sink']
            writer = csv.DictWriter(outputFile, fieldnames=fieldnames)
            
            now = datetime.now()
            date_time = now.strftime("%m/%d/%Y, %H:%M:%S")
            sinkKey = re.findall("STIGMAZ(\S)", line)[0]
            sink = sinkDict[sinkKey]
            print("Wrote: ")
            print({'date_time' : date_time, 'apk_path': inputPath, 'source': '', 'sink': sink})
            print()
            writer.writerow({'date_time' : date_time, 'apk_path': inputPath, 'source': '', 'sink': sink})
            outputFile.close()

        if "STIGMAA" in line:
            # Data entered from source
            #So we can check csv file while LogLeaks is running
            outputFile = open(outputPath, 'a', newline='')
            fieldnames = ['date_time', 'apk_path', 'source', 'sink']
            writer = csv.DictWriter(outputFile, fieldnames=fieldnames)
            
            now = datetime.now()
            date_time = now.strftime("%m/%d/%Y, %H:%M:%S")
            sourceKey = re.findall("STIGMAA(\S)", line)[0]
            source = sourceDict[sourceKey]
            print("Wrote: ")
            print({'date_time' : date_time, 'apk_path': inputPath, 'source': source, 'sink': ''})
            print()
            writer.writerow({'date_time' : date_time, 'apk_path': inputPath, 'source': source, 'sink': ''})
            outputFile.close()



main()
