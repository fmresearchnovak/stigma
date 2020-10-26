import sys
import re
import os

# LogCat reader for tests using Log.d as a simulated sink
 
# Format for Log.d test tags: "app name" "test type" "data leaked"
# Example: stigmatestapp sgetsput IMEI
# Test tag must have D priority

STIGMA_GENERATED_MESSAGE = "LEAK via LOGD OCCURING!" # message stigma generates when it detects a leak
TEST_TAG_START = "D stigmatestapp" # start of each test's tag according to above format
END_REACHED_FLAG = "endstigmatestapp" # StigmaTestApp Logs this to help detect end of testing

def main():
    leak_occured = False
    print ("TESTING STARTED")
    print()
    for line in sys.stdin:
        if TEST_TAG_START in line:
            #print(line)
            # Use test tag format to extract test type
            test_type = re.findall("D stigmatestapp (\S+) ", line)[0]
            print("Testing: " + test_type)
            
            if not leak_occured:
                print("Failed")
                print()
            else:
                print("Passed")
                print()
                leak_occured = False
           
        
        if STIGMA_GENERATED_MESSAGE in line:
            leak_occured = True
                
        if END_REACHED_FLAG in line:
            
            #print(line)
            if leak_occured:
                print ("Some untested leak(s) occured")
                print()
            print ("TESTING ENDED")

main()
