#!/bin/bash

# Ask the user to input a filename
read -p "Enter a filename: " filename

# Write the poem to the specified file
cat <<EOL > "$filename"
An old silent pond...
A frog jumps into the pond,
splash! Silence again.

EOL

# Output the poem to the terminal
cat "$filename"

# Output the message "Task finished" to stderr
echo "Task finished" >&2
