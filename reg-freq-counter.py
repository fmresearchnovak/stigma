#!/usr/bin/env python3

import subprocess
import sys
import os




def main():


	path = sys.argv[1]
	print("Analyzing: " + path)
	os.chdir(path)

	for i in range(0, 1025):
		#cmd = "grep", "-R", "-I", "-i", str("v" + str(i)), "*"   #,  "|", "wc", "-l"
		# This needs to be a string so that shell=true will expand the final arg: "*"
		cmd = "grep -R -I -i v" + str(i) + " *"   #,  "|", "wc", "-l"
		cmd2 = "wc", "-l"
		
		#print("running: " + str(cmd))
		ps1 = subprocess.Popen(cmd, shell=True, stdout=subprocess.PIPE)
		ps2 = subprocess.Popen(cmd2, stdin=ps1.stdout, stdout=subprocess.PIPE)
		ps1.wait()
		ps2.wait()

		output = ps2.stdout.read()
		output = output.decode("utf-8")
		#print("output: " + str(output))

		print(cmd + " | " + cmd2[0] + " " + cmd2[1] + ":  " + output, end="")


if __name__ == "__main__":
	main()
