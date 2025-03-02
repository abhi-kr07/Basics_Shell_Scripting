#!/bin/bash

# 1st method
file_path=/home/ubuntu/name.txt
awk '{print}' $file_path | wc -w

# 2nd method
wc -w < $file