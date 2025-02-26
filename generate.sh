#!/bin/bash

set -e
set -v

export KEYNAME=761516186@qq.com

# Packages & Packages.gz
dpkg-scanpackages --multiversion aarch64 > Packages
gzip -k -f Packages
mv Packages dists/timecat/stable/binary-aarch64/Packages
mv Packages.gz dists/timecat/stable/binary-aarch64/Packages.gz

# Release, Release.gpg & InRelease
apt-ftparchive -c apt.config release dists/timecat > Release
gpg --default-key "${KEYNAME}" -abs -o - Release > Release.gpg
gpg --default-key "${KEYNAME}" --clearsign -o - Release > InRelease

mv Release dists/timecat/Release
mv Release.gpg dists/timecat/Release.gpg
mv InRelease dists/timecat/InRelease
