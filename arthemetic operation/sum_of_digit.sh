#!/bin/bash
#

read -p "Enter the number for which you want to do some of digit " n
while [[ $n -ne 0 ]];
do
        digit=$(( n % 10 ))
        sum=$(( sum + digit ))
        n=$(( n / 10 ))
done
echo "sum of digit of the number will be $sum"
