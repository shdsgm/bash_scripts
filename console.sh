#!/bin/bash

while true; do
    read -p "console> " input

    case "$input" in
        "ls "*)
            # Extract the directory path from the input
            dir=$(echo "$input" | cut -d' ' -f2)
            
            # If no directory is specified, use the current directory
            [ -z "$dir" ] && dir="."

            # List the contents of the specified directory
            ls "$dir"
            ;;
        "pwd")
            # Show the path to the current directory
            pwd
            ;;
        "hi")
            # Output a greeting with the current username
            echo "Hello $USER"
            ;;
        "exit")
            # End the script
            echo "Goodbye!"
            exit 0
            ;;
        *)
            # Handle unrecognized commands
            echo "Unknown command: $input"
            ;;
    esac
done
