# Stigma
Stigma instruments the Smali assembly code of commodity Android applications in order to implement dynamic information flow tracking. It is intended to be used as a sandbox for modifying android apps to test, amongst other things, a novel approach to implicit information flow tracking.

# Usage
`python3 Stigma.py /path/to/application.apk`

<br/>
A new APK file should be generated (and signed): `Tracked_application.apk` which can be installed / run on a device:

`adb install -r Tracked_application.apk`


The "tracked" version of the application will monitor the use of sensitive information (e.g., GPS coordinates).  In the tracked version, if that sensitive information is transmitted over a network connection such as WiFi (i.e., "leaked") by the app, there will be an entry made in the logcat.  That entry will have the tag `STIGMAXY` and a short message indicating that a leak is occurring.

`STIGMAXY, LEAK via WRITE() OCCURING!`

Note, the `X` and `Y` above are variables that encode the type of leak.  The user can then check the logcat for `STIGMA` messages using Android Studio or `adb` on a second computer, or using a logcat reader application directly on the phone / device.

### Limitations
Stigma has many limitations.  It can only track very limited sources of sensitive information (GPS, IMEI, Device Phone Number) and it can lose track of that sensitive information as the target application operates.  Additionally, the detection of network connections / transmission is very primitive and may not catch many instances.  Extensive future research work and improvments are planned / ongoing.


### Necessary Dependencies
* Linux or MacOS environment.  Code might be compatible on Windows as well, but is untested.
* python3
* apktool (available in Ubuntu repository and here: https://ibotpeaches.github.io/Apktool/)
* networkx version 2.5.1 (we recommend installing via pip3; see below).  networkx source code is available here: https://github.com/networkx/networkx)
* matplotlib version 3.1.2 (available in Ubuntu repository under python3-matplotlib).  https://matplotlib.org/
* openjdk-11-jdk
  * keytool (provided by above Ubuntu package)
  * jarsigner (provided by above Ubuntu package)
* adb (available in Ubuntu repository and here: https://www.lifewire.com/android-debug-bridge-adb-4149410)
  * official adb documentation: https://developer.android.com/studio/command-line/adb
  * Tested with Android Debug Bridge version 1.0.41 (Version 30.0.4-6686687)

* aapt (available in Ubuntu repository)




# Troubleshooting

Stigma is currently ``beta'' software.  Numerous bugs and limitations exist, which limit broad compatibility with many Android apps.  It is intended to be a tool intended for computer science researchers in (a) smali byte-code instrumentation or (b) dynamic information flow channel.

### APKTOOL issues
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

Also, it may be necessary to NOT use the Ubuntu provided version of apktool.  Use the publicly available one instead: https://ibotpeaches.github.io/Apktool/


### NetworkX installation
Recommened installation method for NetworkX is to use `pip3` on Ubuntu 

```pip3 install networkx```


# Utilities and Auxiliary Programs

* `stigma/count_pools.sh` - Bash command line utility for counting the references to strings, types, fields, and methods.  Requires the installation of [the smali command line tool](https://github.com/JesusFreke/smali/).

* `stigma/valid_smali_instructions.txt` and `stigma/ValidSmaliInstrunctions.py` comprehensive collection of all valid smali opcode names.

* `stigma/app_check_eval.py` utility that searches for small collection of likely source function calls.  Takes a path to a folder (containing APKs) as input.