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


def getFiles():

	#find relevant files (strong assumptions here!)
	# This first chunk basically is hard-coded to 
	# select the non-framework files written in the leaks
	# test-bed app.  The non-framework files are usually thought
	# of as "the code the developer actually wrote"
	# This chunk is for debugging purposes to debug stigma itself.
	
	#path1 = "./apkOutput/smali_classes2"
	#dirs = listdir(path1)

	#dirsExtracted = [s for s in dirs if s != "androidx" and s!= "android"]

	#path2 = path1 +"/" + dirsExtracted[0]

	#path3 = path2 +"/" + listdir(path2)[0]

	#path4 = path3 +"/" + listdir(path3)[0]

	#path5 = path4 +"/" + listdir(path4)[0]

	#smaliFiles = listdir(path5)

	#relevantFilePaths = [path5 + "/" + file for file in smaliFiles if file != "BuildConfig.smali" and file[:2] != "R$" and file != "R.smali"]
	# End of first chunk


	# beginning of second chunk
	# This gets all the files that end in ".smali" from the entire
	# application.  This assumes all of the framework files
	# as well as any files authored by the app developer.
	relevantFilePaths = glob.glob("./apkOutput" + '/**/*.smali', recursive=True)
	#print(relevantFilePaths)
	# end of second chunk

	# This is just a quick sanity test.
	if(len(set(relevantFilePaths)) != len(relevantFilePaths)):
		print("There are duplicates!!")
		for item in relevantFilePaths:
			print(item)

		exit(1);
	# end of sanity test

	return relevantFilePaths


def wrapString(string, wrapper):
	return wrapper + str(string) + wrapper


def runStigma():

	relevantFilePaths = getFiles()

	#run stigma on all file paths
	print("Running Stigma")
	start_time2 = time.time()
	for path in relevantFilePaths:
		#print("path: " + str(path))

		# This is necessary because some characters need to be 
		# escaped in bash shell.  For example
		# smali_classes2/edu/fandm/enovak/leaks/Main$1.smali
		path = wrapString(path, "'")

		p2 = Popen("python3 stigma.py -wo " + path, stdin=PIPE, stderr=PIPE, shell=True)
		errorBytes = p2.stderr.read()
		if(errorBytes != b''):
			print(errorBytes.decode("utf-8"))
			raise Exception("Error in stigma")
	print("Stigma ran in " + str(time.time() - start_time2) + " seconds")


#rebuild apk
def rebuildApk():
	start_time2 = time.time()
	p3 = Popen("apktool b ./apkOutput", stdin=PIPE, shell=True)
	p3.communicate(b'\n')
	print("Apk packed in " + str(time.time() - start_time2) + " seconds")


def signApk():
	p4 = Popen("keytool -genkey -v -keystore my-release-key.keystore -alias alias_name -keyalg RSA -validity 10000", stdin=PIPE, shell=True)
	# WHAT?
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
	if os.path.exists("./instrumentedApk2"):
		shutil.rmtree("./instrumentedApk2")
		os.mkdir("./instrumentedApk2")
	else:
		os.mkdir("./instrumentedApk2")
	pathOneMillion = "./apkOutput/dist/"
	shutil.move("./apkOutput/dist/" + listdir(pathOneMillion)[0], "./instrumentedApk2")
	if os.path.exists("my-release-key.keystore"):
		os.remove("my-release-key.keystore")
	shutil.rmtree("./apkOutput")


if __name__ == '__main__':
	# we need a better interface haha!
	# Also ./apk should be a sys.argv param to the location of an APK file
	dumpApk()
	runStigma()
	rebuildApk()
	signApk()
	deleteFiles()
