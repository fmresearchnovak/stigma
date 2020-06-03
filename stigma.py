#!/usr/bin/env python3
import sys
from SmaliClassDef import SmaliClassDef

flags = []


# Operates on just one file
def main():
    global flags

    # Read source code into list of lines
    class_smali_file = sys.argv[-1]
    print("File: " + class_smali_file)
    scd = SmaliClassDef(class_smali_file)

    flags = sys.argv[1:-1]
    print("main flags: " + str(flags))

    # main parsing loop is done
    # manual check correct parsing
    if "-D" in flags:
        # print("---unused lines---\n" + str(lines))
        print("------------------\n")
        print("---header---\n" + str(scd.header))
        print("------------------\n")
        print("---static fields---\n" + str(scd.static_fields))
        print("------------------\n")
        print("---instance fields---\n" + str(scd.instance_fields))
        print("------------------\n")
        print("---methods---\n" + str(scd.methods))
        print("------------------\n")

    # Do the actual instrumentation
    scd.instrument()
    # scd.verbose()
    # Write out to file if flags specify to do so
    if "-wo" in flags:
        print("Overwriting: " + str(class_smali_file))
        scd.write_to_file(class_smali_file)


if __name__ == "__main__":
    main()
