#!/bin/bash
#

file_path="/var/log"
days=1
sudo find "$file_path" -type f -name "*.log" -mtime +$days -exec rm -f {} \;
echo "Older file deleted"
