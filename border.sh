#!/bin/bash
#
# ImageMagick で画像に枠線付加
#

cp "$1" "$1.bak"
convert "$1" -border 1x1 "$1"
exit 0
