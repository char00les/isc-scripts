#!/bin/bash


#Input your filesystem
filesystem=$1

while :
do
	echo "===== $(date) ====="
	df -h | grep $filesystem
	echo ""
	echo ""
	sleep 60	
	
	
	
done
