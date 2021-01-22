#!/bin/bash

echo "hostname"
hostname

echo "ip a"
ip a

echo "df -h"
df -h 

echo "lsscsi -t"
lsscsi -t

echo "pvs"
pvs
echo "lsblk -o NAME,SIZE,SERIAL,VENDOR"
lsblk -o NAME,SIZE,SERIAL,VENDOR
