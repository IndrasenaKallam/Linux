#!/bin/bash
filename=$1

if [ -f -eq "$filename"]
then
	echo "file exists"
else
	echo "file doesn't exit"
fi

