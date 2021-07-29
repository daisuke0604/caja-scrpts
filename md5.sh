#!/bin/bash
#
# Display MD5 hash
#

md5=$(md5sum "$1")
IFS=" " read -r -a list <<< "$md5"
zenity --info --text "${list[0]}"
