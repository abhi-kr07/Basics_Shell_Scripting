#!/bin/bash
#

file_path="/home/ubuntu/file_test_processing/test.txt"
count_words=$( awk '{print $0}' $file_path | wc -w )
echo "$count_words"

