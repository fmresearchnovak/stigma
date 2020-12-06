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
  * keytool (provided by above Ubuntu package)
  * jarsigner (provided by above Ubuntu package)
* adb (available in Ubuntu repository and here: https://www.lifewire.com/android-debug-bridge-adb-4149410)
  * official adb documentation: https://developer.android.com/studio/command-line/adb
* aapt (available in Ubuntu repository)




# Troubleshooting
Suppose when re-building (apktool b) there is an error of this nature:

```
	W: /home/username/tmp/Leaks/AndroidManifest.xml:1: error: No resource identifier found for attribute 'compileSdkVersion' in package 'android'
	W: 
	W: /home/username/tmp/Leaks/AndroidManifest.xml:1: error: No resource identifier found for attribute 'compileSdkVersionCodename' in package 'android'
	W: 
	W: /home/username/tmp/Leaks/AndroidManifest.xml:7: error: No resource identifier found for attribute 'appComponentFactory' in package 'android'
	W: 
	brut.androlib.AndrolibException: brut.common.BrutException: could not exec (exit code = 1): [/tmp/brut_util_Jar_10922350772426511021.tmp, p, --forced-package-id, 127, --min-sdk-version, 21, --target-sdk-version, 28, --version-code, 1, --version-name, 1.2.1, --no-version-vectors, -F, /tmp/APKTOOL5520383323475068535.tmp, -e, /tmp/APKTOOL1571483018594600943.tmp, -0, arsc, -I, /home/username/.local/share/apktool/framework/1.apk, -S, /home/username/tmp/Leaks/res, -M, /home/username/tmp/Leaks/AndroidManifest.xml]
```

Then you should do: 

`rm -r ~/.local/share/apktool/`
