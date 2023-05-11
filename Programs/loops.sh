#!/bin/bash

# for in loop
for i in {1..10..2}
do
    echo $i
done

# C style for loop
for ((i=0;i<10;i++))
do
echo $i
done

# while loop
i=0
while [ $i -lt 10 ]
do
    echo $i
    ((i++))
done

# until loop
i=20
until [ $i -lt 10 ]
do
    echo $i
    ((i--))
done