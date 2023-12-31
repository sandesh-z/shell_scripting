#!/bin/sh
#ifs is a internal field separated, by default it is set to Space Tab Newline
old_IFS="$IFS"
echo $old_IFS
#this
IFS=:
 
echo "Please input some data separated by colons ..."
read x y z
IFS=$old_IFS
 
echo "x is $x y is $y z is $z"