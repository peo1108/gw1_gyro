#!/usr/bin/env bash
# Sign an APK with the debug test key (keys/debug.keystore, alias gyro, password android).
# Only for test devices that already have a debug-signed build; customers get the release build.
# usage: scripts/sign_debug.sh <in.apk>  -> <in>-signed.apk
set -e
ROOT="$(cd "$(dirname "$0")/.." && pwd)"
IN="$1"
BT="$HOME/AppData/Local/Android/Sdk/build-tools/36.0.0"
OUT="${IN%.apk}-signed.apk"
ALN="${IN%.apk}-aligned.apk"
"$BT/zipalign.exe" -f -p 4 "$IN" "$ALN"
"$BT/apksigner.bat" sign --ks "$ROOT/keys/debug.keystore" --ks-pass pass:android --ks-key-alias gyro \
  --key-pass pass:android --v2-signing-enabled true --v3-signing-enabled true --out "$OUT" "$ALN"
rm -f "$ALN" "$OUT.idsig"
"$BT/apksigner.bat" verify "$OUT" && echo "SIGNED OK -> $OUT"
