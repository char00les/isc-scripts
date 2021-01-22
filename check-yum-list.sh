#!/bin/bash

yum list updates

yum check-update > /dev/null
#Print exit code
echo $?
