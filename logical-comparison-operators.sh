#!/bin/bash

if [[ -e "$1" && -r "$1" ]]
then
    echo -e "We can read the file that has been specified"
    exit 0
elif [[  ]]