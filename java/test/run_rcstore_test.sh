#!/usr/bin/env bash
# JVM test for mdm.RcStore. usage: bash java/test/run_rcstore_test.sh
set -e
ROOT="$(cd "$(dirname "$0")/../.." && pwd)"
O="$(mktemp -d)"
javac --release 8 -Xlint:-options -encoding UTF-8 -d "$O" "$ROOT/java/src/mdm/RcStore.java" "$ROOT/java/test/RcStoreTest.java"
java -cp "$O" RcStoreTest
rm -rf "$O"
