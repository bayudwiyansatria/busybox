#!/usr/bin/env bash

# Argument
VERSION=${1:-1.2.4}

# Get Packages
wget -q https://releases.hashicorp.com/terraform/"${VERSION}"/terraform_"${VERSION}"_linux_amd64.zip && unzip terraform_"${VERSION}"_linux_amd64.zip
