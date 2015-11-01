#!/bin/bash

if [[ $# -eq 0 ]]; then
	echo "No file to flash specified, exiting!"
	exit 1
fi

if [[ -f $1 ]]; then
    sudo ./stm32loader.py -e -w -v $1
else
    echo "$1 is not a file, exiting!"
    exit 1
fi


