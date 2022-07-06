# Stigma
Stigma  is a framework for modifying / instrumenting commodity Android applications.  It instruments the Smali assembly code of a given .APK file in and runs any provided `plugins` which specify the exact changes (if any) that will be made.  Currently, there is only one (first party) plugin which implements dynamic information flow tracking to track the use of sensitive information such as IMEI number, GPS location information, and the device phone number.  Stigma is intended to be used as a toolkit to modify android apps for future research projects.


# Usage
###Setting the PATH environment variable (Windows only)
In the taskbar, search for and select "Edit the system environment variables":
<br/>![image](https://user-images.githubusercontent.com/107204379/177008087-cfa6b257-a629-40fe-a836-54a997240b11.png)


Select "Environmental Variables...":
<br/>![image](https://user-images.githubusercontent.com/107204379/177005885-582f066b-6f07-4106-87dd-93f9ae8c33e4.png)
<br/>

In the User variables, choose to "Edit" your "Path" variable:
<br/>![image](https://user-images.githubusercontent.com/107204379/177005926-2cb10396-a6ce-49aa-b5d6-91b495351cbc.png)
<br/>

"Browse" and locate the folder containing your install of openjdk-11-jdk, and hence its "bin" folder, which contains both "keytool" and "jarsigner":
<br/>![image](https://user-images.githubusercontent.com/107204379/177006414-08fab1f6-a1da-48c1-a172-6bce6887da4a.png)

###Obtaining a modified APK
Download an APK file to be run through Stigma. We recommend downloading from [https://www.apkmirror.com](https://www.apkmirror.com/) or [https://f-droid.org](https://f-droid.org/). 

Change the working directory to the folder containing Stigma.py by entering the following on the command line:
<br/>
`cd path/to/folder/containing/stigma`

Next, to run Stigma, do:
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
* Linux, MacOS or Windows environment
* python3
* apktool (available in Ubuntu repository ```apt install apktool``` and here: [https://ibotpeaches.github.io/Apktool/](https://ibotpeaches.github.io/Apktool/))
* openjdk-11-jdk (available at [https://docs.microsoft.com/en-us/java/openjdk/download](https://docs.microsoft.com/en-us/java/openjdk/download))
  * keytool (provided by above Ubuntu package and install)
  * jarsigner (provided by above Ubuntu package and install)
* adb (available in Ubuntu repository ```apt install adb``` and in the homebrew repository ```brew install android-platform-tools``` As well as [https://www.lifewire.com/android-debug-bridge-adb-4149410](https://www.lifewire.com/android-debug-bridge-adb-4149410))
  * official adb documentation: [https://developer.android.com/studio/command-line/adb](https://developer.android.com/studio/command-line/adb)
* aapt (available in Ubuntu repository ```apt install aapt``` and at [https://developer.android.com/studio/command-line/aapt2#download_aapt2](https://developer.android.com/studio/command-line/aapt2#download_aapt2))
* networkx version 2.5.1 (we recommend installing via pip3; see below).  Available in Ubuntu repository ```apt install python3-networkx```. Networkx source code is available here: [https://github.com/networkx/networkx](https://github.com/networkx/networkx)
* matplotlib version 3.1.2 (we recommend installing via pip3; see below).  Available in Ubuntu repository ```apt install python3-matplotlib```. Matplotlib source code is available here: [https://matplotlib.org/](https://matplotlib.org/)

Recommended installation method for networkx and matplotlib is to use `pip3`. Enter the following on the command line:

```pip3 install networkx```
```pip3 install matplotlib```

### Optional Dependencies
* pydot version 1.2.3 python3 module - to see control flow graphs ( `ControlFlowGraph.show()` ) (available in Ubuntu repository under python3-pydot)
* pip3 - to install other dependencies easily (available in Ubuntu reposiroty under python-pip3)


# Utilities and Auxiliary Programs

* `stigma/count_pools.sh` - Bash command line utility for counting the references to strings, types, fields, and methods.  Requires the installation of [the smali command line tool](https://github.com/JesusFreke/smali/).

* `stigma/valid_smali_instructions.txt` and `stigma/ValidSmaliInstrunctions.py` comprehensive collection of all valid smali opcode names.

* `stigma/app_check_eval.py` utility that searches for small collection of likely source function calls.  Takes a path to a folder (containing APKs) as input.
[](https://github.com/fmresearchnovak/stigma.git)
