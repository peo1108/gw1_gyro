#!/usr/bin/env bash
# Compile Java helpers to smali for the build tree.
# usage: java/build.sh <source.java> [more.java ...]
#   e.g. java/build.sh src/mdm/RcPad.java src/k/i.java
#   -> java/smali_out/<package>/<Class>.smali ; copy those into build/smali*/ by hand.
# Classes compile against android.jar plus the compile-only stubs in stub/ (gg1 classes with their
# smali member names). Stubs are never copied into the APK.
set -e
HERE="$(cd "$(dirname "$0")" && pwd)"
ROOT="$(cd "$HERE/.." && pwd)"
SDK="$HOME/AppData/Local/Android/Sdk"
win() { if command -v cygpath >/dev/null 2>&1; then cygpath -w "$1"; else echo "$1"; fi; }
AJ="$(win "$SDK/platforms/android-36/android.jar")"
SEP=";"; [ "$(uname -s)" = "Linux" ] || [ "$(uname -s)" = "Darwin" ] && SEP=":"
cd "$HERE"
rm -rf .stubcls .cls .dex smali_out
mkdir -p .stubcls .cls .dex smali_out
javac -encoding UTF-8 --release 8 -nowarn -cp "$AJ" -d .stubcls $(find stub -name "*.java")
javac -encoding UTF-8 --release 8 -nowarn -cp "$AJ$SEP.stubcls" -d .cls "$@"
"$SDK/build-tools/36.0.0/d8.bat" --min-api 24 --lib "$AJ" --classpath .stubcls --output .dex $(find .cls -name "*.class")
javac -encoding UTF-8 -nowarn -cp "$(win "$ROOT/tools/apktool.jar")" -d .cls Dis.java
java -cp "$(win "$ROOT/tools/apktool.jar")$SEP.cls" Dis .dex/classes.dex smali_out
rm -rf .stubcls .cls .dex
find smali_out -name "*.smali"
