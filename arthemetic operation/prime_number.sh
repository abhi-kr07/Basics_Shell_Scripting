#!/bin/bash
#

# user will give input and it will tell number is prime or not

read -p "Tell me the number and i will tell whether the number is prime or not " n
if [[ $n -eq 0 ]] || [[ $n -eq 1 ]];
then
    echo -e "Make sure just write the number which is more than 1 , \033[0;31m invalid input \033[0m"
fi

for (( i=2; i*i<n; i++ ));
do
    if [[ $(( n % i )) -eq 0 ]]; # or if (( n % i == 0 ))
    then
        echo "Number is not prime"
        exit 0
    fi
done
echo "Number is prime"

# find prime number till some range without flag means with continue 2

for i in {2..100};
do
    for (( j=2; j*j<i; j++ ));
    do
        if [[ $(( i  % j )) -eq 0 ]];
        then
            continue 2
        fi
    done
    echo $i
done

# With flag

for (( i=2; i<=100; i++ ));
do
        is_prime=1
        for (( j=2; j*j<=i; j++ ));
        do
                if (( i % j == 0 ));
                then
                        is_prime=0
                        break
                fi
        done
        if (( is_prime == 1 ))
        then
                echo "$i"
        fi
done
