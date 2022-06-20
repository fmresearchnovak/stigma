# Stigma
Stigma  is a framework for modifying / instrumenting commodity Android applications.  It instruments the Smali assembly code of a given .APK file in and runs any provided `plugins` which specify the exact changes (if any) that will be made.  Currently, there is only one (first party) plugin which implements dynamic information flow tracking to track the use of sensitive information such as IMEI number, GPS location information, and the device phone number.  Stigma is intended to be used as a toolkit to modify android apps for future research projects.


# Usage
Enter the following on your command line
<br/>
`python3 Stigma.py /path/to/application.apk`

<br/>
A new APK file should be generated (and signed): `Tracked_application.apk` which can be installed / run on a device:

`adb install -r Tracked_application.apk`


The "tracked" version of the application will monitor the use of sensitive information (e.g., GPS coordinates) using the aforementioned first party plugin.  In the tracked version, if that sensitive information is transmitted over a network connection such as WiFi (i.e., "leaked") by the app, there will be an entry made in the Android logging system: logcat.  That entry will have the tag `STIGMA` and a short message indicating the nature of the event, e.g., 

`STIGMA, LEAK via WRITE() OCCURING!`

The user can then check the logcat for such `STIGMA` messages using Android Studio or `adb logcat` on computer connected to the device running the app.

### Limitations
Stigma has many limitations.  It can only track very limited sources of sensitive information (GPS, IMEI, Device Phone Number) and it can lose track of that sensitive information as the target application operates.  Additionally, the detection of network connections / transmission is very primitive and may not catch many instances.  Extensive future research and improvments are ongoing.

Stigma is currently ``beta'' software.  Numerous bugs and limitations exist, which limit broad compatibility with many Android apps.  It is intended to be a tool for computer science researchers working in (a) smali byte-code instrumentation or (b) dynamic information flow tracking.


### Necessary Dependencies
* Linux or MacOS environment.  Stigma might be compatible with Windows as well, but is untested.
* python3
* apktool (available in Ubuntu repository ```apt install apktool``` and here: [https://ibotpeaches.github.io/Apktool/](https://ibotpeaches.github.io/Apktool/))
* openjdk-11-jdk
  * keytool (provided by above Ubuntu package)
  * jarsigner (provided by above Ubuntu package)
* adb (available in Ubuntu repository ```apt install adb``` and in the homebrew repository ```brew install android-platform-tools``` As well as [https://www.lifewire.com/android-debug-bridge-adb-4149410](https://www.lifewire.com/android-debug-bridge-adb-4149410)
  * official adb documentation: [https://developer.android.com/studio/command-line/adb](https://developer.android.com/studio/command-line/adb)
* aapt (available in Ubuntu repository ```apt install aapt```)
* networkx version 2.5.1 (we recommend installing via pip3; see below).  Available in Ubuntu repository ```apt install python3-networkx``` networkx source code is available here: [https://github.com/networkx/networkx](https://github.com/networkx/networkx)
* matplotlib version 3.1.2 (we recommend installing via pip3; see below).  Available in Ubuntu repository ```apt install python3-matplotlib```  matplotlib source code is available here: [https://matplotlib.org/](https://matplotlib.org/)

Recommended installation method for networkx and matplotlib is to use `pip3`

```pip3 install networkx```
```pip3 install matplotlib```

### Optional Dependencies
* pydot version 1.2.3 python3 module - to see control flow graphs ( `ControlFlowGraph.show()` ) (available in Ubuntu repository under python3-pydot)
* pip3 - to install other dependencies easily (available in Ubuntu reposiroty under python-pip3)



# Troubleshooting

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

Also, it may be necessary to NOT use the Ubuntu provided version of apktool.  Use the publicly available one instead: [https://ibotpeaches.github.io/Apktool/](https://ibotpeaches.github.io/Apktool/)


# Utilities and Auxiliary Programs

* `stigma/count_pools.sh` - Bash command line utility for counting the references to strings, types, fields, and methods.  Requires the installation of [the smali command line tool](https://github.com/JesusFreke/smali/).

* `stigma/valid_smali_instructions.txt` and `stigma/ValidSmaliInstrunctions.py` comprehensive collection of all valid smali opcode names.

* `stigma/app_check_eval.py` utility that searches for small collection of likely source function calls.  Takes a path to a folder (containing APKs) as input.
[](https://github.com/fmresearchnovak/stigma.git)
