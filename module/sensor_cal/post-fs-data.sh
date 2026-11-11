#!/system/bin/sh
# Publish the WebUI's saved hook mode into a system property BEFORE zygote /
# system_server start, so the Zygisk module reads the right value when it
# installs its hook. Runs early (post-fs-data), root context.
#
# Source of truth: $MODDIR/hook_mode ("1" or "2"), written by webroot/index.html.
# Default to mode 1 when the file is missing or unreadable.
MODDIR=${0%/*}

mode=1
if [ -f "$MODDIR/hook_mode" ]; then
  m=$(cat "$MODDIR/hook_mode" 2>/dev/null | tr -dc '12' | cut -c1)
  [ -n "$m" ] && mode=$m
fi

# Must match enc_hook_mode_prop in scripts/gen_gyro_obf_strings.py.
setprop sys.display.cal "$mode"
