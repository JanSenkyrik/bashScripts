#!/bin/bash

#This script is going to convert the content of a file to lower case

echo -e "Tell me the file's name: "
read filename
if ! [ -f $filename ]; then
 echo "Specified file doesn't exist"
 exit 1
else
 tr '[A-Z]' '[a-z]' < $filename > $HOME/Scripting/lower.txt
 exit 0
fi

