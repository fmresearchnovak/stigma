#!/usr/bin/env python3

import matplotlib.pyplot as plt
from matplotlib.pyplot import figure
import sys
import csv
import os
import glob
import Stigma
import numpy as np


def main():
    
    # takes a directory containing many APKS
    folder = sys.argv[1]
    APKS = glob.glob(folder + '/**/*.apk', recursive=True)
    print("APKS: " + str(APKS))
    
    # will contain [(loc_before, loc_after)]
    loc_befores = []
    loc_afters = []
    
    #loc_befores = [2809610, 1997160, 2505376, 951543, 561947]
    #loc_afters = [5298431, 4952697, 5978146, 2840468, 2050310]
    
    
    if(loc_befores == [] and loc_afters == []):
        for apk in APKS:
            apk_path = str(os.path.abspath(apk))
            print("apk: " + apk_path)
            sys.argv[1] = apk_path
            
            try:
                Stigma.dumpApk()
                loc_befores.append(Stigma.count_non_blank_lines_of_code())
                
                Stigma.importPlugins()
                Stigma.runStigma()
                Stigma.writeStorageClasses()
                Stigma.splitSmali()
                #Stigma.rebuildApk()   # not necessary for this eval
                #StigmaExecutor.signApk() # not necessary for this eval
                loc_afters.append(Stigma.count_non_blank_lines_of_code())
                
                
                Stigma.deleteFiles()
            except:
                print("    Error processing this apk!")
                loc_befores.append(0)
                loc_afters.append(0)

    print("befores: " + str(loc_befores))
    print("afters: " + str(loc_afters))

    width = 0.25
    names = []
    for apk in APKS:
        names.append(os.path.basename(apk))


    #figure(figsize = (6, 3))
    fig, ax = plt.subplots()
    # ...
    #fig.tight_layout()

    #Or

    fig.subplots_adjust(left=0.18) # or whatever


    # tick_label=names
    plt.bar(np.arange(len(loc_befores)), loc_befores, tick_label=names, width=width)
    plt.bar(np.arange(len(loc_afters)) + width, loc_afters, tick_label=names, width=width)
    
    plt.ylabel("Lines of Code (non-blank)")
    plt.xlabel("Application")
    plt.title("Lines of code added by Instrumentation")
    plt.legend(["Orignal LOC", "After Stigma"], loc="upper right")
    plt.xticks(rotation=5)


    

    path = "./loc_eval.eps"
    plt.savefig(path, format="eps", dpi=500)
    print("output: " + str(os.path.abspath(path)))

    print("Showing Graph Now...")
    plt.show()


if __name__ == "__main__":
        main()
