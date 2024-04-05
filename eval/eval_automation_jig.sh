#!/bin/bash

# This is just a simple "jig" program that
# automates the SharedPrefs evaluation data gathering.




set -x

#1 Run stigma on the app
python3 Stigma.py $1
echo -ne "\n"

#2 Setup the .txt file
# ./APK/com.android.whatever.apk -> ./APK/com.android.whatever.txt
txt_path="${1%.*}.txt"
touch $txt_path

#3 Install the Modified APK file on the phone
# ./APK/com.android.whatever.apk -> ./Modified_com.android.whatever.apk
mod_path="./Modified_${1#./APK/}"
adb install -r $mod_path