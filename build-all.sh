#!/bin/bash

set -x

cd $(dirname ${BASH_SOURCE})

#DRYRUN=echo

DOCKER_USER=$(docker info | grep Username: | awk '{print $2}')
[ -n "${DOCKER_USER}" ] && DOCKER_USER=${DOCKER_USER}/

for suite in `find . -mindepth 1 -maxdepth 1 -type d ! -name .git -printf %f\\\\n`; do
  echo "#### ${suite} ####"

  ${DRYRUN} docker build --no-cache=true -t ${DOCKER_USER}ubuntu-sdk:${suite} ${suite}
done
