# Stigma
Stigma  is a framework for modifying / instrumenting commodity Android application APKs.  It allows users to define and integrate plugins, which specify the exact changes to be made.  Currently, there are several (first party) plugins found in the ```plugin/``` directory.

Stigma is currently **alpha** software. Numerous bugs and limitations exist, which limit broad compatibility with many Android apps. It is intended to be a tool for computer science researchers working in smali byte-code instrumentation or dynamic information flow tracking. 

### Table of Contents
1. [Dependencies](#dependencies)
2. [Optional Dependencies](#optional-dependencies)
3. [Usage](#usage)
4. [Windows Support](#windows)
5. [Utilities and Auxiliary Programs](#utilities-and-auxiliary-programs)

### Dependencies
1. One of the following Operating Systems: Linux (Ubuntu 22.04 is best supported) or MacOS
1. Python 3.x (Python 3.12 is recommended)
1. Python module dependencies (```pip install -r requirements.txt```)
3. OpenJDK 21 or newer (available in the Ubuntu repository ```apt install openjdk-21-jdk``` or the latest version available at [https://docs.microsoft.com/en-us/java/openjdk/download](https://docs.microsoft.com/en-us/java/openjdk/download))
     * keytool (*provided by openjdk-21-jdk Ubuntu package*)
     * jarsigner (*provided by openjdk-21-jdk Ubuntu package*)


It is recommended to use a virtual environment for easier python module dependency resolution.  
`$ cd /path/to/stigma/`  
`$ python3 -m venv .venv`  
`$ source .venv/bin/activate`  
`$ pip install -r requirements.txt`  




### Optional Dependencies
* ADB for installing APK files onto a device or emulator (available in Ubuntu repository
   ```apt install adb```
   and in the homebrew repository
   ```brew install android-platform-tools```
   as well as [https://www.lifewire.com/android-debug-bridge-adb-4149410](https://www.lifewire.com/android-debug-bridge-adb-4149410))
     * official adb documentation: [https://developer.android.com/studio/command-line/adb](https://developer.android.com/studio/command-line/adb)
* AAPT for part of the application unpacking and repacking done by Stigma (available in Ubuntu repository
   ```apt install aapt```
   and at [https://developer.android.com/studio/command-line/aapt2#download_aapt2](https://developer.android.com/studio/command-line/aapt2#download_aapt2))

* Android Studio - to use the build tools and to view logcat easily (available at [https://developer.android.com/studio](https://developer.android.com/studio))
   * Android does not distribute the Build Tools individually.  They are available as part of the android SDK, which can most easily be acquired via [Android Studio](https://developer.android.com/studio).  Use the SDK Manager from within android studio to install a recent version of the SDK which will include the build tools. After installing the SDK from the SDK Manager in Android Studio, you may want to put the path including `apksigner` into your `PATH` environment variable. To do this,
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
* pydot version 1.2.3 python3 module - to see control flow graphs ( `ControlFlowGraph.show()` ) (available in Ubuntu repository under python3-pydot)


### Usage
`$ cd /path/to/stigma`  
`$ source .venv/bin/activate`  (*Necessary if virtual environment is being used*)  
`$ python3 Stigma.py /path/to/some_app.apk -p ExamplePlugin`  

You likely need to download some APK file to be run through Stigma. We recommend downloading from [https://www.apkmirror.com](https://www.apkmirror.com/) or [https://f-droid.org](https://f-droid.org/). 

After successfully running, a new APK file should be generated (and signed): `Modified_some_app.apk`  

You can run this APK on an emulator or physical device.  Using the ExamplePlugin you should be able to see "Stigma" and "Example Plugin" appear in the logcat.


### Running modified APK file on your Android Phone

Ensure that developer options are turned on (run-through below). Additionally, ensure `adb` is downloaded and on PATH (run-through below).

Provide wired connection of Android Phone with computer containing Stigma. Ensure `adb` recognizes Android Phone by entering the following on the command line:

`adb devices` 

Install / run the modified APK:

`adb install -r Modified_some_app.apk`

Use command line option `-i` or `--install-automatically` to have Stigma.py automatically run the command above when the instrumentation process is finished.

Most plugins insert LogCat messages into the app that can be viewed by searching for the keyword ``Stigma''.  Please consider the source code of the plugin you're using.

### Enabling Developer Options on Android Phone
The following tutorial is on an OPPO A96. Options will be similar across the board for other Android phones.

In Settings, open "About Phone":
<br/><img src="https://user-images.githubusercontent.com/107204379/181112025-4b0ec3ae-ea66-4c94-b206-691b16b1271d.png" width=50% height=50%>

Open Version:
<br/><img src="https://user-images.githubusercontent.com/107204379/181112693-eb8b4db8-bcea-4ae8-aff2-5305f45cfd32.png" width=50% height=50%>

Tap on Build number 7 times. You will eventually receive a confirmation for Developer mode, similar to the one shown below:
<br/><img src="https://user-images.githubusercontent.com/107204379/181112972-8aea60f4-c24a-4d02-8c87-5686354ed9bb.png" width=50% height=50%>










### Windows
Windows use is generally not supported.  But, it is likely possible since stigma is built in Java and Python.
Setting the PATH environment variables (Windows only)
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


# Utilities and Auxiliary Programs

* `stigma/count_pools.sh` - Bash command line utility for counting the references to strings, types, fields, and methods.  Requires the installation of [the smali command line tool](https://github.com/JesusFreke/smali/).

* `stigma/valid_smali_instructions.txt` and `stigma/ValidSmaliInstrunctions.py` comprehensive collection of all valid smali opcode names.

* `stigma/app_check_eval.py` utility that searches for small collection of likely source function calls.  Takes a path to a folder (containing APKs) as input.
[](https://github.com/fmresearchnovak/stigma.git)
