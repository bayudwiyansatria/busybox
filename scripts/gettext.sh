#!/usr/bin/env bash

# Argument
VERSION=${1:-}

# Get Packages
apt-get install -y gettext

# Setup man
mv /usr/bin/envsubst envsubst
