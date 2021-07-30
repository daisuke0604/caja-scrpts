#!/bin/bash
#
# fangfufu/Linux-Fake-Background-Webcam 用。背景画像入替え。
#

readonly TARGET=$1
readonly BG_PATH="${HOME}/Documents/repos/github/Linux-Fake-Background-Webcam"

rm -f "${BG_PATH}"/background.*
cp "$TARGET" "${BG_PATH}/background.${TARGET##*.}"

exit 0
