#!/bin/bash

writefile=$1
writestr=$2

if [ $# -ne 2 ]; then
  echo "Two arguments required."
  exit 1
fi


dir=$(dirname "$writefile")

mkdir -p "$dir"

if ! echo "$writestr" > "$writefile"; then
  echo "Could not create file $writefile"
  exit 1
fi
