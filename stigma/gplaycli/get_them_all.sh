#!/bin/bash

# https://github.com/matlink/gplaycli

# my original log file was here "/usr/local/etc/gplaycli/gplaycli.conf"


xargs gplaycli -c ./gplaycli.conf --verbose --progress --download < package_ids.txt
