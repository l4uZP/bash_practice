#!/bin/bash

for variable in 1 2 3 4
do
	echo $variable
done


for url in "google.com autonomia.digital hackthebox.com"
do
	ping -c 1 $url
done