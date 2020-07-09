import subprocess
import os
import time

start_time = time.time()

subprocess.call("apktool d ./apk/" + os.listdir("./apk")[0] + " -o apkOutput -f", shell=True)

print("Apk unpacked in " + str(time.time() - start_time) + " seconds")