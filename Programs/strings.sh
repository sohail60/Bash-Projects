#!/bin/bash

# Logical operations
str1="P"    
str2="Q"

# if [ "$str1" \> "$str2" ]       # numberic logical operators are not availbale for strings
# then
#     echo "$str1 is greater than $str2"
# else
#     echo "$str1 is less than or equal to $str2"
# fi

if [ ! "$str1" \> "$str2" ]       # we cant use less than or equal to in Bash but we can make that that of 
then                              # logic
    echo "$str1 is less than or equal to $str2"
else
    echo "$str1 is greater than $str2"
fi

# Length
str='sohail'

# if[ -z "$str" ]
# then
#     echo "Empty"
# else
#     echo "Non Empty"
# fi

# if[ -n "$str" ]
# then
#     echo "Empty"
# else
#     echo "Non Empty"
# fi

echo "${#str}"
echo `expr length "$str"`
echo -n $str | wc -c
echo $str | awk '{print length}'

# substring
echo ${str:2:2}

# concatenation
echo "$str1 $str2"