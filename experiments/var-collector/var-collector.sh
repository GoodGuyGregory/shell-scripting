#! /bin/bash

# Collect Variables from a command 
variableA=$(ls)
echo $variableA

# save contents to a file 
# writes to the file while
ls > contents.txt
# appends to the end of the file 
ls >> contents.txt
