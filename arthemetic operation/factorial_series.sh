#!/bin/bash

read -p "Enter the number for which you want Factorial: " n
fact=1
for (( i=1; i<=n; i++ ));
do
        fact=$(( fact * i ))
done
echo "factorial of given number is $fact"
