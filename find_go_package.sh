#!/bin/bash

if [ $# -lt 1 ]; then
	echo "script needs at least one param."
	exit
fi

escpath="$(go env GOPATH)/bin/$1"

if  [ -x $escpath ]; then
	echo "binary found in: " $escpath
else
	echo "binary not installed"
fi
