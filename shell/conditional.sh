#!/bin/bash

if [ ${1,,} = akshat ]; then
  echo "oh, hi super user"
elif  [ ${1,,} = user ]; then
  echo "you're just a user man!, welcome"
else
  echo "who are you???"
fi
