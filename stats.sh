#!/bin/bash

#how much disk space has been used
#df -h
diskused=$( df -h | grep "/dev/sda1" | awk '{print $5}' )

#how much memory is free
#free -h
memfree=$( free -mh | grep Mem: | awk '{print $4}' ) 
 
#how many connections there are to the current machine
#netstat 
connections=$( netstat | grep tcp )

#who is logged in
#who
users=$( who)


echo -en " \e[35mMagenta This is a snap shot of your current system:
    \e[36mCyan    Disk used: $diskused
    \e[35mMagenta   Free memory : $memfree 
    \e[92mLight green    Logged in Users: $users
    \e[93mLight yellow    Open connections:$connections"
