#
#	This file is part of the OrangeFox Recovery Project
# 	Copyright (C) 2024-2025 The OrangeFox Recovery Project
#
#	OrangeFox is free software: you can redistribute it and/or modify
#	it under the terms of the GNU General Public License as published by
#	the Free Software Foundation, either version 3 of the License, or
#	any later version.
#
#	OrangeFox is distributed in the hope that it will be useful,
#	but WITHOUT ANY WARRANTY; without even the implied warranty of
#	MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
#	GNU General Public License for more details.
#
# 	This software is released under GPL version 3 or any later version.
#	See <http://www.gnu.org/licenses/>.
#
# 	Please maintain this if you use this script or any part of it
#

#set -o xtrace
#!/bin/bash

FDEVICE="INOI_A75"

fetch_mt6789_common_repo() {
    local URL="https://github.com/idabgsram/recovery-device_alldocube_mt6789-common.git"
    local BRANCH="twrp-12.1"
    local COMMON="device/alldocube/mt6789-common"

    echo "Current directory:"
    pwd

    echo "Checking parent directory..."
    mkdir -p "$(dirname "$COMMON")"

    if [ -e "$COMMON" ] && [ ! -d "$COMMON" ]; then
        echo "ERROR: $COMMON exists but is not a directory"
        ls -l "$COMMON"
        exit 1
    fi

    if [ -d "$COMMON/.git" ]; then
        echo "Common tree already exists: $COMMON"
        return 0
    fi

    rm -rf "$COMMON"

    echo "Cloning $URL ($BRANCH) -> $COMMON"
    git clone --depth=1 -b "$BRANCH" "$URL" "$COMMON"

    echo "Clone completed"
    ls -la "$COMMON"
}

if [ ! -d external/gflags/.git ]; then
    mkdir -p external
    git clone \
        https://android.googlesource.com/platform/external/gflags/ \
        -b android-12.1.0_r4 \
        external/gflags
else
    echo "external/gflags already exists"
fi

fetch_mt6789_common_repo