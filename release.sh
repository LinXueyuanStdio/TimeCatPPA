#!/bin/bash

set -e
set -v

./generate.sh
git add .
git commit -m "update"
git push -u origin master