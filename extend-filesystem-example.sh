#!/bin/bash

lsblk
 
#If it has Vmware it is a VMDK
lsblk -o NAME,SIZE,SERIAL,VENDOR
 
lsscsi -t
 
rescan-scsi-bus.sh --resize 
echo "pvresize /dev/sdb"
 
#to get info for lvextend and xfs_growfs
df -h
 
#extend logical volume 
echo "lvextend -L +400G /dev/mapper/<voluegroup>-<logicalvolume>"
 
#resize the filesystem to maximum size according to LV extension
echo "xfs_growfs /<filesystem>/<name>"
