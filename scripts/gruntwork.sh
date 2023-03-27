#!/usr/bin/env bash

VERSION=${1:-v0.0.38}
curl -LsS https://raw.githubusercontent.com/gruntwork-io/gruntwork-installer/v0.0.38/bootstrap-gruntwork-installer.sh | bash /dev/stdin --version "${VERSION}" --no-sudo true
