#!/bin/bash
file_path="/home/ubuntu/file_test_processing/folder.txt"
if [[ -s $file_path ]];
then
        echo "file is not empty"
else
        echo "file is empty"
fi
