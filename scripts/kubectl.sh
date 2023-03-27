#!/usr/bin/env bash

VERSION=${1:-1.24.2}
curl -LO https://dl.k8s.io/release/v"${VERSION}"/bin/linux/amd64/kubectl && install -o root -g root -m 0755 kubectl /usr/local/bin/kubectl
mv /usr/local/bin/kubectl kubectl
