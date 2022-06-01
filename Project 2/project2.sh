#!/bin/bash

filename="backup_`date +%d_%m_%Y_%H_%M_%S`.tar"

tar -cvf /home/sohail/Documents/backup/${filename} /home/sohail/Desktop/Bash_Projects       # make a local backup
            #backup destination                             #backup source


# We have to generate a public SSH key so that we dont have to give password everytime. 
# ssh-gen  --> cmd to create SSH key
# The key will be created in ~/.ssh/
# Now we will navigate to ~/.ssh/
# We will send this public SSH key to the server in which we want to create our backup.
# ssh-copy-id -i id_rsa.pub username@ip_address  --> cmd to send the SSH key
# We will make sure that SSH is active in the server computer.

scp /home/sohail/Documents/backup/${filename} username@ip_address:address       # make remote copy on another server

# crontab -
# We have to include theschedule and the file name in the crontab.