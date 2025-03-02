#!/bin/bash

# Accept hostname and port as arguments
hostname=$1
port=$2

# Check if hostname and port are provided
if [[ -z "$hostname" || -z "$port" ]]; then
    echo "Usage: $0 <hostname> <port>"
    exit 1
fi

# Use netcat to check if the port is open
nc -zv -w 5 "$hostname" "$port" &> /dev/null

# Check the exit status of the nc command
if [[ $? -eq 0 ]]; then
    echo "Port $port on $hostname is open."
else
    echo "Port $port on $hostname is closed or unreachable."
fi