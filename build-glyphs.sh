#!/usr/bin/env bash
set -xeuo pipefail

GLYPHS_DIR="target/fonts"
declare -A FONTS=( \
                    ["Metropolis Light"]="fonts/Metropolis/TrueType/Metropolis-Light.ttf" \
                    ["Metropolis Regular"]="fonts/Metropolis/TrueType/Metropolis-Regular.ttf" \
                    ["Metropolis Medium Italic"]="fonts/Metropolis/TrueType/Metropolis-MediumItalic.ttf" \
                    ["Open Sans Regular"]="fonts/open-sans/fonts/Regular/OpenSans-Regular.ttf" \
                    ["Open Sans Bold"]="fonts/open-sans/fonts/Bold/OpenSans-Bold.ttf" \
                    ["Open Sans Italic"]="fonts/open-sans/fonts/Italic/OpenSans-Italic.ttf" \
                    ["Open Sans Semibold"]="fonts/open-sans/fonts/Semibold/OpenSans-Semibold.ttf" \
                 )
mkdir -p "${GLYPHS_DIR}"

for FONT in "${!FONTS[@]}"; do
  mkdir -p "${GLYPHS_DIR}/${FONT}"
  ./node_modules/.bin/build-glyphs "${FONTS[$FONT]}" "${GLYPHS_DIR}/${FONT}"
done
