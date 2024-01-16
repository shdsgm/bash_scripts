#!/bin/bash

# Function to multiply a number by itself
multiply() {
    local result=$(( $1 * $1 ))
    echo $result
}

# Function to process each argument and call the multiply function
process_arguments() {
    for arg in "$@"; do
        result=$(multiply "$arg")
        result=$((result + 1))
        echo "Result for $arg: $result"
    done
}

# Call the function to process arguments
process_arguments "$@"
