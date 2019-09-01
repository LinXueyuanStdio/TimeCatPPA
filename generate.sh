#!/bin/bash

set -e
set -v

export KEYNAME=761516186@qq.com

(
    set -e
    set -v

    cd ./aarch64/

    # Packages & Packages.gz
    dpkg-scanpackages --multiversion . > Packages
    gzip -k -f Packages
    mv Packages ../dists/timecat/stable/binary-aarch64/Packages
    mv Packages.gz ../dists/timecat/stable/binary-aarch64/Packages.gz

    # Release, Release.gpg & InRelease
    apt-ftparchive -c ../apt.config release . > Release
    gpg --default-key "${KEYNAME}" -abs -o - Release > Release.gpg
    gpg --default-key "${KEYNAME}" --clearsign -o - Release > InRelease

    mv Release ../dists/timecat/Release
    mv Release.gpg ../dists/timecat/Release.gpg
    mv InRelease ../dists/timecat/InRelease
)