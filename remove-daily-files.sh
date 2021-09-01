#!/bin/bash
#Author: char00les
#Date: 09-01-2021
#

#Purpose: Delete old files that are month old via cron
#Test: find /folder/misc/*/*/daily/ -daystart -mtime 1 -type f

echo "Search and delete files that are a yesterday old"
/bin/find /folder/misc/*/*/monthly/ -daystart -mtime 1 -type f -exec /bin/rm -fv {} \;


