#!/bin/bash

if [[ -e "$1" && -r "$1" ]]
then
    echo -e "We can read the file that has been specified"
    exit 0
elif [[ ! -e "$1" ]]
then
    echo -e "The specified file does not exist."
    exit 2
elif [[ -e "$1" && ! -r "$1" ]]
then
    echo -e "We don't have read permission for this file"
    exit 1
else
    echo -e "Error ocurred"
    exit 5
fi