import os
import time
from os import listdir
from subprocess import Popen, PIPE
import shutil
import glob

def dumpApk():
	#dump apk files
	start_time = time.time()
	p = Popen("apktool d ./apk/" + os.listdir("./apk")[0] + " -o apkOutput -f", stdin=PIPE, shell=True)
	p.communicate(b'\n')
	print("Apk unpacked in " + str(time.time() - start_time) + " seconds")


def runStigma():
	#find relevant files (strong assumptions here!)
	path1 = "./apkOutput/smali_classes2"
	dirs = listdir(path1)

	dirsExtracted = [s for s in dirs if s != "androidx" and s!= "android"]

	path2 = path1 +"/" + dirsExtracted[0]

	path3 = path2 +"/" + listdir(path2)[0]

	path4 = path3 +"/" + listdir(path3)[0]

	path5 = path4 +"/" + listdir(path4)[0]

	smaliFiles = listdir(path5)

	#relevantFilePaths = [path5 + "/" + file for file in smaliFiles if file != "BuildConfig.smali" and file[:2] != "R$" and file != "R.smali"]

	relevantFilePaths = glob.glob("./apkOutput" + '/**/*.smali', recursive=True)
	print(relevantFilePaths)

	#run stigma on all file paths
	for path in relevantFilePaths:
		p2 = Popen("py stigma.py -wo " + path, stdin=PIPE, shell=True)

#rebuild apk
def rebuildApk():
	start_time2 = time.time()
	p3 = Popen("apktool b ./apkOutput", stdin=PIPE, shell=True)
	p3.communicate(b'\n')
	print("Apk packed in " + str(time.time() - start_time2) + " seconds")


def signApk():
	p4 = Popen("keytool -genkey -v -keystore my-release-key.keystore -alias alias_name -keyalg RSA -validity 10000", stdin=PIPE, shell=True)
	p4.stdin.write(b"Shaamyl\n")
	p4.stdin.write(b"Shaamyl\n")
	p4.stdin.write(b"Shaamyl\n")
	p4.stdin.write(b"Shaamyl\n")
	p4.stdin.write(b"Shaamyl\n")
	p4.stdin.write(b"Shaamyl\n")
	p4.stdin.write(b"Shaamyl\n")
	p4.stdin.write(b"Sh\n")
	p4.stdin.write(b"y\n")
	p4.communicate(b"\n")

	print("Here")
	pathOneMillion = "./apkOutput/dist/"
	p5 = Popen("jarsigner -verbose -keystore my-release-key.keystore ./apkOutput/dist/" + listdir(pathOneMillion)[0] + " alias_name", stdin=PIPE, shell=True)
	p5.communicate(b"Shaamyl\n")
	#keytool -genkey -v -keystore my-release-key.keystore -alias alias_name -keyalg RSA -validity 10000
	#jarsigner -verbose -keystore my-release-key.keystore ./Leaks/dist/Leaks.apk alias_name


def deleteFiles():
	if os.path.exists("./instrumentedApk"):
		os.remove("./instrumentedApk")
	else:
		os.mkdir("./instrumentedApk")
	pathOneMillion = "./apkOutput/dist/"
	shutil.move("./apkOutput/dist/" + listdir(pathOneMillion)[0], "./instrumentedApk")
	os.remove("my-release-key.keystore")
	shutil.rmtree("./apkOutput")


if __name__ == '__main__':
	dumpApk()
	runStigma()
	rebuildApk()
	signApk()
	deleteFiles()
