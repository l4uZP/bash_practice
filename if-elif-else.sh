#!/bin/bash

value=$1

if [ $value -gt "10" ]
then
	echo $value "is greater than 10"
elif [ $value -lt "10" ]
then
	echo $value "is less than 10"
else
	echo $valie "is not a number"
fi
