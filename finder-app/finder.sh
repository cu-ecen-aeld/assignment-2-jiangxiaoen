#!/bin/bash

filesdir=$1
searchstr=$2

if [ $# -ne 2 ]; then
   echo "Two arguments are required."
   exit 1
fi

if [ ! -d "$filesdir" ]; then
   echo "$filedir is not a directory"
   exit 1
fi

fileCount=$(find "$filesdir" -type f | wc -l)

lineCount=$(grep -r "$searchstr" "$filesdir" |wc -l)

echo "The number of files are $fileCount and the number of matching lines are $lineCount"
