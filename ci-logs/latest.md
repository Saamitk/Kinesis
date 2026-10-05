# CI failure logs

## audit.log
```
== KernelSU driver
  [ ok ] drivers/kernelsu/Kconfig present
  [ ok ] drivers/kernelsu/Makefile present
  [ ok ] drivers/kernelsu/ksu.c present
  [ ok ] drivers/kernelsu/hook/setuid_hook.c present
  [ ok ] drivers/Makefile wired
  [ ok ] drivers/Kconfig wired
== SUSFS core
  [ ok ] fs/susfs.c present
  [ ok ] include/linux/susfs.h present
  [ ok ] include/linux/susfs_def.h present
  [ ok ] susfs.h: susfs_init
  [ ok ] susfs.h: susfs_start_sdcard_monitor_fn
  [ ok ] susfs.h: susfs_add_sus_path
  [ ok ] susfs.h: susfs_add_sus_kstat
  [ ok ] susfs.h: susfs_set_uname
  [ ok ] susfs.h: susfs_set_cmdline_or_bootconfig
  [ ok ] susfs.h: susfs_add_open_redirect
  [ ok ] susfs.h: susfs_add_sus_map
  [ ok ] susfs.h: susfs_get_enabled_features
  [ ok ] susfs.h: susfs_show_variant
  [ ok ] susfs.h: susfs_show_version
== KernelSU <-> SUSFS glue
  [ ok ] ksu.c includes susfs.h
  [ ok ] ksu.c calls susfs_init()
  [ ok ] supercall SUSFS magic dispatch
  [ ok ] dispatch boot-complete monitor
  [ ok ] dispatch KSU_MARK_GET override
  [ ok ] selinux sid cache init
== cross-module symbols required by fs/susfs.c
  [ ok ] all ksu-side symbols referenced by fs/susfs.c are provided
== kernel-side SUSFS hooks
  [ ok ] fs/namespace.c: susfs_is_current_ksu_domain
  [ ok ] fs/statfs.c: susfs_is_current_proc_umounted
  [ ok ] fs/proc/fd.c: susfs_is_current_proc_umounted
  [ ok ] fs/proc/task_mmu.c: SUSFS_IS_INODE_SUS_MAP
  [ ok ] kernel/kallsyms.c: susfs_starts_with
  [ ok ] kernel/sys.c: susfs_spoof_uname
  [ ok ] mm/memory.c: SUSFS_IS_INODE_SUS_MAP
  [ ok ] security/selinux/avc.c: susfs_is_avc_log_spoofing_enabled
  [ ok ] fs/readdir.c: susfs
  [ ok ] fs/namei.c: susfs
  [ ok ] fs/proc_namespace.c: susfs
== NoMount
  [ ok ] fs/nomount present
  [ ok ] fs/Makefile wired
  [ ok ] fs/Kconfig wired
== defconfig
  [ ok ] CONFIG_KSU=y
  [ ok ] CONFIG_KSU_SUSFS=y
  [ ok ] CONFIG_NOMOUNT=y
  [ ok ] CONFIG_KALLSYMS_ALL=y
  [ ok ] CONFIG_KSU_TAMPER_SYSCALL_TABLE=y
  [ ok ] CONFIG_PID_NS=y
  [ ok ] CONFIG_IPC_NS=y
  [ ok ] CONFIG_USER_NS=y
  [ ok ] CONFIG_SYSVIPC=y
  [ ok ] CONFIG_OVERLAY_FS=y

AUDIT PASSED
```

## build.log
```
Android (15682573, +pgo, +bolt, +lto, +mlgo, based on r596125) clang version 22.0.2 (https://android.googlesource.com/toolchain/llvm-project de03d430485c884861198b25459851f429cbdbad)
Target: x86_64-unknown-linux-gnu
==> auditing KernelSU / SUSFS / NoMount integration
== KernelSU driver
  [ ok ] drivers/kernelsu/Kconfig present
  [ ok ] drivers/kernelsu/Makefile present
  [ ok ] drivers/kernelsu/ksu.c present
  [ ok ] drivers/kernelsu/hook/setuid_hook.c present
  [ ok ] drivers/Makefile wired
  [ ok ] drivers/Kconfig wired
== SUSFS core
  [ ok ] fs/susfs.c present
  [ ok ] include/linux/susfs.h present
  [ ok ] include/linux/susfs_def.h present
  [ ok ] susfs.h: susfs_init
  [ ok ] susfs.h: susfs_start_sdcard_monitor_fn
  [ ok ] susfs.h: susfs_add_sus_path
  [ ok ] susfs.h: susfs_add_sus_kstat
  [ ok ] susfs.h: susfs_set_uname
  [ ok ] susfs.h: susfs_set_cmdline_or_bootconfig
  [ ok ] susfs.h: susfs_add_open_redirect
  [ ok ] susfs.h: susfs_add_sus_map
  [ ok ] susfs.h: susfs_get_enabled_features
  [ ok ] susfs.h: susfs_show_variant
  [ ok ] susfs.h: susfs_show_version
== KernelSU <-> SUSFS glue
  [ ok ] ksu.c includes susfs.h
  [ ok ] ksu.c calls susfs_init()
  [ ok ] supercall SUSFS magic dispatch
  [ ok ] dispatch boot-complete monitor
  [ ok ] dispatch KSU_MARK_GET override
  [ ok ] selinux sid cache init
== cross-module symbols required by fs/susfs.c
  [ ok ] all ksu-side symbols referenced by fs/susfs.c are provided
== kernel-side SUSFS hooks
  [ ok ] fs/namespace.c: susfs_is_current_ksu_domain
  [ ok ] fs/statfs.c: susfs_is_current_proc_umounted
  [ ok ] fs/proc/fd.c: susfs_is_current_proc_umounted
  [ ok ] fs/proc/task_mmu.c: SUSFS_IS_INODE_SUS_MAP
  [ ok ] kernel/kallsyms.c: susfs_starts_with
  [ ok ] kernel/sys.c: susfs_spoof_uname
  [ ok ] mm/memory.c: SUSFS_IS_INODE_SUS_MAP
  [ ok ] security/selinux/avc.c: susfs_is_avc_log_spoofing_enabled
  [ ok ] fs/readdir.c: susfs
  [ ok ] fs/namei.c: susfs
  [ ok ] fs/proc_namespace.c: susfs
== NoMount
  [ ok ] fs/nomount present
  [ ok ] fs/Makefile wired
  [ ok ] fs/Kconfig wired
== defconfig
  [ ok ] CONFIG_KSU=y
  [ ok ] CONFIG_KSU_SUSFS=y
  [ ok ] CONFIG_NOMOUNT=y
  [ ok ] CONFIG_KALLSYMS_ALL=y
  [ ok ] CONFIG_KSU_TAMPER_SYSCALL_TABLE=y
  [ ok ] CONFIG_PID_NS=y
  [ ok ] CONFIG_IPC_NS=y
  [ ok ] CONFIG_USER_NS=y
  [ ok ] CONFIG_SYSVIPC=y
  [ ok ] CONFIG_OVERLAY_FS=y

AUDIT PASSED
==> configuring vendor/xiaomi/miatoll_defconfig
arch/arm64/configs/vendor/xiaomi/miatoll_defconfig:770:warning: override: reassigning to symbol PID_NS
arch/arm64/configs/vendor/xiaomi/miatoll_defconfig:771:warning: override: reassigning to symbol UTS_NS
arch/arm64/configs/vendor/xiaomi/miatoll_defconfig:786:warning: override: reassigning to symbol BRIDGE_NETFILTER
!! CONFIG_KALLSYMS_ALL=y not enabled in out/.config
```

