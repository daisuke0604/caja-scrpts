#!/bin/bash
#
# unar で zip 展開, password 付き対応
#

readonly TARGET=$1
readonly EXT="${TARGET##*.}"

if [ "${EXT}" != "zip" ] ; then
  # except zip
  unar -r -q "${TARGET}"
  exit 0
fi

crypted=$(zipinfo -v "${TARGET}" | grep -c "not encrypted")
if [ "${crypted}" -gt "0" ] ; then
  # not crypted
  unar -r -q "${TARGET}"
else
  # crypted
  pass=$(zenity --password)
  case $? in
    0)
      unar -r -q -p "${pass}" "${TARGET}"
  esac
fi

exit 0
