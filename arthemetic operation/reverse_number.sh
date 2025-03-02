#!/bin/bash
#

read -p "Enter the number you want to do reverse " n
sum=0
while [[ $n -ne 0 ]];
do
        digit=$(( n % 10 ))
        sum=$(( ( 10 * sum ) + digit ))
        n=$(( n / 10 ))
done
echo "reverse of the number is $sum"
