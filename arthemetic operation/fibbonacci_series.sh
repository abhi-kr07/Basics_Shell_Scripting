#!/bin/bash
#
# 0 1 1 2 3 5 8 13 21 34 55
#
read -p "Enter the number till you want fibbonacci series " n
a=0
b=1
for (( i=0; i<n; i++ ));
do
        echo -n "$a "
        c=$(( a + b ))
        a=$b
        b=$c
done
echo