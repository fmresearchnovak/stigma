#!/usr/bin/env python3

import os
import sys
import glob


# The "main" entry point for the system
def main():

	path = sys.argv[1]
	os.chdir(path)



	file_list = glob.glob(path + '/**/*.smali', recursive=True)
	for f in file_list:
		#print(f)
		os.subprocess.call(["./stigma.py", '-wo', f])


	
if __name__ == "__main__":
	main()