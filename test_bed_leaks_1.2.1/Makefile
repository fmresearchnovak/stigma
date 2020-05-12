all: clean unpack test-stigma pack


unpack:
	apktool d app-debug.apk


pack:
	apktool b app-debug/ -o leaks_rebuilt.apk -c
	apksigner sign -ks ../debug.keystore --ks-pass pass:android leaks_rebuilt.apk
	adb install -r leaks_rebuilt.apk
	adb shell am start -n edu.fandm.enovak.leaks/edu.fandm.enovak.leaks.Main
# https://stackoverflow.com/questions/18589694/i-have-never-set-any-passwords-to-my-keystore-and-alias-so-how-are-they-created
# https://stackoverflow.com/questions/4853011/how-to-sign-an-android-apk-file
# https://developer.android.com/studio/command-line/apksigner


test-stigma:
	cp app-debug/smali_classes2/edu/fandm/enovak/leaks/SimpleLeak$$1.smali ./SimpleLeakOriginal$$1.smali
	../stigma.py -wo app-debug/smali_classes2/edu/fandm/enovak/leaks/Main.smali
	../stigma.py -wo app-debug/smali_classes2/edu/fandm/enovak/leaks/Main\$$1.smali
	../stigma.py -wo app-debug/smali_classes2/edu/fandm/enovak/leaks/Main\$$ServerLeakTask.smali
	../stigma.py -wo app-debug/smali_classes2/edu/fandm/enovak/leaks/SimpleLeak.smali
	../stigma.py -wo app-debug/smali_classes2/edu/fandm/enovak/leaks/SimpleLeak\$$1.smali



stigmafy:
	./stigmafy.py app-debug/


debug: clean unpack
	cp app-debug/smali_classes2/edu/fandm/enovak/leaks/SimpleLeak$$1.smali ./SimpleLeakOriginal$$1.smali
	../stigma.py -D app-debug/smali_classes2/edu/fandm/enovak/leaks/SimpleLeak\$$1.smali
	#cp app-debug/smali_classes2/edu/fandm/enovak/leaks/SimpleLeak.smali ./SimpleLeakOriginal.smali
	#../stigma.py -D app-debug/smali_classes2/edu/fandm/enovak/leaks/SimpleLeak.smali


clean:
	rm -rf app-debug/
	rm -f leaks_rebuilt.apk