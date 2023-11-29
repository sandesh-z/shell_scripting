#!/bin/sh
MY_MESSAGE="Hello World" #Space between "=" and varibale is not allowed. 
echo $MY_MESSAGE

MY_MESSAGE="Hello World"
MY_SHORT_MESSAGE=hi
MY_NUMBER=1
MY_PI=3.142
MY_OTHER_PI="3.142"
MY_MIXED=123abc



#if varibale is not assigned it returns empty value
echo "MYVAR is: $MYVAR"
MYVAR="hi there"
echo "MYVAR is: $MYVAR"


#reading from shell
GREETINGS="Hello? what's your name"
echo $GREETINGS
read NAME
echo "Hello $NAME - hope you're doing well today."
echo $NAME  #dollar sign is required to get value of a variable
echo NAME   #returns NAME string