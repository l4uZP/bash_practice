#!/bin/bash

function given_args {
    if [ $# -lt 1 ]
    then
        echo -e "Number of arguments: $#"
        return 1
    else
        echo -e "Number of arguments: $#"
        return 0
    fi
}

# Show exit status with $?
given_args
echo -e "Function status code: $?\n"

# Exit status stored in a variable
status=$(given_args "something")
echo -e "Content: \n$status"