#!/bin/sh -l
env
cd /tmp
git clone -v -b $2 --single-branch --recurse-submodules https://github.com/$1.git spirv-headers
cd spirv-headers
gbp buildpackage --git-verbose --git-force-create --git-upstream-tree="branch" --git-ignore-branch --git-upstream-branch="$2" --no-sign
cp -v ../spirv-headers*20.04*.deb $GITHUB_WORKSPACE
