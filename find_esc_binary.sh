#!/bin/bash

echo 'Start looking'
found=0

if [ $found -eq 0 ]; then
    GP=`go env GOPATH`
    echo GP
    while IFS=':' read -ra GOP; do
        for i in "${GOP[@]}"; do
            if [ -f $i/bin/esc ]; then
                found=1
		echo 'Binary found'
		echo $i
		mkdir $1 
		cp $i/bin/esc $1/esc 
            fi
        done
    done <<< "$GP"
fi
