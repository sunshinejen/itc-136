#!/bin/bash

# Scripting Lab 2 Assignment
# ITC136 - Fall 2018
# Eddy Matlock-Mahon
# Jennifer Villacis
# Marcus Price

userloc=$(pwd)

username=$(whoami)

userid=$(id -u $username)

userrootprev=$(grep '^sudo:.*$' /etc/group | cut -d: -f4)

alluserprocesses=$(ps aux | grep $username)

echo -en "Here is info about who and where you are (in case you didn't know):

Your Directory Location: $userloc
                  
Your Username: $username
                  
Your User ID: $userid

Your Sudo Privileges: $userrootprev

Your Currently Running Processes:
$alluserprocesses
"
