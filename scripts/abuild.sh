#!/usr/bin/env bash
# Assemble build/ into out/<name>.apk with apktool (unsigned).
# usage: scripts/abuild.sh [name]        (default: MDM_unsigned)
set -e
HERE="$(cd "$(dirname "$0")" && pwd)"
ROOT="$(cd "$HERE/.." && pwd)"
NAME="${1:-MDM_unsigned}"
mkdir -p "$ROOT/out"
cd "$ROOT"
java -jar tools/apktool.jar b build -o "out/$NAME.apk"
rm -rf build/build
echo "DONE -> out/$NAME.apk"