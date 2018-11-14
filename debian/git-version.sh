#!/bin/sh
# Script to output a version string with the number of commits since the common
# ancestor appended to the manually hardcoded API version
API_VERSION="1.3"

# There are no tags, so manually hardcode commit ID where API_VERSION was created.
COMMON_ANCESTOR="02ffc719aa9f9c1dce5ce05743fb1afe6cbf17ea"

NB_OF_COMMITS=`git rev-list $COMMON_ANCESTOR..upstream-unstable --count`
echo "$API_VERSION.$NB_OF_COMMITS"
