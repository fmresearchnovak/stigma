

import sys
import os
import subprocess


import StigmaStringParsingLib
import SmaliMethodDef


def find_line_number_from_offset_and_starting_point(smali_code, offset, starting_point):
	
	idx = starting_point
	while(offset != 0):
		line = smali_code[idx]
		if(StigmaStringParsingLib.is_valid_instruction(line) or StigmaStringParsingLib.is_comment(line)):
			offset -= 1
		idx+=1
	
	return idx
	

def find_index_of_method(smali_code, method_name):
	# It is possible that there are multiple methods
	# with the same name, but different parameters
	# (method overloading)
	# this is 
	result = []
	idx = 0
	for line in smali_code:
		if(line.strip().startswith(".method")):
			sig = SmaliMethodDef.SmaliMethodSignature(line, "Lunknownclass;")
			#print(sig.name, " == ", method_name)
			if(sig.name == method_name):
				result.append(idx)
		idx += 1
		
	return result
	

def main():
	
	# consider using https://docs.python.org/3/library/argparse.html in the future
	
	if(len(sys.argv) != 3):
		print("Usage:")
		print("\tJavaVerifierCrashHelper.py <tmp_file_location> <method and offset>")
		print("\nExample:")
		print("\tJavaVerifierCrashHelper.py /tmp/apkOutput_6foqox13 void android.support.v4.app.FragmentManagerImpl.executeOpsTogether(java.util.ArrayList, java.util.ArrayList, int, int): [0x406]")
		exit(1)
		
		
	
	# Parse all three inputs
	#print(sys.argv)
	tmp_file_location = sys.argv[1]
	print("tmp_file_location: ", tmp_file_location)
	
	# e.g., FragmentManagerImpl
	fq_method_name, offset = sys.argv[2].split(":")
	fq_method_name = fq_method_name.strip()
	
	file_name = (fq_method_name.split("(")[0]).split(".")[-2] + ".smali"
	print("file_name:", file_name)
	
	method_sig_tmp = fq_method_name.split("(")
	#print("method_sig_tmp:", method_sig_tmp)
	method_args = method_sig_tmp[-1]
	#print("method_args:", method_args)
	method_name = method_sig_tmp[0].split(".")[-1]
	print("method_name:", method_name)
	method_sig = method_name + "(" + method_args
	print("method_sig:", method_sig)
	
	
	hex_offset = offset.strip()
	offset = hex_offset.strip("[").strip("]").strip("0x")
	offset = int(offset, 16)
	print("offset:", str(hex_offset), "=", offset)
	
	
	# find the file
	cmd = ["find", tmp_file_location, "-iname", file_name]
	ans = completed_process = subprocess.check_output(cmd)
	abs_path = "".join( chr(x) for x in ans).strip() # convert from bytes to string
	print("abs_path:", abs_path)
	
	
	fh = open(abs_path, "r")
	lines = fh.readlines()
	fh.close()
	
	indicies_list = find_index_of_method(lines, method_name)
	#print(indicies_list)
	
	for idx in indicies_list:
		num = find_line_number_from_offset_and_starting_point(lines, offset, idx)
		print("line " + str(num+1) + ": " + str(lines[num]))
	
	
	# open the file
	cmd = ["xdg-open", abs_path]
	completedProcess = subprocess.run(cmd)
	completedProcess.check_returncode()
	
	
	
if __name__ == "__main__":
	main()
