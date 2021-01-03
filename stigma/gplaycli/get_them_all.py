#!/usr/bin/env python3

import subprocess
import os

# https://github.com/matlink/gplaycli

# my original log file was here "/usr/local/etc/gplaycli/gplaycli.conf"


#gplaycli -c ./gplaycli.conf -dc bullhead --verbose --progress --file package_ids.txt

package_list_file = open("./package_ids.txt", "r")
for line in package_list_file:
	if(line.startswith("#")):
		continue

	if(line == "\n"):
		continue

	pkg = line.strip()
	abs_name = os.path.abspath(pkg + ".apk")
	print("abs_name: " + str(abs_name))
	if os.path.exists(abs_name):
		print("file exists: " + str(abs_name) + "   skipping!")
		continue

	#input("continue?")


	cmd = ["gplaycli", "-c", "./gplaycli.conf", "-dc", "bullhead", "--verbose", "--progress", "--download", pkg]

	completed_proc = subprocess.run(cmd)
	completed_proc.check_returncode()

