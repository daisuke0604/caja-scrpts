#!/bin/bash
#
# exiftool
#

exiftool "$1" | \
zenity --text-info \
  --title "Exif" \
  --font "M+ 1m" \
  --width 800 \
  --height 600
