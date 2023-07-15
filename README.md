# Stigma
Stigma  is a framework for modifying / instrumenting commodity Android applications.  It instruments the Smali assembly code of a given .APK file in and runs any provided `plugins` which specify the exact changes (if any) that will be made.  Currently, there are two (first party) plugins. One implements dynamic information flow tracking to track the use of sensitive information such as IMEI number, GPS location information, and the device phone number.  The other carries out Object Extraction on the APK in question, allowing for a more general-purpose use for Stigma. Stigma is intended to be used as a toolkit to modify android apps for future research projects.

### Installing Dependencies
* You need to be using Linux, MacOS or Windows environment
1. Have python3 installed
2. Install apktool (available in Ubuntu repository
   ```apt install apktool```
   and here: [https://ibotpeaches.github.io/Apktool/](https://ibotpeaches.github.io/Apktool/))
3. Install openjdk-11-jdk or newer (latest version available at [https://docs.microsoft.com/en-us/java/openjdk/download](https://docs.microsoft.com/en-us/java/openjdk/download))
  * keytool (provided by above Ubuntu package and install)
  * jarsigner (provided by above Ubuntu package and install)
4. Install adb (available in Ubuntu repository
   ```apt install adb```
   and in the homebrew repository
   ```brew install android-platform-tools```
   As well as [https://www.lifewire.com/android-debug-bridge-adb-4149410](https://www.lifewire.com/android-debug-bridge-adb-4149410))
  * official adb documentation: [https://developer.android.com/studio/command-line/adb](https://developer.android.com/studio/command-line/adb)
5. Install aapt (available in Ubuntu repository
   ```apt install aapt```
   and at [https://developer.android.com/studio/command-line/aapt2#download_aapt2](https://developer.android.com/studio/command-line/aapt2#download_aapt2))
6. Install networkx version 2.5.1 (we recommend installing via pip3; see below).  Available in Ubuntu repository
   ```apt install python3-networkx```
   Networkx source code is available here: [https://github.com/networkx/networkx](https://github.com/networkx/networkx)
7. Install matplotlib version 3.1.2 (we recommend installing via pip3; see below).  Available in Ubuntu repository
   ```apt install python3-matplotlib```
   Matplotlib source code is available here: [https://matplotlib.org/](https://matplotlib.org/)
8. Android Build Tools (`build-tools`) version 32.0.0 ([ref](https://developer.android.com/studio/releases/build-tools)). Android does not distribute Build Tools individually so the one have to install the Android SDK in which Build Tools are included. The Android SDK is available via the [Android Studio](https://developer.android.com/studio) SDK Manager. After installing the SDK from the SDK Manager in Android Studio, you also need to put the path including `apksigner` into your `PATH` environment variable. To do this,
    1. Find your Android SDK root directory.
       - On macOS, this is typically at `~/Library/Android/sdk`.
       - On Windows, this is typically at `C:\Users\YOUR_USERNAME\AppData\Local\Android\Sdk`.
       - On Linux, this is typically at `~/Android/Sdk`.
       - *Check Android Studio's SDK Manager settings to confirm.*
    2. Find the `build-tools` directory under your Android SDK root directory.
       - On macOS, this is typically at `~/Library/Android/sdk/build-tools/32.0.0`.
       - On Windows, this is typically at `C:\Users\YOUR_USERNAME\AppData\Local\Android\Sdk\build-tools\32.0.0`.
       - On Linux, this is typically at `~/Android/Sdk/build-tools/32.0.0`.
    3. Add the `build-tools` directory to your `PATH` environment variable.
       - On macOS, you can add `export PATH=$PATH:~/Library/Android/sdk/build-tools/32.0.0` to your `~/.bash_profile` or your shell's equivalent configuration file.
       - On Windows, add `C:\Users\YOUR_USERNAME\AppData\Local\Android\Sdk\build-tools\32.0.0` to your `PATH` environment variable.
       - On Linux, add `export PATH=$PATH:~/Android/Sdk/build-tools/32.0.0` to your `~/.bashrc`, `~/.profile`, `~/.bash_profile`, or your shell's equivalent configuration file.

Recommended installation method for networkx and matplotlib is to use `pip3`. Enter the following on the command line:
```pip3 install networkx```
```pip3 install matplotlib```

### Optional Dependencies
* Android Studio - to view logcat easily (available at [https://developer.android.com/studio](https://developer.android.com/studio))
* pydot version 1.2.3 python3 module - to see control flow graphs ( `ControlFlowGraph.show()` ) (available in Ubuntu repository under python3-pydot)
* pip3 - to install other dependencies easily (available in Ubuntu repository under python-pip3). If you're running python 3.4+, you automatically have `pip3` and hence, do not need to install it.


# Usage
### Obtaining a modified APK file
Download an APK file to be run through Stigma. We recommend downloading from [https://www.apkmirror.com](https://www.apkmirror.com/) or [https://f-droid.org](https://f-droid.org/). 

Change the working directory to the folder containing Stigma.py by entering the following on the command line:
<br/>
`cd path/to/folder/containing/stigma`

Next, to run Stigma, do:
<br/>
`python3 Stigma.py /path/to/application.apk`
<br/>

A new APK file should be generated (and signed): Tracked_application.apk

### Running modified APK file on your Android Phone

Ensure that developer options are turned on (run-through below). Additionally, ensure `adb` is downloaded and on PATH (run-through below).

Provide wired connection of Android Phone with computer containing Stigma. Ensure `adb` recognizes Android Phone by entering the following on the command line:

`adb devices` 

Install / run the modified APK:

`adb install -r Tracked_application.apk`

The "tracked" version of the application will monitor the use of sensitive information (e.g., GPS coordinates) using the aforementioned first party plugin.  In the tracked version, if that sensitive information is transmitted over a network connection such as WiFi (i.e., "leaked") by the app, there will be an entry made in the Android logging system: logcat.  That entry will have the tag `STIGMA` and a short message indicating the nature of the event, e.g., 

`STIGMA, LEAK via WRITE() OCCURING!`

The user can then check the logcat for such `STIGMA` messages using Android Studio or `adb logcat` on computer connected to the device running the app.

To stress-test the modified APK file and obtain potential logcat entries, run the Monkey program (sample script present in `monkey-basic.sh`). Replace "edu.fandm.novak" with package name of the app in question. Search for the app on Google Play Store, obtain the package name from the url (present after "?id=")

### Enabling Developer Options on Android Phone
The following tutorial is on an OPPO A96. Options will be similar across the board for other Android phones.

In Settings, open "About Phone":
<br/><img src="https://user-images.githubusercontent.com/107204379/181112025-4b0ec3ae-ea66-4c94-b206-691b16b1271d.png" width=50% height=50%>

Open Version:
<br/><img src="https://user-images.githubusercontent.com/107204379/181112693-eb8b4db8-bcea-4ae8-aff2-5305f45cfd32.png" width=50% height=50%>

Tap on Build number 7 times. You will eventually receive a confirmation for Developer mode, similar to the one shown below:
<br/><img src="https://user-images.githubusercontent.com/107204379/181112972-8aea60f4-c24a-4d02-8c87-5686354ed9bb.png" width=50% height=50%>

### Setting the PATH environment variables (Windows only)
Set up both `adb` and the `openjdk` tools (`keytool` and `jarsigner`) as PATH environment variables, with the following tutorial showing a specific example for the `openjdk` tools.
<br/>

In the taskbar, search for and select "Edit the system environment variables":
<br/><img src="https://user-images.githubusercontent.com/107204379/181110595-a74759ee-2107-4d76-9a4d-2c986cea5968.png" width=50% height=50%>

Select "Environmental Variables...":
<br/><img src="https://user-images.githubusercontent.com/107204379/177005885-582f066b-6f07-4106-87dd-93f9ae8c33e4.png" width=50% height=50%>
<br/>

In the User variables, choose to "Edit" your "Path" variable:
<br/><img src="https://user-images.githubusercontent.com/107204379/177005926-2cb10396-a6ce-49aa-b5d6-91b495351cbc.png" width=50% height=50%>
<br/>

"Browse" and locate the folder containing your install of openjdk, and hence its "bin" folder, which contains both "keytool" and "jarsigner":
<br/><img src="https://user-images.githubusercontent.com/107204379/177006414-08fab1f6-a1da-48c1-a172-6bce6887da4a.png" width=50% height=50%>


### Limitations
Stigma has many limitations.  It can only track very limited sources of sensitive information (GPS, IMEI, Device Phone Number) and it can lose track of that sensitive information as the target application operates.  Additionally, the detection of network connections / transmission is very primitive and may not catch many instances.  Extensive future research and improvments are ongoing.

Stigma is currently "beta" software.  Numerous bugs and limitations exist, which limit broad compatibility with many Android apps.  It is intended to be a tool for computer science researchers working in (a) smali byte-code instrumentation or (b) dynamic information flow tracking.



# Utilities and Auxiliary Programs

* `stigma/count_pools.sh` - Bash command line utility for counting the references to strings, types, fields, and methods.  Requires the installation of [the smali command line tool](https://github.com/JesusFreke/smali/).

* `stigma/valid_smali_instructions.txt` and `stigma/ValidSmaliInstrunctions.py` comprehensive collection of all valid smali opcode names.

* `stigma/app_check_eval.py` utility that searches for small collection of likely source function calls.  Takes a path to a folder (containing APKs) as input.
[](https://github.com/fmresearchnovak/stigma.git)
