#!/usr/bin/env bash

(
set -e
basedir="$(cd "$1" && pwd -P)"
workdir="$basedir/work"
gitcmd="git -c commit.gpgsign=false"

($gitcmd submodule update --init && ./work/Paper/paper patch && ./scripts/applyPatches.sh "$basedir") || (
    echo "Failed to build Nozzle"
    exit 1
) || exit 1
if [ "$2" == "--jar" ]; then
    mvn clean install
fi
) || exit 1
