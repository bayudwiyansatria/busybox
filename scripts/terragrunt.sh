#!/usr/bin/env bash

# Argument
VERSION=${1:-0.38.4}

# Get Packages
fetch --repo="https://github.com/gruntwork-io/terragrunt" --tag="v${VERSION}" --release-asset="terragrunt_linux_amd64" /usr/local/bin/

# Setup man
mv /usr/local/bin/terragrunt_linux_amd64 terragrunt
chmod +x terragrunt
