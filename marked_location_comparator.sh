#!/bin/bash

# comparison thingy

api_file=/home/ed/android-sdk/sources/android-32/android/location/Location.java
grep "public" $api_file | grep -v "static" | sort > ~/tmp/android_api_location.txt

markedlocation_file=/home/ed/AndroidStudioProjects/MarkedLocationStage/app/src/main/java/edu/fandm/enovak/markedlocationstage/MarkedLocation.java 
grep "public" $markedlocation_file | grep -v "static" | sort > ~/tmp/custom_markedlocation.txt


diff ~/tmp/android_api_location.txt ~/tmp/custom_markedlocation.txt