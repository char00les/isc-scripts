#!/bin/bash
# Author: char00les
# Date: 09-01-2021
# About: Create Application Directories


#Make sure you are using the correct environments
environments="poc"

#Change this value depending on the folder
folder=$1

mainFolder="/files"

user="em"
group="er"

echo ""
echo "===================="
echo "Variables"
echo "===================="
echo "Environments: $environments"
echo "Name of Folder = $folder"
echo ""

sleep 10


for env in $environments; do

        echo "===================="
        echo "$env"
        echo "===================="

        mkdir ${mainFolder}/$env/$folder/
		
		
		echo "Creating the monthly folder"
        mkdir ${mainFolder}/$env/$folder/monthly/
        chown ${user}:${group} ${mainFolder}/$env/$folder/monthly/
        chmod 2775 ${mainFolder}/$env/$folder/monthly/

		echo "Creating the nopurge folder"
        mkdir ${mainFolder}/$env/$folder/nopurge/
        chown ${user}:${group} ${mainFolder}/$env/$folder/nopurge/
        chmod 2775 ${mainFolder}/$env/$folder/nopurge/
		
		echo "Creating the weekly folder"
        mkdir ${mainFolder}/$env/$folder/weekly/
        chown ${user}:${group} ${mainFolder}/$env/$folder/weekly/
        chmod 2775 ${mainFolder}/$env/$folder/weekly/
		
		echo "Creating the yearly folder"
        mkdir /$user/nonprdfiles/misc/$env/$folder/yearly/
        chown ${user}:${group} ${mainFolder}/$env/$folder/yearly/
        chmod 2775 ${mainFolder}/$env/$folder/yearly/

        echo ""
        echo ""

done
