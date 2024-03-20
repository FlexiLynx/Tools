#!/bin/bash

../Tools/scripts/mkblueprint.sh | \
../Tools/scripts/add_core_bp_files.sh | \
../Tools/scripts/set_core_bp_metaversion.sh | \
python3.12 ../Tools/blueutils.py crypt casc add-trust - ../shae.pyk ../shae.bkp.pyk | \
../Tools/scripts/sign_blueprint.sh > ../Blueprints/flexilynx/core.json
