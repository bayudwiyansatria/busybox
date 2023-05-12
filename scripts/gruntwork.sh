#!/usr/bin/env bash

# Argument
VERSION=${1:-v0.0.38}

# Get Packages
curl -LsS https://raw.githubusercontent.com/gruntwork-io/gruntwork-installer/v0.0.38/bootstrap-gruntwork-installer.sh | bash /dev/stdin --version "${VERSION}" --no-sudo true
