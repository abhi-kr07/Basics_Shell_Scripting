#!/bin/bash
#
read -p "Enter the number you want to check whether it is palindrome or not " n
temp=$n
sum=0
while [[ $n -ne 0 ]];
do
        digit=$(( n % 10 ))
        sum=$(( ( sum * 10 ) + digit ))
        n=$(( n / 10 ))
done
if [[ "$temp" -eq "$sum" ]];
then
        echo "Number is Palindrome"
else
        echo "Number is not Palindrome"
fi
