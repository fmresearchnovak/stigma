#!/bin/bash


# a hardcoded list of the python files to be documented
pyfiles=("lib/SmaliAssemblyInstructions.py" 
"lib/SmaliRegister.py" 
"lib/SmaliClassDef.py" 
"lib/SmaliMethodDef.py" 
"lib/SmaliCodeIterator.py")


# loop through the list of files and call pydoc on each one
for pyfile in ${pyfiles[@]}; do
    filename=$(realpath "$pyfile") # get absname just for completeness
    
    pydoc3 -w "$filename"

    # move the generated HTML file to the docs directory
    HTMLfilename=$(basename $filename)
    HTMLfilename="${HTMLfilename%.py}.html"
    mv $HTMLfilename "doc/"
done