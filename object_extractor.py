
import time
import sys
import re

import Stigma
import StigmaStringParsingLib



class SmaliObjectTypeOccurrence:
	# Example Instance (result of calling print(repr(some_instance_of_this_class))
	# Landroid/support/v4/text/util/LinkifyCompat$LinkifyMask; occuring at /tmp/apkOutput_f1n9d2zp/smali/android/support/v4/text/util/LinkifyCompat$LinkifyMask.smali : line 1
	
	# this needs unit tests! (especially the __eq__ method)
	def __init__(self, file_path, line_num, obj_ref):
		self.file_path = file_path
		self.line_num = line_num
		self.obj_ref = obj_ref
		
	def __eq__(self, other):
		if(isinstance(other, SmaliObjectTypeOccurrence)):
			return self.obj_ref == other.obj_ref
		
		if(isinstance(other, str)):
			return self.obj_ref == other
			
		return False
		
	def __hash__(self):
		return hash(self.obj_ref)
		
	def __str__(self):
		return self.obj_ref
		
	def __repr__(self):
		return str(self) + " occuring at " + str(self.file_path) + " : line " + str(self.line_num)



def getAllClassReferences():
	paths = Stigma.getFiles()
	refs_list = []
	for path in paths:
		fh = open(path, "r")
		line_num = 0
		for line in fh.readlines():
			line_num += 1
			match_list = re.findall(StigmaStringParsingLib.IS_OBJECT_TYPE, line)
			#print(path + " : line " + str(line_num))
			for string in match_list:
				#print("\t" + string)
				soto = SmaliObjectTypeOccurrence(path, line_num, string)
				refs_list.append(soto)
	return refs_list


def get_target_classes(class_options):
	# this should (in the future) be setup to read from a file
	# or present the user with a tkinter GUI or something
	# probably use a set or dictionary to display to user without
	# displaying duplicates
	
	
	for item in class_options:
		if item == "Landroid/location/Location;":
			return [item]
			
	print("WARNING!  No Target Class(es) Selected!")
	return []
	


def main():
	
	Stigma.deleteFiles()
	print("Temp files at: " + str(Stigma.temp_file.name))
	Stigma.dumpApk()
	classes_list = getAllClassReferences()
	target_classes = get_target_classes(classes_list)
	
	print(target_classes)
	
	
	# this input is here because it is helpful to keep the temporary files
	# around for debugging purposes.  In final release maybe remove it.
	print("Temp files at: " + str(Stigma.temp_file.name))
	input("Press Enter to Delete Temporary Files: ")
	Stigma.deleteFiles()
	
	
	
	
if __name__ == "__main__":
	main()
	
	
	
