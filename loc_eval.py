import matplotlib.pyplot as plt
import sys
import csv
import os
import glob
import StigmaExecutor
import numpy as np


def main():
    
    # takes a directory containing many APKS
    folder = sys.argv[1]
    APKS = glob.glob(folder + '/**/*.apk', recursive=True)
    print("APKS: " + str(APKS))
    
    # will contain [(loc_before, loc_after)]
    loc_befores = []
    loc_afters = []
    for apk in APKS:
        apk_path = str(os.path.abspath(apk))
        print("apk: " + apk_path)
        sys.argv[1] = apk_path
        
        try:
            StigmaExecutor.dumpApk()
            loc_befores.append(StigmaExecutor.count_non_blank_lines_of_code())
            
            StigmaExecutor.runStigma()
            StigmaExecutor.splitSmali()
            StigmaExecutor.rebuildApk()
            #StigmaExecutor.signApk()
            loc_afters.append(StigmaExecutor.count_non_blank_lines_of_code())
            
            
            StigmaExecutor.deleteFiles()
        except:
            print("    Error processing this apk!")
            loc_befores.append(0)
            loc_afters.append(0)


    width = 0.25
    names = []
    for apk in APKS:
        names.append(os.path.basename(apk))

    plt.bar(np.arange(len(loc_befores)), loc_befores, tick_label=names, width=width)
    plt.bar(np.arange(len(loc_afters)) + width, loc_afters, tick_label=names, width=width)
    
    plt.ylabel("Lines of Code (non-blank)")
    plt.xlabel("Application")
    plt.title("Lines of code added by Stigma")
    plt.legend(["Orignal LOC", "After Stigma"], loc="upper center")

    print("Showing Graph Now...")
    plt.show()
    

    #plt.savefig("../../paper_mdm2020/graphics/nb_eval_time_stacked.eps", format="eps", dpi=500)
    #print("../../paper_mdm2020/graphics/nb_eval_time_stacked.eps")
    #plt.show()


if __name__ == "__main__":
        main()
