#!/bin/bash

if [ $# -eq 0 ]
then
	echo -e "You need to specify the target domain.\n"
	echo -e "Usage:"
	echo -e "\t$0 <domain>"
	exit 1
elif [ $# -eq 1 ]
then
	domain=$1
else
	echo -e "Too many arguments"
	exit
fi
