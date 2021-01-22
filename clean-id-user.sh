#!/bin/bash

user=$1
id $user | tr "," "\n"
