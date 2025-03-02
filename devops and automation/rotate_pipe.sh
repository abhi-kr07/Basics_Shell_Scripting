#!/bin/bash
#
# rotate same line in circular till it is interuppted
#
array=( '|' '/' '-' '\' )
while true;
do
        for i in "${array[@]}";
        do
                echo -ne "\r $i"
                sleep 0.5s
        done
done
# we use "\r" so that cursor always go to the start point of the line and -ne because e for escape character to use and n for not go to next line