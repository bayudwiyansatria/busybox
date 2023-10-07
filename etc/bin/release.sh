#!/usr/bin/env bash

# Required Parameter
DOCKER_REGISTRY=${1:-docker.io}
REPOSITORY=${2:-bayudwiyansatria}
TAG=${3:-latest}
VERSION=${4:-}

# Additional Parameter
MODULES=${5:-}

if [ -z "${MODULES}" ]; then
  docker build \
  --build-arg="VERSION=${VERSION}" \
  -t "${DOCKER_REGISTRY}"/"${REPOSITORY}":"${TAG}" \
  .
else
  docker build \
    --build-arg="VERSION=${VERSION}" \
    -t "${DOCKER_REGISTRY}"/"${REPOSITORY}":"${TAG}" \
    -f modules/"${MODULES}"/Dockerfile \
  .
fi

docker push "${DOCKER_REGISTRY}"/"${REPOSITORY}":"${TAG}"
