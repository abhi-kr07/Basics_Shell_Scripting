#!/bin/bash

FILE_PATH="/home/ubuntu/folder"
current_day=$(date +%A)

# Loop through all .png files in the specified directory
for file in "$FILE_PATH"/*.png; do
    if [[ -e "$file" ]]; then
        # Extract filename without the .png extension
        filename=$(basename "$file" .png)
        # Create the new name using the current day
        new_name="${current_day}_${filename}.png"

        # If you want to rename all file in .txt then
        # file_name=$(basename "$file")
        # new_name="${file_path}/${file_name%.*}.txt"
        
        # Rename the file
        mv "$file" "${FILE_PATH}/${new_name}"
        echo "Renamed $file to ${FILE_PATH}/$new_name"
    fi
done
