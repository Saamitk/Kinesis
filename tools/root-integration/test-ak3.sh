#!/usr/bin/env bash
# Offline check of the AnyKernel3 installer that goes into the flashable zip.
#
# ak3-core.sh resolves the target partition in setup_ak(), reading shell
# variables that anykernel.sh is expected to define (BLOCK, IS_SLOT_DEVICE, ...).
# If anykernel.sh still uses the legacy lowercase spellings (block=,
# is_slot_device=) then BLOCK stays empty and every recovery aborts with
# "Unable to determine  partition. Aborting..." before writing anything.
#
# This script extracts those variables from anykernel.sh, runs the real
# setup_ak() against a fake device tree and asserts the boot partition is found.
#
# Usage: test-ak3.sh [ak3-dir]        (default: AnyKernel3)
set -u

AK3=${1:-AnyKernel3}
AK3=$(cd "$AK3" && pwd)

ok()   { printf '  [ ok ] %s\n' "$*"; }
fail() { printf '  [FAIL] %s\n' "$*" >&2; exit 1; }

printf '== AnyKernel3 installer check: %s\n' "$AK3"

for f in anykernel.sh tools/ak3-core.sh tools/busybox tools/magiskboot \
         META-INF/com/google/android/update-binary \
         META-INF/com/google/android/updater-script; do
  [ -f "$AK3/$f" ] || fail "missing $f"
done
ok "installer files present"

ROOT=$(mktemp -d)
trap 'rm -rf "$ROOT"' EXIT
mkdir -p "$ROOT/ak"

# shell variables anykernel.sh hands to the core (modern names + legacy spellings)
sed -e '/^\. /d' -e '/^dump_boot/d' -e '/^write_boot/d' \
    "$AK3/anykernel.sh" > "$ROOT/anykernel-vars.sh"

VARS=$(bash -c '
  set +u
  . "$1"
  for v in BLOCK IS_SLOT_DEVICE RAMDISK_COMPRESSION PATCH_VBMETA_FLAG block is_slot_device; do
    printf "%s=%s\n" "$v" "${!v-}"
  done' _ "$ROOT/anykernel-vars.sh") || fail "could not read the variables from anykernel.sh"
printf '%s\n' "$VARS" | sed 's/^/      /'

LEGACY=$(printf '%s\n' "$VARS" | grep -E '^(block|is_slot_device)=.+' || true)
[ -z "$LEGACY" ] || fail "legacy AK3 variable names present, this AnyKernel3 ignores them: $(printf '%s' "$LEGACY" | tr '\n' ' ')"

BLOCK=$(printf '%s\n' "$VARS" | sed -n 's/^BLOCK=//p')
[ -n "$BLOCK" ] || fail "anykernel.sh does not set BLOCK= (nothing would ever be flashed)"
ok "anykernel.sh defines BLOCK=$BLOCK"

case $BLOCK in
  /dev/*|auto|boot|kernel|recovery|recovery_ramdisk|init_boot|ramdisk) ;;
  *) fail "unexpected BLOCK value '$BLOCK'" ;;
esac

# copy of the real core with every /dev path redirected into the fake tree and
# the trailing auto-run of setup_ak() disabled, so the test controls the call
sed -e "s|/dev/|$ROOT/dev/|g" -e 's|^setup_ak;$|:|' "$AK3/tools/ak3-core.sh" > "$ROOT/ak3-core.sh"

# run_case <layout relative to /dev/block> ; echoes the resolved partition
run_case() {
  local rel=$1
  rm -rf "$ROOT/dev"
  mkdir -p "$ROOT/dev/block/$(dirname "$rel")"
  : > "$ROOT/dev/block/$rel"
  AKHOME="$ROOT/ak" OUTFD=99 bash -c '
    set +u
    . "$1"
    eval "$2"
    SLOT=""; SLOT_SELECT=""
    ui_print() { :; }
    abort() { printf "ABORT: %s\n" "$*" >&2; exit 9; }
    setup_ak
    printf "%s" "$BLOCK"' _ "$ROOT/ak3-core.sh" "$VARS"
}

if [ "${BLOCK#/dev/}" != "$BLOCK" ]; then
  LAYOUTS=${BLOCK#/dev/block/}
else
  REL=${BLOCK##*/}
  LAYOUTS="bootdevice/by-name/$REL by-name/$REL"
fi

for layout in $LAYOUTS; do
  got=$(run_case "$layout") || fail "setup_ak() could not resolve the partition via /dev/block/$layout"
  [ "$got" = "$ROOT/dev/block/$layout" ] || fail "setup_ak() resolved '$got', expected '$ROOT/dev/block/$layout'"
  ok "resolves /dev/block/$layout"
done

printf '  AK3 INSTALLER CHECK PASSED\n'
