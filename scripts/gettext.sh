#!/usr/bin/env bash

VERSION=${1:-}

apt-get install -y gettext
mv /usr/bin/envsubst envsubst
