#!/bin/bash

declare -a arr
arr=('My' 'name' 'is' 'Sohail')

declare -A assoc_arr
assoc_arr=(
    [first]="Mango"
    [second]="Grapes"
    [third]="Apple"
)

# echo ${arr[0]}
# echo ${arr[@]}
# echo ${arr[*]}
# echo ${arr[-1]}

# echo ${assoc_arr[first]}
# echo ${assoc_arr[@]}
# echo ${assoc_arr[*]}
# echo ${assoc_arr[-2]}     # -ve not allowed in associative array

# Difference b/w @ and *
# for i in "${arr[@]}"    # Takes the array elements separately
# do
#     echo "$i"
# done

# for i in "${arr[*]}"    # Takes the array elements together
# do
#     echo "$i"
# done

# for i in "${assoc_arr[@]}"    # Takes the array elements separately
# do
#     echo "$i"
# done

# for i in "${assoc_arr[*]}"    # Takes the array elements together
# do
#     echo "$i"
# done

# How to get the index and the key
# for i in "${!arr[@]}"
# do
#     echo "$i"
# done

# for i in "${!assoc_arr[@]}"
# do
#     echo "$i"
# done

# Length
echo ${#arr[@]}
echo ${#assoc_arr[@]}

# delete an element
unset arr[2]
echo ${arr[@]}
echo ${!arr[@]}     # The indices are not automatically set. The deleted index is permanently deleted.

# delete whole array
unset arr
echo ${arr[@]}