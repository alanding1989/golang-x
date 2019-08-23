#! /usr/bin/env bash


# File Name    : che.sh
# Author       : AlanDing
# Created Time : Fri 23 Aug 2019 01:33:07 AM CST
# Description  : auto pull all dirs


cpath=$(pwd)

#ls | while read file



for file in $(ls) ; do
  echo "$file"
  if [ -d "$file" ]; then
    cd "$file" || exit 1
    git checkout master
    git pull origin master:master
    cd "$cpath" || exit 1
  fi
done
