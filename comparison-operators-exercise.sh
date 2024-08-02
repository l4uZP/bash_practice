#!/bin/bash

var="8dm7KsjU28B7v621Jls"
value="ERmFRMVZ0U2paTlJYTkxDZz09Cg"

for i in {1..40}
do
    var=$(echo $var | base64)
    
    # 1. test the length of $var. It should be greater than 113.450
    # if [[ $(echo $var | wc -c) -gt 113450 ]]
    # then
    #     echo -e "has correct length \n"
    # fi

    # 2. test if value is contained on the var
    # if [[ $var == *$value* ]]
    # then
    #     echo -e "$var a ber \n"
    # fi

    # 3. join these conditionals
    # if [[ $(echo $var | wc -c) -gt 113450 && $var == *$value* ]]
    # then
    #     echo -e "This is the variable"
    # fi

    # 4. print the last 20 characters of the result
    if [[ $(echo $var | wc -c) -gt 113450 && $var == *$value* ]]
    then
        echo -e "This is the required value: ${var:0-20}"
        exit 0
    fi
done