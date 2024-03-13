#!/bin/bash

BP=`cat ./Blueprints/flexilynx/core.json \
| ./Tools/scripts/updblueprint.sh \
| FLEXILYNX_ENTRYPOINT=./FlexiLynxCore/__entrypoint__.py python3.12 ./Tools/blueutils.py crypt sign - ./shae.pyk`
echo "$BP" > ./Blueprints/flexilynx/core.json \
    && (cd ./Blueprints/; git add flexilynx/core.json && git commit -m 'Automatically updated from commit in FlexiLynxCore' && git push)