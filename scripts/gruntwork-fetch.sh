#!/usr/bin/env bash

# Argument
VERSION=${1:-0.4.5}

# Get Packages
gruntwork-install --repo "https://github.com/gruntwork-io/fetch" --binary-name "fetch" --tag v"${VERSION}" --no-sudo true
