#!/usr/bin/env bash
# JVM tests for mdm.RcStore + mdm.RcEngine. usage: bash java/test/run_rcstore_test.sh
set -e
ROOT="$(cd "$(dirname "$0")/../.." && pwd)"
O="$(mktemp -d)"
javac --release 8 -Xlint:-options -encoding UTF-8 -d "$O" "$ROOT/java/src/mdm/RcStore.java" "$ROOT/java/src/mdm/RcEngine.java" \
    "$ROOT/java/test/RcStoreTest.java" "$ROOT/java/test/RcEngineTest.java"
java -cp "$O" RcStoreTest
java -cp "$O" RcEngineTest
rm -rf "$O"
