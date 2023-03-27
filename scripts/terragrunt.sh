#!/usr/bin/env bash

VERSION=${1:-0.38.4}
fetch --repo="https://github.com/gruntwork-io/terragrunt" --tag="v${VERSION}" --release-asset="terragrunt_linux_amd64" /usr/local/bin/
mv /usr/local/bin/terragrunt_linux_amd64 terragrunt
chmod +x terragrunt
