#!/usr/bin/env bash

VERSION=${1:-0.4.5}
gruntwork-install --repo "https://github.com/gruntwork-io/fetch" --binary-name "fetch" --tag v"${VERSION}" --no-sudo true
