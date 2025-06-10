#!/bin/bash


# a hardcoded list of the python files to be documented
pyfiles=("lib/SmaliAssemblyInstructions.py" 
"lib/SmaliRegister.py" 
"lib/SmaliClassDef.py" 
"lib/SmaliMethodDef.py" 
"lib/SmaliCodeIterator.py")

echo $(realpath $pyfiles)
# loop through the list of files and call pydoc on each one
for pyfile in ${pyfiles[@]}; do
    filename=$(realpath "$pyfile")
    echo $filename
    pydoc3 -w "$filename"
    # move the generated HTML file to the docs directory
    mv "$filename.html" "doc/"
done