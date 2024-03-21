#!/bin/bash

# Check if argument is provided
if [ $# -eq 0 ]; then
    echo "Enter the name of cheetsheet correctly"
    exit 1
fi



Folder="/home/rajabala/Desktop/Rajabala/cheatsheets"

list_files() {
    echo "Available Cheetsheets:"
    ls --color=auto "$Folder"
}

if [ "$1" = "list" ]; then
    list_files
    exit 0
fi

choice=$(echo "$1" | tr '[:upper:]' '[:lower:]')


match=$(find "$Folder" -type f -iname "$choice"* -print -quit)


if [ -n "$match" ]; then
    echo $match
    xdg-open "$match"
else
    echo "File not found: $Folder/$choice"*
    exit 1
fi
