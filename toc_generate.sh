#!/bin/bash
  
file=$1
sdepth=${2:-1}
edepth=${3:-5}
ignore=`expr $sdepth - 1`
grep -E "^#{$sdepth,$edepth} " $file | sed -E 's/(#+) (.+)/\1:\2:\2/g' | awk -F ":" '{ gsub(/^#{'$ignore'}/, "", $1); gsub(/#/,"\t",$1); gsub(/[ ]/,"-",$3); print $1 "- [" $2 "](#" tolower($3) ")" }'






