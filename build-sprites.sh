#!/usr/bin/env bash
set -xeuo pipefail

SPRITES_DIR="target/sprites"
declare -A STYLES=( \
                    ["fiord"]="styles/fiord-color-gl-style/icons" \
                    ["positron"]="styles/positron-gl-style/icons" \
                    ["dark_matter"]="styles/dark-matter-gl-style/icons" \
                 )
mkdir -p "${SPRITES_DIR}"

for STYLE in "${!STYLES[@]}"; do
  ./node_modules/.bin/spritezero "${SPRITES_DIR}/${STYLE}" "${STYLES[$STYLE]}"
  ./node_modules/.bin/spritezero --retina "${SPRITES_DIR}/${STYLE}@2x" "${STYLES[$STYLE]}"
done
