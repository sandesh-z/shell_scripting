#!/bin/bash

#for loops
for i in 1,2,3,4,5,9
do
    echo "Looping..number $i"
done    

#every thing that comes after "for i in " is set to i 
for i in hello 1 * 2 goodbye
do
    echo "Looping.. i is set to $i"
done    

#while loops
INPUT_STRING=Hello
while [ "$INPUT_STRING" != "bye" ] #space around "[" and "!=" is required if not syntax error is thrown
do 
    echo "Please type something in (bye to quit)"
    read INPUT_STRING
    echo "You entered $INPUT_STRING"
done    

# #
while :
do
  echo "Please type something in (^C to quit)"
  read INPUT_STRING
  echo "You typed: $INPUT_STRING"
done

#cases with while loops
#file should end with new line to read every line..
while read input_text
do
  case $input_text in
        hello)          echo English    ;;
        howdy)          echo American   ;;
        gday)           echo Australian ;;
        bonjour)        echo French     ;;
        "guten tag")    echo German     ;;
        hola)           echo Spanish    ;;
        *)              echo Unknown Language: $input_text
        ;; # ";;" ends each statement in switch case and "esac" ends switch case
   esac
done < test_file.txt #read text from test_file.txt 
