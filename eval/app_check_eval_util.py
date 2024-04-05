#!/usr/bin/env python3

# Takes a file path as input, lists all the APKs found within
# that filepath (recursive) that contains calls to any of
# the "source" functions such as "getLatitude()"


import subprocess
import os
import tempfile
import sys
import glob


folder = sys.argv[1]
APKS = glob.glob(folder + '/**/*.apk', recursive=True)
print("APKS: " + str(APKS))


apps_with_source_functions = []
fh = open("apps_with_sources.txt", "w")


for pkg_path in APKS:
    temp_file = tempfile.TemporaryDirectory(prefix="apkOutput_")
    print("working in: " + str(temp_file.name))
    
    cmd = ["apktool", "d", pkg_path, "-o", temp_file.name, "-f"]
    print(cmd)
    pkg = os.path.basename(pkg_path)
    
    try:
        completed_process = subprocess.run(cmd)
        completed_process.check_returncode()
        
        cmd = ["apktool", "b", temp_file.name, "-o", temp_file.name + "/" + "rebuilt.apk"]
        completed_process = subprocess.run(cmd)
        completed_process.check_returncode()

        search_cases = ["-e", "\"getLatitude()D\"",
            "-e", "\"getLongitude()D\"",
            "-e", "\"getLastKnownLocation(Ljava/lang/String;)Landroid/location/Location;\"",
            "-e", "\"getDeviceId()Ljava/lang/String;\"",
            "-e", "\"getLine1Number()Ljava/lang/String;\""]
            #"-e", "\"Ljava/lang/String;\""] ## REMOVE THIS ONE!!!!!!!!
            

        cmd = ["grep", "--recursive", "--line-number", "--ignore-case"]
        cmd = cmd + search_cases
        cmd = cmd + [temp_file.name + "/" + "*"] # all files
        print(" ".join(cmd))
        # grep --recursive --line-number --ignore-case -e "getLatitude()D" -e "getLongitude()D" -e "getLastKnownLocation(Ljava/lang/String;)Landroid/location/Location;" -e "getDeviceId()Ljava/lang/String;" -e "getLine1Number()Ljava/lang/String;" /tmp/apkOutput_suls5u7s/*
        completed_process = subprocess.run(" ".join(cmd), shell=True, stdout=subprocess.PIPE, stderr=subprocess.PIPE)
        #print("completed_process: " + str(completed_process))
        if(completed_process.stdout != b''):
            print("pkg has some")
            print(str(completed_process.stdout))
            apps_with_source_functions.append(pkg)
        
            fh.write(str(pkg) + "\n")
            

    except subprocess.CalledProcessError as CPE:
        print("Error Processing APK")
        print("CPE: " + str(CPE))


    #input("continue?")
    temp_file.cleanup()

fh.close()


print(apps_with_source_functions)
fh = open("apps_with_sources_final.txt", "w")
for item in apps_with_source_functions:
    fh.write(str(item) + "\n")
fh.close()
