#!/usr/bin/env bash
# usage: sign.sh <in.apk>  -> produces <in>-signed.apk (aligned+signed), verifies
set -e
IN="$1"
BT="$HOME/AppData/Local/Android/Sdk/build-tools/36.0.0"
KS="/c/Users/cam/AppData/Local/Temp/claude/2084aae2c75622f3/a848ad98-05ba-49c9-a69b-3c1280683772/scratchpad/port/debug.keystore"
OUT="${IN%.apk}-signed.apk"
ALN="${IN%.apk}-aligned.apk"
"$BT/zipalign.exe" -f -p 4 "$IN" "$ALN"
"$BT/apksigner.bat" sign --ks "$KS" --ks-pass pass:android --ks-key-alias gyro --key-pass pass:android --v2-signing-enabled true --v3-signing-enabled true --out "$OUT" "$ALN"
rm -f "$ALN"
"$BT/apksigner.bat" verify --print-certs "$OUT" >/dev/null && echo "SIGNED OK -> $OUT"
ls -la "$OUT"
