#!/bin/bash
file_path="/home/ubuntu/file_test_processing/folder.txt"
if [[ -f $file_path ]];
then
        if [[ -s $file_path ]];
        then
                echo "File is not empty"
        else
                echo "File is empty"
        fi
else
        echo "file is not there"
fi

# be done same as Directory
folder_path="/home/ubuntu/folder"
if [[ -d $folder_path ]];
then
        echo "Directory exists"
        if [[ -z $(ls -A $folder_path) ]];
        then
                echo "But the Directory is empty"
        else
                echo "Directory is not empty"
        fi
fi



