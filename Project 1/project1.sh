#!/bin/bash

# Displays a quote every time we open a terminal

QUOTECOLOR="\e[33m"
GREETINGCOLOR="\e[31m"
NORMALCOLOR="\e[0m"
i=0     # Keeps a count of number of lines

while read -r line
do
    arr[$i]=$line   # creates an array containing all the quotes
    i=$((i+1))
done < /home/sohail/Desktop/Bash_Projects/quotes.txt

random=$((RANDOM%i))    # generates a random no between 0 and no of lines

# formatted printing
echo -e "${GREETINGCOLOR}===============================================================================        Welcome `whoami`!        ===============================================================================\n"
echo -e "${QUOTECOLOR}${arr[$random]}\n"    # printing a random quote

# Now we have to add the path of this file to .bashrc, so that each time terminal opens, a random quote is displayed.