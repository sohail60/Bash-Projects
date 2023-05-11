#!/bin/bash

# file_content=`cat colors.txt`
# echo "$file_content"

# file_content=$(cat colors.txt)
# echo "$file_content"

# file_content=${cat colors.txt}
# echo "$file_content"

# file_content=$(< colors.txt)
# echo "$file_content"

file=$1
# if [ -f $file ]      # -e
# then
#     echo "File Exists"
# else
#     echo "File doesn't exist"
#     exit 0
# fi

# while read -r line
# do
#     echo "$line"
# done < $file

# echo "brinjal"> veg.txt
# cat veg.txt

read -p "Enter a vegetable: " veg
echo "$veg">>veg.txt
cat veg.txt

read -p "Enter a vegetable: " veg
echo "$veg" | tee -a veg.txt    # It will show the current entered element

dir=$2
if [ -d $dir ]
then
    echo "Directory Exists"
else
    echo "Directory doesn't exist"
    exit 0
fi