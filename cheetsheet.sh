#!/bin/bash

# Check if argument is provided

if grep -q "^export cheetsheet_path=" ~/.bashrc; then
    echo "${cheetsheet_path} is defined in ~/.bashrc."


else 
    echo "${cheetsheet_path} is not defined in ~/.bashrc."
    chosen_directory=$(zenity --file-selection --directory --title="Choose a Cheetsheets Folder")
    echo "export cheetsheet_path=${chosen_directory}" >> ~/.bashrc
    . ~/.bashrc
fi

echo $cheetsheet_path

if [ $# -eq 0 ]; then
    echo "Enter the name of cheetsheet correctly"
    exit 1
fi


choice=$(echo "$1" | tr '[:upper:]' '[:lower:]')

Folder=$cheetsheet_path

match=$(find "$Folder" -type f -iname "$choice"* -print -quit)

if [ -n "$match" ]; then
    echo $match
    xdg-open "$match"
else
    echo "Cheetsheet not found: $Folder/$choice"*
    exit 1
fi
