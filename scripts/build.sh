#!/usr/bin/env bash
# Build the MDM APK from build/ and sign it with the release key.
# usage: scripts/build.sh [name]      (default name: MDM)
#   -> out/<name>.apk (unsigned) and out/<name>-release.apk (zipaligned, v1+v2+v3 signed)
# Needs: Java on PATH, Android SDK build-tools 36.0.0 (used by keys/sign_release.sh).
set -e
ROOT="$(cd "$(dirname "$0")/.." && pwd)"
NAME="${1:-MDM}"
OUT="$ROOT/out"
mkdir -p "$OUT"
win() { if command -v cygpath >/dev/null 2>&1; then cygpath -w "$1"; else echo "$1"; fi; }
java -jar "$(win "$ROOT/tools/apktool.jar")" b "$(win "$ROOT/build")" -o "$(win "$OUT/$NAME.apk")"
bash "$ROOT/keys/sign_release.sh" "$OUT/$NAME.apk"
rm -rf "$ROOT/build/build"   # apktool's intermediate cache inside the source tree
echo "DONE -> $OUT/$NAME-release.apk"
