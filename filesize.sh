#!/bin/bash

read -p "Enter the filename: " filename

# Create a file with 4KB size
head -c 4KB /dev/urandom > "$filename"

filesize=$(wc -c < "$filename")
echo "Filesize: $filesize"

# Set the target size to 1024 KB (1 MB)
target_size=$((1024 * 1024))

until [ $filesize -ge $target_size ]; do
    # Use a temporary file for concatenation
    tmpfile=$(mktemp)
    cat "$filename" "$filename" > "$tmpfile"
    mv "$tmpfile" "$filename"
    
    filesize=$(wc -c < "$filename")
    echo "Filesize: $filesize"
done
