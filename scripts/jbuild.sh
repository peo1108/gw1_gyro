#!/usr/bin/env bash
# WSL-friendly wrapper around java/build.sh's compile step.
# usage: scripts/jbuild.sh src/mdm/RcParams.java src/mdm/RcParamsView.java
#   -> java/smali_out/<package>/<Class>.smali  (copy into build/smali_classes3 by hand)
#
# Differs from java/build.sh only in how it locates the Android SDK: this one finds it through
# the Windows mount so it also works outside Git Bash.
set -e

HERE="$(cd "$(dirname "$0")" && pwd)"
ROOT="$(cd "$HERE/.." && pwd)"
JAVA_DIR="$ROOT/java"

# --- locate the SDK ---------------------------------------------------------------
SDK=""
CANDIDATES=""
[ -n "$ANDROID_SDK_ROOT" ] && CANDIDATES="$CANDIDATES $ANDROID_SDK_ROOT"
[ -n "$ANDROID_HOME" ] && CANDIDATES="$CANDIDATES $ANDROID_HOME"
for u in "$USER" cam root; do
    CANDIDATES="$CANDIDATES /mnt/c/Users/$u/AppData/Local/Android/Sdk"
    CANDIDATES="$CANDIDATES /c/Users/$u/AppData/Local/Android/Sdk"
done
CANDIDATES="$CANDIDATES $HOME/AppData/Local/Android/Sdk $LOCALAPPDATA/Android/Sdk"

for c in $CANDIDATES; do
    if [ -f "$c/platforms/android-36/android.jar" ]; then SDK="$c"; break; fi
done
if [ -z "$SDK" ]; then
    echo "android-36 not found; set ANDROID_SDK_ROOT" >&2
    echo "  tried:$CANDIDATES" >&2
    exit 1
fi
AJ="$SDK/platforms/android-36/android.jar"

BT=""
for v in 36.0.0 36.1.0 37.0.0 35.0.0; do
    if [ -f "$SDK/build-tools/$v/lib/d8.jar" ]; then BT="$SDK/build-tools/$v"; break; fi
done
if [ -z "$BT" ]; then echo "d8.jar not found under $SDK/build-tools" >&2; exit 1; fi
D8JAR="$BT/lib/d8.jar"

echo "sdk : $SDK"
echo "d8  : $D8JAR"

cd "$JAVA_DIR"
rm -rf .stubcls .cls .dex smali_out
mkdir -p .stubcls .cls .dex smali_out

# --- stubs (never shipped) -------------------------------------------------------
find stub -name '*.java' > .stublist
javac -encoding UTF-8 --release 8 -nowarn -cp "$AJ" -d .stubcls @.stublist

# --- the classes we actually ship -------------------------------------------------
javac -encoding UTF-8 --release 8 -nowarn -cp "$AJ:.stubcls" -d .cls "$@"

# --- dex -------------------------------------------------------------------------
find .cls -name '*.class' > .clslist
java -cp "$D8JAR" com.android.tools.r8.D8 \
    --min-api 24 --lib "$AJ" --classpath .stubcls --output .dex @.clslist

# --- dex -> smali (apktool's embedded baksmali) -----------------------------------
javac -encoding UTF-8 -nowarn -cp "$ROOT/tools/apktool.jar" -d .cls Dis.java
java -cp "$ROOT/tools/apktool.jar:.cls" Dis .dex/classes.dex smali_out

rm -rf .stubcls .cls .dex .stublist .clslist
find smali_out -name '*.smali' | sort