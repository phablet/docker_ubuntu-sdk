#!/bin/bash

set -x

cd $(dirname ${BASH_SOURCE})

#DRYRUN=echo

for suite in `find . -mindepth 1 -maxdepth 1 -type d ! -name .git -printf %f\\\\n`; do
  echo "#### ${suite} ####"

  ${DRYRUN} docker build --no-cache=true -t phablet/ubuntu-sdk:${suite} ${suite}
done
