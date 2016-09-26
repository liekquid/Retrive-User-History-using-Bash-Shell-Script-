#!/bin/bash

export HISTFILE="/home/dhruv/.bash_history"

echo "Enter History File Name:"
read $a
grep -v "^#" $HISTFILE >$a.txt

mv $a.txt hisory.txt
echo "history log stored"

## 1> is standard output,2 is standard error
uid=$(id -u)
echo "Your username : $(echo $USER)"
 
echo "Current date and time : $(date)"
 
echo "Currently logged on users:"
who

if [ "$(id -u)" != "0" ]; then
   echo "This user is root" 1>&2
   #exit 1
else 
   echo "User is $(echo $USER) "
fi