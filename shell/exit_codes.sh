#!/bin/bash

showname() {
  echo hello $1
  if [ ${1,,} = akshat ];  then
    return 0
  else
    return 1
  fi
}

showname $1
if [ $1 = 1 ]; then
  echo "who are you???"
fi
