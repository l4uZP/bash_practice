#!/bin/bash

counter=0

until [ $counter -eq 10 ]
do
    ((counter++))
    echo "Counter: $counter"
done