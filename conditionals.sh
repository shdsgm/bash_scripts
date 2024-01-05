#!/bin/bash

# Check if 1st and 2nd string arguments are equal
if [ "$1" = "$2" ]; then
    echo "Exit code of $1 = $2: 0 (equal)"
else
    echo "Exit code of $1 = $2: 1 (not equal)"
fi

# Check if 1st string argument is longer than 2nd string argument
if [ "${#1}" -gt "${#2}" ]; then
    echo "Exit code of length($1) > length($2): 0 (greater)"
else
    echo "Exit code of length($1) > length($2): 1 (less)"
fi

# Check if variable TEST is present in the environment
if [ -n "$TEST" ]; then
    echo "Exit code of -n $TEST: 0 (presented)"
else
    echo "Exit code of -n \$TEST: 1 (not presented)"
fi

# Check if 3rd and 4th integer arguments are not equal
if [ "$3" -ne "$4" ]; then
    echo "Exit code of $3 != $4: 0 (not equal)"
else
    echo "Exit code of $3 != $4: 1 (equal)"
fi

# Check if 3rd integer argument is greater or equal to 4th integer argument
if [ "$3" -ge "$4" ]; then
    echo "Exit code of $3 >= $4: 0 (greater)"
else
    echo "Exit code of $3 >= $4: 1 (less)"
fi
