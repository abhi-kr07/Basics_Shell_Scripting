#!/bin/bash

# Addition of two number

read -p "1st number: " n1
read -p "2nd number " n2
echo "Addition of above two number is : $(( n1 + n2 ))"


# addtion of number in a given range
sum=0
for i in {1..10};
do
        sum=$(( sum + i ))
done
echo "sum of 10 number is : $sum"



# if user will give number, add till the user will give

add=0
read -p "Enter how many number do you want to add: " n
for ((i=1; i<=n; i++ ));
do
        echo -n "Enter number $i: "
        read r
        add=$(( add + r ))
done
echo "Addition of the given number is: $add"
