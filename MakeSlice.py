import argparse
import time

import Stigma
import StigmaState
import SmaliClassDef



def main():
    # Parse command line arguments
    # This program will generate a "slice" of smali code from a given APK file.
    # Input: an APK file, a register, and a line number
    # Output: the sequence of smali instructions in which the value in the register is live, 
    # This output should especially include instructions in which the value in that register is directly used (read, overwritten, copied, passed to a function, etc.)
    # Eventually this tool will also include the sequence of smali instructions preceeding the given line in which the value in that register is live
    # especially showing the provenance of the value in that register
    parser = argparse.ArgumentParser(description="Generate a slice of smali code from an APK file.")
    parser.add_argument("apk_file", help="Path to the APK file.")
    parser.add_argument("file", help="The smali file to start tracking from.")
    parser.add_argument("line_number", type=int, help="The line number in that file to start tracking from.")
    parser.add_argument("register", help="The register in that line that contains the value to track.")

    args = parser.parse_args()

    # Extract the APK file
    args.apk_file = Stigma.findAPK(args.apk_file)


    temp_file = StigmaState.Environment().get_temp_file()
    print("Temp files at: " + str(temp_file.name))

    start = time.time()
    Stigma.dumpApk(args.apk_file)
    app_smali_files = Stigma.getFiles()

    app_smali_classes = []
    
    total_files = len(app_smali_files)
    counter = 1
    print("Loading smali files...")
    for path in app_smali_files:
        scd = SmaliClassDef.SmaliClassDef(path)
        app_smali_classes.append(scd)

        print(f'...{str(counter)}/{str(total_files)}', end='\r')
        counter += 1

    print("Loaded " + str(len(app_smali_classes)) + " smali classes in %.1f seconds" % (time.time() - start))



    # this input is here because it is helpful to keep the temporary files
    # around for debugging purposes.  In final release maybe remove it.
    print("\nTemp files at: " + str(temp_file.name))
    input("Press Enter to Delete Temporary Files...")
    temp_file.cleanup()

if __name__ == "__main__":
    main()
