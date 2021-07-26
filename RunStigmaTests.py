import subprocess
import os
import time
import io
import re



STIGMA_GENERATED_MESSAGE = "LEAK via LOGD OCCURING!" # message stigma generates when it detects a leak
TEST_TAG_START = "D stigmatestapp" # start of each test's tag according to above format
END_REACHED_FLAG = "endstigmatestapp" # StigmaTestApp Logs this to help detect end of testing



def internal_tests():
    
    # TODO: fix the below so that it actually runs given the new paths

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

	print("\n--FINISHED RUNNING TESTS!--\n")

def main():
	
	internal_tests()
	input("continue? ")
	#print(StigmaRegEx.get_v_and_p_numbers("    iget v12, p6, Landroid/graphics/Rect;->bottom:I"))

	## Note: run emulator before running test

	# Clear logcat to remove past test logs

	clearLog = ["adb", "logcat", "-c"]
	completedProcess = subprocess.run(clearLog)
	completedProcess.check_returncode()

	# Reinstall instrumented StigmaTestApp (Note: Needs to be installed manually once)


	path = "./Tracked_StigmaTestApp.apk" # Change this path to instrumented StigmaTestApp APK

	# the -r means "re-install" it also means that
	# the permissions for the app are not wiped
	installApk = ["adb", "install", "-r", path]
	completedProcess2 = subprocess.run(installApk)
	completedProcess2.check_returncode()

	# Run StigmaTestApp and read tests from logcat
	runApk = ["adb", "shell", "am", "start", "-n", "com.example.stigmatestapp/com.example.stigmatestapp.MainActivity"]
	completedProcess3 = subprocess.run(runApk)
	completedProcess3.check_returncode()

	# Note: need to do os.system() (terminal) because subprocess.run() doesn't redirect stream to ReadLogCt.py. 
	# I assume because terminal parses commands differently from raw shell

	# -d means to "dump" i.e., just give all the logcat output up until this point 
	# and then stop the process
	#time.sleep(3)
	#os.system("adb logcat -d | python3 ReadLogCat.py")
	logcatProcess = subprocess.Popen(["adb", "logcat"], stdout=subprocess.PIPE)

	ReadLogCat(logcatProcess)



def ReadLogCat(logcatProcess):
	# LogCat reader for tests using Log.d as a simulated sink
 
	# Format for Log.d test tags: "app name" "test type" "data leaked"
	# Example: stigmatestapp sgetsput IMEI
	# Test tag must have D priority


    leak_occured = False
    print ("TESTING STARTED")
    print()
    for line in io.TextIOWrapper(logcatProcess.stdout, encoding="utf-8"): 
        if STIGMA_GENERATED_MESSAGE in line:
            leak_occured = True
                
        if TEST_TAG_START in line:
            #print(line)
            # Use test tag format to extract test type
            test_type = re.findall("D stigmatestapp (\S+) ", line)[0]
            print("Testing: " + test_type)
            
            if not leak_occured:
                print("Failed")
                print()
            else:
                print("Passed")
                print()
                leak_occured = False
           
        if END_REACHED_FLAG in line:
            #print(line)
            if leak_occured:
                print ("Some untested leak(s) occured")
                print()
            print ("TESTING ENDED")
            return



main()
