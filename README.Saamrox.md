# Saamrox

Saamrox is the maintained kernel release built from this tree (`Saamitk/Kinesis`)
for the **Xiaomi sm6250 family — miatoll / curtana / excalibur / gram / joyeuse**
(Redmi Note 9S / 9 Pro / 9 Pro Max / Poco M2 Pro), Linux **4.14.357-openela**.

Releases are built by GitHub Actions with **AOSP Clang 22.0.2 (r596125)**, fully
LLVM (`LLVM_IAS=1`, `ld.lld`) — no GCC / GNU binutils for the target — and are
shipped as a **flashable AnyKernel3 zip**, flashable from a custom recovery.

## Stack

| Component | Version | Notes |
| --- | --- | --- |
| KernelSU | backslashxx driver, v3.3.0+ | unity build, wired in-tree at `KernelSU/` (`CONFIG_KSU=y`) |
| SuSFS | v2.3.0 (NON-GKI 4.14 port) | `fs/susfs.c`, `include/linux/susfs*.h` + hooks across `fs/`, `mm/`, `kernel/`, SELinux AVC |
| NoMount | v2.0.0 built-in | `fs/nomount/`, key-type (`nomount`) control channel |
| DroidSpaces | container support | namespaces, SysV IPC, POSIX mqueue, devtmpfs, cgroup controllers, bridge/veth/nftables NAT |

## Building

Locally (needs ~10 GB free disk and network access to fetch the toolchain):

```sh
./build.sh                 # fetch clang r596125, audit, build, package Saamrox-*.zip
./build.sh --no-zip        # kernel only
./build.sh --clean         # wipe out/ first
./build.sh --llvm rXXXXXX  # use another AOSP clang revision
```

The CI equivalent is `.github/workflows/kernel-build.yml`:

* every push builds and uploads the zip as an artifact;
* `workflow_dispatch` with `release=true`, or pushing a tag named `Saamrox*`,
  publishes a GitHub release with the zip attached.

`tools/root-integration/audit.sh` statically verifies the KernelSU/SuSFS/NoMount
integration (files, wiring, symbols, defconfig) before any CPU is spent.

## Flashing

Use any recovery that can flash AnyKernel3 zips (TWRP, OrangeFox, or a kernel
manager that supports AK3). The installer patches the `boot` partition in place
(`/dev/block/bootdevice/by-name/boot`), keeps your ramdisk, and does not install
modules or touch `/system`.

## Layout

```
build.sh                      local/CI build + packaging
arch/arm64/configs/vendor/xiaomi/miatoll_defconfig   device configuration
KernelSU/                     KernelSU driver (in-tree via drivers/kernelsu symlink)
fs/susfs.c, include/linux/susfs*.h                   SuSFS core
fs/nomount/                   NoMount built-in subsystem
AnyKernel3/                   flashable installer template
tools/root-integration/audit.sh                      pre-build integration audit
.github/workflows/kernel-build.yml                   CI build + release
```
