#!/bin/bash
#

read -p "Enter the number and i will tell you whether the number is armstrong or not " n
digit_count=${#n}
temp=$n
sum=0
while [[ $n -ne 0 ]];
do
        digit=$(( n % 10 ))
        sum=$(( sum + digit ** digit_count ))
        n=$(( n / 10 ))
done
if [[ "$temp" -eq "$sum" ]];
then
        echo "Number is Armstrong"
else
        echo "Number is not Armstrong"
fi
