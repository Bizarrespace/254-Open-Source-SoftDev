#!/bin/bash
nameFile="Phonebook.txt"

#Check to see that the file does not exist, if it does not then make the file
if [[ ! -e $nameFile ]]; then
  touch "$nameFile"
fi

if [ "$1" = "new" ]; then
  echo "$2" "$3">> "$nameFile"
  echo "Added '$2' '$3' to Phonebook.txt"
elif [ "$1" = "clear" ]; then
  rm "$nameFile"
  echo "Deleted Phonebook.txt"
elif [ "$1" = "list" ]; then
  cat "$nameFile"
elif [ "$1" = "remove" ]; then
  sed -i "/^$2 /d" "$nameFile"

  #sed is a command used to edit the file in place
  #"/^$2 /d", breaking this down we use / as a delimiter to separate the different parts of sed
  #^ is a regular expression meaning to match the beginning of a line,
  #then we look for the second argument which is going to be the name
  #we have a space to represent the gap between the name and the number when Added
  #/d tells sed to delete the line that matches the regular expression we gave

  echo "Removed '$2' from Phonebook.txt"
else
  grep "^$1 " "$nameFile"
  #Use grep to look for the beginning of the line for the name we are given within the file
  #grep by default prints the entire line which is what we want
fi
