#!/bin/bash
# check the Ist top 5 request comes to the apache server
#
#

file_path="/var/log/apache2/access.log"
echo "Top 5 IP address is: "
awk '{print $1}' "$file_path" | sort -nr | uniq -c | head -n 5
