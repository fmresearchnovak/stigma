import os
import sys
import subprocess

import StigmaState



def _open_file_browser_GUI(filename):
    # https://stackoverflow.com/questions/17317219/is-there-an-platform-independent-equivalent-of-os-startfile
    if sys.platform == "win32":
        os.startfile(filename)
    else:
        opener = "open" if sys.platform == "darwin" else "xdg-open"
        subprocess.call([opener, filename])


def main():
    
    #Instrumenter.sign_up_launcher_activity_oncreate_start(launcher_handler, 0)

    print("\nPausing here for manual editing...")
    _open_file_browser_GUI(StigmaState.Environment().get_temp_file().name)
    print("You may edit any file(s) in: " + StigmaState.Environment().get_temp_file().name)
    input("Press enter when you're done! ")


if __name__ == "__main__":
    main()
