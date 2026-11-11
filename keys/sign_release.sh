#!/usr/bin/env bash
# usage: sign_release.sh <unsigned.apk>  -> <name>-release.apk (zipaligned, v2+v3 signed, verified)
set -e
HERE="$(cd "$(dirname "$0")" && pwd)"
IN="$1"
BT="$HOME/AppData/Local/Android/Sdk/build-tools/36.0.0"
PW=$(grep '^storePassword=' "$HERE/mdm-release.properties" | cut -d= -f2-)
OUT="${IN%.apk}-release.apk"; ALN="${IN%.apk}-aligned.apk"
"$BT/zipalign.exe" -f -p 4 "$IN" "$ALN"
"$BT/apksigner.bat" sign --ks "$HERE/mdm-release.jks" --ks-type PKCS12 --ks-key-alias mdm --ks-pass "pass:$PW" --key-pass "pass:$PW" --v1-signing-enabled true --v2-signing-enabled true --v3-signing-enabled true --out "$OUT" "$ALN"
rm -f "$ALN" "$OUT.idsig"
"$BT/apksigner.bat" verify --print-certs "$OUT" | grep -E "Signer #1 certificate (DN|SHA-256)"
echo "SIGNED OK -> $OUT"
