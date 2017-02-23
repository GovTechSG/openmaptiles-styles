#!/usr/bin/env bash
set -xeuo pipefail

echo "Will build to target/"

./build-glyphs.sh
./copy-style-json.sh
./build-sprites.sh
