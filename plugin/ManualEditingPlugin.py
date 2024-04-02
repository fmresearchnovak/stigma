import os

import Instrumenter



def _split_all(pth):
    # https://www.oreilly.com/library/view/python-cookbook/0596001673/ch04s16.html
    all_parts = []
    while True:
        parts = os.path.split(pth)
        if parts[0] == pth: # identify we're at the root folder /, so stop
            all_parts.insert(0, parts[0])
            break
        elif parts[1] == pth:
            all_parts.insert(0, parts[1])
            break
        else:
            pth = parts[0]
            all_parts.insert(0, parts[1])
    return all_parts


def launcher_handler(scd, smd):
    
    print("\nPausing here for manual editing...")

    pth = _split_all(scd.file_name)
    pth = os.path.join(pth[0], pth[1], pth[2])
    print("You may edit any file(s) in: " + pth)
    print("The app launcher class is: " + str(scd))
    input('''You should edit the smali files now!  Press enter when you're done.''')

    return []


def main():
    
    Instrumenter.sign_up_launcher_activity_oncreate_start(launcher_handler, 0)


if __name__ == "__main__":
    main()
