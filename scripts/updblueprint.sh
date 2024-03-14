#!/bin/bash

cd ./FlexiLynxCore
blue=`cat`
# add files
blue=`echo $blue | python3.12 ../Tools/blueutils.py add files - --root . $(git ls-tree -r main --name-only $(find . -name '*.py' -not -name 'test.py'))`
# set version tag and output
prev=`echo $blue | python3.12 ../Tools/blueutils.py read - 'version'`
echo $blue | python3.12 ../Tools/blueutils.py mod - 'version' "'Git commit: $(git rev-parse --short HEAD) (prev: $(echo "${prev#\'Git commit: }" | cut -d ' ' -f 1))'"
# cleanup
echo
cd ..
