#!/bin/bash

case ${1,,} in
  akshat | admin)
    echo "oh, hi super admin"
    ;;
  user)
    echo "hi, welcome user"
    ;;
  *)
    echo "who are you?? man!"
    ;;
esac
