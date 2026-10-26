#!/bin/bash
# Generate portrait (9:16) variants of a theme's backgrounds into backgrounds/portrait/.
# The portrait-aware background plugin shows these on vertical monitors.
#
# Usage: scripts/make-portrait-backgrounds.sh <theme-dir> rotate
#        scripts/make-portrait-backgrounds.sh <theme-dir> crop [image.jpg=PCT ...]
#   rotate - turn the image 90° (great for space scenes with no "up")
#   crop   - take a full-height 9:16 slice; PCT picks how far across the image
#            the slice sits (0 = left edge, 50 = center, 100 = right edge)

set -euo pipefail

theme_dir=${1:?theme directory required}
mode=${2:?mode required: rotate or crop}
shift 2
declare -A position=()
for arg in "$@"; do position[${arg%%=*}]=${arg#*=}; done

out="$theme_dir/backgrounds/portrait"
mkdir -p "$out"

for img in "$theme_dir"/backgrounds/*.{jpg,jpeg,png,webp}; do
  [[ -f $img ]] || continue
  name=$(basename "$img")
  case $mode in
    rotate) magick "$img" -rotate 90 -quality 95 "$out/$name" ;;
    crop)
      pct=${position[$name]:-50}
      magick "$img" -crop "%[fx:round(h*9/16)]x%[h]+%[fx:round((w-h*9/16)*$pct/100)]+0" +repage -quality 95 "$out/$name"
      ;;
    *) echo "Unknown mode: $mode" >&2; exit 1 ;;
  esac
  echo "$out/$name"
done
