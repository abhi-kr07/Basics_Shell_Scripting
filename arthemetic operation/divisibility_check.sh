#!/bin/bash
# Number is either divisible by 3 or 5 but not 15

for (( i=1; i<=100; i++ ));
do
        if  ( (( i % 3 == 0 )) || (( i % 5 == 0 )) )  && (( i % 15 != 0 ));
        then
                echo -n "$i "
        fi
done
echo
