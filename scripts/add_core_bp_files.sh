#!/bin/bash

cat | python3.12 ../Tools/blueutils.py add files - --root . $(git ls-tree -r main --name-only $(find . -name '*.py' -not -name 'test.py'))
echo # trailing newline
