#!/bin/bash
##

# DevOps method
read -p "Enter any word: " word
read -p "Which character you want to count in the $word: " char

char_count=$( echo $word | grep -o "$char" | wc -l )
echo "number of $char character is $char_count"

# Generic method
n=${#word}
count=0
for (( i=0; i<n; i++ ));
do
        if [[ "$char" == "${word:$i:1}" ]];
        then
                count=$(( count + 1 ))
        fi
done
echo "count is $count"
