#!/bin/bash

ldaphostname=$1 
nc -z $ldaphostname 636 && echo Success || echo Failed
