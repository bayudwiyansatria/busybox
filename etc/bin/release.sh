#!/usr/bin/env bash

# Required Parameter
DOCKER_REGISTRY=${1:-docker.io}
REPOSITORY=${2:-bayudwiyansatria}
TAG=${3:-latest}

# Additional Parameter
MODULES=${4:-}

if [ -z "${MODULES}" ]; then
  docker build \
    -t "${DOCKER_REGISTRY}"/"${REPOSITORY}":"${TAG}" \
    .
else
  docker build \
    -t "${DOCKER_REGISTRY}"/"${REPOSITORY}":"${TAG}" \
    -f modules/"${MODULES}"/Dockerfile \
  .
fi

docker push "${DOCKER_REGISTRY}"/"${REPOSITORY}":"${TAG}"
