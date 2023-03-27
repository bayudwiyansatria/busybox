#!/usr/bin/env bash

VERSION=${1:-1.2.4}
wget -q https://releases.hashicorp.com/terraform/"${VERSION}"/terraform_"${VERSION}"_linux_amd64.zip && unzip terraform_"${VERSION}"_linux_amd64.zip
