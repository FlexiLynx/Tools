#!/bin/bash

blue=`cat`
prev=`echo $blue | python3.12 ../Tools/blueutils.py read - 'version'`
echo $blue | python3.12 ../Tools/blueutils.py mod - --as-string 'version' \
 "Git commit: $(git rev-parse --short HEAD)\
 (prev: $(echo "${prev#\'Git commit: }" | cut -d ' ' -f 1))"
echo
