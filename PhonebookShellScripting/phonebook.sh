#!/bin/bash
nameFile="Phonebook.txt"



if [[ ! -e $nameFile ]]; then
  touch "$nameFile"
fi

if [ "$1" = "new" ]; then
  echo "$2" "$3">> "$nameFile"
  echo "Added '$2' to phonebook.txt"
  echo "Added '$3' to phonebook.txt"
elif [ "$1" = "clear" ]; then
  rm "$nameFile"
elif [ "$1" = "list" ]; then
  cat "$nameFile"
else
  cat "$1" | grep "$nameFile"
fi
