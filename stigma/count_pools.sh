#!/bin/bash

# Run this bash script on any smali file to get a count of the pool


rm classes.dex
smali assemble $@ -o classes.dex && dexdump -f classes.dex | grep "ids_size"

