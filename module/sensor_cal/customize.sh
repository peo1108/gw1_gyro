SKIPUNZIP=1

if [ "$BOOTMODE" ] && [ "$KSU" ]; then
  ui_print "- Installing from KernelSU app"
  ui_print "- KernelSU version: $KSU_KERNEL_VER_CODE (kernel) + $KSU_VER_CODE (ksud)"
  if [ "$(which magisk)" ]; then
    ui_print "*********************************************************"
    ui_print "! Multiple root implementation is NOT supported!"
    ui_print "! Please uninstall Magisk before installing Zygisk"
    abort    "*********************************************************"
  fi
elif [ "$BOOTMODE" ] && [ "$MAGISK_VER_CODE" ]; then
  ui_print "- Installing from Magisk app"
else
  ui_print "*********************************************************"
  ui_print "! Install from recovery is not supported"
  ui_print "! Please install from KernelSU or Magisk app"
  abort    "*********************************************************"
fi

VERSION=$(grep_prop version "${TMPDIR}/module.prop")
ui_print "- Installing Sensor Calibration Service $VERSION"

# arm64-only module
if [ "$ARCH" != "arm64" ]; then
  abort "! Unsupported platform: $ARCH (arm64 required)"
else
  ui_print "- Device platform: $ARCH"
fi

# extract function
extract() {
  local zipfile="$1"
  local file="$2"
  local dest="$3"
  mkdir -p "$dest"
  unzip -o "$zipfile" "$file" -d "$dest" -j >&2
}

ui_print "- Extracting module files"
extract "$ZIPFILE" 'module.prop'     "$MODPATH"
extract "$ZIPFILE" 'customize.sh'    "$MODPATH"
extract "$ZIPFILE" 'service.sh'      "$MODPATH"
extract "$ZIPFILE" 'post-fs-data.sh' "$MODPATH"
extract "$ZIPFILE" 'sepolicy.rule'   "$MODPATH"

mkdir "$MODPATH/zygisk"

ui_print "- Extracting arm64 libraries"
extract "$ZIPFILE" "zygisk/arm64-v8a.so" "$MODPATH/zygisk"

# WebUI — preserve the webroot/ path (no -j) so the KernelSU manager finds it.
ui_print "- Extracting WebUI"
unzip -o "$ZIPFILE" "webroot/*" -d "$MODPATH" >&2

ui_print "- Setting permissions"
set_perm_recursive "$MODPATH" 0 0 0755 0644

ui_print "- Sensor Calibration Service Module by Terius"
