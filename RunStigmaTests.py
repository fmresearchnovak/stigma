import subprocess
import os
import time

## Note: run emulator before running test

# Clear logcat to remove past test logs

clearLog = ["adb", "logcat", "-c"]
completedProcess = subprocess.run(clearLog)
completedProcess.check_returncode()

# Reinstall instrumented StigmaTestApp (Note: Needs to be installed manually once)

uninstallApk = ["adb", "uninstall", "com.example.stigmatestapp"]
completedProcess1 = subprocess.run(uninstallApk)
completedProcess1.check_returncode()

path = "./TrackedStigmaTestApp.apk" # Change this path to instrumented StigmaTestApp APK

installApk = ["adb", "install", path]
completedProcess2 = subprocess.run(installApk)
completedProcess2.check_returncode()

# Run StigmaTestApp and read tests from logcat

runApk = ["adb", "shell", "am", "start", "-n", "com.example.stigmatestapp/com.example.stigmatestapp.MainActivity"]
completedProcess3 = subprocess.run(runApk)
completedProcess3.check_returncode()

# Note: need to do os.system() (terminal) because subprocess.run() doesn't redirect stream to ReadLogCt.py. 
# I assume because terminal parses commands differently from raw shell
time.sleep(3)
os.system("adb logcat -d | python3 ReadLogCat.py")
