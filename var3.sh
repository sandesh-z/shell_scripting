#!/bin/bash
echo -en "What is your name [ `whoami` ] "
read myname
# if [ -z "$myname" ]; then
#   myname=`whoami`
# fi
#here default value would would be whoami which is defined with :-'whoami'
echo "Your name is : ${myname:-`whoami`}"

#here default value would be John Does
echo "Your name is : ${myname:-John Doe}"

#another way to define default variable
echo "Your name is : ${myname:= Also John Doe}"