#!/bin/bash


# a hardcoded list of the python files to be documented
# SmaliRegister.py is the first one
pyfiles=("SmaliAssemblyInstructions.py SmaliRegister.py" "SmaliClassDef.py" "SmaliMethodDef.py")

# loop through the list of files and call pydoc on each one
for pyfile in ${pyfiles[@]}; do
    filename=$(basename "$pyfile" .py)
    pydoc3 -w "$pyfile"
    # move the generated HTML file to the docs directory
    mv "$filename.html" "doc/"
done