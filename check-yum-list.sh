#!/bin/bash
#conf_location=/etc/yum.repos.d

yum list updates

yum check-update > /dev/null
#Print exit code
echo $?
