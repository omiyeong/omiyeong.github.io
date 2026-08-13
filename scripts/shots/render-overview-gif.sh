#!/usr/bin/env bash
set -euo pipefail

root_dir=$(cd "$(dirname "$0")/../.." && pwd)
shots_dir="$root_dir/docs/public/shots"
work_dir=$(mktemp -d)
trap 'rm -rf "$work_dir"' EXIT

ffmpeg -y \
  -loop 1 -t 2.4 -i "$shots_dir/channel.png" \
  -loop 1 -t 2.4 -i "$shots_dir/employee.png" \
  -loop 1 -t 2.4 -i "$shots_dir/machine.png" \
  -filter_complex "
    [0:v]scale=1200:674:force_original_aspect_ratio=decrease,pad=1200:674:(ow-iw)/2:(oh-ih)/2:color=0x0c1015,setsar=1[a];
    [1:v]scale=1200:674:force_original_aspect_ratio=decrease,pad=1200:674:(ow-iw)/2:(oh-ih)/2:color=0x0c1015,setsar=1[b];
    [2:v]scale=1200:674:force_original_aspect_ratio=decrease,pad=1200:674:(ow-iw)/2:(oh-ih)/2:color=0x0c1015,setsar=1[c];
    [a][b]xfade=transition=fade:duration=0.45:offset=1.95[ab];
    [ab][c]xfade=transition=fade:duration=0.45:offset=3.9[out]" \
  -map "[out]" -t 6.3 -pix_fmt yuv420p "$work_dir/overview.mp4"

ffmpeg -y -i "$work_dir/overview.mp4" -vf palettegen=max_colors=128 "$work_dir/palette.png"
ffmpeg -y -i "$work_dir/overview.mp4" -i "$work_dir/palette.png" \
  -lavfi paletteuse=dither=bayer -loop 0 "$shots_dir/niuma-overview.gif"

echo "Generated $shots_dir/niuma-overview.gif"
