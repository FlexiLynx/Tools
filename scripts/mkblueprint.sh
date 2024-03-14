#!/bin/bash

python3.12 ../Tools/blueutils.py gen blueprint \
    'flexilynx.core' \
    -n 'FlexiLynx Core Package' \
    -d 'Core files required to run FlexiLynx' \
    -u 'https://codeberg.org/FlexiLynx/BlueprintDatabase/raw/branch/main/flexilynx/core.json' \
    -U 'https://codeberg.org/FlexiLynx/FlexiLynxCore/raw/branch/main/'
echo # add trailing newline
