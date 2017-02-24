#!/usr/bin/env bash
set -xeuo pipefail

FONTS_DIR="target/fonts"
declare -A FONTS=( \
                    ["KlokanTech Noto Sans Regular"]="fonts/klokantech-gl-fonts/KlokanTech Noto Sans Regular" \
                    ["KlokanTech Noto Sans CJK Regular"]="fonts/klokantech-gl-fonts/KlokanTech Noto Sans CJK Regular" \
                 )
mkdir -p "${FONTS_DIR}"

for FONT in "${!FONTS[@]}"; do
  cp -r "${FONTS[$FONT]}" "${FONTS_DIR}/${FONT}"
done
