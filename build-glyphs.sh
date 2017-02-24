#!/usr/bin/env bash
set -xeuo pipefail

GLYPHS_DIR="target/fonts"
declare -A FONTS=( \
                    ["Metropolis Light"]="fonts/Metropolis/TrueType/Metropolis-Light.ttf" \
                    ["Metropolis Regular"]="fonts/Metropolis/TrueType/Metropolis-Regular.ttf" \
                    ["Metropolis Medium Italic"]="fonts/Metropolis/TrueType/Metropolis-MediumItalic.ttf" \
                 )
mkdir -p "${GLYPHS_DIR}"

for FONT in "${!FONTS[@]}"; do
  mkdir -p "${GLYPHS_DIR}/${FONT}"
  ./node_modules/.bin/build-glyphs "${FONTS[$FONT]}" "${GLYPHS_DIR}/${FONT}"
done
