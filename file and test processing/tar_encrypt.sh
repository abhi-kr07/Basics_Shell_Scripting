#!/bin/bash
#
# This will actually tar your file and then it will be encrypted
#

source_path=$1
destination_path=$2

tar -cvf $destination_path $source_path
gpg -c $destination_path
rm -rf $destination_path