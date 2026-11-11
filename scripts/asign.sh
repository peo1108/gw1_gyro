#!/usr/bin/env bash
# zipalign + apksigner with the release key, portable across Git Bash and WSL.
# usage: scripts/asign.sh out/MDM_m28.apk  -> out/MDM_m28-release.apk
set -e
HERE="$(cd "$(dirname "$0")" && pwd)"
ROOT="$(cd "$HERE/.." && pwd)"
KEYDIR="$ROOT/keys"
IN="$1"
[ -n "$IN" ] || { echo "usage: $0 <unsigned.apk>" >&2; exit 1; }

CANDIDATES=""
for u in "$USER" cam root; do
    CANDIDATES="$CANDIDATES /mnt/c/Users/$u/AppData/Local/Android/Sdk"
    CANDIDATES="$CANDIDATES /c/Users/$u/AppData/Local/Android/Sdk"
done
CANDIDATES="$CANDIDATES $HOME/AppData/Local/Android/Sdk"

SDK=""
for c in $CANDIDATES; do
    if [ -d "$c/build-tools/36.0.0" ]; then SDK="$c"; break; fi
done
[ -n "$SDK" ] || { echo "build-tools/36.0.0 not found" >&2; exit 1; }
BT="$SDK/build-tools/36.0.0"

PW=$(grep '^storePassword=' "$KEYDIR/mdm-release.properties" | cut -d= -f2- | tr -d '\r')
OUT="${IN%.apk}-release.apk"
ALN="${IN%.apk}-aligned.apk"

echo "sdk : $SDK"
ASJ="$BT/lib/apksigner.jar"
asign() {
    if [ -f "$ASJ" ]; then
        java -jar "$ASJ" "$@"
    else
        "$BT/apksigner.bat" "$@"
    fi
}

"$BT/zipalign.exe" -f -p 4 "$IN" "$ALN"
asign sign \
    --ks "$KEYDIR/mdm-release.jks" --ks-type PKCS12 --ks-key-alias mdm \
    --ks-pass "pass:$PW" --key-pass "pass:$PW" \
    --v1-signing-enabled true --v2-signing-enabled true --v3-signing-enabled true \
    --out "$OUT" "$ALN"
rm -f "$ALN" "$OUT.idsig"
asign verify --print-certs "$OUT" | grep -E "Signer #1 certificate (DN|SHA-256)"
echo "SIGNED OK -> $OUT"