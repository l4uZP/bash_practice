#!/bin/bash

if [ $# -lt 1 ]
then
    echo -e "The number of arguments is less than 1"
    exit 1
elif [ $# -gt 1 ]
then
    echo -e "The number of arguments is greater than 1"
    exit 1
else
    domain=$1
    echo -e "Number of argumens equals to 1"
fi
