#!/bin/bash

# if else
if [ $1 == "Sohail" ]
then
    echo "You are owner"
else
    echo "You are not owner"
fi

# if elif else
a=100
b=200
c=300

if [[ $a -gt $b && $a -gt $c ]]     # [ $a -gt $b ] && [ $a -gt $c ]
then
    echo "a is greatest"
elif [[ $b -gt $c && $b -gt $a ]]
then
    echo "b is greatest"
else
    echo "c is greatest"
fi

# case statements
echo "Enter car company"
read car

case $car in 
    "BMW")
        echo "This is BMW";;
    "Mercedes")
        echo "This is Mercedes";;
    "Honda")
        echo "This is Honda";;
    *)
        echo "None of the above cars";;
esac