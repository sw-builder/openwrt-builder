#!/bin/bash

TARGET=${TARGET:-bcm27xx-bcm2711}
VERSION=${VERSION:-22.03.0}

PACKAGES="luci \
    etherwake luci-app-wol"

wget -qO - https://downloads.openwrt.org/releases/${VERSION}/targets/${TARGET/-/\/}/openwrt-imagebuilder-${VERSION}-${TARGET}.Linux-x86_64.tar.xz | tar -xJ
cd openwrt-imagebuilder-${VERSION}-${TARGET}*

make info
make image PACKAGES="$PACKAGES"

