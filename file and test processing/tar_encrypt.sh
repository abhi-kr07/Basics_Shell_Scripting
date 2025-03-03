#!/bin/bash
#
# This will actually tar your file, and then it will be encrypted
# source_path will be like /home/ubuntu/folder
# destination_path will be like /tmp/backup/"$timestamp"_backup_folder.tar.gz

# can also add in crontab using crontab -e
# ***** /path/of/your/backup.sh and make sure backup.sh has an executable permission

timestamp=$(date +"%y-%m-%d_%H-%M-%S")
source_path=$1
destination_path=$2

tar -cvf $destination_path $source_path
gpg -c $destination_path
rm -rf $destination_path
