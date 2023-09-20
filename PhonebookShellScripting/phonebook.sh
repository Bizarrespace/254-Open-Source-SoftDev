#!/bin/bash
nameFile="Phonebook.txt"

if [ "$1" = "clear" ]; then
  rm "$nameFile"
fi

if [[ -e $nameFile ]]; then
  echo "File exists"
else
  echo "File does not exist"
  touch "$nameFile"
fi

if [ "$1" = "new" ]; then
  echo "$2" >> "$nameFile"
  echo "Added '$2' to phonebook.txt"
fi

if [ "$1" = "list" ]; then
  cat "$nameFile"
fi

