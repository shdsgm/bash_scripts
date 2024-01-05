#!/bin/bash

# Check the number of arguments
if [ "$#" -lt 2 ]; then
    # Less than 2 arguments
    echo "Arguments: $@"
elif [ "$#" -ge 2 ] && [ "$#" -lt 4 ]; then
    # Between 2 and 3 arguments
    echo "Last argument: ${!#}"
else
    # More than 3 arguments
    echo "Invalid number of arguments"
fi
