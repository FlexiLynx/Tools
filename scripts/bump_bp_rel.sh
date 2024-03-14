#!/bin/bash

blue=`cat`
echo $blue | python3.12 ../Tools/blueutils.py mod - 'rel' $(( `echo $blue | python3.12 ../Tools/blueutils.py read - 'rel'` + 1 ))
echo
