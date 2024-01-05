#!/bin/bash

# Print the name of the script
echo "Script name: $0"

# Print all arguments
echo "All arguments: $@"

# Print the number of arguments
echo "Number of arguments: $#"

# Print 2nd and 4th argument
echo "2nd argument: $2"
echo "4th argument: $4"

# Print the exit code of -eq operation on 1st and 2nd arguments
if [[ $1 -eq $2 ]]; then
    echo "Exit code of \$1 -eq \$2: 0"
else
    echo "Exit code of \$1 -eq \$2: 1"
fi
