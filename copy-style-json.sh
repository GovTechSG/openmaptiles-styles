#!/usr/bin/env bash
set -xeuo pipefail

STYLES_DIR="target/styles"
declare -A STYLES=( \
                    ["fiord"]="styles/fiord-color-gl-style/style.json" \
                    ["positron"]="styles/positron-gl-style/style.json" \
                    ["dark_matter"]="styles/dark-matter-gl-style/style.json" \
                 )
mkdir -p "${STYLES_DIR}"

for STYLE in "${!STYLES[@]}"; do
  cp "${STYLES[$STYLE]}" "${STYLES_DIR}/${STYLE}.json"
done
