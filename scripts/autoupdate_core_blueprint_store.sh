#!/bin/bash

cat ../Blueprints/flexilynx/core.json \
| ../Tools/scripts/add_core_bp_files.sh \
| ../Tools/scripts/set_core_bp_metaversion.sh \
| ../Tools/scripts/bump_bp_rel.sh \
| ../Tools/scripts/sign_blueprint.sh > ../Blueprints/flexilynx/core.json \
|| exit
com=`git rev-parse --short HEAD`
(
    cd ../Blueprints \
    && git add flexilynx/core.json \
    && git commit -m "Automatically updated from $com in FlexiLynxCore" \
    && git push
)
