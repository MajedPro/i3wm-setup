#!/usr/bin/env bash

#PUT THIS FILE IN ~/.scripts/finder.sh
#USE: rofi  -show find -modi find:~/.scripts/finder.sh
if [ ! -z "$@" ]
then
  QUERY=$@
  if [[ "$@" == /* ]]
  then
    if [[ "$@" == *\?\? ]]
    then
      coproc ( exo-open "${QUERY%\/* \?\?}"  > /dev/null 2>&1 )
      exec 1>&-
      exit;
    else
      coproc ( exo-open "$@"  > /dev/null 2>&1 )
      exec 1>&-
      exit;
    fi
  elif [[ "$@" == \!\!* ]]
  then
    echo "!!-- Type your search query to find files"
    echo "!!-- To search again type !<search_query>"
    echo "!!-- To search parent directories type ?<search_query>"
    echo "!!-- You can print this help by typing !!"
  elif [[ "$@" == \?* ]]
  then
    while read -r line; do
      echo "$line" \?\?
    done <<< $(find / -iname *"${QUERY#\?}"* 2>&1 | grep -v 'Permission denied\|Input/output error')
  else
    find / -iname *"${QUERY#!}"* 2>&1 | grep -v 'Permission denied\|Input/output error'
  fi
else
  echo "!!-- Type your search query to find files"
  echo "!!-- To search again type !<search_query>"
  echo "!!-- To search parent directories type ?<search_query>"
  echo "!!-- You can print this help by typing !!"
fi
