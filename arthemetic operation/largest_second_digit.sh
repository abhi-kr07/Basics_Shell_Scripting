#!/bin/bash
# DevOps method
read -p "Enter the number I will give you the largest and second largest number " n
number=$( echo "$n" | grep -o . | sort -r | uniq )
largest_number=$( echo "$number" | sed -n '1p' )
second_largest=$( echo "$number" | sed -n '2p' )
echo "largest number is $largest_number"
echo "Second largest number is $second_largest"

# Generic method
read -p "Enter the number " n
largest=-1
second=-1
while [[ "$n" -ne 0 ]];
do
        d=$(( n % 10 ))
        n=$(( n / 10 ))
        if [[ "$d" -gt "$largest" ]];
        then
                second=$largest
                largest=$d
        elif [[ "$d" -gt "$second" ]] && [[ "$d" -ne "$largest" ]];
        then
                second=$d
        fi
done
echo "Largest digit is $largest"
echo "Second largest digit is $second"
