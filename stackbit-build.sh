#!/usr/bin/env bash

set -e
set -o pipefail
set -v

echo "stackbit-build.sh: start build"

# build site
hugo

./inject-stackbit-widget.js public https://localhost:8092/init.js 6005ff7235c5fb55a0caae1c

echo "stackbit-build.sh: finished build"
