# Stigma
Stigma instruments the Smali assembly code of commodity Android applications in order to implement dynamic information flow tracking. It is intended to be used as a sandbox for modifying android apps to test, amongst other things, a novel approach to implicit information flow tracking.

# Usage (Testing Stage)
py StigmaExecutor.py

Target apk should be in "apk" folder of the stigma directory
Consider modifiying the final lines in the "main" portion of StigmaExecutor to 
configure which aspects of Stigma you would like to execute.


### Necessary Dependencies
* apktool (available in Ubuntu repository and here: https://ibotpeaches.github.io/Apktool/)
  * openjdk-11-jdk
* adb (available in Ubuntu repository and here: https://www.lifewire.com/android-debug-bridge-adb-4149410)
  * official adb documentation: https://developer.android.com/studio/command-line/adb
