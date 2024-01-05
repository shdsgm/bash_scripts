#!/bin/bash

# Check if there is exactly one argument
if [ "$#" -ne 1 ]; then
    echo "Use only 1 word"
    exit 1
fi

# Get the length of the argument
length=${#1}

# Check if the length is odd or even
if [ "$((length % 2))" -eq 1 ]; then
    echo "Odd"
else
    echo "Even"
fi
