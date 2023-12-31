#!/bin/bash

#calling external programe and saving into variables

NAME=`grep "^${USER}:" /etc/passwd | cut -d: -f5`
echo "$NAME" 
#another way
MYNAME=$(grep "^${USER}:" /etc/passwd | cut -d: -f5)
echo "MYNAME: $MYNAME"