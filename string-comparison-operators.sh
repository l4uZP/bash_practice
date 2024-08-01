#!/bin/bash

if [ "$1" != "holi" ]
then
	echo -e "You need to write 'holi' as first argument"
	exit 1
elif [ $# -gt 1 ]
then
	echo -e "Too many arguments."
	exit 1
else
	domain=$1
	echo -e "Holi there! :)"
fi
