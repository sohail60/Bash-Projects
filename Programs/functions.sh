#!/bin/bash

# Declaring functions

# function greeting{   
#     echo "Hello $1"
# }


greeting(){
    echo "Hello $1"
}

greeting Sohail

# Local and Global variable
n1=5

sum(){
    local n1=10
    n2=15
    echo "Value of n1 is $n1"
    echo "Value of n2 is $n2"
    echo $((n1+n2))
}

sum

echo "Value of n1 is $n1"
echo "Value of n2 is $n2"

# Overiding
echo(){
    builtin echo `date "+%Y%m%d-%H%M%S"`
    builtin echo $1
}

echo "Modified echo executed"