import os
import time
from os import listdir
import subprocess
import multiprocessing
from subprocess import Popen, PIPE
import shutil
import glob
import re
from SmaliClassDef import SmaliClassDef


def getOriginalAPKName():
	return os.listdir("./apk")[0]


def getNewAPKName():
	return "Tracked" + getOriginalAPKName()


def dumpApk():
	#dump apk files
	start_time = time.time()
	p = Popen("apktool d ./apk/" + getOriginalAPKName() + " -o apkOutput -f", stdin=PIPE, shell=True)
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
	print("CPUS: " + str(multiprocessing.cpu_count()))
	print("Running Stigma")
	start_time2 = time.time()
	for path in relevantFilePaths:
		#print("path: " + str(path))

		# This is necessary because some characters need to be 
		# escaped in bash shell.  For example
		# smali_classes2/edu/fandm/enovak/leaks/Main$1.smali
		# the $1 will be treated like a variable in bash unless
		# it is escaped or wrapped in quotes
		# path = wrapString(path, "'")


		# refactored according to https://docs.python.org/3/library/subprocess.html
		# shell = true means things like "*" and "~" will be expanded in the shell
		# I DID NOT include shell=true, which means that shell=false.  
		# This means that the string wrapping of the path with single-quotes
		# is unnecessary.
		completedProcess = subprocess.run(["python3", "stigma.py", "-wo", path])
		completedProcess.check_returncode() # raises an exception on any error

	print("Stigma ran in " + str(time.time() - start_time2) + " seconds")



def extractPathParts(path, begin, end):
	# This crazy line does three things.
	# 1) split the given path on the "/" characters
	# "/path/to/the/file.txt" => ["path", "to", "the", file.txt"]
	# 
	# 2) slice that list according to beginning and end.
	# Note: because begin and end are passed directly to the [:]
	# the same semantics hold.  begin is included, end is excluded,
	# and negative numbers can be used for "negative indexing"
	# begin = 1  and end = -1
	# ["to", "the"]
	#
	# 3) re-join the path using a "/"
	# "to/the"
	ans = "/".join(path.split("/")[begin:end])
	return ans

def splitSmali():
	# Our stigma instrumentation will add many fields to each class
	# unfortunately, for a single smali_classesX folder there can only be 
	# so many fields in all the classes combined.  We typically break that limit
	# so, we can resolve the issue by simply moving some files to smali_classesX+1

	# basic algorithm is to place all smali files into a list
	# regardless of existing folder location (smali_classesX)
	# go through the list linearly and count the number of fields
	# in the classes.  If the number of fields goes above THRESH
	# break the list at this point and designate all the files
	# until this point to be in smali_classesY (where Y increments)
	# each time the list is split up
	#
	# resultsLists = [file1, file2, file3] [file4, file5, file6, ...]
	#                                     ^
	#                                     |
	#                                split point
	# (number of fields in file1, 2, 3, and 4 combined is > THRESH)
	#

	THRESH = 16384 # probably isn't the correct threshold

	smaliFiles = getFiles()

	fieldCount = 0
	resultLists = []
	s = 0
	e = 0
	for idx, smaliFile in enumerate(smaliFiles):
		scd = SmaliClassDef(smaliFile)
		num = scd.get_num_fields()
		
		if(num > THRESH):
			raise RuntimeError("fields in " + str(smaliFile) + " is greater than threshold. " + str(num) + ">" + str(THRESH))

		if(fieldCount + num >= THRESH):
			# do a break
			e = idx
			resultLists.append(smaliFiles[s:e])
			s = e
			fieldCount = num
			# technical detail that's easy to miss / confuse
			# the file that broke the threshold
			# goes into the NEXT list

		else:
			fieldCount+=num

	print(str(len(resultLists)) + " groups")
	for idx, group in enumerate(resultLists):
		path = "./apkOutput/smali/"
		if(idx > 0):
			path = "./apkOutput/smali_classes" + str(idx+1) + "/"
			os.makedirs(path, exist_ok=True)

		for smaliFile in group:
			newFolderPath = path + extractPathParts(smaliFile, 3, -1)
			#print("newFolderPath: " + newFolderPath)
			os.makedirs(newFolderPath, exist_ok=True)

			newFileAbsPath = os.path.join(newFolderPath, os.path.basename(smaliFile))

			# sometimes the system determines that a file should result
			# in the place in which it already resides (smali_classes2 -> smali_classes2)
			# in those cases we don't want to do any mv at all.  Even with -n
			# mv will exit with an error, status 1
			if(smaliFile != newFileAbsPath):
				# -n means "no clobber" in mv command on bash, do not overwrite existing files
				mvCMD = ["mv", "-n", smaliFile, newFileAbsPath]
				print(mvCMD)
				completedProcess = subprocess.run(mvCMD)
				completedProcess.check_returncode()


#rebuild apk
def rebuildApk():
	# dumps the apk file in current working directory
	start_time = time.time()
	newName = getNewAPKName()
	rebuildCMD = ["apktool", "b", "./apkOutput", "-o", getNewAPKName()]
	completedProcess = subprocess.run(rebuildCMD)
	completedProcess.check_returncode()
	print("Apk packed in " + str(time.time() - start_time) + " seconds")


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
	newName = getNewAPKName()
	p5 = Popen("jarsigner -verbose -keystore my-release-key.keystore " + newName + " alias_name", stdin=PIPE, shell=True)
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
	splitSmali()
	rebuildApk()
	signApk()
	#deleteFiles()