#!/bin/bash

# Check if there are arguments
if [ "$#" -eq 0 ]; then
    echo "No arguments provided."
    exit 1
fi

# Initialize variables
sum=0
count=0

# Loop through all arguments
for arg in "$@"; do
    # Check if the argument is an integer
    if ! [[ "$arg" =~ ^[0-9]+$ ]]; then
        echo "Invalid argument: $arg is not an integer."
        exit 1
    fi

    # Sum the arguments
    sum=$((sum + arg))
    # Increment the count
    count=$((count + 1))
done

# Calculate the average
average=$(echo "scale=2; $sum / $count" | bc)

# Output results
echo "Sum: $sum"
echo "Number of arguments: $count"
echo "Average: $average"
