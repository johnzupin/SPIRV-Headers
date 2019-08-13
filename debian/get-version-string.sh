#!/bin/bash
#Example of a SPIRV-Headers tag: 1.4.1

[ -z "$1" ] && echo "Must supply the upstream commit to build on" && exit 1

UPSTREAM_COMMIT=$1
# LATEST_TAG_INFO[0]: Latest Tag
# LATEST_TAG_INFO[1]: Number of Commits since tag and supplied commit
# LATEST_TAG_INFO[2]: Tag's commit (currently not used)
LATEST_TAG_INFO=( $(git describe --tags --match '[0-9]*.[0-9]*.[0-9]*' $UPSTREAM_COMMIT | tr "-" " ") )

TAG=${LATEST_TAG_INFO[0]}
NUM_COMMITS=${LATEST_TAG_INFO[1]}
echo "$TAG+$NUM_COMMITS-1"
