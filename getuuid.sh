#!/bin/bash

# Based on the work from Torbjørn Kristoffersen (https://github.com/tk512)
# 
# Updated for macOS Ventura and newer by Tempus Thales
#
function getuuid () {
        uuid=$(uuidgen | tr "[:upper:]" "[:lower:]" | tr -d '\n') 
        (
                osascript -e "display notification with title \"⌘-V to paste\" subtitle \"$uuid\"" &
        ) > /dev/null 2>&1
        echo -n "$uuid" | pbcopy
}
