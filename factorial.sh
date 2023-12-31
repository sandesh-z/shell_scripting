#!/bin/sh

factorial()
{ 
  if [ "$1" -gt "1" ]; then
    i=`expr $1 - 1`
    j=`factorial $i`
    k=`expr $1 \* $j`
    echo $k
  else
    echo 1
  fi
}


while :
do
  echo "Enter a number:"
  read x
  echo "${#x}"
  if [ ${#x} -gt 3 ]; then
    echo "I can not calulate, numbers would be too big. Please. No."
  fi
  factorial $x
done