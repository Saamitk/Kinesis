#!/bin/bash
# Local build recipe for Kinesis (miatoll / Redmi Note 9 Pro family, sm6250, 4.14.357-openela)
#
# Root stack: KernelSU (backslashxx driver) + SUSFS v2.3.0 + NoMount v2.0.0,
# container support for DroidSpaces -- all integrated in-tree.
#
# Toolchain: AOSP Clang 22.0.2 (r596125) by default, LLVM_IAS=1, ld.lld;
# no GNU binutils / no gcc is invoked for the target build.
#
# Usage:  ./build.sh [-c] [--no-zip] [--llvm <rXXXXXX>]
#   -c          clean out/ first
#   --no-zip    skip the AnyKernel3 packaging step
#   --llvm X    use another AOSP clang revision (default r596125)
set -e

TOP=$(cd "$(dirname "$0")" && pwd)
cd "$TOP"

DEFCONFIG=${DEFCONFIG:-vendor/xiaomi/miatoll_defconfig}
ARCH=${ARCH:-arm64}
export ARCH
LLVM_VER=${LLVM_VER:-r596125}
LLVM_DIR=${LLVM_DIR:-$TOP/toolchains/clang-$LLVM_VER}
CROSS_COMPILE=${CROSS_COMPILE:-aarch64-linux-gnu-}
JOBS=${JOBS:-$(nproc --all)}
BUILD_ZIP=1

# clang 22 is stricter than the clang these old vendor trees were written for;
# keep the standard 4.14 error promotions from breaking the build.
KCFLAGS=${KCFLAGS:--Wno-error=unknown-warning-option -Wno-error=implicit-int -Wno-error=implicit-function-declaration -Wno-error=strict-prototypes -Wno-error=incompatible-pointer-types -Wno-error=designated-init -Wno-error=date-time}

export KBUILD_BUILD_HOST=${KBUILD_BUILD_HOST:-kinesis-saamrox}
export KBUILD_BUILD_USER=${KBUILD_BUILD_USER:-saamrox}
export LC_ALL=C

while [ $# -gt 0 ]; do
  case "$1" in
    -c|--clean) rm -rf "$TOP/out"; shift ;;
    --no-zip)   BUILD_ZIP=0; shift ;;
    --llvm)     LLVM_VER="$2"; LLVM_DIR="$TOP/toolchains/clang-$2"; shift 2 ;;
    *)          echo "unknown option: $1" >&2; exit 2 ;;
  esac
done

# ---- toolchain -------------------------------------------------------------
get_clang() {
  [ -x "$LLVM_DIR/bin/clang" ] && return 0
  mkdir -p "$TOP/toolchains"
  local tmp="$TOP/toolchains/clang-$LLVM_VER.tar.gz"
  echo "==> downloading AOSP clang $LLVM_VER"
  local urls=(
    "https://android.googlesource.com/platform/prebuilts/clang/host/linux-x86/+archive/refs/heads/master/clang-$LLVM_VER.tar.gz"
    "https://android.googlesource.com/platform/prebuilts/clang/host/linux-x86/+archive/refs/heads/main/clang-$LLVM_VER.tar.gz"
    "https://github.com/jaymvictorino/clang-$LLVM_VER-mirror/releases/download/v0.0.1/linux-x86-refs-heads-mirror-goog-main-llvm-toolchain-source-clang-$LLVM_VER.tar.gz"
  )
  for url in "${urls[@]}"; do
    if curl -fL --retry 3 -o "$tmp" "$url" && tar -tzf "$tmp" >/dev/null 2>&1; then break; fi
    rm -f "$tmp"
  done
  [ -s "$tmp" ] || { echo "!! could not fetch clang $LLVM_VER" >&2; exit 1; }
  mkdir -p "$LLVM_DIR"
  tar -xzf "$tmp" -C "$LLVM_DIR"
  rm -f "$tmp"
}

get_clang
export PATH="$LLVM_DIR/bin:$PATH"
if ! clang --version >/dev/null 2>&1; then
  # AOSP clang still links against libtinfo.so.5 on some hosts
  mkdir -p "$TOP/toolchains/shim"
  ln -sf "$(ls /lib/x86_64-linux-gnu/libtinfo.so.6 /usr/lib/x86_64-linux-gnu/libtinfo.so.6 2>/dev/null | head -1)" \
         "$TOP/toolchains/shim/libtinfo.so.5" 2>/dev/null || true
  LD_LIBRARY_PATH="$TOP/toolchains/shim:$LD_LIBRARY_PATH"; export LD_LIBRARY_PATH
fi
clang --version | head -2
command -v ld.lld >/dev/null || { echo "!! ld.lld missing" >&2; exit 1; }

# ---- audit the root stack before spending CPU -------------------------------
echo "==> auditing KernelSU / SUSFS / NoMount integration"
bash tools/root-integration/audit.sh "$TOP"

# ---- build ------------------------------------------------------------------
echo "==> configuring $DEFCONFIG"
make O=out ARCH=$ARCH CC=clang "$DEFCONFIG" >/dev/null
make O=out ARCH=$ARCH CC=clang olddefconfig >/dev/null

for c in CONFIG_KSU=y CONFIG_KSU_SUSFS=y CONFIG_NOMOUNT=y CONFIG_KALLSYMS_ALL=y; do
  grep -qx "$c" out/.config || { echo "!! $c not enabled in out/.config" >&2; exit 1; }
done

MAKEARGS=(-j"$JOBS" O=out ARCH=$ARCH
  LLVM=1 LLVM_IAS=1
  CC=clang CLANG_TRIPLE=aarch64-linux-gnu- CROSS_COMPILE="$CROSS_COMPILE"
  LD=ld.lld AR=llvm-ar NM=llvm-nm OBJCOPY=llvm-objcopy OBJDUMP=llvm-objdump
  READELF=llvm-readelf STRIP=llvm-strip SIZE=llvm-size
  HOSTCC=clang HOSTCXX=clang++ HOSTLD=ld.lld HOSTAR=llvm-ar
  KCFLAGS="$KCFLAGS")

# The KernelSU object includes selinux headers that are generated while
# building security/selinux (flask.h/av_permissions.h live in the obj tree), so
# make sure they exist before anything else compiles.
echo "==> pre-building generated SELinux headers"
make "${MAKEARGS[@]}" security/selinux/avc.o

# QUICK_CHECK=1: compile just the new components first, so CI iterations are fast
if [ "${QUICK_CHECK:-0}" = "1" ]; then
  echo "==> quick check: preparing generated headers"
  make "${MAKEARGS[@]}" prepare
  make "${MAKEARGS[@]}" init/version.o
  echo "==> quick check: compiling the root stack objects only"
  make "${MAKEARGS[@]}" fs/susfs.o fs/nomount/nomount.o drivers/kernelsu/ksu.o
  echo "==> quick check passed"
  exit 0
fi

echo "==> building Image.gz ($JOBS jobs, $(clang --version | head -1))"
make "${MAKEARGS[@]}" Image.gz

KIMG=out/arch/arm64/boot/Image.gz
[ -s out/arch/arm64/boot/Image.gz-dtb ] && KIMG=out/arch/arm64/boot/Image.gz-dtb
echo "==> kernel image: $KIMG"

# ---- package AnyKernel3 -----------------------------------------------------
if [ "$BUILD_ZIP" = "1" ]; then
  STAMP=$(date -u +"%Y%m%d-%H%M")
  ZIP="Saamrox-Kinesis-miatoll-${STAMP}.zip"
  rm -rf "$TOP/AK3" && cp -a "$TOP/AnyKernel3" "$TOP/AK3"
  find "$TOP/AK3" -name .gitignore -delete
  cp "$KIMG" "AK3/$(basename "$KIMG")"
  sed -i "s|^kernel.string=.*|kernel.string=Saamrox Kinesis (4.14.357) |" AK3/anykernel.sh
  sed -i "s|^kernel.compiler=.*|kernel.compiler=$(clang --version | head -1 | sed 's/ (.*//') + ld.lld|" AK3/anykernel.sh
  sed -i "s|^kernel.made=.*|kernel.made=$(whoami)@$(hostname)|" AK3/anykernel.sh
  sed -i "s|^kernel.version=.*|kernel.version=$(make -s kernelversion)|" AK3/anykernel.sh
  ( cd "$TOP/AK3" && zip -qr9 "../$ZIP" * )
  sha256sum "$ZIP" > "$ZIP.sha256sum"
  rm -rf "$TOP/AK3"
  echo "==> flashable zip: $ZIP ($(du -h "$ZIP" | cut -f1))"
  echo "    sha256: $(cut -d' ' -f1 "$ZIP.sha256sum")"
fi
