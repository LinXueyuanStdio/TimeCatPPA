#!/bin/bash

set -e
set -v

export KEYNAME=761516186@qq.com

(
    set -e
    set -v

    cd ./shell/aarch64/

    # Packages & Packages.gz
    dpkg-scanpackages --multiversion . > Packages
    gzip -k -f Packages

    # Release, Release.gpg & InRelease
    apt-ftparchive -c ../../apt.config release . > Release
    gpg --default-key "${KEYNAME}" -abs -o - Release > Release.gpg
    gpg --default-key "${KEYNAME}" --clearsign -o - Release > InRelease
)