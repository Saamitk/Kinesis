# CI failure logs

## build error context
```
9055-1 warning generated.
9056-warning: unknown warning option '-Werror=designated-init' [-Wunknown-warning-option]
9057-warning: unknown warning option '-Werror=designated-init' [-Wunknown-warning-option]
9058:../net/netfilter/nf_tables_api.c:3534:8: error: no member named 'dead' in 'struct nft_set'
9059- 3534 |                 set->dead = 1;
9060-      |                 ~~~  ^
9061-1 warning and 1 error generated.
9062:make[3]: *** [../scripts/Makefile.build:364: net/netfilter/nf_tables_api.o] Error 1
9063-  CC      net/netfilter/nf_tables_trace.o
9064-warning: unknown warning option '-Werror=designated-init' [-Wunknown-warning-option]
9065-1 warning generated.
9066-  CC      drivers/mmc/core/slot-gpio.o
9067-1 warning generated.
9068-warning: unknown warning option '-Werror=designated-init' [-Wunknown-warning-option]
9069-  CC      drivers/mmc/host/cmdq_hci-crypto-qti.o
9070-warning: unknown warning option '-Werror=designated-init' [-Wunknown-warning-option]
9071-1 warning generated.
9072-warning: unknown warning option '-Werror=designated-init' [-Wunknown-warning-option]
9073-1 warning generated.
9074-  CC      drivers/media/platform/msm/camera/cam_cpas/cam_cpas_hw.o
```

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

## check.log
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
arch/arm64/configs/vendor/xiaomi/miatoll_defconfig:775:warning: override: reassigning to symbol PID_NS
arch/arm64/configs/vendor/xiaomi/miatoll_defconfig:776:warning: override: reassigning to symbol UTS_NS
arch/arm64/configs/vendor/xiaomi/miatoll_defconfig:791:warning: override: reassigning to symbol BRIDGE_NETFILTER
==> pre-building generated SELinux headers
make[1]: Entering directory '/home/runner/work/Kinesis/Kinesis/out'
  GEN     ./Makefile
  HOSTCC  scripts/basic/fixdep
  HOSTCC  scripts/kconfig/conf.o
  HOSTCC  scripts/kconfig/zconf.tab.o
  HOSTLD  scripts/kconfig/conf
scripts/kconfig/conf  --silentoldconfig Kconfig
  CHK     include/config/kernel.release
  UPD     include/config/kernel.release
  GEN     ./Makefile
  CHK     include/generated/uapi/linux/version.h
  UPD     include/generated/uapi/linux/version.h
  WRAP    arch/arm64/include/generated/uapi/asm/errno.h
  WRAP    arch/arm64/include/generated/uapi/asm/ioctl.h
  WRAP    arch/arm64/include/generated/uapi/asm/ioctls.h
  WRAP    arch/arm64/include/generated/uapi/asm/ipcbuf.h
  WRAP    arch/arm64/include/generated/uapi/asm/kvm_para.h
  WRAP    arch/arm64/include/generated/uapi/asm/mman.h
  WRAP    arch/arm64/include/generated/uapi/asm/msgbuf.h
  WRAP    arch/arm64/include/generated/uapi/asm/poll.h
  WRAP    arch/arm64/include/generated/uapi/asm/resource.h
  WRAP    arch/arm64/include/generated/uapi/asm/sembuf.h
  WRAP    arch/arm64/include/generated/uapi/asm/shmbuf.h
  WRAP    arch/arm64/include/generated/uapi/asm/socket.h
  WRAP    arch/arm64/include/generated/uapi/asm/sockios.h
  WRAP    arch/arm64/include/generated/uapi/asm/swab.h
  WRAP    arch/arm64/include/generated/uapi/asm/termbits.h
  WRAP    arch/arm64/include/generated/uapi/asm/termios.h
  WRAP    arch/arm64/include/generated/uapi/asm/types.h
  CHK     include/generated/utsrelease.h
  UPD     include/generated/utsrelease.h
  HOSTCC  scripts/basic/fixdep
  HOSTCC  scripts/basic/bin2c
  Using .. as source for kernel
  WRAP    arch/arm64/include/generated/asm/bugs.h
  WRAP    arch/arm64/include/generated/asm/clkdev.h
  WRAP    arch/arm64/include/generated/asm/delay.h
  WRAP    arch/arm64/include/generated/asm/div64.h
  WRAP    arch/arm64/include/generated/asm/dma.h
  WRAP    arch/arm64/include/generated/asm/dma-contiguous.h
  WRAP    arch/arm64/include/generated/asm/early_ioremap.h
  WRAP    arch/arm64/include/generated/asm/emergency-restart.h
  WRAP    arch/arm64/include/generated/asm/hw_irq.h
  WRAP    arch/arm64/include/generated/asm/irq_regs.h
  WRAP    arch/arm64/include/generated/asm/kdebug.h
  WRAP    arch/arm64/include/generated/asm/kmap_types.h
  WRAP    arch/arm64/include/generated/asm/local.h
  WRAP    arch/arm64/include/generated/asm/local64.h
  WRAP    arch/arm64/include/generated/asm/mcs_spinlock.h
  WRAP    arch/arm64/include/generated/asm/mm-arch-hooks.h
  WRAP    arch/arm64/include/generated/asm/msi.h
  WRAP    arch/arm64/include/generated/asm/preempt.h
  WRAP    arch/arm64/include/generated/asm/qrwlock.h
  WRAP    arch/arm64/include/generated/asm/rwsem.h
  WRAP    arch/arm64/include/generated/asm/segment.h
  WRAP    arch/arm64/include/generated/asm/serial.h
  WRAP    arch/arm64/include/generated/asm/set_memory.h
  WRAP    arch/arm64/include/generated/asm/sizes.h
  WRAP    arch/arm64/include/generated/asm/switch_to.h
  WRAP    arch/arm64/include/generated/asm/trace_clock.h
  WRAP    arch/arm64/include/generated/asm/unaligned.h
  WRAP    arch/arm64/include/generated/asm/user.h
  WRAP    arch/arm64/include/generated/asm/vga.h
  WRAP    arch/arm64/include/generated/asm/xor.h
  LDS     scripts/module-lto.lds
  HOSTCC  scripts/dtc/dtc.o
  HOSTCC  scripts/genksyms/genksyms.o
  CC      scripts/mod/empty.o
warning: unknown warning option '-Werror=designated-init' [-Wunknown-warning-option]
1 warning generated.
  HOSTCC  scripts/selinux/genheaders/genheaders
  HOSTCC  scripts/mod/mk_elfconfig
  HOSTCC  scripts/dtc/flattree.o
  CC      scripts/mod/devicetable-offsets.s
warning: unknown warning option '-Werror=designated-init' [-Wunknown-warning-option]
  SHIPPED scripts/genksyms/parse.tab.c
  SHIPPED scripts/genksyms/lex.lex.c
  SHIPPED scripts/genksyms/parse.tab.h
  HOSTCC  scripts/genksyms/parse.tab.o
1 warning generated.
  MKELF   scripts/mod/elfconfig.h
  CHK     scripts/mod/devicetable-offsets.h
  HOSTCC  scripts/selinux/mdp/mdp
  UPD     scripts/mod/devicetable-offsets.h
  HOSTCC  scripts/mod/sumversion.o
  HOSTCC  scripts/dtc/fstree.o
  HOSTCC  scripts/genksyms/lex.lex.o
  HOSTCC  scripts/kallsyms
  HOSTCC  scripts/dtc/data.o
  HOSTCC  scripts/mod/modpost.o
  HOSTCC  scripts/dtc/livetree.o
  HOSTCC  scripts/dtc/treesource.o
  HOSTLD  scripts/genksyms/genksyms
  HOSTCC  scripts/mod/file2alias.o
  HOSTCC  scripts/pnmtologo
  HOSTCC  scripts/dtc/srcpos.o
  HOSTCC  scripts/dtc/checks.o
  HOSTCC  scripts/conmakehash
  HOSTCC  scripts/dtc/util.o
  HOSTCC  scripts/sortextable
  HOSTLD  scripts/mod/modpost
  HOSTCC  scripts/asn1_compiler
  SHIPPED scripts/dtc/dtc-lexer.lex.c
  SHIPPED scripts/dtc/dtc-parser.tab.c
  SHIPPED scripts/dtc/dtc-parser.tab.h
  HOSTCC  scripts/extract-cert
  HOSTCC  scripts/dtc/dtc-parser.tab.o
  HOSTCC  scripts/dtc/dtc-lexer.lex.o
  HOSTLD  scripts/dtc/dtc
  CHK     include/generated/timeconst.h
  CC      kernel/bounds.s
warning: unknown warning option '-Werror=designated-init' [-Wunknown-warning-option]
  UPD     include/generated/timeconst.h
1 warning generated.
  CHK     include/generated/bounds.h
  UPD     include/generated/bounds.h
  CC      arch/arm64/kernel/asm-offsets.s
warning: unknown warning option '-Werror=designated-init' [-Wunknown-warning-option]
1 warning generated.
  CHK     include/generated/asm-offsets.h
  UPD     include/generated/asm-offsets.h
  CALL    ../scripts/checksyscalls.sh
warning: unknown warning option '-Werror=designated-init' [-Wunknown-warning-option]
1 warning generated.
  LDS     arch/arm64/kernel/vdso/vdso.lds
  VDSOA   arch/arm64/kernel/vdso/gettimeofday.o
  VDSOA   arch/arm64/kernel/vdso/note.o
  VDSOA   arch/arm64/kernel/vdso/sigreturn.o
  LD      arch/arm64/kernel/vdso/vdso.so.dbg
  VDSOSYM include/generated/vdso-offsets.h
  GEN     security/selinux/flask.h security/selinux/av_permissions.h
  CC      security/selinux/avc.o
warning: unknown warning option '-Werror=designated-init' [-Wunknown-warning-option]
1 warning generated.
make[1]: Leaving directory '/home/runner/work/Kinesis/Kinesis/out'
==> quick check: preparing generated headers
make[1]: Entering directory '/home/runner/work/Kinesis/Kinesis/out'
  CHK     include/config/kernel.release
  GEN     ./Makefile
  CHK     include/generated/uapi/linux/version.h
  CHK     include/generated/utsrelease.h
  Using .. as source for kernel
  CHK     include/generated/timeconst.h
  CHK     include/generated/bounds.h
  CHK     include/generated/asm-offsets.h
  CALL    ../scripts/checksyscalls.sh
warning: unknown warning option '-Werror=designated-init' [-Wunknown-warning-option]
1 warning generated.
make[1]: Leaving directory '/home/runner/work/Kinesis/Kinesis/out'
make[1]: Entering directory '/home/runner/work/Kinesis/Kinesis/out'
  CHK     include/config/kernel.release
  GEN     ./Makefile
  CHK     include/generated/uapi/linux/version.h
  CHK     include/generated/utsrelease.h
  Using .. as source for kernel
  CHK     scripts/mod/devicetable-offsets.h
  CHK     include/generated/timeconst.h
  CHK     include/generated/bounds.h
  CHK     include/generated/asm-offsets.h
  CALL    ../scripts/checksyscalls.sh
warning: unknown warning option '-Werror=designated-init' [-Wunknown-warning-option]
1 warning generated.
  CHK     include/generated/compile.h
  UPD     include/generated/compile.h
  CC      init/version.o
warning: unknown warning option '-Werror=designated-init' [-Wunknown-warning-option]
1 warning generated.
warning: unknown warning option '-Werror=designated-init' [-Wunknown-warning-option]
1 warning generated.
make[1]: Leaving directory '/home/runner/work/Kinesis/Kinesis/out'
==> quick check: compiling the root stack objects only
make[1]: Entering directory '/home/runner/work/Kinesis/Kinesis/out'
  CHK     include/config/kernel.release
  GEN     ./Makefile
  CHK     include/generated/uapi/linux/version.h
  CHK     include/generated/utsrelease.h
  Using .. as source for kernel
  CHK     scripts/mod/devicetable-offsets.h
  CHK     include/generated/timeconst.h
  CHK     include/generated/bounds.h
  CHK     include/generated/asm-offsets.h
  CALL    ../scripts/checksyscalls.sh
warning: unknown warning option '-Werror=designated-init' [-Wunknown-warning-option]
1 warning generated.
  CC      fs/nomount/nomount.o
warning: unknown warning option '-Werror=designated-init' [-Wunknown-warning-option]
-- KDIR: 
-- MDIR: /home/runner/work/Kinesis/Kinesis/KernelSU/kernel
-- KernelSU Manager signature size: 0x033b
-- KernelSU Manager signature hash: c371061b19d8c7d7d6133c6a9bafe198fa944e50c1b31c9d8daa8d7f1fc2d2d6
-- KernelSU/compat: iterate_dir found!
-- KernelSU/compat: f_op->read_iter found!
  CC      fs/susfs.o
warning: unknown warning option '-Werror=designated-init' [-Wunknown-warning-option]
1 warning generated.
1 warning generated.
  CC      drivers/kernelsu/ksu.o
warning: unknown warning option '-Werror=designated-init' [-Wunknown-warning-option]
warning: unknown warning option '-Wno-discarded-qualifiers'; did you mean '-Wno-ignored-qualifiers'? [-Wunknown-warning-option]
2 warnings generated.
make[1]: Leaving directory '/home/runner/work/Kinesis/Kinesis/out'
==> quick check passed
```

## build.log
```
ning generated.
  CC      drivers/net/ppp/pptp.o
warning: unknown warning option '-Werror=designated-init' [-Wunknown-warning-option]
1 warning generated.
warning: unknown warning option '-Werror=designated-init' [-Wunknown-warning-option]
  CC      drivers/media/rc/keymaps/rc-cinergy.o
warning: unknown warning option '-Werror=designated-init' [-Wunknown-warning-option]
1 warning generated.
  CC      drivers/net/phy/micrel.o
warning: unknown warning option '-Werror=designated-init' [-Wunknown-warning-option]
1 warning generated.
1 warning generated.
  CC      drivers/media/rc/keymaps/rc-d680-dmb.o
  AR      drivers/media/platform/msm/camera/cam_sensor_module/cam_sensor_io/built-in.a
warning: unknown warning option '-Werror=designated-init' [-Wunknown-warning-option]
  CC      drivers/media/platform/msm/camera/cam_sensor_module/cam_sensor_utils/cam_sensor_util.o
warning: unknown warning option '-Werror=designated-init' [-Wunknown-warning-option]
1 warning generated.
1 warning generated.
  CC      drivers/media/rc/keymaps/rc-delock-61959.o
warning: unknown warning option '-Werror=designated-init' [-Wunknown-warning-option]
  CC      drivers/net/ppp/pppolac.o
warning: unknown warning option '-Werror=designated-init' [-Wunknown-warning-option]
1 warning generated.
  AR      drivers/net/phy/libphy.o
  AR      drivers/net/phy/built-in.a
1 warning generated.
  CC      drivers/media/platform/msm/camera/cam_smmu/cam_smmu_api.o
  CC      drivers/media/rc/keymaps/rc-dib0700-nec.o
1 warning generated.
warning: unknown warning option '-Werror=designated-init' [-Wunknown-warning-option]
warning: unknown warning option '-Werror=designated-init' [-Wunknown-warning-option]
  AR      drivers/media/platform/msm/camera/cam_sensor_module/cam_sensor_utils/built-in.a
  AR      drivers/media/platform/msm/camera/cam_sensor_module/built-in.a
  CC      drivers/media/platform/msm/vidc/msm_v4l2_vidc.o
warning: unknown warning option '-Werror=designated-init' [-Wunknown-warning-option]
1 warning generated.
1 warning generated.
  CC      drivers/media/rc/keymaps/rc-dib0700-rc5.o
warning: unknown warning option '-Werror=designated-init' [-Wunknown-warning-option]
  CC      drivers/net/ppp/pppopns.o
warning: unknown warning option '-Werror=designated-init' [-Wunknown-warning-option]
1 warning generated.
  CC      drivers/media/rc/keymaps/rc-digitalnow-tinytwin.o
warning: unknown warning option '-Werror=designated-init' [-Wunknown-warning-option]
1 warning generated.
warning: unknown warning option '-Werror=designated-init' [-Wunknown-warning-option]
1 warning generated.
  CC      drivers/media/platform/msm/vidc/msm_v4l2_private.o
warning: unknown warning option '-Werror=designated-init' [-Wunknown-warning-option]
1 warning generated.
  CC      drivers/media/rc/keymaps/rc-digittrade.o
warning: unknown warning option '-Werror=designated-init' [-Wunknown-warning-option]
1 warning generated.
1 warning generated.
  AR      drivers/media/platform/msm/camera/cam_smmu/built-in.a
  AR      drivers/net/ppp/built-in.a
  CC      drivers/media/platform/msm/camera/cam_sync/cam_sync.o
warning: unknown warning option '-Werror=designated-init' [-Wunknown-warning-option]
  CC      drivers/net/slip/slhc.o
warning: unknown warning option '-Werror=designated-init' [-Wunknown-warning-option]
1 warning generated.
  CC      drivers/media/rc/keymaps/rc-dm1105-nec.o
warning: unknown warning option '-Werror=designated-init' [-Wunknown-warning-option]
1 warning generated.
  CC      drivers/media/platform/msm/vidc/msm_vidc_platform.o
warning: unknown warning option '-Werror=designated-init' [-Wunknown-warning-option]
1 warning generated.
1 warning generated.
  CC      drivers/media/platform/msm/camera/cam_sync/cam_sync_util.o
warning: unknown warning option '-Werror=designated-init' [-Wunknown-warning-option]
  CC      drivers/media/rc/keymaps/rc-dntv-live-dvb-t.o
warning: unknown warning option '-Werror=designated-init' [-Wunknown-warning-option]
1 warning generated.
1 warning generated.
warning: unknown warning option '-Werror=designated-init' [-Wunknown-warning-option]
  CC      drivers/media/rc/keymaps/rc-dntv-live-dvbt-pro.o
warning: unknown warning option '-Werror=designated-init' [-Wunknown-warning-option]
1 warning generated.
1 warning generated.
  CC      drivers/media/platform/msm/vidc/msm_vidc_common.o
warning: unknown warning option '-Werror=designated-init' [-Wunknown-warning-option]
  AR      drivers/media/platform/msm/camera/cam_sync/built-in.a
  CC      drivers/media/platform/msm/camera/cam_utils/cam_soc_util.o
warning: unknown warning option '-Werror=designated-init' [-Wunknown-warning-option]
1 warning generated.
  CC      drivers/media/rc/keymaps/rc-dtt200u.o
warning: unknown warning option '-Werror=designated-init' [-Wunknown-warning-option]
1 warning generated.
  AR      drivers/net/slip/built-in.a
  CC      drivers/net/usb/r8152.o
warning: unknown warning option '-Werror=designated-init' [-Wunknown-warning-option]
1 warning generated.
1 warning generated.
  CC      drivers/media/rc/keymaps/rc-dvbsky.o
warning: unknown warning option '-Werror=designated-init' [-Wunknown-warning-option]
  CC      drivers/media/platform/msm/camera/cam_utils/cam_io_util.o
warning: unknown warning option '-Werror=designated-init' [-Wunknown-warning-option]
1 warning generated.
  CC      drivers/media/platform/msm/camera/cam_utils/cam_packet_util.o
warning: unknown warning option '-Werror=designated-init' [-Wunknown-warning-option]
1 warning generated.
  CC      drivers/media/rc/keymaps/rc-dvico-mce.o
warning: unknown warning option '-Werror=designated-init' [-Wunknown-warning-option]
1 warning generated.
  CC      drivers/media/rc/keymaps/rc-dvico-portable.o
warning: unknown warning option '-Werror=designated-init' [-Wunknown-warning-option]
1 warning generated.
  CC      drivers/media/platform/msm/camera/cam_utils/cam_trace.o
warning: unknown warning option '-Werror=designated-init' [-Wunknown-warning-option]
1 warning generated.
  CC      drivers/media/platform/msm/vidc/msm_vidc.o
warning: unknown warning option '-Werror=designated-init' [-Wunknown-warning-option]
1 warning generated.
  CC      drivers/media/rc/keymaps/rc-em-terratec.o
warning: unknown warning option '-Werror=designated-init' [-Wunknown-warning-option]
1 warning generated.
1 warning generated.
1 warning generated.
  CC      drivers/net/usb/asix_devices.o
  CC      drivers/media/rc/keymaps/rc-encore-enltv2.o
warning: unknown warning option '-Werror=designated-init' [-Wunknown-warning-option]
warning: unknown warning option '-Werror=designated-init' [-Wunknown-warning-option]
  CC      drivers/media/platform/msm/camera/cam_utils/cam_common_util.o
warning: unknown warning option '-Werror=designated-init' [-Wunknown-warning-option]
1 warning generated.
warning: unknown warning option '-Werror=designated-init' [-Wunknown-warning-option]
1 warning generated.
  CC      drivers/media/platform/msm/camera/cam_utils/cam_cx_ipeak.o
warning: unknown warning option '-Werror=designated-init' [-Wunknown-warning-option]
1 warning generated.
  CC      drivers/media/rc/keymaps/rc-encore-enltv.o
warning: unknown warning option '-Werror=designated-init' [-Wunknown-warning-option]
1 warning generated.
  CC      drivers/media/platform/msm/vidc/msm_vdec.o
warning: unknown warning option '-Werror=designated-init' [-Wunknown-warning-option]
1 warning generated.
1 warning generated.
1 warning generated.
  AR      drivers/media/platform/msm/camera/cam_utils/built-in.a
  CC      drivers/media/rc/keymaps/rc-encore-enltv-fm53.o
  AR      drivers/media/platform/msm/camera/built-in.a
warning: unknown warning option '-Werror=designated-init' [-Wunknown-warning-option]
  CC      drivers/net/usb/asix_common.o
warning: unknown warning option '-Werror=designated-init' [-Wunknown-warning-option]
  AR      drivers/media/spi/built-in.a
  CC      drivers/nvmem/core.o
warning: unknown warning option '-Werror=designated-init' [-Wunknown-warning-option]
1 warning generated.
1 warning generated.
  CC      drivers/media/rc/keymaps/rc-evga-indtube.o
warning: unknown warning option '-Werror=designated-init' [-Wunknown-warning-option]
  CC      drivers/media/platform/msm/vidc/msm_venc.o
warning: unknown warning option '-Werror=designated-init' [-Wunknown-warning-option]
1 warning generated.
warning: unknown warning option '-Werror=designated-init' [-Wunknown-warning-option]
1 warning generated.
1 warning generated.
  CC      drivers/media/rc/keymaps/rc-eztv.o
warning: unknown warning option '-Werror=designated-init' [-Wunknown-warning-option]
  CC      drivers/net/usb/ax88172a.o
warning: unknown warning option '-Werror=designated-init' [-Wunknown-warning-option]
1 warning generated.
  CC      drivers/nvmem/qfprom.o
warning: unknown warning option '-Werror=designated-init' [-Wunknown-warning-option]
1 warning generated.
  CC      drivers/media/platform/msm/vidc/msm_cvp.o
warning: unknown warning option '-Werror=designated-init' [-Wunknown-warning-option]
1 warning generated.
  CC      drivers/media/rc/keymaps/rc-flydvb.o
warning: unknown warning option '-Werror=designated-init' [-Wunknown-warning-option]
1 warning generated.
  CC      drivers/nvmem/qcom-spmi-sdam.o
warning: unknown warning option '-Werror=designated-init' [-Wunknown-warning-option]
1 warning generated.
1 warning generated.
  CC      drivers/media/rc/keymaps/rc-flyvideo.o
  CC      drivers/net/usb/ax88179_178a.o
warning: unknown warning option '-Werror=designated-init' [-Wunknown-warning-option]
warning: unknown warning option '-Werror=designated-init' [-Wunknown-warning-option]
1 warning generated.
1 warning generated.
  AR      drivers/nvmem/nvmem_core.o
  CC      drivers/media/platform/msm/vidc/msm_smem.o
warning: unknown warning option '-Werror=designated-init' [-Wunknown-warning-option]
  AR      drivers/nvmem/nvmem_qfprom.o
  AR      drivers/nvmem/built-in.a
  CC      drivers/of/base.o
warning: unknown warning option '-Werror=designated-init' [-Wunknown-warning-option]
1 warning generated.
  CC      drivers/media/rc/keymaps/rc-fusionhdtv-mce.o
warning: unknown warning option '-Werror=designated-init' [-Wunknown-warning-option]
1 warning generated.
  CC      drivers/media/rc/keymaps/rc-gadmei-rm008z.o
1 warning generated.
warning: unknown warning option '-Werror=designated-init' [-Wunknown-warning-option]
1 warning generated.
  CC      drivers/media/platform/msm/vidc/msm_vidc_res_parse.o
warning: unknown warning option '-Werror=designated-init' [-Wunknown-warning-option]
  CC      drivers/net/usb/cdc_ether.o
1 warning generated.
warning: unknown warning option '-Werror=designated-init' [-Wunknown-warning-option]
warning: unknown warning option '-Werror=designated-init' [-Wunknown-warning-option]
1 warning generated.
1 warning generated.
  CC      drivers/media/rc/keymaps/rc-geekbox.o
warning: unknown warning option '-Werror=designated-init' [-Wunknown-warning-option]
  CC      drivers/of/device.o
warning: unknown warning option '-Werror=designated-init' [-Wunknown-warning-option]
1 warning generated.
warning: unknown warning option '-Werror=designated-init' [-Wunknown-warning-option]
1 warning generated.
  CC      drivers/media/rc/keymaps/rc-genius-tvgo-a11mce.o
1 warning generated.
warning: unknown warning option '-Werror=designated-init' [-Wunknown-warning-option]
warning: unknown warning option '-Werror=designated-init' [-Wunknown-warning-option]
1 warning generated.
warning: unknown warning option '-Werror=designated-init' [-Wunknown-warning-option]
1 warning generated.
  CC      drivers/media/platform/msm/vidc/venus_hfi.o
warning: unknown warning option '-Werror=designated-init' [-Wunknown-warning-option]
1 warning generated.
  CC      drivers/media/rc/keymaps/rc-gotview7135.o
warning: unknown warning option '-Werror=designated-init' [-Wunknown-warning-option]
1 warning generated.
1 warning generated.
  CC      drivers/net/usb/net1080.o
  CC      drivers/of/platform.o
warning: unknown warning option '-Werror=designated-init' [-Wunknown-warning-option]
warning: unknown warning option '-Werror=designated-init' [-Wunknown-warning-option]
1 warning generated.
  CC      drivers/media/rc/keymaps/rc-hisi-poplar.o
warning: unknown warning option '-Werror=designated-init' [-Wunknown-warning-option]
1 warning generated.
1 warning generated.
  CC      drivers/media/rc/keymaps/rc-hisi-tv-demo.o
warning: unknown warning option '-Werror=designated-init' [-Wunknown-warning-option]
warning: unknown warning option '-Werror=designated-init' [-Wunknown-warning-option]
1 warning generated.
  CC      drivers/net/usb/cdc_subset.o
warning: unknown warning option '-Werror=designated-init' [-Wunknown-warning-option]
1 warning generated.
  CC      drivers/of/property.o
1 warning generated.
warning: unknown warning option '-Werror=designated-init' [-Wunknown-warning-option]
  CC      drivers/media/rc/keymaps/rc-imon-mce.o
warning: unknown warning option '-Werror=designated-init' [-Wunknown-warning-option]
1 warning generated.
  CC      drivers/media/platform/msm/vidc/hfi_response_handler.o
warning: unknown warning option '-Werror=designated-init' [-Wunknown-warning-option]
1 warning generated.
1 warning generated.
1 warning generated.
  CC      drivers/media/rc/keymaps/rc-imon-pad.o
warning: unknown warning option '-Werror=designated-init' [-Wunknown-warning-option]
  CC      drivers/net/usb/zaurus.o
warning: unknown warning option '-Werror=designated-init' [-Wunknown-warning-option]
warning: unknown warning option '-Werror=designated-init' [-Wunknown-warning-option]
1 warning generated.
  CC      drivers/of/kobj.o
1 warning generated.
warning: unknown warning option '-Werror=designated-init' [-Wunknown-warning-option]
  CC      drivers/media/rc/keymaps/rc-imon-rsc.o
warning: unknown warning option '-Werror=designated-init' [-Wunknown-warning-option]
1 warning generated.
  CC      drivers/of/fdt.o
warning: unknown warning option '-Werror=designated-init' [-Wunknown-warning-option]
1 warning generated.
1 warning generated.
  CC      drivers/media/rc/keymaps/rc-iodata-bctv7e.o
  CC      drivers/net/usb/usbnet.o
warning: unknown warning option '-Werror=designated-init' [-Wunknown-warning-option]
warning: unknown warning option '-Werror=designated-init' [-Wunknown-warning-option]
1 warning generated.
  CC      drivers/media/platform/msm/vidc/hfi_packetization.o
warning: unknown warning option '-Werror=designated-init' [-Wunknown-warning-option]
1 warning generated.
  CC      drivers/media/rc/keymaps/rc-it913x-v1.o
warning: unknown warning option '-Werror=designated-init' [-Wunknown-warning-option]
1 warning generated.
warning: unknown warning option '-Werror=designated-init' [-Wunknown-warning-option]
1 warning generated.
  CC      drivers/media/rc/keymaps/rc-it913x-v2.o
warning: unknown warning option '-Werror=designated-init' [-Wunknown-warning-option]
1 warning generated.
  CC      drivers/of/fdt_address.o
1 warning generated.
warning: unknown warning option '-Werror=designated-init' [-Wunknown-warning-option]
  CC      drivers/media/platform/msm/vidc/vidc_hfi.o
1 warning generated.
warning: unknown warning option '-Werror=designated-init' [-Wunknown-warning-option]
warning: unknown warning option '-Werror=designated-init' [-Wunknown-warning-option]
1 warning generated.
1 warning generated.
  CC      drivers/media/rc/keymaps/rc-kaiomy.o
  CC      drivers/of/address.o
warning: unknown warning option '-Werror=designated-init' [-Wunknown-warning-option]
warning: unknown warning option '-Werror=designated-init' [-Wunknown-warning-option]
1 warning generated.
  CC      drivers/net/usb/cdc_ncm.o
warning: unknown warning option '-Werror=designated-init' [-Wunknown-warning-option]
1 warning generated.
  CC      drivers/media/platform/msm/vidc/venus_boot.o
warning: unknown warning option '-Werror=designated-init' [-Wunknown-warning-option]
1 warning generated.
  CC      drivers/media/rc/keymaps/rc-kworld-315u.o
warning: unknown warning option '-Werror=designated-init' [-Wunknown-warning-option]
1 warning generated.
warning: unknown warning option '-Werror=designated-init' [-Wunknown-warning-option]
1 warning generated.
  CC      drivers/media/rc/keymaps/rc-kworld-pc150u.o
warning: unknown warning option '-Werror=designated-init' [-Wunknown-warning-option]
1 warning generated.
1 warning generated.
  CC      drivers/of/irq.o
  CC      drivers/media/platform/msm/vidc/msm_vidc_clocks.o
warning: unknown warning option '-Werror=designated-init' [-Wunknown-warning-option]
warning: unknown warning option '-Werror=designated-init' [-Wunknown-warning-option]
1 warning generated.
warning: unknown warning option '-Werror=designated-init' [-Wunknown-warning-option]
1 warning generated.
  CC      drivers/media/rc/keymaps/rc-kworld-plus-tv-analog.o
warning: unknown warning option '-Werror=designated-init' [-Wunknown-warning-option]
1 warning generated.
1 warning generated.
1 warning generated.
warning: unknown warning option '-Werror=designated-init' [-Wunknown-warning-option]
  AR      drivers/net/usb/asix.o
  CC      drivers/media/rc/keymaps/rc-leadtek-y04g0051.o
warning: unknown warning option '-Werror=designated-init' [-Wunknown-warning-option]
  AR      drivers/net/usb/built-in.a
1 warning generated.
  CC      drivers/media/platform/msm/vidc/governors/msm_vidc_dyn_gov.o
  CC      drivers/net/wireguard/main.o
warning: unknown warning option '-Werror=designated-init' [-Wunknown-warning-option]
warning: unknown warning option '-Werror=designated-init' [-Wunknown-warning-option]
1 warning generated.
  CC      drivers/of/of_net.o
warning: unknown warning option '-Werror=designated-init' [-Wunknown-warning-option]
1 warning generated.
  CC      drivers/media/rc/keymaps/rc-lme2510.o
warning: unknown warning option '-Werror=designated-init' [-Wunknown-warning-option]
1 warning generated.
1 warning generated.
  CC      drivers/media/rc/keymaps/rc-manli.o
warning: unknown warning option '-Werror=designated-init' [-Wunknown-warning-option]
  CC      drivers/media/platform/msm/vidc/governors/msm_vidc_ar50_dyn_gov.o
1 warning generated.
warning: unknown warning option '-Werror=designated-init' [-Wunknown-warning-option]
warning: unknown warning option '-Werror=designated-init' [-Wunknown-warning-option]
1 warning generated.
  CC      drivers/net/wireguard/noise.o
warning: unknown warning option '-Werror=designated-init' [-Wunknown-warning-option]
1 warning generated.
  CC      drivers/media/rc/keymaps/rc-medion-x10.o
warning: unknown warning option '-Werror=designated-init' [-Wunknown-warning-option]
1 warning generated.
  CC      drivers/of/of_mdio.o
warning: unknown warning option '-Werror=designated-init' [-Wunknown-warning-option]
1 warning generated.
1 warning generated.
  AR      drivers/media/platform/msm/vidc/governors/msm-vidc-dyn-gov.o
  AR      drivers/media/platform/msm/vidc/governors/msm-vidc-ar50-dyn-gov.o
  CC      drivers/media/rc/keymaps/rc-medion-x10-digitainer.o
warning: unknown warning option '-Werror=designated-init' [-Wunknown-warning-option]
  AR      drivers/media/platform/msm/vidc/governors/built-in.a
  AR      drivers/media/platform/msm/vidc/msm-vidc.o
  AR      drivers/media/platform/msm/vidc/built-in.a
  AR      drivers/media/platform/msm/built-in.a
  AR      drivers/media/platform/built-in.a
  CC      drivers/media/rc/rc-ir-raw.o
warning: unknown warning option '-Werror=designated-init' [-Wunknown-warning-option]
1 warning generated.
1 warning generated.
  CC      drivers/net/wireguard/device.o
  CC      drivers/media/rc/keymaps/rc-medion-x10-or2x.o
warning: unknown warning option '-Werror=designated-init' [-Wunknown-warning-option]
warning: unknown warning option '-Werror=designated-init' [-Wunknown-warning-option]
1 warning generated.
warning: unknown warning option '-Werror=designated-init' [-Wunknown-warning-option]
1 warning generated.
warning: unknown warning option '-Werror=designated-init' [-Wunknown-warning-option]
1 warning generated.
  CC      drivers/media/rc/keymaps/rc-msi-digivox-ii.o
warning: unknown warning option '-Werror=designated-init' [-Wunknown-warning-option]
1 warning generated.
  CC      drivers/of/of_reserved_mem.o
1 warning generated.
warning: unknown warning option '-Werror=designated-init' [-Wunknown-warning-option]
  AR      drivers/media/rc/rc-core.o
  CC      drivers/pci/dwc/pcie-hisi.o
warning: unknown warning option '-Werror=designated-init' [-Wunknown-warning-option]
1 warning generated.
  CC      drivers/media/rc/keymaps/rc-msi-digivox-iii.o
warning: unknown warning option '-Werror=designated-init' [-Wunknown-warning-option]
1 warning generated.
  CC      drivers/net/wireguard/peer.o
warning: unknown warning option '-Werror=designated-init' [-Wunknown-warning-option]
1 warning generated.
warning: unknown warning option '-Werror=designated-init' [-Wunknown-warning-option]
1 warning generated.
1 warning generated.
  AR      drivers/pci/dwc/built-in.a
  CC      drivers/media/rc/keymaps/rc-msi-tvanywhere.o
warning: unknown warning option '-Werror=designated-init' [-Wunknown-warning-option]
1 warning generated.
  CC      drivers/of/of_slimbus.o
warning: unknown warning option '-Werror=designated-init' [-Wunknown-warning-option]
  AR      drivers/net/wireless/admtek/built-in.a
  AR      drivers/net/wireless/ath/built-in.a
  AR      drivers/net/wireless/atmel/built-in.a
  AR      drivers/net/wireless/broadcom/built-in.a
  AR      drivers/net/wireless/cisco/built-in.a
1 warning generated.
  CC      drivers/media/rc/keymaps/rc-msi-tvanywhere-plus.o
  CC      drivers/net/wireless/cnss_genl/cnss_nl.o
1 warning generated.
warning: warning: unknown warning option '-Werror=designated-init' [-Wunknown-warning-option]
unknown warning option '-Werror=designated-init' [-Wunknown-warning-option]
  CC      drivers/of/of_batterydata.o
warning: unknown warning option '-Werror=designated-init' [-Wunknown-warning-option]
1 warning generated.
  CC      drivers/net/wireguard/timers.o
warning: unknown warning option '-Werror=designated-init' [-Wunknown-warning-option]
1 warning generated.
  CC      drivers/media/rc/keymaps/rc-nebula.o
warning: unknown warning option '-Werror=designated-init' [-Wunknown-warning-option]
1 warning generated.
  AR      drivers/of/built-in.a
1 warning generated.
warning: unknown warning option '-Werror=designated-init' [-Wunknown-warning-option]
  CC      drivers/perf/arm_dsu_pmu.o
warning: unknown warning option '-Werror=designated-init' [-Wunknown-warning-option]
1 warning generated.
  CC      drivers/media/rc/keymaps/rc-nec-terratec-cinergy-xs.o
warning: unknown warning option '-Werror=designated-init' [-Wunknown-warning-option]
1 warning generated.
  AR      drivers/net/wireless/cnss_genl/built-in.a
  CC      drivers/net/wireless/cnss_prealloc/cnss_prealloc.o
warning: unknown warning option '-Werror=designated-init' [-Wunknown-warning-option]
1 warning generated.
1 warning generated.
  CC      drivers/net/wireguard/queueing.o
  CC      drivers/media/rc/keymaps/rc-norwood.o
warning: unknown warning option '-Werror=designated-init' [-Wunknown-warning-option]
warning: unknown warning option '-Werror=designated-init' [-Wunknown-warning-option]
1 warning generated.
  CC      drivers/perf/arm_pmu.o
warning: unknown warning option '-Werror=designated-init' [-Wunknown-warning-option]
1 warning generated.
warning: unknown warning option '-Werror=designated-init' [-Wunknown-warning-option]
1 warning generated.
  CC      drivers/media/rc/keymaps/rc-npgtech.o
warning: unknown warning option '-Werror=designated-init' [-Wunknown-warning-option]
1 warning generated.
  AR      drivers/net/wireless/cnss_prealloc/built-in.a
  CC      drivers/net/wireless/cnss_utils/cnss_utils.o
warning: unknown warning option '-Werror=designated-init' [-Wunknown-warning-option]
1 warning generated.
1 warning generated.
  CC      drivers/media/rc/keymaps/rc-pctv-sedna.o
warning: unknown warning option '-Werror=designated-init' [-Wunknown-warning-option]
1 warning generated.
warning: unknown warning option '-Werror=designated-init' [-Wunknown-warning-option]
  CC      drivers/net/wireguard/send.o
warning: unknown warning option '-Werror=designated-init' [-Wunknown-warning-option]
1 warning generated.
  CC      drivers/perf/arm_pmu_platform.o
warning: unknown warning option '-Werror=designated-init' [-Wunknown-warning-option]
1 warning generated.
  CC      drivers/media/rc/keymaps/rc-pinnacle-color.o
warning: unknown warning option '-Werror=designated-init' [-Wunknown-warning-option]
1 warning generated.
warning: unknown warning option '-Werror=designated-init' [-Wunknown-warning-option]
1 warning generated.
  CC      drivers/media/rc/keymaps/rc-pinnacle-grey.o
warning: unknown warning option '-Werror=designated-init' [-Wunknown-warning-option]
1 warning generated.
  AR      drivers/net/wireless/cnss_utils/built-in.a
1 warning generated.
  AR      drivers/net/wireless/intel/built-in.a
1 warning generated.
  CC      drivers/perf/qcom_llcc_pmu.o
warning: unknown warning option '-Werror=designated-init' [-Wunknown-warning-option]
  AR      drivers/net/wireless/intersil/built-in.a
  CC      drivers/net/wireguard/receive.o
warning: unknown warning option '-Werror=designated-init' [-Wunknown-warning-option]
  AR      drivers/net/wireless/marvell/built-in.a
  AR      drivers/net/wireless/mediatek/built-in.a
1 warning generated.
  AR      drivers/net/wireless/quantenna/built-in.a
  CC      drivers/media/rc/keymaps/rc-pinnacle-pctv-hd.o
  AR      drivers/net/wireless/ralink/built-in.a
warning: unknown warning option '-Werror=designated-init' [-Wunknown-warning-option]
  AR      drivers/net/wireless/realtek/built-in.a
  AR      drivers/net/wireless/rsi/built-in.a
  AR      drivers/net/wireless/st/built-in.a
  AR      drivers/net/wireless/ti/built-in.a
  AR      drivers/net/wireless/zydas/built-in.a
  AR      drivers/net/wireless/built-in.a
  CC      drivers/net/dummy.o
warning: unknown warning option '-Werror=designated-init' [-Wunknown-warning-option]
1 warning generated.
1 warning generated.
  AR      drivers/perf/built-in.a
  CC      drivers/media/rc/keymaps/rc-pixelview.o
warning: unknown warning option '-Werror=designated-init' [-Wunknown-warning-option]
  CC      drivers/phy/phy-core.o
warning: unknown warning option '-Werror=designated-init' [-Wunknown-warning-option]
1 warning generated.
  CC      drivers/net/wireguard/socket.o
1 warning generated.
warning: unknown warning option '-Werror=designated-init' [-Wunknown-warning-option]
  CC      drivers/media/rc/keymaps/rc-pixelview-mk12.o
warning: unknown warning option '-Werror=designated-init' [-Wunknown-warning-option]
1 warning generated.
1 warning generated.
warning: unknown warning option '-Werror=designated-init' [-Wunknown-warning-option]
  CC      drivers/net/mii.o
warning: unknown warning option '-Werror=designated-init' [-Wunknown-warning-option]
1 warning generated.
  CC      drivers/media/rc/keymaps/rc-pixelview-002t.o
1 warning generated.
warning: unknown warning option '-Werror=designated-init' [-Wunknown-warning-option]
  AR      drivers/phy/broadcom/built-in.a
  AR      drivers/phy/hisilicon/built-in.a
  AR      drivers/phy/marvell/built-in.a
  AR      drivers/phy/motorola/built-in.a
  CC      drivers/phy/qualcomm/phy-qcom-ufs.o
warning: unknown warning option '-Werror=designated-init' [-Wunknown-warning-option]
1 warning generated.
  CC      drivers/media/rc/keymaps/rc-pixelview-new.o
warning: unknown warning option '-Werror=designated-init' [-Wunknown-warning-option]
1 warning generated.
  CC      drivers/net/wireguard/peerlookup.o
1 warning generated.
warning: unknown warning option '-Werror=designated-init' [-Wunknown-warning-option]
warning: unknown warning option '-Werror=designated-init' [-Wunknown-warning-option]
1 warning generated.
1 warning generated.
warning: unknown warning option '-Werror=designated-init' [-Wunknown-warning-option]
  CC      drivers/media/rc/keymaps/rc-powercolor-real-angel.o
warning: unknown warning option '-Werror=designated-init' [-Wunknown-warning-option]
1 warning generated.
1 warning generated.
  CC      drivers/phy/qualcomm/phy-qcom-ufs-qmp-14nm.o
warning: unknown warning option '-Werror=designated-init' [-Wunknown-warning-option]
  CC      drivers/pinctrl/core.o
warning: unknown warning option '-Werror=designated-init' [-Wunknown-warning-option]
1 warning generated.
  CC      drivers/media/rc/keymaps/rc-proteus-2309.o
warning: unknown warning option '-Werror=designated-init' [-Wunknown-warning-option]
1 warning generated.
  CC      drivers/net/wireguard/allowedips.o
warning: unknown warning option '-Werror=designated-init' [-Wunknown-warning-option]
1 warning generated.
  CC      drivers/phy/qualcomm/phy-qcom-ufs-qmp-v3.o
1 warning generated.
warning: unknown warning option '-Werror=designated-init' [-Wunknown-warning-option]
  CC      drivers/media/rc/keymaps/rc-purpletv.o
warning: unknown warning option '-Werror=designated-init' [-Wunknown-warning-option]
1 warning generated.
warning: unknown warning option '-Werror=designated-init' [-Wunknown-warning-option]
1 warning generated.
1 warning generated.
  CC      drivers/phy/qualcomm/phy-qcom-ufs-qrbtc-sdm845.o
  CC      drivers/media/rc/keymaps/rc-pv951.o
1 warning generated.
warning: unknown warning option '-Werror=designated-init' [-Wunknown-warning-option]
warning: unknown warning option '-Werror=designated-init' [-Wunknown-warning-option]
  CC      drivers/pinctrl/pinctrl-utils.o
warning: unknown warning option '-Werror=designated-init' [-Wunknown-warning-option]
1 warning generated.
  CC      drivers/net/wireguard/ratelimiter.o
warning: unknown warning option '-Werror=designated-init' [-Wunknown-warning-option]
1 warning generated.
  CC      drivers/media/rc/keymaps/rc-hauppauge.o
1 warning generated.
1 warning generated.
warning: unknown warning option '-Werror=designated-init' [-Wunknown-warning-option]
  CC      drivers/phy/qualcomm/phy-qcom-ufs-qmp-v3-660.o
warning: unknown warning option '-Werror=designated-init' [-Wunknown-warning-option]
warning: unknown warning option '-Werror=designated-init' [-Wunknown-warning-option]
1 warning generated.
  CC      drivers/pinctrl/pinmux.o
warning: unknown warning option '-Werror=designated-init' [-Wunknown-warning-option]
1 warning generated.
  CC      drivers/media/rc/keymaps/rc-rc6-mce.o
warning: unknown warning option '-Werror=designated-init' [-Wunknown-warning-option]
1 warning generated.
  CC      drivers/phy/qualcomm/phy-qcom-ufs-qmp-v4.o
warning: unknown warning option '-Werror=designated-init' [-Wunknown-warning-option]
1 warning generated.
  CC      drivers/pinctrl/pinconf.o
1 warning generated.
warning: unknown warning option '-Werror=designated-init' [-Wunknown-warning-option]
  CC      drivers/media/rc/keymaps/rc-real-audio-220-32-keys.o
warning: unknown warning option '-Werror=designated-init' [-Wunknown-warning-option]
1 warning generated.
  CC      drivers/net/wireguard/cookie.o
warning: unknown warning option '-Werror=designated-init' [-Wunknown-warning-option]
1 warning generated.
  AR      drivers/phy/qualcomm/built-in.a
  AR      drivers/phy/ralink/built-in.a
  AR      drivers/phy/samsung/built-in.a
1 warning generated.
  AR      drivers/phy/st/built-in.a
1 warning generated.
  CC      drivers/pinctrl/devicetree.o
  CC      drivers/media/rc/keymaps/rc-reddo.o
  AR      drivers/phy/ti/built-in.a
warning: unknown warning option '-Werror=designated-init' [-Wunknown-warning-option]
  AR      drivers/phy/built-in.a
warning: unknown warning option '-Werror=designated-init' [-Wunknown-warning-option]
  CC      drivers/platform/msm/msm_ext_display.o
warning: unknown warning option '-Werror=designated-init' [-Wunknown-warning-option]
1 warning generated.
  CC      drivers/media/rc/keymaps/rc-snapstream-firefly.o
1warning: unknown warning option '-Werror=designated-init' [-Wunknown-warning-option]
 warning generated.
warning: unknown warning option '-Werror=designated-init' [-Wunknown-warning-option]
1 warning generated.
  CC      drivers/net/wireguard/netlink.o
warning: unknown warning option '-Werror=designated-init' [-Wunknown-warning-option]
1 warning generated.
1 warning generated.
warning: unknown warning option '-Werror=designated-init' [-Wunknown-warning-option]
  CC      drivers/pinctrl/pinconf-generic.o
warning: unknown warning option '-Werror=designated-init' [-Wunknown-warning-option]
1 warning generated.
  CC      drivers/media/rc/keymaps/rc-streamzap.o
warning: unknown warning option '-Werror=designated-init' [-Wunknown-warning-option]
1 warning generated.
  CC      drivers/platform/msm/qcom-geni-se.o
warning: unknown warning option '-Werror=designated-init' [-Wunknown-warning-option]
1 warning generated.
warning: unknown warning option '-Werror=designated-init' [-Wunknown-warning-option]
1 warning generated.
  CC      drivers/media/rc/keymaps/rc-tango.o
warning: unknown warning option '-Werror=designated-init' [-Wunknown-warning-option]
1 warning generated.
  CC      drivers/pinctrl/pinctrl-sx150x.o
warning: unknown warning option '-Werror=designated-init' [-Wunknown-warning-option]
1 warning generated.
  CC      drivers/net/wireguard/crypto/zinc/chacha20/chacha20.o
warning: unknown warning option '-Werror=designated-init' [-Wunknown-warning-option]
1 warning generated.
1 warning generated.
  CC      drivers/media/rc/keymaps/rc-tbs-nec.o
warning: unknown warning option '-Werror=designated-init' [-Wunknown-warning-option]
warning: unknown warning option '-Werror=designated-init' [-Wunknown-warning-option]
1 warning generated.
  AR      drivers/pinctrl/bcm/built-in.a
1 warning generated.
  AR      drivers/pinctrl/freescale/built-in.a
1 warning generated.
  CC      drivers/platform/msm/qpnp-revid.o
warning: unknown warning option '-Werror=designated-init' [-Wunknown-warning-option]
  AR      drivers/pinctrl/mvebu/built-in.a
  CC      drivers/media/rc/keymaps/rc-technisat-ts35.o
warning: unknown warning option '-Werror=designated-init' [-Wunknown-warning-option]
  AR      drivers/pinctrl/nomadik/built-in.a
  CC      drivers/pinctrl/qcom/pinctrl-msm.o
warning: unknown warning option '-Werror=designated-init' [-Wunknown-warning-option]
1 warning generated.
  PERLASM drivers/net/wireguard/crypto/zinc/chacha20/chacha20-arm64.S
1 warning generated.
1 warning generated.
  CC      drivers/net/wireguard/crypto/zinc/poly1305/poly1305.o
warning: unknown warning option '-Werror=designated-init' [-Wunknown-warning-option]
  CC      drivers/media/rc/keymaps/rc-technisat-usb2.o
warning: unknown warning option '-Werror=designated-init' [-Wunknown-warning-option]
warning: unknown warning option '-Werror=designated-init' [-Wunknown-warning-option]
1 warning generated.
  CC      drivers/platform/msm/gsi/gsi.o
warning: unknown warning option '-Werror=designated-init' [-Wunknown-warning-option]
1 warning generated.
  CC      drivers/media/rc/keymaps/rc-terratec-cinergy-c-pci.o
warning: unknown warning option '-Werror=designated-init' [-Wunknown-warning-option]
1 warning generated.
warning: unknown warning option '-Werror=designated-init' [-Wunknown-warning-option]
1 warning generated.
  PERLASM drivers/net/wireguard/crypto/zinc/poly1305/poly1305-arm64.S
  CC      drivers/net/wireguard/crypto/zinc/chacha20poly1305.o
warning: unknown warning option '-Werror=designated-init' [-Wunknown-warning-option]
1 warning generated.
  CC      drivers/media/rc/keymaps/rc-terratec-cinergy-s2-hd.o
1 warning generated.
warning: unknown warning option '-Werror=designated-init' [-Wunknown-warning-option]
  CC      drivers/pinctrl/qcom/pinctrl-spmi-gpio.o
warning: unknown warning option '-Werror=designated-init' [-Wunknown-warning-option]
1 warning generated.
  CC      drivers/media/rc/keymaps/rc-terratec-cinergy-xs.o
warning: unknown warning option '-Werror=designated-init' [-Wunknown-warning-option]
1 warning generated.
1 warning generated.
1 warning generated.
  CC      drivers/platform/msm/gsi/gsi_dbg.o
  CC      drivers/pinctrl/qcom/pinctrl-spmi-mpp.o
warning: unknown warning option '-Werror=designated-init' [-Wunknown-warning-option]
  CC      drivers/net/wireguard/crypto/zinc/blake2s/blake2s.o
warning: unknown warning option '-Werror=designated-init' [-Wunknown-warning-option]
warning: unknown warning option '-Werror=designated-init' [-Wunknown-warning-option]
1 warning generated.
  CC      drivers/media/rc/keymaps/rc-terratec-slim.o
warning: unknown warning option '-Werror=designated-init' [-Wunknown-warning-option]
1 warning generated.
  CC      drivers/pinctrl/qcom/pinctrl-atoll.o
1 warning generated.
warning: unknown warning option '-Werror=designated-init' [-Wunknown-warning-option]
  CC      drivers/media/rc/keymaps/rc-terratec-slim-2.o
1 warning generated.
warning: unknown warning option '-Werror=designated-init' [-Wunknown-warning-option]
  AR      drivers/platform/msm/gsi/gsidbg.o
  AR      drivers/platform/msm/gsi/built-in.a
  CC      drivers/platform/msm/ipa/ipa_clients/ipa_usb.o
1 warning generated.
warning: unknown warning option '-Werror=designated-init' [-Wunknown-warning-option]
  CC      drivers/net/wireguard/crypto/zinc/curve25519/curve25519.o
warning: unknown warning option '-Werror=designated-init' [-Wunknown-warning-option]
1 warning generated.
1 warning generated.
  CC      drivers/media/rc/keymaps/rc-tevii-nec.o
warning: unknown warning option '-Werror=designated-init' [-Wunknown-warning-option]
  CC      drivers/pinctrl/qcom/pinctrl-slpi.o
warning: unknown warning option '-Werror=designated-init' [-Wunknown-warning-option]
1 warning generated.
  CC      drivers/media/rc/keymaps/rc-tivo.o
warning: unknown warning option '-Werror=designated-init' [-Wunknown-warning-option]
1 warning generated.
  AR      drivers/pinctrl/qcom/built-in.a
  AR      drivers/pinctrl/sprd/built-in.a
  AR      drivers/pinctrl/ti/built-in.a
  AR      drivers/pinctrl/built-in.a
  CC      drivers/platform/msm/sps/bam.o
warning: unknown warning option '-Werror=designated-init' [-Wunknown-warning-option]
1 warning generated.
  CC      drivers/media/rc/keymaps/rc-total-media-in-hand.o
warning: unknown warning option '-Werror=designated-init' [-Wunknown-warning-option]
1 warning generated.
warning: unknown warning option '-Werror=designated-init' [-Wunknown-warning-option]
1 warning generated.
  CC      drivers/media/rc/keymaps/rc-total-media-in-hand-02.o
warning: unknown warning option '-Werror=designated-init' [-Wunknown-warning-option]
1 warning generated.
  CC      drivers/platform/msm/sps/sps_bam.o
warning: unknown warning option '-Werror=designated-init' [-Wunknown-warning-option]
1 warning generated.
1 warning generated.
  CC      drivers/platform/msm/ipa/ipa_clients/odu_bridge.o
  CC      drivers/media/rc/keymaps/rc-trekstor.o
warning: unknown warning option '-Werror=designated-init' [-Wunknown-warning-option]
warning: unknown warning option '-Werror=designated-init' [-Wunknown-warning-option]
1 warning generated.
1 warning generated.
1 warning generated.
  AS      drivers/net/wireguard/crypto/zinc/chacha20/chacha20-arm64.o
  CC      drivers/platform/msm/sps/sps.o
  CC      drivers/media/rc/keymaps/rc-tt-1500.o
warning: unknown warning option '-Werror=designated-init' [-Wunknown-warning-option]
warning: unknown warning option '-Werror=designated-init' [-Wunknown-warning-option]
  AS      drivers/net/wireguard/crypto/zinc/poly1305/poly1305-arm64.o
  AR      drivers/net/wireguard/wireguard.o
  AR      drivers/net/wireguard/built-in.a
  CC      drivers/net/Space.o
warning: unknown warning option '-Werror=designated-init' [-Wunknown-warning-option]
1 warning generated.
  CC      drivers/media/rc/keymaps/rc-twinhan-dtv-cab-ci.o
warning: unknown warning option '-Werror=designated-init' [-Wunknown-warning-option]
1 warning generated.
1 warning generated.
warning: unknown warning option '-Werror=designated-init' [-Wunknown-warning-option]
warning: unknown warning option '-Werror=designated-init' [-Wunknown-warning-option]
1 warning generated.
  CC      drivers/media/rc/keymaps/rc-twinhan1027.o
warning: unknown warning option '-Werror=designated-init' [-Wunknown-warning-option]
1 warning generated.
1 warning generated.
  CC      drivers/platform/msm/sps/sps_dma.o
warning: unknown warning option '-Werror=designated-init' [-Wunknown-warning-option]
  CC      drivers/net/loopback.o
1 warning generated.
warning: unknown warning option '-Werror=designated-init' [-Wunknown-warning-option]
  CC      drivers/platform/msm/sps/sps_map.o
warning: unknown warning option '-Werror=designated-init' [-Wunknown-warning-option]
1 warning generated.
1 warning generated.
  CC      drivers/platform/msm/ipa/ipa_clients/ipa_mhi_client.o
warning: unknown warning option '-Werror=designated-init' [-Wunknown-warning-option]
  CC      drivers/media/rc/keymaps/rc-videomate-m1f.o
warning: unknown warning option '-Werror=designated-init' [-Wunknown-warning-option]
1 warning generated.
  CC      drivers/platform/msm/sps/sps_mem.o
warning: unknown warning option '-Werror=designated-init' [-Wunknown-warning-option]
1 warning generated.
  CC      drivers/media/rc/keymaps/rc-videomate-s350.o
1 warning generated.
warning: unknown warning option '-Werror=designated-init' [-Wunknown-warning-option]
1 warning generated.
  CC      drivers/platform/msm/sps/sps_rm.o
warning: unknown warning option '-Werror=designated-init' [-Wunknown-warning-option]
warning: unknown warning option '-Werror=designated-init' [-Wunknown-warning-option]
1 warning generated.
  CC      drivers/media/rc/keymaps/rc-videomate-tv-pvr.o
warning: unknown warning option '-Werror=designated-init' [-Wunknown-warning-option]
1 warning generated.
  AR      drivers/platform/msm/sps/built-in.a
  CC      drivers/platform/msm/usb_bam.o
1 warning generated.
warning: unknown warning option '-Werror=designated-init' [-Wunknown-warning-option]
  CC      drivers/net/tun.o
warning: unknown warning option '-Werror=designated-init' [-Wunknown-warning-option]
1 warning generated.
  CC      drivers/media/rc/keymaps/rc-winfast.o
warning: unknown warning option '-Werror=designated-init' [-Wunknown-warning-option]
1 warning generated.
warning: unknown warning option '-Werror=designated-init' [-Wunknown-warning-option]
1 warning generated.
  CC      drivers/media/rc/keymaps/rc-winfast-usbii-deluxe.o
warning: unknown warning option '-Werror=designated-init' [-Wunknown-warning-option]
1 warning generated.
  CC      drivers/platform/msm/ipa/ipa_clients/ipa_uc_offload.o
warning: unknown warning option '-Werror=designated-init' [-Wunknown-warning-option]
1 warning generated.
  CC      drivers/media/rc/keymaps/rc-su3000.o
warning: unknown warning option '-Werror=designated-init' [-Wunknown-warning-option]
1 warning generated.
warning: unknown warning option '-Werror=designated-init' [-Wunknown-warning-option]
1 warning generated.
1 warning generated.
warning: unknown warning option '-Werror=designated-init' [-Wunknown-warning-option]
  CC      drivers/media/rc/keymaps/rc-zx-irdec.o
warning: unknown warning option '-Werror=designated-init' [-Wunknown-warning-option]
1 warning generated.
1 warning generated.
  AR      drivers/media/rc/keymaps/built-in.a
  AR      drivers/media/rc/built-in.a
warning: unknown warning option '-Werror=designated-init' [-Wunknown-warning-option]
1 warning generated.
  CC      drivers/media/tuners/tuner-xc2028.o
warning: unknown warning option '-Werror=designated-init' [-Wunknown-warning-option]
1 warning generated.
  CC      drivers/net/veth.o
warning: unknown warning option '-Werror=designated-init' [-Wunknown-warning-option]
  CC      drivers/platform/msm/ipa/ipa_v3/ipahal/ipahal.o
warning: unknown warning option '-Werror=designated-init' [-Wunknown-warning-option]
1 warning generated.
  CC      drivers/platform/msm/ipa/ipa_clients/ipa_wdi3.o
warning: unknown warning option '-Werror=designated-init' [-Wunknown-warning-option]
1 warning generated.
warning: unknown warning option '-Werror=designated-init' [-Wunknown-warning-option]
1 warning generated.
  AR      drivers/net/built-in.a
1 warning generated.
  CC      drivers/media/tuners/tuner-simple.o
1 warning generated.
  CC      drivers/power/reset/msm-poweroff.o
warning: unknown warning option '-Werror=designated-init' [-Wunknown-warning-option]
warning: unknown warning option '-Werror=designated-init' [-Wunknown-warning-option]
  CC      drivers/platform/msm/ipa/ipa_v3/ipahal/ipahal_reg.o
warning: unknown warning option '-Werror=designated-init' [-Wunknown-warning-option]
1 warning generated.
warning: unknown warning option '-Werror=designated-init' [-Wunknown-warning-option]
1 warning generated.
warning: unknown warning option '-Werror=designated-init' [-Wunknown-warning-option]
1 warning generated.
warning: unknown warning option '-Werror=designated-init' [-Wunknown-warning-option]
1 warning generated.
  CC      drivers/power/reset/xgene-reboot.o
warning: unknown warning option '-Werror=designated-init' [-Wunknown-warning-option]
1 warning generated.
  CC      drivers/platform/msm/ipa/ipa_clients/ipa_gsb.o
warning: unknown warning option '-Werror=designated-init' [-Wunknown-warning-option]
1 warning generated.
  CC      drivers/media/tuners/tuner-types.o
1 warning generated.
warning: unknown warning option '-Werror=designated-init' [-Wunknown-warning-option]
  CC      drivers/platform/msm/ipa/ipa_v3/ipahal/ipahal_fltrt.o
warning: unknown warning option '-Werror=designated-init' [-Wunknown-warning-option]
1 warning generated.
  CC      drivers/power/reset/syscon-reboot.o
warning: unknown warning option '-Werror=designated-init' [-Wunknown-warning-option]
1 warning generated.
warning: unknown warning option '-Werror=designated-init' [-Wunknown-warning-option]
1 warning generated.
  AR      drivers/power/reset/built-in.a
1 warning generated.
  CC      drivers/media/tuners/mt20xx.o
  CC      drivers/power/supply/power_supply_core.o
warning: unknown warning option '-Werror=designated-init' [-Wunknown-warning-option]
warning: unknown warning option '-Werror=designated-init' [-Wunknown-warning-option]
1 warning generated.
warning: unknown warning option '-Werror=designated-init' [-Wunknown-warning-option]
1 warning generated.
warning: unknown warning option '-Werror=designated-init' [-Wunknown-warning-option]
1 warning generated.
warning: unknown warning option '-Werror=designated-init' [-Wunknown-warning-option]
1 warning generated.
1 warning generated.
  CC      drivers/power/supply/power_supply_sysfs.o
  CC      drivers/platform/msm/ipa/ipa_clients/ipa_wigig.o
warning: unknown warning option '-Werror=designated-init' [-Wunknown-warning-option]
1 warning generated.
warning: unknown warning option '-Werror=designated-init' [-Wunknown-warning-option]
  CC      drivers/platform/msm/ipa/ipa_v3/ipahal/ipahal_hw_stats.o
warning: unknown warning option '-Werror=designated-init' [-Wunknown-warning-option]
1 warning generated.
  CC      drivers/media/tuners/tda8290.o
warning: unknown warning option '-Werror=designated-init' [-Wunknown-warning-option]
1 warning generated.
  CC      drivers/power/supply/power_supply_leds.o
warning: unknown warning option '-Werror=designated-init' [-Wunknown-warning-option]
1 warning generated.
warning: unknown warning option '-Werror=designated-init' [-Wunknown-warning-option]
1 warning generated.
1 warning generated.
  CC      drivers/power/supply/maxim/onewire_gpio.o
  CC      drivers/media/tuners/tda9887.o
warning: unknown warning option '-Werror=designated-init' [-Wunknown-warning-option]
warning: unknown warning option '-Werror=designated-init' [-Wunknown-warning-option]
1 warning generated.
1 warning generated.
warning: unknown warning option '-Werror=designated-init' [-Wunknown-warning-option]
  CC      drivers/platform/msm/ipa/ipa_v3/ipahal/ipahal_nat.o
warning: unknown warning option '-Werror=designated-init' [-Wunknown-warning-option]
../drivers/power/supply/maxim/onewire_gpio.c:476:82: warning: cast to smaller integer type 'uint32_t' (aka 'unsigned int') from 'void *' [-Wvoid-pointer-to-int-cast]
  476 |         ow_log("onewire_data->gpio_cfg_reg is %x; onewire_data->gpio_in_out_reg is %x", (uint32_t)(onewire_data->gpio_cfg_reg), (uint32_t)(onewire_data->gpio_in_out_reg));
      |                                                                                         ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
../drivers/power/supply/maxim/onewire_gpio.c:34:16: note: expanded from macro 'ow_log'
   34 | #define ow_log  pr_err
      |                 ^
../include/linux/printk.h:306:33: note: expanded from macro 'pr_err'
  306 |         printk(KERN_ERR pr_fmt(fmt), ##__VA_ARGS__)
      |                                        ^~~~~~~~~~~
../drivers/power/supply/maxim/onewire_gpio.c:476:122: warning: cast to smaller integer type 'uint32_t' (aka 'unsigned int') from 'void *' [-Wvoid-pointer-to-int-cast]
  476 |         ow_log("onewire_data->gpio_cfg_reg is %x; onewire_data->gpio_in_out_reg is %x", (uint32_t)(onewire_data->gpio_cfg_reg), (uint32_t)(onewire_data->gpio_in_out_reg));
      |                                                                                                                                 ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
../drivers/power/supply/maxim/onewire_gpio.c:34:16: note: expanded from macro 'ow_log'
   34 | #define ow_log  pr_err
      |                 ^
../include/linux/printk.h:306:33: note: expanded from macro 'pr_err'
  306 |         printk(KERN_ERR pr_fmt(fmt), ##__VA_ARGS__)
      |                                        ^~~~~~~~~~~
3 warnings generated.
warning: unknown warning option '-Werror=designated-init' [-Wunknown-warning-option]
1 warning generated.
warning: unknown warning option '-Werror=designated-init' [-Wunknown-warning-option]
1 warning generated.
  CC      drivers/platform/msm/ipa/ipa_clients/rndis_ipa.o
warning: unknown warning option '-Werror=designated-init' [-Wunknown-warning-option]
1 warning generated.
  CC      drivers/power/supply/maxim/ucl_sha3.o
warning: unknown warning option '-Werror=designated-init' [-Wunknown-warning-option]
1 warning generated.
  CC      drivers/media/tuners/tda827x.o
warning: unknown warning option '-Werror=designated-init' [-Wunknown-warning-option]
1 warning generated.
  CC      drivers/power/supply/maxim/sha384_software.o
warning: unknown warning option '-Werror=designated-init' [-Wunknown-warning-option]
1 warning generated.
1 warning generated.
  AR      drivers/platform/msm/ipa/ipa_v3/ipahal/ipa_hal.o
  CC      drivers/power/supply/maxim/ds28e16.o
warning: unknown warning option '-Werror=designated-init' [-Wunknown-warning-option]
  AR      drivers/platform/msm/ipa/ipa_v3/ipahal/built-in.a
  CC      drivers/platform/msm/ipa/ipa_v3/ipa.o
warning: unknown warning option '-Werror=designated-init' [-Wunknown-warning-option]
1 warning generated.
warning: unknown warning option '-Werror=designated-init' [-Wunknown-warning-option]
1 warning generated.
1 warning generated.
  CC      drivers/media/tuners/tda18271-maps.o
warning: unknown warning option '-Werror=designated-init' [-Wunknown-warning-option]
warning: unknown warning option '-Werror=designated-init' [-Wunknown-warning-option]
1 warning generated.
  AR      drivers/power/supply/maxim/built-in.a
  CC      drivers/power/supply/qcom/qpnp-qg.o
warning: unknown warning option '-Werror=designated-init' [-Wunknown-warning-option]
1 warning generated.
  CC      drivers/media/tuners/tda18271-common.o
1 warning generated.
warning: unknown warning option '-Werror=designated-init' [-Wunknown-warning-option]
  AR      drivers/platform/msm/ipa/ipa_clients/built-in.a
  CC      drivers/platform/msm/ipa/ipa_api.o
warning: unknown warning option '-Werror=designated-init' [-Wunknown-warning-option]
1 warning generated.
  CC      drivers/media/tuners/tda18271-fe.o
warning: unknown warning option '-Werror=designated-init' [-Wunknown-warning-option]
1 warning generated.
  CC      drivers/power/supply/qcom/pmic-voter.o
warning: unknown warning option '-Werror=designated-init' [-Wunknown-warning-option]
1 warning generated.
  CC      drivers/power/supply/qcom/qg-util.o
1 warning generated.
warning: unknown warning option '-Werror=designated-init' [-Wunknown-warning-option]
1 warning generated.
warning: unknown warning option '-Werror=designated-init' [-Wunknown-warning-option]
warning: unknown warning option '-Werror=designated-init' [-Wunknown-warning-option]
1 warning generated.
1 warning generated.
  CC      drivers/media/tuners/xc5000.o
warning: unknown warning option '-Werror=designated-init' [-Wunknown-warning-option]
warning: unknown warning option '-Werror=designated-init' [-Wunknown-warning-option]
1 warning generated.
  CC      drivers/power/supply/qcom/qg-soc.o
warning: unknown warning option '-Werror=designated-init' [-Wunknown-warning-option]
1 warning generated.
  CC      drivers/platform/msm/ipa/ipa_rm.o
warning: unknown warning option '-Werror=designated-init' [-Wunknown-warning-option]
1 warning generated.
1 warning generated.
  CC      drivers/power/supply/qcom/qg-sdam.o
warning: unknown warning option '-Werror=designated-init' [-Wunknown-warning-option]
1 warning generated.
warning: unknown warning option '-Werror=designated-init' [-Wunknown-warning-option]
  CC      drivers/platform/msm/ipa/ipa_v3/ipa_debugfs.o
warning: unknown warning option '-Werror=designated-init' [-Wunknown-warning-option]
1 warning generated.
  CC      drivers/platform/msm/ipa/ipa_v3/ipa_hdr.o
warning: unknown warning option '-Werror=designated-init' [-Wunknown-warning-option]
1 warning generated.
  CC      drivers/media/tuners/xc4000.o
warning: unknown warning option '-Werror=designated-init' [-Wunknown-warning-option]
1 warning generated.
  CC      drivers/power/supply/qcom/qg-battery-profile.o
warning: unknown warning option '-Werror=designated-init' [-Wunknown-warning-option]
1 warning generated.
warning: unknown warning option '-Werror=designated-init' [-Wunknown-warning-option]
1 warning generated.
1 warning generated.
warning: unknown warning option '-Werror=designated-init' [-Wunknown-warning-option]
  CC      drivers/power/supply/qcom/qg-profile-lib.o
warning: unknown warning option '-Werror=designated-init' [-Wunknown-warning-option]
1 warning generated.
1 warning generated.
  CC      drivers/platform/msm/ipa/ipa_rm_dependency_graph.o
  CC      drivers/platform/msm/ipa/ipa_v3/ipa_flt.o
warning: unknown warning option '-Werror=designated-init' [-Wunknown-warning-option]
1 warning generated.
warning: unknown warning option '-Werror=designated-init' [-Wunknown-warning-option]
  CC      drivers/media/tuners/mc44s803.o
warning: unknown warning option '-Werror=designated-init' [-Wunknown-warning-option]
1 warning generated.
  CC      drivers/power/supply/qcom/fg-alg.o
warning: unknown warning option '-Werror=designated-init' [-Wunknown-warning-option]
1 warning generated.
warning: unknown warning option '-Werror=designated-init' [-Wunknown-warning-option]
1 warning generated.
  CC      drivers/power/supply/qcom/smb1355-charger.o
warning: unknown warning option '-Werror=designated-init' [-Wunknown-warning-option]
1 warning generated.
1 warning generated.
  AR      drivers/media/tuners/tda18271.o
  AR      drivers/media/tuners/built-in.a
  CC      drivers/pps/pps.o
warning: unknown warning option '-Werror=designated-init' [-Wunknown-warning-option]
  AR      drivers/media/usb/b2c2/built-in.a
  AR      drivers/media/usb/dvb-usb/built-in.a
  AR      drivers/media/usb/dvb-usb-v2/built-in.a
1 warning generated.
  AR      drivers/media/usb/s2255/built-in.a
  CC      drivers/platform/msm/ipa/ipa_v3/ipa_rt.o
warning: unknown warning option '-Werror=designated-init' [-Wunknown-warning-option]
  AR      drivers/media/usb/siano/built-in.a
  AR      drivers/media/usb/stkwebcam/built-in.a
  AR      drivers/media/usb/ttusb-budget/built-in.a
  AR      drivers/media/usb/ttusb-dec/built-in.a
1 warning generated.
warning: unknown warning option '-Werror=designated-init' [-Wunknown-warning-option]
  CC      drivers/media/usb/uvc/uvc_driver.o
1 warning generated.
warning: unknown warning option '-Werror=designated-init' [-Wunknown-warning-option]
  CC      drivers/power/supply/qcom/step-chg-jeita.o
warning: unknown warning option '-Werror=designated-init' [-Wunknown-warning-option]
1 warning generated.
  CC      drivers/pps/kapi.o
warning: unknown warning option '-Werror=designated-init' [-Wunknown-warning-option]
1 warning generated.
1 warning generated.
warning: unknown warning option '-Werror=designated-init' [-Wunknown-warning-option]
warning: unknown warning option '-Werror=designated-init' [-Wunknown-warning-option]
1 warning generated.
1 warning generated.
  CC      drivers/power/supply/qcom/battery.o
1 warning generated.
  CC      drivers/pps/sysfs.o
warning: unknown warning option '-Werror=designated-init' [-Wunknown-warning-option]
  CC      drivers/platform/msm/ipa/ipa_v3/ipa_dp.o
warning: unknown warning option '-Werror=designated-init' [-Wunknown-warning-option]
warning: unknown warning option '-Werror=designated-init' [-Wunknown-warning-option]
1 warning generated.
  CC      drivers/media/usb/uvc/uvc_queue.o
warning: unknown warning option '-Werror=designated-init' [-Wunknown-warning-option]
1 warning generated.
  AR      drivers/pps/clients/built-in.a
  AR      drivers/pps/generators/built-in.a
  AR      drivers/pps/pps_core.o
  AR      drivers/pps/built-in.a
1 warning generated.
  CC      drivers/media/v4l2-core/v4l2-dev.o
  CC      drivers/power/supply/qcom/qpnp-smb5.o
warning: unknown warning option '-Werror=designated-init' [-Wunknown-warning-option]
warning: unknown warning option '-Werror=designated-init' [-Wunknown-warning-option]
1 warning generated.
  CC      drivers/media/usb/uvc/uvc_v4l2.o
warning: unknown warning option '-Werror=designated-init' [-Wunknown-warning-option]
1 warning generated.
warning: unknown warning option '-Werror=designated-init' [-Wunknown-warning-option]
1 warning generated.
1 warning generated.
  CC      drivers/power/supply/qcom/smb5-lib.o
  CC      drivers/media/usb/uvc/uvc_video.o
warning: unknown warning option '-Werror=designated-init' [-Wunknown-warning-option]
1warning: unknown warning option '-Werror=designated-init' [-Wunknown-warning-option]
 warning generated.
  CC      drivers/media/v4l2-core/v4l2-ioctl.o
warning: unknown warning option '-Werror=designated-init' [-Wunknown-warning-option]
1 warning generated.
  CC      drivers/platform/msm/ipa/ipa_v3/ipa_client.o
warning: unknown warning option '-Werror=designated-init' [-Wunknown-warning-option]
1 warning generated.
  CC      drivers/media/usb/uvc/uvc_ctrl.o
warning: unknown warning option '-Werror=designated-init' [-Wunknown-warning-option]
1 warning generated.
warning: unknown warning option '-Werror=designated-init' [-Wunknown-warning-option]
1 warning generated.
  CC      drivers/platform/msm/ipa/ipa_v3/ipa_utils.o
warning: unknown warning option '-Werror=designated-init' [-Wunknown-warning-option]
1 warning generated.
  CC      drivers/media/v4l2-core/v4l2-device.o
warning: unknown warning option '-Werror=designated-init' [-Wunknown-warning-option]
1 warning generated.
warning: unknown warning option '-Werror=designated-init' [-Wunknown-warning-option]
1 warning generated.
  CC      drivers/media/usb/uvc/uvc_status.o
warning: unknown warning option '-Werror=designated-init' [-Wunknown-warning-option]
1 warning generated.
  CC      drivers/power/supply/qcom/storm-watch.o
warning: unknown warning option '-Werror=designated-init' [-Wunknown-warning-option]
1 warning generated.
warning: unknown warning option '-Werror=designated-init' [-Wunknown-warning-option]
1 warning generated.
  CC      drivers/power/supply/qcom/schgm-flash.o
warning: unknown warning option '-Werror=designated-init' [-Wunknown-warning-option]
1 warning generated.
  CC      drivers/media/v4l2-core/v4l2-fh.o
warning: unknown warning option '-Werror=designated-init' [-Wunknown-warning-option]
1 warning generated.
  CC      drivers/media/usb/uvc/uvc_isight.o
warning: unknown warning option '-Werror=designated-init' [-Wunknown-warning-option]
1 warning generated.
  CC      drivers/power/supply/qcom/smb1390-charger-psy.o
warning: unknown warning option '-Werror=designated-init' [-Wunknown-warning-option]
1 warning generated.
warning: unknown warning option '-Werror=designated-init' [-Wunknown-warning-option]
1 warning generated.
  CC      drivers/media/usb/uvc/uvc_debugfs.o
warning: unknown warning option '-Werror=designated-init' [-Wunknown-warning-option]
1 warning generated.
1 warning generated.
  CC      drivers/media/v4l2-core/v4l2-event.o
warning: unknown warning option '-Werror=designated-init' [-Wunknown-warning-option]
  CC      drivers/platform/msm/ipa/ipa_v3/ipa_nat.o
warning: unknown warning option '-Werror=designated-init' [-Wunknown-warning-option]
1 warning generated.
  CC      drivers/power/supply/qcom/smb1398-charger.o
warning: unknown warning option '-Werror=designated-init' [-Wunknown-warning-option]
1 warning generated.
  CC      drivers/media/usb/uvc/uvc_entity.o
warning: unknown warning option '-Werror=designated-init' [-Wunknown-warning-option]
1 warning generated.
../drivers/power/supply/qcom/smb1398-charger.c:2418:23: warning: cast to smaller integer type 'int' from 'const void *' [-Wvoid-pointer-to-int-cast]
 2418 |         chip->div2_cp_role = (int)of_device_get_match_data(chip->dev);
      |                              ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
warning: unknown warning option '-Werror=designated-init' [-Wunknown-warning-option]
2 warnings generated.
  AR      drivers/power/supply/qcom/built-in.a
  AR      drivers/power/supply/power_supply.o
  AR      drivers/power/supply/built-in.a
  AR      drivers/power/built-in.a
1 warning generated.
  CC      drivers/media/v4l2-core/v4l2-ctrls.o
  AR      drivers/media/usb/zr364xx/built-in.a
  CC      drivers/platform/msm/ipa/ipa_v3/ipa_intf.o
warning: unknown warning option '-Werror=designated-init' [-Wunknown-warning-option]
warning: unknown warning option '-Werror=designated-init' [-Wunknown-warning-option]
1 warning generated.
  AR      drivers/media/usb/uvc/uvcvideo.o
  AR      drivers/media/usb/uvc/built-in.a
  AR      drivers/media/usb/built-in.a
  AR      drivers/media/v4l2loopback-master/built-in.a
1 warning generated.
  CC      drivers/ptp/ptp_clock.o
warning: unknown warning option '-Werror=designated-init' [-Wunknown-warning-option]
  CC      drivers/platform/msm/ipa/ipa_v3/teth_bridge.o
warning: unknown warning option '-Werror=designated-init' [-Wunknown-warning-option]
1 warning generated.
warning: unknown warning option '-Werror=designated-init' [-Wunknown-warning-option]
1 warning generated.
  CC      drivers/platform/msm/ipa/ipa_rm_peers_list.o
1 warning generated.
warning: unknown warning option '-Werror=designated-init' [-Wunknown-warning-option]
warning: unknown warning option '-Werror=designated-init' [-Wunknown-warning-option]
1 warning generated.
  CC      drivers/platform/msm/ipa/ipa_v3/ipa_interrupts.o
1 warning generated.
warning: unknown warning option '-Werror=designated-init' [-Wunknown-warning-option]
  CC      drivers/ptp/ptp_chardev.o
warning: unknown warning option '-Werror=designated-init' [-Wunknown-warning-option]
1 warning generated.
  CC      drivers/media/v4l2-core/v4l2-subdev.o
warning: unknown warning option '-Werror=designated-init' [-Wunknown-warning-option]
1 warning generated.
  CC      drivers/ptp/ptp_sysfs.o
warning: unknown warning option '-Werror=designated-init' [-Wunknown-warning-option]
1 warning generated.
  CC      drivers/platform/msm/ipa/ipa_rm_resource.o
warning: unknown warning option '-Werror=designated-init' [-Wunknown-warning-option]
1 warning generated.
warning: unknown warning option '-Werror=designated-init' [-Wunknown-warning-option]
1 warning generated.
  CC      drivers/platform/msm/ipa/ipa_v3/ipa_uc.o
warning: unknown warning option '-Werror=designated-init' [-Wunknown-warning-option]
1 warning generated.
  AR      drivers/ptp/ptp.o
1 warning generated.
  AR      drivers/ptp/built-in.a
  CC      drivers/media/media-device.o
  CC      drivers/media/v4l2-core/v4l2-clk.o
warning: unknown warning option '-Werror=designated-init' [-Wunknown-warning-option]
warning: unknown warning option '-Werror=designated-init' [-Wunknown-warning-option]
1 warning generated.
1 warning generated.
  CC      drivers/platform/msm/ipa/ipa_rm_inactivity_timer.o
warning: unknown warning option '-Werror=designated-init' [-Wunknown-warning-option]
warning: unknown warning option '-Werror=designated-init' [-Wunknown-warning-option]
1 warning generated.
warning: unknown warning option '-Werror=designated-init' [-Wunknown-warning-option]
1 warning generated.
1 warning generated.
warning: unknown warning option '-Werror=designated-init' [-Wunknown-warning-option]
  CC      drivers/media/v4l2-core/v4l2-async.o
warning: unknown warning option '-Werror=designated-init' [-Wunknown-warning-option]
1 warning generated.
  CC      drivers/platform/msm/ipa/ipa_v3/ipa_uc_wdi.o
warning: unknown warning option '-Werror=designated-init' [-Wunknown-warning-option]
1 warning generated.
warning: unknown warning option '-Werror=designated-init' [-Wunknown-warning-option]
1 warning generated.
1 warning generated.
warning: unknown warning option '-Werror=designated-init' [-Wunknown-warning-option]
  CC      drivers/pwm/core.o
warning: unknown warning option '-Werror=designated-init' [-Wunknown-warning-option]
1 warning generated.
1 warning generated.
  CC      drivers/media/v4l2-core/v4l2-compat-ioctl32.o
  AR      drivers/platform/msm/ipa/ipa_common
warning: unknown warning option '-Werror=designated-init' [-Wunknown-warning-option]
  CC      drivers/platform/msm/ipa/ipa_v3/ipa_dma.o
warning: unknown warning option '-Werror=designated-init' [-Wunknown-warning-option]
1 warning generated.
warning: unknown warning option '-Werror=designated-init' [-Wunknown-warning-option]
1 warning generated.
  CC      drivers/pwm/sysfs.o
1 warning generated.
warning: unknown warning option '-Werror=designated-init' [-Wunknown-warning-option]
  CC      drivers/media/media-devnode.o
warning: unknown warning option '-Werror=designated-init' [-Wunknown-warning-option]
1 warning generated.
1 warning generated.
  CC      drivers/pwm/pwm-qti-lpg.o
warning: unknown warning option '-Werror=designated-init' [-Wunknown-warning-option]
  CC      drivers/platform/msm/ipa/ipa_v3/ipa_uc_mhi.o
warning: unknown warning option '-Werror=designated-init' [-Wunknown-warning-option]
1 warning generated.
  CC      drivers/media/media-entity.o
warning: unknown warning option '-Werror=designated-init' [-Wunknown-warning-option]
1 warning generated.
warning: unknown warning option '-Werror=designated-init' [-Wunknown-warning-option]
1 warning generated.
1 warning generated.
  CC      drivers/media/v4l2-core/vb2-trace.o
1 warning generated.
warning: unknown warning option '-Werror=designated-init' [-Wunknown-warning-option]
  AR      drivers/pwm/built-in.a
warning: unknown warning option '-Werror=designated-init' [-Wunknown-warning-option]
  CC      drivers/regulator/core.o
warning: unknown warning option '-Werror=designated-init' [-Wunknown-warning-option]
1 warning generated.
1 warning generated.
  CC      drivers/media/v4l2-core/v4l2-trace.o
  CC      drivers/platform/msm/ipa/ipa_v3/ipa_mhi.o
warning: unknown warning option '-Werror=designated-init' [-Wunknown-warning-option]
warning: unknown warning option '-Werror=designated-init' [-Wunknown-warning-option]
1 warning generated.
warning: unknown warning option '-Werror=designated-init' [-Wunknown-warning-option]
1 warning generated.
warning: unknown warning option '-Werror=designated-init' [-Wunknown-warning-option]
1 warning generated.
  CC      drivers/media/v4l2-core/v4l2-mc.o
warning: unknown warning option '-Werror=designated-init' [-Wunknown-warning-option]
1 warning generated.
  CC      drivers/platform/msm/ipa/ipa_v3/ipa_uc_ntn.o
warning: unknown warning option '-Werror=designated-init' [-Wunknown-warning-option]
1 warning generated.
warning: unknown warning option '-Werror=designated-init' [-Wunknown-warning-option]
1 warning generated.
  CC      drivers/media/v4l2-core/v4l2-common.o
warning: unknown warning option '-Werror=designated-init' [-Wunknown-warning-option]
1 warning generated.
warning: unknown warning option '-Werror=designated-init' [-Wunknown-warning-option]
1 warning generated.
  CC      drivers/regulator/dummy.o
warning: unknown warning option '-Werror=designated-init' [-Wunknown-warning-option]
1 warning generated.
1 warning generated.
warning: unknown warning option '-Werror=designated-init' [-Wunknown-warning-option]
  CC      drivers/reset/core.o
warning: unknown warning option '-Werror=designated-init' [-Wunknown-warning-option]
1 warning generated.
  CC      drivers/platform/msm/ipa/ipa_v3/ipa_hw_stats.o
warning: unknown warning option '-Werror=designated-init' [-Wunknown-warning-option]
1 warning generated.
  CC      drivers/media/v4l2-core/v4l2-dv-timings.o
1 warning generated.
warning: unknown warning option '-Werror=designated-init' [-Wunknown-warning-option]
  CC      drivers/regulator/fixed-helper.o
warning: unknown warning option '-Werror=designated-init' [-Wunknown-warning-option]
1 warning generated.
warning: unknown warning option '-Werror=designated-init' [-Wunknown-warning-option]
1 warning generated.
warning: unknown warning option '-Werror=designated-init' [-Wunknown-warning-option]
1 warning generated.
1 warning generated.
  AR      drivers/reset/hisilicon/built-in.a
  AR      drivers/reset/built-in.a
  CC      drivers/regulator/helpers.o
warning: unknown warning option '-Werror=designated-init' [-Wunknown-warning-option]
1 warning generated.
  CC      drivers/media/v4l2-core/v4l2-mem2mem.o
  CC      drivers/rpmsg/rpmsg_core.o
warning: unknown warning option '-Werror=designated-init' [-Wunknown-warning-option]
warning: unknown warning option '-Werror=designated-init' [-Wunknown-warning-option]
1 warning generated.
  CC      drivers/platform/msm/ipa/ipa_v3/ipa_pm.o
1 warning generated.
warning: unknown warning option '-Werror=designated-init' [-Wunknown-warning-option]
warning: unknown warning option '-Werror=designated-init' [-Wunknown-warning-option]
1 warning generated.
warning: unknown warning option '-Werror=designated-init' [-Wunknown-warning-option]
1 warning generated.
warning: unknown warning option '-Werror=designated-init' [-Wunknown-warning-option]
1 warning generated.
  CC      drivers/regulator/devres.o
warning: unknown warning option '-Werror=designated-init' [-Wunknown-warning-option]
1 warning generated.
  CC      drivers/rpmsg/rpmsg_char.o
warning: unknown warning option '-Werror=designated-init' [-Wunknown-warning-option]
1 warning generated.
  CC      drivers/media/v4l2-core/videobuf2-core.o
warning: unknown warning option '-Werror=designated-init' [-Wunknown-warning-option]
1 warning generated.
warning: unknown warning option '-Werror=designated-init' [-Wunknown-warning-option]
1 warning generated.
1 warning generated.
  CC      drivers/rpmsg/qcom_glink_native.o
  CC      drivers/regulator/of_regulator.o
warning: unknown warning option '-Werror=designated-init' [-Wunknown-warning-option]
warning: unknown warning option '-Werror=designated-init' [-Wunknown-warning-option]
1 warning generated.
  CC      drivers/platform/msm/ipa/ipa_v3/ipa_wdi3_i.o
warning: unknown warning option '-Werror=designated-init' [-Wunknown-warning-option]
1 warning generated.
warning: unknown warning option '-Werror=designated-init' [-Wunknown-warning-option]
1 warning generated.
warning: unknown warning option '-Werror=designated-init' [-Wunknown-warning-option]
1 warning generated.
  CC      drivers/media/v4l2-core/videobuf2-v4l2.o
warning: unknown warning option '-Werror=designated-init' [-Wunknown-warning-option]
1 warning generated.
  CC      drivers/regulator/fixed.o
1 warning generated.
warning: unknown warning option '-Werror=designated-init' [-Wunknown-warning-option]
1 warning generated.
  CC      drivers/platform/msm/ipa/ipa_v3/ipa_odl.o
warning: unknown warning option '-Werror=designated-init' [-Wunknown-warning-option]
warning: unknown warning option '-Werror=designated-init' [-Wunknown-warning-option]
1 warning generated.
  CC      drivers/rpmsg/qcom_glink_smem.o
warning: unknown warning option '-Werror=designated-init' [-Wunknown-warning-option]
1 warning generated.
1 warning generated.
warning: unknown warning option '-Werror=designated-init' [-Wunknown-warning-option]
  CC      drivers/regulator/proxy-consumer.o
warning: unknown warning option '-Werror=designated-init' [-Wunknown-warning-option]
1 warning generated.
  CC      drivers/media/v4l2-core/videobuf2-memops.o
1 warning generated.
warning: unknown warning option '-Werror=designated-init' [-Wunknown-warning-option]
1 warning generated.
1 warning generated.
warning: unknown warning option '-Werror=designated-init' [-Wunknown-warning-option]
  CC      drivers/regulator/qpnp-lcdb-regulator.o
  CC      drivers/platform/msm/ipa/ipa_v3/ipa_wigig_i.o
warning: unknown warning option '-Werror=designated-init' [-Wunknown-warning-option]
warning: unknown warning option '-Werror=designated-init' [-Wunknown-warning-option]
1 warning generated.
  CC      drivers/rpmsg/qcom_glink_spi.o
warning: unknown warning option '-Werror=designated-init' [-Wunknown-warning-option]
1 warning generated.
warning: unknown warning option '-Werror=designated-init' [-Wunknown-warning-option]
1 warning generated.
  CC      drivers/media/v4l2-core/videobuf2-vmalloc.o
1 warning generated.
warning: unknown warning option '-Werror=designated-init' [-Wunknown-warning-option]
  CC      drivers/regulator/qpnp-amoled-regulator.o
warning: unknown warning option '-Werror=designated-init' [-Wunknown-warning-option]
1 warning generated.
  CC      drivers/platform/msm/ipa/ipa_v3/ipa_qdss.o
warning: unknown warning option '-Werror=designated-init' [-Wunknown-warning-option]
1 warning generated.
1 warning generated.
warning: unknown warning option '-Werror=designated-init' [-Wunknown-warning-option]
warning: unknown warning option '-Werror=designated-init' [-Wunknown-warning-option]
1 warning generated.
  CC      drivers/regulator/qcom_pm8008-regulator.o
warning: unknown warning option '-Werror=designated-init' [-Wunknown-warning-option]
1 warning generated.
  AR      drivers/rpmsg/built-in.a
1 warning generated.
  CC      drivers/media/v4l2-core/videobuf2-dma-sg.o
  CC      drivers/rtc/rtc-lib.o
warning: unknown warning option '-Werror=designated-init' [-Wunknown-warning-option]
warning: unknown warning option '-Werror=designated-init' [-Wunknown-warning-option]
1 warning generated.
1 warning generated.
1 warning generated.
  CC      drivers/platform/msm/ipa/ipa_v3/rmnet_ipa.o
warning: unknown warning option '-Werror=designated-init' [-Wunknown-warning-option]
warning: unknown warning option '-Werror=designated-init' [-Wunknown-warning-option]
  CC      drivers/regulator/refgen.o
warning: unknown warning option '-Werror=designated-init' [-Wunknown-warning-option]
1 warning generated.
warning: unknown warning option '-Werror=designated-init' [-Wunknown-warning-option]
1 warning generated.
  CC      drivers/rtc/hctosys.o
warning: unknown warning option '-Werror=designated-init' [-Wunknown-warning-option]
1 warning generated.
  AR      drivers/media/v4l2-core/videodev.o
  AR      drivers/media/v4l2-core/built-in.a
1 warning generated.
  AR      drivers/media/media.o
  CC      drivers/regulator/rpmh-regulator.o
warning: unknown warning option '-Werror=designated-init' [-Wunknown-warning-option]
  AR      drivers/media/built-in.a
1 warning generated.
  CC      drivers/rtc/systohc.o
warning: unknown warning option '-Werror=designated-init' [-Wunknown-warning-option]
  CC      drivers/scsi/scsi.o
warning: unknown warning option '-Werror=designated-init' [-Wunknown-warning-option]
1 warning generated.
  CC      drivers/rtc/class.o
warning: unknown warning option '-Werror=designated-init' [-Wunknown-warning-option]
1 warning generated.
  CC      drivers/regulator/stub-regulator.o
warning: unknown warning option '-Werror=designated-init' [-Wunknown-warning-option]
1 warning generated.
  CC      drivers/platform/msm/ipa/ipa_v3/ipa_qmi_service_v01.o
warning: unknown warning option '-Werror=designated-init' [-Wunknown-warning-option]
1 warning generated.
1 warning generated.
warning: unknown warning option '-Werror=designated-init' [-Wunknown-warning-option]
warning: unknown warning option '-Werror=designated-init' [-Wunknown-warning-option]
1 warning generated.
1 warning generated.
  AR      drivers/regulator/built-in.a
  CC      drivers/rtc/interface.o
warning: unknown warning option '-Werror=designated-init' [-Wunknown-warning-option]
  CC      drivers/sensors/sensors_ssc.o
warning: unknown warning option '-Werror=designated-init' [-Wunknown-warning-option]
1 warning generated.
  CC      drivers/scsi/hosts.o
warning: unknown warning option '-Werror=designated-init' [-Wunknown-warning-option]
1 warning generated.
  CC      drivers/platform/msm/ipa/ipa_v3/ipa_qmi_service.o
warning: unknown warning option '-Werror=designated-init' [-Wunknown-warning-option]
1 warning generated.
1 warning generated.
warning: unknown warning option '-Werror=designated-init' [-Wunknown-warning-option]
  AR      drivers/sensors/built-in.a
  CC      drivers/slimbus/slimbus.o
warning: unknown warning option '-Werror=designated-init' [-Wunknown-warning-option]
1 warning generated.
  CC      drivers/rtc/nvmem.o
1 warning generated.
warning: unknown warning option '-Werror=designated-init' [-Wunknown-warning-option]
warning: unknown warning option '-Werror=designated-init' [-Wunknown-warning-option]
1 warning generated.
1 warning generated.
  CC      drivers/scsi/scsi_ioctl.o
warning: unknown warning option '-Werror=designated-init' [-Wunknown-warning-option]
  CC      drivers/rtc/rtc-dev.o
warning: unknown warning option '-Werror=designated-init' [-Wunknown-warning-option]
1 warning generated.
warning: unknown warning option '-Werror=designated-init' [-Wunknown-warning-option]
1 warning generated.
  CC      drivers/platform/msm/ipa/ipa_v3/rmnet_ipa_fd_ioctl.o
warning: unknown warning option '-Werror=designated-init' [-Wunknown-warning-option]
1 warning generated.
  CC      drivers/rtc/rtc-proc.o
1 warning generated.
warning: unknown warning option '-Werror=designated-init' [-Wunknown-warning-option]
1 warning generated.
warning: unknown warning option '-Werror=designated-init' [-Wunknown-warning-option]
  CC      drivers/slimbus/slim-msm.o
warning: unknown warning option '-Werror=designated-init' [-Wunknown-warning-option]
1 warning generated.
  CC      drivers/scsi/scsicam.o
1 warning generated.
warning: unknown warning option '-Werror=designated-init' [-Wunknown-warning-option]
  CC      drivers/rtc/rtc-sysfs.o
warning: unknown warning option '-Werror=designated-init' [-Wunknown-warning-option]
1 warning generated.
  AR      drivers/platform/msm/ipa/ipa_v3/ipat.o
1 warning generated.
  CC      drivers/rtc/qpnp-rtc.o
  AR      drivers/platform/msm/ipa/ipa_v3/built-in.a
warning: unknown warning option '-Werror=designated-init' [-Wunknown-warning-option]
  AR      drivers/platform/msm/ipa/built-in.a
  AR      drivers/platform/msm/built-in.a
1 warning generated.
  AR      drivers/platform/built-in.a
warning: unknown warning option '-Werror=designated-init' [-Wunknown-warning-option]
  AR      drivers/soc/bcm/built-in.a
1 warning generated.
  AR      drivers/soc/fsl/built-in.a
  CC      drivers/slimbus/slim-msm-ngd.o
warning: unknown warning option '-Werror=designated-init' [-Wunknown-warning-option]
  CC      drivers/soc/qcom/mdt_loader.o
1 warning generated.
warning: unknown warning option '-Werror=designated-init' [-Wunknown-warning-option]
  CC      drivers/scsi/scsi_error.o
1 warning generated.
warning: unknown warning option '-Werror=designated-init' [-Wunknown-warning-option]
warning: unknown warning option '-Werror=designated-init' [-Wunknown-warning-option]
1 warning generated.
  AR      drivers/rtc/rtc-core.o
  AR      drivers/rtc/built-in.a
1 warning generated.
warning: unknown warning option '-Werror=designated-init' [-Wunknown-warning-option]
  CC      drivers/spi/spi.o
warning: unknown warning option '-Werror=designated-init' [-Wunknown-warning-option]
1 warning generated.
  CC      drivers/soc/qcom/llcc-core.o
warning: unknown warning option '-Werror=designated-init' [-Wunknown-warning-option]
1 warning generated.
warning: unknown warning option '-Werror=designated-init' [-Wunknown-warning-option]
1 warning generated.
  AR      drivers/slimbus/built-in.a
  AR      drivers/soc/renesas/built-in.a
1 warning generated.
  CC      drivers/spi/spidev.o
warning: unknown warning option '-Werror=designated-init' [-Wunknown-warning-option]
  CC      drivers/soc/qcom/llcc-slice.o
warning: unknown warning option '-Werror=designated-init' [-Wunknown-warning-option]
1 warning generated.
  CC      drivers/scsi/scsi_lib.o
warning: unknown warning option '-Werror=designated-init' [-Wunknown-warning-option]
1 warning generated.
warning: unknown warning option '-Werror=designated-init' [-Wunknown-warning-option]
1 warning generated.
warning: unknown warning option '-Werror=designated-init' [-Wunknown-warning-option]
1 warning generated.
  CC      drivers/spi/spi-geni-qcom.o
warning: unknown warning option '-Werror=designated-init' [-Wunknown-warning-option]
1 warning generated.
  CC      drivers/soc/qcom/llcc-atoll.o
warning: unknown warning option '-Werror=designated-init' [-Wunknown-warning-option]
1 warning generated.
1 warning generated.
warning: unknown warning option '-Werror=designated-init' [-Wunknown-warning-option]
1 warning generated.
  CC      drivers/spmi/spmi.o
warning: unknown warning option '-Werror=designated-init' [-Wunknown-warning-option]
  CC      drivers/soc/qcom/qmi_encdec.o
warning: unknown warning option '-Werror=designated-init' [-Wunknown-warning-option]
1 warning generated.
warning: unknown warning option '-Werror=designated-init' [-Wunknown-warning-option]
1 warning generated.
  CC      drivers/scsi/scsi_common.o
warning: unknown warning option '-Werror=designated-init' [-Wunknown-warning-option]
1 warning generated.
1 warning generated.
warning: unknown warning option '-Werror=designated-init' [-Wunknown-warning-option]1 warning generated.

warning: unknown warning option '-Werror=designated-init' [-Wunknown-warning-option]
  AR      drivers/spi/built-in.a
1 warning generated.
  CC      drivers/scsi/constants.o
warning: unknown warning option '-Werror=designated-init' [-Wunknown-warning-option]
1 warning generated.
  CC      drivers/staging/android/ion/ion.o
1 warning generated.
  CC      drivers/soc/qcom/qmi_interface.o
warning: unknown warning option '-Werror=designated-init' [-Wunknown-warning-option]
warning: unknown warning option '-Werror=designated-init' [-Wunknown-warning-option]
warning: unknown warning option '-Werror=designated-init' [-Wunknown-warning-option]
1 warning generated.
1 warning generated.
  CC      drivers/spmi/spmi-pmic-arb.o
warning: unknown warning option '-Werror=designated-init' [-Wunknown-warning-option]
warning: unknown warning option '-Werror=designated-init' [-Wunknown-warning-option]
1 warning generated.
  CC      drivers/scsi/scsi_lib_dma.o
warning: unknown warning option '-Werror=designated-init' [-Wunknown-warning-option]
1 warning generated.
1 warning generated.
warning: unknown warning option '-Werror=designated-init' [-Wunknown-warning-option]
1 warning generated.
  CC      drivers/spmi/simulator/spmi-sim.o
warning: unknown warning option '-Werror=designated-init' [-Wunknown-warning-option]
warning: unknown warning option '-Werror=designated-init' [-Wunknown-warning-option]
1 warning generated.
1 warning generated.
warning: unknown warning option '-Werror=designated-init' [-Wunknown-warning-option]
  CC      drivers/staging/android/ion/ion-ioctl.o
warning: unknown warning option '-Werror=designated-init' [-Wunknown-warning-option]
1 warning generated.
  CC      drivers/soc/qcom/smem.o
warning: unknown warning option '-Werror=designated-init' [-Wunknown-warning-option]
1 warning generated.
  CC      drivers/scsi/scsi_scan.o
1 warning generated.
warning: unknown warning option '-Werror=designated-init' [-Wunknown-warning-option]
warning: unknown warning option '-Werror=designated-init' [-Wunknown-warning-option]
1 warning generated.
  CC      drivers/staging/android/ion/ion_heap.o
warning: unknown warning option '-Werror=designated-init' [-Wunknown-warning-option]
1 warning generated.
1 warning generated.
  CC      drivers/spmi/simulator/pm8150-sim.o
warning: unknown warning option '-Werror=designated-init' [-Wunknown-warning-option]
warning: unknown warning option '-Werror=designated-init' [-Wunknown-warning-option]
1 warning generated.
  CC      drivers/soc/qcom/smem_state.o
warning: unknown warning option '-Werror=designated-init' [-Wunknown-warning-option]
1 warning generated.
warning: unknown warning option '-Werror=designated-init' [-Wunknown-warning-option]
1 warning generated.
  CC      drivers/spmi/simulator/pm8150b-sim.o
warning: unknown warning option '-Werror=designated-init' [-Wunknown-warning-option]
1 warning generated.
warning: unknown warning option '-Werror=designated-init' [-Wunknown-warning-option]
1 warning generated.
  CC      drivers/staging/android/ion/ion_page_pool.o
warning: unknown warning option '-Werror=designated-init' [-Wunknown-warning-option]
1 warning generated.
warning: unknown warning option '-Werror=designated-init' [-Wunknown-warning-option]
1 warning generated.
1 warning generated.
  CC      drivers/scsi/scsi_sysfs.o
  CC      drivers/spmi/simulator/pm8150l-sim.o
warning: unknown warning option '-Werror=designated-init' [-Wunknown-warning-option]
1 warning generated.
warning: unknown warning option '-Werror=designated-init' [-Wunknown-warning-option]
  CC      drivers/soc/qcom/smp2p.o
warning: unknown warning option '-Werror=designated-init' [-Wunknown-warning-option]
1 warning generated.
  CC      drivers/staging/android/ion/ion_system_heap.o
warning: unknown warning option '-Werror=designated-init' [-Wunknown-warning-option]
1 warning generated.
  AR      drivers/spmi/simulator/built-in.a
  AR      drivers/spmi/built-in.a
  CC      drivers/soc/qcom/scm.o
warning: unknown warning option '-Werror=designated-init' [-Wunknown-warning-option]
1 warning generated.
1 warning generated.
  AR      drivers/staging/iio/accel/built-in.a
  AR      drivers/staging/iio/adc/built-in.a
warning: unknown warning option '-Werror=designated-init' [-Wunknown-warning-option]
  AR      drivers/staging/iio/addac/built-in.a
  AR      drivers/staging/iio/cdc/built-in.a
  AR      drivers/staging/iio/frequency/built-in.a
  AR      drivers/staging/iio/gyro/built-in.a
  AR      drivers/staging/iio/impedance-analyzer/built-in.a
1 warning generated.
  AR      drivers/staging/iio/light/built-in.a
1 warning generated.
  CC      drivers/staging/android/ion/ion_carveout_heap.o
  CC      drivers/scsi/scsi_devinfo.o
warning: unknown warning option '-Werror=designated-init' [-Wunknown-warning-option]
  AR      drivers/staging/iio/meter/built-in.a
warning: unknown warning option '-Werror=designated-init' [-Wunknown-warning-option]
  AR      drivers/staging/iio/resolver/built-in.a
  AR      drivers/staging/iio/trigger/built-in.a
  AR      drivers/staging/iio/built-in.a
1 warning generated.
  AR      drivers/staging/media/built-in.a
  CC      drivers/staging/android/ashmem.o
warning: unknown warning option '-Werror=designated-init' [-Wunknown-warning-option]
warning: unknown warning option '-Werror=designated-init' [-Wunknown-warning-option]
1 warning generated.
  CC      drivers/staging/android/ion/ion_chunk_heap.o
warning: unknown warning option '-Werror=designated-init' [-Wunknown-warning-option]
1 warning generated.
1 warning generated.
  CC      drivers/soc/qcom/scm-boot.o
warning: unknown warning option '-Werror=designated-init' [-Wunknown-warning-option]
warning: unknown warning option '-Werror=designated-init' [-Wunknown-warning-option]
1 warning generated.
  CC      drivers/staging/android/timed_output.o
warning: unknown warning option '-Werror=designated-init' [-Wunknown-warning-option]
1 warning generated.
1 warning generated.
  CC      drivers/scsi/scsi_sysctl.o
warning: unknown warning option '-Werror=designated-init' [-Wunknown-warning-option]
warning: unknown warning option '-Werror=designated-init' [-Wunknown-warning-option]
1 warning generated.
  CC      drivers/staging/android/ion/ion_system_secure_heap.o
warning: unknown warning option '-Werror=designated-init' [-Wunknown-warning-option]
1 warning generated.
  CC      drivers/soc/qcom/early_random.o
warning: unknown warning option '-Werror=designated-init' [-Wunknown-warning-option]
1 warning generated.
warning: unknown warning option '-Werror=designated-init' [-Wunknown-warning-option]
1 warning generated.
1 warning generated.
  CC      drivers/scsi/scsi_proc.o
warning: unknown warning option '-Werror=designated-init' [-Wunknown-warning-option]
1 warning generated.
  CC      drivers/thermal/thermal_core.o
  CC      drivers/soc/qcom/socinfo.o
warning: unknown warning option '-Werror=designated-init' [-Wunknown-warning-option]
warning: unknown warning option '-Werror=designated-init' [-Wunknown-warning-option]
1 warning generated.
  CC      drivers/staging/android/ion/ion_cma_heap.o
warning: unknown warning option '-Werror=designated-init' [-Wunknown-warning-option]
1 warning generated.
1 warning generated.
  CC      drivers/scsi/scsi_trace.o
warning: unknown warning option '-Werror=designated-init' [-Wunknown-warning-option]
warning: unknown warning option '-Werror=designated-init' [-Wunknown-warning-option]
1 warning generated.
  CC      drivers/staging/android/ion/ion_secure_util.o
warning: unknown warning option '-Werror=designated-init' [-Wunknown-warning-option]
1 warning generated.
  CC      drivers/soc/qcom/boot_stats.o
warning: unknown warning option '-Werror=designated-init' [-Wunknown-warning-option]
1 warning generated.
1 warning generated.
warning: unknown warning option '-Werror=designated-init' [-Wunknown-warning-option]
  CC      drivers/scsi/scsi_logging.o
warning: unknown warning option '-Werror=designated-init' [-Wunknown-warning-option]
1 warning generated.
  CC      drivers/soc/qcom/dcc_v2.o
1 warning generated.
warning: unknown warning option '-Werror=designated-init' [-Wunknown-warning-option]
  CC      drivers/staging/android/ion/ion_cma_secure_heap.o
warning: unknown warning option '-Werror=designated-init' [-Wunknown-warning-option]
1 warning generated.
  CC      drivers/thermal/thermal_sysfs.o
warning: unknown warning option '-Werror=designated-init' [-Wunknown-warning-option]
1 warning generated.
warning: unknown warning option '-Werror=designated-init' [-Wunknown-warning-option]
1 warning generated.
  CC      drivers/soc/qcom/secure_buffer.o
warning: unknown warning option '-Werror=designated-init' [-Wunknown-warning-option]
11 warning warning generated.
 generated.
  CC      drivers/scsi/scsi_pm.o
1 warning generated.
warning: unknown warning option '-Werror=designated-init' [-Wunknown-warning-option]
  CC      drivers/thermal/thermal_helpers.o
  CC      drivers/staging/android/ion/msm/msm_ion_of.o
warning: unknown warning option '-Werror=designated-init' [-Wunknown-warning-option]
warning: unknown warning option '-Werror=designated-init' [-Wunknown-warning-option]
1 warning generated.
1 warning generated.
warning: unknown warning option '-Werror=designated-init' [-Wunknown-warning-option]
warning: unknown warning option '-Werror=designated-init' [-Wunknown-warning-option]
1 warning generated.
1 warning generated.
warning: unknown warning option '-Werror=designated-init' [-Wunknown-warning-option]
  AR      drivers/staging/android/ion/msm/built-in.a
  AR      drivers/staging/android/ion/built-in.a
  AR      drivers/staging/android/built-in.a
1 warning generated.
1 warning generated.
  CC      drivers/thermal/thermal_hwmon.o
  CC      drivers/soc/qcom/watchdog_v2.o
warning: unknown warning option '-Werror=designated-init' [-Wunknown-warning-option]
warning: unknown warning option '-Werror=designated-init' [-Wunknown-warning-option]
1 warning generated.
  CC      drivers/scsi/ufs/ufs-qcom.o
warning: unknown warning option '-Werror=designated-init' [-Wunknown-warning-option]
1 warning generated.
warning: unknown warning option '-Werror=designated-init' [-Wunknown-warning-option]
1 warning generated.
  CC      drivers/soc/qcom/qpnp-pbs.o
1 warning generated.
  CC      drivers/thermal/of-thermal.o
warning: unknown warning option '-Werror=designated-init' [-Wunknown-warning-option]
warning: unknown warning option '-Werror=designated-init' [-Wunknown-warning-option]
1 warning generated.
  CC      drivers/scsi/ufs/ufshcd.o
warning: unknown warning option '-Werror=designated-init' [-Wunknown-warning-option]
1 warning generated.
warning: unknown warning option '-Werror=designated-init' [-Wunknown-warning-option]
  CC      drivers/staging/qcacld-3.0/core/hdd/src/wlan_hdd_assoc.o
1 warning generated.
warning: unknown warning option '-Werror=designated-init' [-Wunknown-warning-option]
warning: unknown warning option '-Wmaybe-uninitialized'; did you mean '-Wuninitialized'? [-Wunknown-warning-option]
  CC      drivers/soc/qcom/icnss.o
1 warning generated.
warning: unknown warning option '-Werror=designated-init' [-Wunknown-warning-option]
warning: unknown warning option '-Werror=designated-init' [-Wunknown-warning-option]
1 warning generated.
  CC      drivers/thermal/step_wise.o
warning: unknown warning option '-Werror=designated-init' [-Wunknown-warning-option]
1 warning generated.
  CC      drivers/thermal/user_space.o
warning: unknown warning option '-Werror=designated-init' [-Wunknown-warning-option]
1 warning generated.
warning: unknown warning option '-Werror=designated-init' [-Wunknown-warning-option]
1 warning generated.
  CC      drivers/thermal/gov_low_limits.o
warning: unknown warning option '-Werror=designated-init' [-Wunknown-warning-option]
1 warning generated.
  CC      drivers/soc/qcom/icnss_qmi.o
warning: unknown warning option '-Werror=designated-init' [-Wunknown-warning-option]
1 warning generated.
  CC      drivers/thermal/cpu_cooling.o
warning: unknown warning option '-Werror=designated-init' [-Wunknown-warning-option]
2 warnings generated.
1 warning generated.
  CC      drivers/staging/qcacld-3.0/core/hdd/src/wlan_hdd_cfg.o
warning: unknown warning option '-Werror=designated-init' [-Wunknown-warning-option]
warning: unknown warning option '-Wmaybe-uninitialized'; did you mean '-Wuninitialized'? [-Wunknown-warning-option]
warning: unknown warning option '-Werror=designated-init' [-Wunknown-warning-option]
1 warning generated.
  CC      drivers/soc/qcom/wlan_firmware_service_v01.o
1 warning generated.
warning: unknown warning option '-Werror=designated-init' [-Wunknown-warning-option]
warning: unknown warning option '-Werror=designated-init' [-Wunknown-warning-option]
1 warning generated.
1 warning generated.
  CC      drivers/scsi/ufs/ufshcd-crypto.o
  CC      drivers/soc/qcom/service-notifier.o
warning: unknown warning option '-Werror=designated-init' [-Wunknown-warning-option]
warning: unknown warning option '-Werror=designated-init' [-Wunknown-warning-option]
1 warning generated.
  CC      drivers/thermal/devfreq_cooling.o
warning: unknown warning option '-Werror=designated-init' [-Wunknown-warning-option]
1 warning generated.
warning: unknown warning option '-Werror=designated-init' [-Wunknown-warning-option]
1 warning generated.
warning: unknown warning option '-Werror=designated-init' [-Wunknown-warning-option]
1 warning generated.
  CC      drivers/soc/qcom/service-locator.o
1 warning generated.
warning: unknown warning option '-Werror=designated-init' [-Wunknown-warning-option]
warning: unknown warning option '-Werror=designated-init' [-Wunknown-warning-option]
1 warning generated.
  CC      drivers/scsi/ufs/ufshcd-crypto-qti.o
1 warning generated.
warning: unknown warning option '-Werror=designated-init' [-Wunknown-warning-option]
  AR      drivers/thermal/broadcom/built-in.a
2 warnings generated.
1 warning generated.
  CC      drivers/thermal/qcom/msm_lmh_dcvs.o
  CC      drivers/staging/qcacld-3.0/core/hdd/src/wlan_hdd_cfg80211.o
warning: unknown warning option '-Werror=designated-init' [-Wunknown-warning-option]
warning: unknown warning option '-Werror=designated-init' [-Wunknown-warning-option]
warning: unknown warning option '-Wmaybe-uninitialized'; did you mean '-Wuninitialized'? [-Wunknown-warning-option]
warning: unknown warning option '-Werror=designated-init' [-Wunknown-warning-option]
1 warning generated.
  CC      drivers/soc/qcom/sysmon-qmi.o
warning: unknown warning option '-Werror=designated-init' [-Wunknown-warning-option]
1 warning generated.
  CC      drivers/scsi/ufs/ufshcd-pltfrm.o
warning: unknown warning option '-Werror=designated-init' [-Wunknown-warning-option]
1 warning generated.
warning: unknown warning option '-Werror=designated-init' [-Wunknown-warning-option]
1 warning generated.
  CC      drivers/thermal/qcom/lmh_dbg.o
warning: unknown warning option '-Werror=designated-init' [-Wunknown-warning-option]
1 warning generated.
  CC      drivers/soc/qcom/memshare/heap_mem_ext_v01.o
warning: unknown warning option '-Werror=designated-init' [-Wunknown-warning-option]
1 warning generated.
  CC      drivers/soc/qcom/memshare/msm_memshare.o
warning: unknown warning option '-Werror=designated-init' [-Wunknown-warning-option]
1 warning generated.
warning: unknown warning option '-Werror=designated-init' [-Wunknown-warning-option]
1 warning generated.
warning: unknown warning option '-Werror=designated-init' [-Wunknown-warning-option]
1 warning generated.
  AR      drivers/scsi/ufs/ufshcd-core.o
  AR      drivers/scsi/ufs/built-in.a
  CC      drivers/scsi/sd.o
warning: unknown warning option '-Werror=designated-init' [-Wunknown-warning-option]
1 warning generated.
  CC      drivers/thermal/qcom/qti_virtual_sensor.o
1 warning generated.
warning: unknown warning option '-Werror=designated-init' [-Wunknown-warning-option]
  AR      drivers/soc/qcom/memshare/built-in.a
  CC      drivers/soc/qcom/msm_bus/msm_bus_core.o
warning: unknown warning option '-Werror=designated-init' [-Wunknown-warning-option]
1 warning generated.
warning: unknown warning option '-Werror=designated-init' [-Wunknown-warning-option]
1 warning generated.
warning: unknown warning option '-Werror=designated-init' [-Wunknown-warning-option]
1 warning generated.
  CC      drivers/thermal/qcom/regulator_aop_cdev.o
warning: unknown warning option '-Werror=designated-init' [-Wunknown-warning-option]
1 warning generated.
  CC      drivers/soc/qcom/msm_bus/msm_bus_client_api.o
warning: unknown warning option '-Werror=designated-init' [-Wunknown-warning-option]
1 warning generated.
1 warning generated.
  CC      drivers/thermal/qcom/regulator_cdev.o
  CC      drivers/scsi/sg.o
warning: unknown warning option '-Werror=designated-init' [-Wunknown-warning-option]
warning: unknown warning option '-Werror=designated-init' [-Wunknown-warning-option]
1 warning generated.
warning: unknown warning option '-Werror=designated-init' [-Wunknown-warning-option]
2 warnings generated.
  CC      drivers/staging/qcacld-3.0/core/hdd/src/wlan_hdd_data_stall_detection.o
1 warning generated.
  CC      drivers/soc/qcom/msm_bus/msm_bus_of.o
warning: unknown warning option '-Werror=designated-init' [-Wunknown-warning-option]
warning: unknown warning option '-Wmaybe-uninitialized'; did you mean '-Wuninitialized'? [-Wunknown-warning-option]
warning: unknown warning option '-Werror=designated-init' [-Wunknown-warning-option]
1 warning generated.
  CC      drivers/thermal/qcom/thermal_mitigation_device_service_v01.o
warning: unknown warning option '-Werror=designated-init' [-Wunknown-warning-option]
1 warning generated.
  CC      drivers/thermal/qcom/qmi_cooling.o
warning: unknown warning option '-Werror=designated-init' [-Wunknown-warning-option]
1 warning generated.
warning: unknown warning option '-Werror=designated-init' [-Wunknown-warning-option]
1 warning generated.
  CC      drivers/scsi/ch.o
warning: unknown warning option '-Werror=designated-init' [-Wunknown-warning-option]
1 warning generated.
1 warning generated.
  CC      drivers/soc/qcom/msm_bus/msm_bus_fabric_rpmh.o
warning: unknown warning option '-Werror=designated-init' [-Wunknown-warning-option]
  CC      drivers/thermal/qcom/thermal_sensor_service_v01.o
warning: unknown warning option '-Werror=designated-init' [-Wunknown-warning-option]
1 warning generated.
  CC      drivers/thermal/qcom/qmi_sensors.o
warning: unknown warning option '-Werror=designated-init' [-Wunknown-warning-option]
1 warning generated.
1 warning generated.
2 warnings generated.
  AR      drivers/scsi/scsi_mod.o
  CC      drivers/soc/qcom/msm_bus/msm_bus_arb_rpmh.o
warning: unknown warning option '-Werror=designated-init' [-Wunknown-warning-option]
  CC      drivers/staging/qcacld-3.0/core/hdd/src/wlan_hdd_driver_ops.o
warning: unknown warning option '-Werror=designated-init' [-Wunknown-warning-option]
warning: unknown warning option '-Wmaybe-uninitialized'; did you mean '-Wuninitialized'? [-Wunknown-warning-option]
  AR      drivers/scsi/sd_mod.o
1 warning generated.
  AR      drivers/scsi/built-in.a
  CC      drivers/thermal/qcom/bcl_pmic5.o
warning: unknown warning option '-Werror=designated-init' [-Wunknown-warning-option]
  AR      drivers/thermal/samsung/built-in.a
  AR      drivers/staging/typec/fusb302/built-in.a
  AR      drivers/staging/typec/built-in.a
  CC      drivers/soc/qcom/qdsp6v2/cdsp-loader.o
warning: unknown warning option '-Werror=designated-init' [-Wunknown-warning-option]
1 warning generated.
1 warning generated.
  CC      drivers/thermal/qcom/bcl_soc.o
  CC      drivers/soc/qcom/msm_bus/msm_bus_rules.o
warning: unknown warning option '-Werror=designated-init' [-Wunknown-warning-option]
warning: unknown warning option '-Werror=designated-init' [-Wunknown-warning-option]
1 warning generated.
  AR      drivers/soc/qcom/qdsp6v2/built-in.a
  CC      drivers/soc/qcom/peripheral-loader.o
warning: unknown warning option '-Werror=designated-init' [-Wunknown-warning-option]
1 warning generated.
  CC      drivers/thermal/qcom/adc-tm.o
warning: unknown warning option '-Werror=designated-init' [-Wunknown-warning-option]
1 warning generated.
1 warning generated.
warning: unknown warning option '-Werror=designated-init' [-Wunknown-warning-option]
  CC      drivers/soc/qcom/msm_bus/msm_bus_bimc_rpmh.o
1 warning generated.
warning: unknown warning option '-Werror=designated-init' [-Wunknown-warning-option]
warning: unknown warning option '-Werror=designated-init' [-Wunknown-warning-option]
2 warnings generated.
1 warning generated.
  CC      drivers/staging/qcacld-3.0/core/hdd/src/wlan_hdd_ftm.o
  CC      drivers/thermal/qcom/adc-tm-common.o
warning: unknown warning option '-Werror=designated-init' [-Wunknown-warning-option]
warning: unknown warning option '-Wmaybe-uninitialized'; did you mean '-Wuninitialized'? [-Wunknown-warning-option]
warning: unknown warning option '-Werror=designated-init' [-Wunknown-warning-option]
1 warning generated.
1 warning generated.
  CC      drivers/soc/qcom/subsys-pil-tz.o
warning: unknown warning option '-Werror=designated-init' [-Wunknown-warning-option]
warning: unknown warning option '-Werror=designated-init' [-Wunknown-warning-option]
1 warning generated.
warning: unknown warning option '-Werror=designated-init' [-Wunknown-warning-option]
1 warning generated.
  CC      drivers/soc/qcom/msm_bus/msm_bus_noc_rpmh.o
warning: unknown warning option '-Werror=designated-init' [-Wunknown-warning-option]
1 warning generated.
  CC      drivers/thermal/qcom/adc-tm5.o
warning: unknown warning option '-Werror=designated-init' [-Wunknown-warning-option]
1 warning generated.
1 warning generated.
warning: unknown warning option '-Werror=designated-init' [-Wunknown-warning-option]
  CC      drivers/tty/tty_io.o
warning: unknown warning option '-Werror=designated-init' [-Wunknown-warning-option]
1 warning generated.
  CC      drivers/soc/qcom/msm_bus/msm_bus_proxy_client.o
warning: unknown warning option '-Werror=designated-init' [-Wunknown-warning-option]
1 warning generated.
warning: unknown warning option '-Werror=designated-init' [-Wunknown-warning-option]
1 warning generated.
1 warning generated.
2 warnings generated.
  AR      drivers/thermal/qcom/built-in.a
  CC      drivers/soc/qcom/msm_bus/msm_bus_of_rpmh.o
  CC      drivers/thermal/qcom-spmi-temp-alarm.o
warning: unknown warning option '-Werror=designated-init' [-Wunknown-warning-option]
warning: unknown warning option '-Werror=designated-init' [-Wunknown-warning-option]
  CC      drivers/staging/qcacld-3.0/core/hdd/src/wlan_hdd_hostapd.o
warning: unknown warning option '-Werror=designated-init' [-Wunknown-warning-option]
warning: unknown warning option '-Wmaybe-uninitialized'; did you mean '-Wuninitialized'? [-Wunknown-warning-option]
1 warning generated.
warning: unknown warning option '-Werror=designated-init' [-Wunknown-warning-option]
1 warning generated.
  CC      drivers/thermal/msm-tsens.o
warning: unknown warning option '-Werror=designated-init' [-Wunknown-warning-option]
1 warning generated.
  AR      drivers/soc/qcom/msm_bus/built-in.a
1 warning generated.
  CC      drivers/soc/qcom/rq_stats.o
warning: unknown warning option '-Werror=designated-init' [-Wunknown-warning-option]
  CC      drivers/tty/n_tty.o
warning: unknown warning option '-Werror=designated-init' [-Wunknown-warning-option]
1 warning generated.
1 warning generated.
  CC      drivers/thermal/tsens2xxx.o
  CC      drivers/soc/qcom/cmd-db.o
warning: unknown warning option '-Werror=designated-init' [-Wunknown-warning-option]
warning: unknown warning option '-Werror=designated-init' [-Wunknown-warning-option]
1 warning generated.
  CC      drivers/thermal/tsens-dbg.o
warning: unknown warning option '-Werror=designated-init' [-Wunknown-warning-option]
1 warning generated.
  CC      drivers/soc/qcom/rpmh.o
warning: unknown warning option '-Werror=designated-init' [-Wunknown-warning-option]
1 warning generated.
warning: unknown warning option '-Werror=designated-init' [-Wunknown-warning-option]
1 warning generated.
warning: unknown warning option '-Werror=designated-init' [-Wunknown-warning-option]
1 warning generated.
1 warning generated.
  CC      drivers/tty/tty_ioctl.o
warning: unknown warning option '-Werror=designated-init' [-Wunknown-warning-option]
warning: unknown warning option '-Werror=designated-init' [-Wunknown-warning-option]
2 warnings generated.
1 warning generated.
  CC      drivers/thermal/tsens-mtc.o
warning:   CC      drivers/staging/qcacld-3.0/core/hdd/src/wlan_hdd_ioctl.o
unknown warning option '-Werror=designated-init' [-Wunknown-warning-option]
warning: unknown warning option '-Werror=designated-init' [-Wunknown-warning-option]
warning: unknown warning option '-Wmaybe-uninitialized'; did you mean '-Wuninitialized'? [-Wunknown-warning-option]
1 warning generated.
  CC      drivers/soc/qcom/system_pm.o
warning: unknown warning option '-Werror=designated-init' [-Wunknown-warning-option]
1 warning generated.
1 warning generated.
  CC      drivers/soc/qcom/smcinvoke.o
warning: unknown warning option '-Werror=designated-init' [-Wunknown-warning-option]
warning: unknown warning option '-Werror=designated-init' [-Wunknown-warning-option]
1 warning generated.
warning: unknown warning option '-Werror=designated-init' [-Wunknown-warning-option]
1 warning generated.
  CC      drivers/thermal/tsens1xxx.o
warning: unknown warning option '-Werror=designated-init' [-Wunknown-warning-option]
1 warning generated.
  CC      drivers/tty/tty_ldisc.o
warning: unknown warning option '-Werror=designated-init' [-Wunknown-warning-option]
1 warning generated.
  CC      drivers/thermal/tsens_calib.o
warning: unknown warning option '-Werror=designated-init' [-Wunknown-warning-option]
1 warning generated.
warning: unknown warning option '-Werror=designated-init' [-Wunknown-warning-option]
1 warning generated.
  AR      drivers/thermal/thermal_sys.o
1 warning generated.
  CC      drivers/tty/tty_buffer.o
  AR      drivers/thermal/built-in.a
1 warning generated.
warning: unknown warning option '-Werror=designated-init' [-Wunknown-warning-option]
  CC      drivers/soc/qcom/subsystem_notif.o
  CC      drivers/uio/uio.o
warning: unknown warning option '-Werror=designated-init' [-Wunknown-warning-option]
warning: unknown warning option '-Werror=designated-init' [-Wunknown-warning-option]
1 warning generated.
2 warnings generated.
warning: unknown warning option '-Werror=designated-init' [-Wunknown-warning-option]
1 warning generated.
  CC      drivers/staging/qcacld-3.0/core/hdd/src/wlan_hdd_main.o
warning: unknown warning option '-Werror=designated-init' [-Wunknown-warning-option]
warning: unknown warning option '-Werror=designated-init' [-Wunknown-warning-option]
warning: unknown warning option '-Wmaybe-uninitialized'; did you mean '-Wuninitialized'? [-Wunknown-warning-option]
1 warning generated.
1 warning generated.
  CC      drivers/soc/qcom/subsystem_restart.o
warning: unknown warning option '-Werror=designated-init' [-Wunknown-warning-option]
warning: unknown warning option '-Werror=designated-init' [-Wunknown-warning-option]
1 warning generated.
  CC      drivers/tty/tty_port.o
warning: unknown warning option '-Werror=designated-init' [-Wunknown-warning-option]
1 warning generated.
  CC      drivers/uio/msm_sharedmem/msm_sharedmem.o
warning: unknown warning option '-Werror=designated-init' [-Wunknown-warning-option]
1 warning generated.
warning: unknown warning option '-Werror=designated-init' [-Wunknown-warning-option]
1 warning generated.
1 warning generated.
warning: unknown warning option '-Werror=designated-init' [-Wunknown-warning-option]
  AR      drivers/uio/msm_sharedmem/built-in.a
  AR      drivers/uio/built-in.a
1 warning generated.
  CC      drivers/tty/tty_mutex.o
warning: unknown warning option '-Werror=designated-init' [-Wunknown-warning-option]
  CC      drivers/usb/common/common.o
warning: unknown warning option '-Werror=designated-init' [-Wunknown-warning-option]
1 warning generated.
  CC      drivers/soc/qcom/ramdump.o
warning: unknown warning option '-Werror=designated-init' [-Wunknown-warning-option]
1 warning generated.
1 warning generated.
warning: unknown warning option '-Werror=designated-init' [-Wunknown-warning-option]
warning: unknown warning option '-Werror=designated-init' [-Wunknown-warning-option]
1 warning generated.
1 warning generated.
  CC      drivers/tty/tty_ldsem.o
1 warning generated.
warning: unknown warning option '-Werror=designated-init' [-Wunknown-warning-option]
warning: unknown warning option '-Werror=designated-init' [-Wunknown-warning-option]
  AR      drivers/usb/common/usb-common.o
  AR      drivers/usb/common/built-in.a
  CC      drivers/usb/core/usb.o
warning: unknown warning option '-Werror=designated-init' [-Wunknown-warning-option]
1 warning generated.
  CC      drivers/soc/qcom/microdump_collector.o
warning: unknown warning option '-Werror=designated-init' [-Wunknown-warning-option]
1 warning generated.
  CC      drivers/tty/tty_baudrate.o
warning: unknown warning option '-Werror=designated-init' [-Wunknown-warning-option]
1 warning generated.
  CC      drivers/soc/qcom/eud.o
warning: unknown warning option '-Werror=designated-init' [-Wunknown-warning-option]
1 warning generated.
warning: unknown warning option '-Werror=designated-init' [-Wunknown-warning-option]
1 warning generated.
warning: unknown warning option '-Werror=designated-init' [-Wunknown-warning-option]
1 warning generated.
1 warning generated.
  CC      drivers/usb/core/hub.o
1 warning generated.
  CC      drivers/soc/qcom/qsee_ipc_irq.o
  CC      drivers/tty/tty_jobctrl.o
warning: unknown warning option '-Werror=designated-init' [-Wunknown-warning-option]
warning: unknown warning option '-Werror=designated-init' [-Wunknown-warning-option]
warning: unknown warning option '-Werror=designated-init' [-Wunknown-warning-option]
2 warnings generated.
1 warning generated.
  CC      drivers/staging/qcacld-3.0/core/hdd/src/wlan_hdd_object_manager.o
  CC      drivers/soc/qcom/glink_probe.o
warning: unknown warning option '-Werror=designated-init' [-Wunknown-warning-option]
warning: unknown warning option '-Wmaybe-uninitialized'; did you mean '-Wuninitialized'? [-Wunknown-warning-option]
warning: unknown warning option '-Werror=designated-init' [-Wunknown-warning-option]
1 warning generated.
warning: unknown warning option '-Werror=designated-init' [-Wunknown-warning-option]
1 warning generated.
1 warning generated.
  CC      drivers/tty/n_null.o
warning: unknown warning option '-Werror=designated-init' [-Wunknown-warning-option]
  CC      drivers/soc/qcom/glink_pkt.o
warning: unknown warning option '-Werror=designated-init' [-Wunknown-warning-option]
1 warning generated.
warning: unknown warning option '-Werror=designated-init' [-Wunknown-warning-option]
1 warning generated.
  CC      drivers/tty/pty.o
1 warning generated.
warning: unknown warning option '-Werror=designated-init' [-Wunknown-warning-option]
  CC      drivers/usb/core/hcd.o
warning: unknown warning option '-Werror=designated-init' [-Wunknown-warning-option]
1 warning generated.
  CC      drivers/soc/qcom/event_timer.o
warning: unknown warning option '-Werror=designated-init' [-Wunknown-warning-option]
2 warnings generated.
1 warning generated.
  CC      drivers/tty/sysrq.o
warning: unknown warning option '-Werror=designated-init' [-Wunknown-warning-option]
  CC      drivers/staging/qcacld-3.0/core/hdd/src/wlan_hdd_oemdata.o
warning: unknown warning option '-Werror=designated-init' [-Wunknown-warning-option]
warning: unknown warning option '-Wmaybe-uninitialized'; did you mean '-Wuninitialized'? [-Wunknown-warning-option]
1 warning generated.
warning: unknown warning option '-Werror=designated-init' [-Wunknown-warning-option]
1 warning generated.
warning: unknown warning option '-Werror=designated-init' [-Wunknown-warning-option]
1 warning generated.
  CC      drivers/soc/qcom/fsa4480-i2c.o
warning: unknown warning option '-Werror=designated-init' [-Wunknown-warning-option]
1 warning generated.
1 warning generated.
  CC      drivers/usb/core/urb.o
warning: unknown warning option '-Werror=designated-init' [-Wunknown-warning-option]
warning: unknown warning option '-Werror=designated-init' [-Wunknown-warning-option]
1 warning generated.
warning: unknown warning option '-Werror=designated-init' [-Wunknown-warning-option]
1 warning generated.
1 warning generated.
  AR      drivers/tty/ipwireless/built-in.a
  CC      drivers/soc/qcom/smp2p_sleepstate.o
1 warning generated.
warning: unknown warning option '-Werror=designated-init' [-Wunknown-warning-option]
warning: unknown warning option '-Werror=designated-init' [-Wunknown-warning-option]
  CC      drivers/tty/serial/serial_core.o
warning: unknown warning option '-Werror=designated-init' [-Wunknown-warning-option]
1 warning generated.
  CC      drivers/usb/core/message.o
warning: unknown warning option '-Werror=designated-init' [-Wunknown-warning-option]
1 warning generated.
2 warnings generated.
  CC      drivers/soc/qcom/cdsprm.o
warning: unknown warning option '-Werror=designated-init' [-Wunknown-warning-option]
  CC      drivers/staging/qcacld-3.0/core/hdd/src/wlan_hdd_p2p.o
warning: unknown warning option '-Werror=designated-init' [-Wunknown-warning-option]
warning: unknown warning option '-Wmaybe-uninitialized'; did you mean '-Wuninitialized'? [-Wunknown-warning-option]
1 warning generated.
warning: unknown warning option '-Werror=designated-init' [-Wunknown-warning-option]
1 warning generated.
warning: unknown warning option '-Werror=designated-init' [-Wunknown-warning-option]
1 warning generated.
warning: unknown warning option '-Werror=designated-init' [-Wunknown-warning-option]
1 warning generated.
  CC      drivers/tty/serial/msm_geni_serial.o
1warning: unknown warning option '-Werror=designated-init' [-Wunknown-warning-option]
 warning generated.
  CC      drivers/soc/qcom/cx_ipeak.o
warning: unknown warning option '-Werror=designated-init' [-Wunknown-warning-option]
1 warning generated.
  CC      drivers/usb/core/driver.o
warning: unknown warning option '-Werror=designated-init' [-Wunknown-warning-option]
1 warning generated.
warning: unknown warning option '-Werror=designated-init' [-Wunknown-warning-option]
1 warning generated.
  CC      drivers/soc/qcom/crypto-qti-common.o
warning: unknown warning option '-Werror=designated-init' [-Wunknown-warning-option]
2 warnings generated.
1 warning generated.
  AR      drivers/tty/serial/built-in.a
1 warning generated.
  CC      drivers/staging/qcacld-3.0/core/hdd/src/wlan_hdd_power.o
warning: unknown warning option '-Werror=designated-init' [-Wunknown-warning-option]
warning: unknown warning option '-Wmaybe-uninitialized'; did you mean '-Wuninitialized'? [-Wunknown-warning-option]
warning: unknown warning option '-Werror=designated-init' [-Wunknown-warning-option]
  CC      drivers/tty/vt/vt_ioctl.o
warning: unknown warning option '-Werror=designated-init' [-Wunknown-warning-option]
1 warning generated.
  CC      drivers/soc/qcom/crypto-qti-tz.o
1 warning generated.
warning: unknown warning option '-Werror=designated-init' [-Wunknown-warning-option]
  CC      drivers/usb/core/config.o
warning: unknown warning option '-Werror=designated-init' [-Wunknown-warning-option]
1 warning generated.
  AR      drivers/soc/qcom/qmi_helpers.o
1 warning generated.
  AR      drivers/soc/qcom/built-in.a
warning: unknown warning option '-Werror=designated-init' [-Wunknown-warning-option]
  AR      drivers/soc/built-in.a
1 warning generated.
  CC      drivers/usb/core/file.o
warning: unknown warning option '-Werror=designated-init' [-Wunknown-warning-option]
  CC      drivers/video/hdmi.o
warning: unknown warning option '-Werror=designated-init' [-Wunknown-warning-option]
1 warning generated.
  CC      drivers/tty/vt/vc_screen.o
warning: unknown warning option '-Werror=designated-init' [-Wunknown-warning-option]
1 warning generated.
1 warning generated.
warning: unknown warning option '-Werror=designated-init' [-Wunknown-warning-option]
warning: unknown warning option '-Werror=designated-init' [-Wunknown-warning-option]
1 warning generated.
1 warning generated.
  CC      drivers/usb/core/buffer.o
1 warning generated.
warning: unknown warning option '-Werror=designated-init' [-Wunknown-warning-option]
  CC      drivers/tty/vt/selection.o
  CC      drivers/video/backlight/backlight.o
warning: unknown warning option '-Werror=designated-init' [-Wunknown-warning-option]warning: 
unknown warning option '-Werror=designated-init' [-Wunknown-warning-option]
2 warnings generated.
  CC      drivers/staging/qcacld-3.0/core/hdd/src/wlan_hdd_regulatory.o
warning: unknown warning option '-Werror=designated-init' [-Wunknown-warning-option]
warning: unknown warning option '-Wmaybe-uninitialized'; did you mean '-Wuninitialized'? [-Wunknown-warning-option]
1 warning generated.
  CC      drivers/usb/core/sysfs.o
warning: unknown warning option '-Werror=designated-init' [-Wunknown-warning-option]
1 warning generated.
1 warning generated.
warning: unknown warning option '-Werror=designated-init' [-Wunknown-warning-option]
  CC      drivers/tty/vt/keyboard.o
warning: unknown warning option '-Werror=designated-init' [-Wunknown-warning-option]
1 warning generated.
  CC      drivers/video/backlight/generic_bl.o
warning: unknown warning option '-Werror=designated-init' [-Wunknown-warning-option]
1 warning generated.
  CC      drivers/usb/core/endpoint.o
warning: unknown warning option '-Werror=designated-init' [-Wunknown-warning-option]
1 warning generated.
  CC      drivers/video/backlight/qcom-spmi-wled.o
warning: unknown warning option '-Werror=designated-init' [-Wunknown-warning-option]
1 warning generated.
1 warning generated.
  CC      drivers/usb/core/devio.o
warning: unknown warning option '-Werror=designated-init' [-Wunknown-warning-option]
warning: unknown warning option '-Werror=designated-init' [-Wunknown-warning-option]
1 warning generated.
  CC      drivers/tty/vt/consolemap.o
warning: unknown warning option '-Werror=designated-init' [-Wunknown-warning-option]
2 warnings generated.
  CC      drivers/staging/qcacld-3.0/core/hdd/src/wlan_hdd_scan.o
warning: unknown warning option '-Werror=designated-init' [-Wunknown-warning-option]
warning: unknown warning option '-Wmaybe-uninitialized'; did you mean '-Wuninitialized'? [-Wunknown-warning-option]
1 warning generated.
warning: unknown warning option '-Werror=designated-init' [-Wunknown-warning-option]
1 warning generated.
  AR      drivers/video/backlight/built-in.a
1 warning generated.
1 warning generated.
  CC      drivers/video/console/dummycon.o
warning: unknown warning option '-Werror=designated-init' [-Wunknown-warning-option]
warning: unknown warning option '-Werror=designated-init' [-Wunknown-warning-option]
  CC      drivers/usb/core/notify.o
warning: unknown warning option '-Werror=designated-init' [-Wunknown-warning-option]
1 warning generated.
  CONMK   drivers/tty/vt/consolemap_deftbl.c
  CC      drivers/tty/vt/vt.o
warning: unknown warning option '-Werror=designated-init' [-Wunknown-warning-option]
1 warning generated.
1 warning generated.
warning: unknown warning option '-Werror=designated-init' [-Wunknown-warning-option]
warning: unknown warning option '-Werror=designated-init' [-Wunknown-warning-option]
1 warning generated.
  CC      drivers/usb/core/generic.o
warning: unknown warning option '-Werror=designated-init' [-Wunknown-warning-option]
1 warning generated.
  AR      drivers/video/console/built-in.a
  CC      drivers/video/fbdev/core/fb_cmdline.o
warning: unknown warning option '-Werror=designated-init' [-Wunknown-warning-option]
2 warnings generated.
1 warning generated.
  CC      drivers/staging/qcacld-3.0/core/hdd/src/wlan_hdd_softap_tx_rx.o
warning: unknown warning option '-Werror=designated-init' [-Wunknown-warning-option]
warning: unknown warning option '-Wmaybe-uninitialized'; did you mean '-Wuninitialized'? [-Wunknown-warning-option]
warning: unknown warning option '-Werror=designated-init' [-Wunknown-warning-option]
1 warning generated.
1 warning generated.
1 warning generated.
  CC      drivers/usb/core/quirks.o
warning: unknown warning option '-Werror=designated-init' [-Wunknown-warning-option]
warning: unknown warning option '-Werror=designated-init' [-Wunknown-warning-option]
warning: unknown warning option '-Werror=designated-init' [-Wunknown-warning-option]
1 warning generated.
  CC      drivers/video/fbdev/core/fb_notify.o
1 warning generated.
warning: unknown warning option '-Werror=designated-init' [-Wunknown-warning-option]
  SHIPPED drivers/tty/vt/defkeymap.c
  CC      drivers/tty/vt/consolemap_deftbl.o
warning: unknown warning option '-Werror=designated-init' [-Wunknown-warning-option]
1 warning generated.
1 warning generated.
  CC      drivers/tty/vt/defkeymap.o
warning: unknown warning option '-Werror=designated-init' [-Wunknown-warning-option]
  CC      drivers/usb/core/devices.o
warning: unknown warning option '-Werror=designated-init' [-Wunknown-warning-option]
1 warning generated.
  AR      drivers/tty/vt/built-in.a
  AR      drivers/tty/built-in.a
  CC      drivers/video/logo/logo.o
warning: unknown warning option '-Werror=designated-init' [-Wunknown-warning-option]
1 warning generated.
warning: unknown warning option '-Werror=designated-init' [-Wunknown-warning-option]
1 warning generated.
warning: unknown warning option '-Werror=designated-init' [-Wunknown-warning-option]
1 warning generated.
1 warning generated.
  CC      drivers/usb/core/port.o
  CC      drivers/video/fbdev/core/fbmem.o
warning: unknown warning option '-Werror=designated-init' [-Wunknown-warning-option]
warning: unknown warning option '-Werror=designated-init' [-Wunknown-warning-option]
1 warning generated.
  LOGO    drivers/video/logo/logo_linux_clut224.c
  LOGO    drivers/video/logo/logo_linux_mono.c
  LOGO    drivers/video/logo/logo_superh_mono.c
  LOGO    drivers/video/logo/clut_vga16.c
  LOGO    drivers/video/logo/logo_blackfin_vga16.c
  LOGO    drivers/video/logo/logo_linux_vga16.c
  LOGO    drivers/video/logo/logo_superh_vga16.c
  LOGO    drivers/video/logo/logo_blackfin_clut224.c
  LOGO    drivers/video/logo/logo_dec_clut224.c
  LOGO    drivers/video/logo/logo_m32r_clut224.c
  LOGO    drivers/video/logo/logo_mac_clut224.c
  LOGO    drivers/video/logo/logo_parisc_clut224.c
  LOGO    drivers/video/logo/logo_sgi_clut224.c
  LOGO    drivers/video/logo/logo_spe_clut224.c
  LOGO    drivers/video/logo/logo_sun_clut224.c
  LOGO    drivers/video/logo/logo_superh_clut224.c
  CC      drivers/video/logo/logo_linux_clut224.o
warning: unknown warning option '-Werror=designated-init' [-Wunknown-warning-option]
1 warning generated.
  AR      drivers/video/logo/built-in.a
  CC      drivers/video/display_timing.o
2 warnings generated.
warning: unknown warning option '-Werror=designated-init' [-Wunknown-warning-option]
  CC      drivers/staging/qcacld-3.0/core/hdd/src/wlan_hdd_sta_info.o
warning: unknown warning option '-Werror=designated-init' [-Wunknown-warning-option]
warning: unknown warning option '-Wmaybe-uninitialized'; did you mean '-Wuninitialized'? [-Wunknown-warning-option]
1 warning generated.
1 warning generated.
  CC      drivers/usb/core/of.o
warning: unknown warning option '-Werror=designated-init' [-Wunknown-warning-option]
warning: unknown warning option '-Werror=designated-init' [-Wunknown-warning-option]
1 warning generated.
  CC      drivers/video/videomode.o
warning: unknown warning option '-Werror=designated-init' [-Wunknown-warning-option]
1 warning generated.
warning: unknown warning option '-Werror=designated-init' [-Wunknown-warning-option]
1 warning generated.
  CC      drivers/usb/dwc3/core.o
warning: unknown warning option '-Werror=designated-init' [-Wunknown-warning-option]
1 warning generated.
1 warning generated.
warning: unknown warning option '-Werror=designated-init' [-Wunknown-warning-option]
warning: unknown warning option '-Werror=designated-init' [-Wunknown-warning-option]
1 warning generated.
  AR      drivers/usb/core/usbcore.o
  AR      drivers/usb/core/built-in.a
1 warning generated.
  CC      drivers/video/fbdev/core/fbmon.o
warning: unknown warning option '-Werror=designated-init' [-Wunknown-warning-option]
  AR      drivers/video/fbdev/omap2/omapfb/displays/built-in.a
  AR      drivers/video/fbdev/omap2/omapfb/dss/built-in.a
  AR      drivers/video/fbdev/omap2/omapfb/built-in.a
  AR      drivers/video/fbdev/omap2/built-in.a
  CC      drivers/video/fbdev/amba-clcd.o
warning: unknown warning option '-Werror=designated-init' [-Wunknown-warning-option]
1 warning generated.
warning: unknown warning option '-Werror=designated-init' [-Wunknown-warning-option]
2 warnings generated.
  CC      drivers/staging/qcacld-3.0/core/hdd/src/wlan_hdd_stats.o
warning: unknown warning option '-Werror=designated-init' [-Wunknown-warning-option]
warning: unknown warning option '-Wmaybe-uninitialized'; did you mean '-Wuninitialized'? [-Wunknown-warning-option]
1 warning generated.
1 warning generated.
  CC      drivers/staging/qcacld-3.0/core/hdd/src/wlan_hdd_trace.o
1 warning generated.
  CC      drivers/usb/dwc3/debug_ipc.o
warning: unknown warning option '-Werror=designated-init' [-Wunknown-warning-option]
warning: unknown warning option '-Werror=designated-init' [-Wunknown-warning-option]
warning: unknown warning option '-Wmaybe-uninitialized'; did you mean '-Wuninitialized'? [-Wunknown-warning-option]
2 warnings generated.
  CC      drivers/staging/qcacld-3.0/core/hdd/src/wlan_hdd_tx_rx.o
warning: unknown warning option '-Werror=designated-init' [-Wunknown-warning-option]
warning: unknown warning option '-Werror=designated-init' [-Wunknown-warning-option]
warning: unknown warning option '-Wmaybe-uninitialized'; did you mean '-Wuninitialized'? [-Wunknown-warning-option]
1 warning generated.
  CC      drivers/video/fbdev/core/fbcmap.o
warning: unknown warning option '-Werror=designated-init' [-Wunknown-warning-option]
1 warning generated.
  CC      drivers/usb/dwc3/trace.o
warning: unknown warning option '-Werror=designated-init' [-Wunknown-warning-option]
1 warning generated.
warning: unknown warning option '-Werror=designated-init' [-Wunknown-warning-option]
1 warning generated.
1 warning generated.
  CC      drivers/usb/dwc3/host.o
  CC      drivers/video/fbdev/core/fbsysfs.o
warning: unknown warning option '-Werror=designated-init' [-Wunknown-warning-option]
warning: unknown warning option '-Werror=designated-init' [-Wunknown-warning-option]
2 warnings generated.
2 warnings generated.
1 warning generated.
1 warning generated.
  CC      drivers/usb/dwc3/gadget.o
warning: unknown warning option '-Werror=designated-init' [-Wunknown-warning-option]
  CC      drivers/staging/qcacld-3.0/core/hdd/src/wlan_hdd_wmm.o
  CC      drivers/video/of_display_timing.o
warning: unknown warning option '-Werror=designated-init' [-Wunknown-warning-option]
warning: unknown warning option '-Werror=designated-init' [-Wunknown-warning-option]
warning: unknown warning option '-Wmaybe-uninitialized'; did you mean '-Wuninitialized'? [-Wunknown-warning-option]
warning: unknown warning option '-Werror=designated-init' [-Wunknown-warning-option]
1 warning generated.
  CC      drivers/video/fbdev/core/modedb.o
1 warning generated.
warning: unknown warning option '-Werror=designated-init' [-Wunknown-warning-option]
warning: unknown warning option '-Werror=designated-init' [-Wunknown-warning-option]
1 warning generated.
  CC      drivers/usb/gadget/usbstring.o
warning: unknown warning option '-Werror=designated-init' [-Wunknown-warning-option]
1 warning generated.
warning: unknown warning option '-Werror=designated-init' [-Wunknown-warning-option]
1 warning generated.
warning: unknown warning option '-Werror=designated-init' [-Wunknown-warning-option]
1 warning generated.
  CC      drivers/video/fbdev/core/fbcvt.o
warning: unknown warning option '-Werror=designated-init' [-Wunknown-warning-option]
1 warning generated.
1 warning generated.
  CC      drivers/usb/dwc3/ep0.o
  CC      drivers/usb/gadget/config.o
warning: unknown warning option '-Werror=designated-init' [-Wunknown-warning-option]
warning: unknown warning option '-Werror=designated-init' [-Wunknown-warning-option]
2 warnings generated.
  CC      drivers/staging/qcacld-3.0/core/hdd/src/wlan_hdd_wowl.o
1 warning generated.
warning: unknown warning option '-Werror=designated-init' [-Wunknown-warning-option]
warning: unknown warning option '-Wmaybe-uninitialized'; did you mean '-Wuninitialized'? [-Wunknown-warning-option]
  CC      drivers/video/fbdev/core/cfbfillrect.o
warning: unknown warning option '-Werror=designated-init' [-Wunknown-warning-option]
1 warning generated.
warning: unknown warning option '-Werror=designated-init' [-Wunknown-warning-option]
1 warning generated.
1 warning generated.
  CC      drivers/usb/gadget/epautoconf.o
warning: unknown warning option '-Werror=designated-init' [-Wunknown-warning-option]
warning: unknown warning option '-Werror=designated-init' [-Wunknown-warning-option]
1 warning generated.
  CC      drivers/usb/dwc3/drd.o
warning: unknown warning option '-Werror=designated-init' [-Wunknown-warning-option]
1 warning generated.
  CC      drivers/video/fbdev/core/cfbcopyarea.o
warning: unknown warning option '-Werror=designated-init' [-Wunknown-warning-option]
1 warning generated.
warning: unknown warning option '-Werror=designated-init' [-Wunknown-warning-option]
1 warning generated.
  CC      drivers/usb/dwc3/dwc3-of-simple.o
warning: unknown warning option '-Werror=designated-init' [-Wunknown-warning-option]
1 warning generated.
  CC      drivers/usb/gadget/composite.o
1 warning generated.
warning: unknown warning option '-Werror=designated-init' [-Wunknown-warning-option]
warning: unknown warning option '-Werror=designated-init' [-Wunknown-warning-option]
2 warnings generated.
  CC      drivers/staging/qcacld-3.0/core/hdd/src/wlan_hdd_wext.o
warning: unknown warning option '-Werror=designated-init' [-Wunknown-warning-option]
1 warning generated.
warning: unknown warning option '-Wmaybe-uninitialized'; did you mean '-Wuninitialized'? [-Wunknown-warning-option]
  CC      drivers/usb/dwc3/dwc3-msm.o
1 warning generated.
warning: unknown warning option '-Werror=designated-init' [-Wunknown-warning-option]
  CC      drivers/video/fbdev/core/cfbimgblt.o
warning: unknown warning option '-Werror=designated-init' [-Wunknown-warning-option]
1 warning generated.
warning: unknown warning option '-Werror=designated-init' [-Wunknown-warning-option]
1 warning generated.
warning: unknown warning option '-Werror=designated-init' [-Wunknown-warning-option]
1 warning generated.
  CC      drivers/usb/gadget/functions.o
warning: unknown warning option '-Werror=designated-init' [-Wunknown-warning-option]
1 warning generated.
  AR      drivers/video/fbdev/core/fb.o
  AR      drivers/video/fbdev/core/built-in.a
  AR      drivers/video/fbdev/built-in.a
  CC      drivers/video/of_videomode.o
warning: unknown warning option '-Werror=designated-init' [-Wunknown-warning-option]
1 warning generated.
1 warning generated.
warning: unknown warning option '-Werror=designated-init' [-Wunknown-warning-option]
1 warning generated.
warning: unknown warning option '-Werror=designated-init' [-Wunknown-warning-option]
warning: unknown warning option '-Werror=designated-init' [-Wunknown-warning-option]
1 warning generated.
  AR      drivers/video/built-in.a
1 warning generated.
  CC      drivers/usb/dwc3/dbm.o
1 warning generated.
  CC      drivers/usb/host/ehci-hcd.o
  CC      drivers/usb/gadget/configfs.o
warning: unknown warning option '-Werror=designated-init' [-Wunknown-warning-option]
warning: unknown warning option '-Werror=designated-init' [-Wunknown-warning-option]
warning: unknown warning option '-Werror=designated-init' [-Wunknown-warning-option]
1 warning generated.
2 warnings generated.
  AR      drivers/usb/dwc3/dwc3.o
  AR      drivers/usb/dwc3/built-in.a
  CC      drivers/staging/qcacld-3.0/core/hdd/src/wlan_hdd_hostapd_wext.o
warning: unknown warning option '-Werror=designated-init' [-Wunknown-warning-option]
warning: unknown warning option '-Wmaybe-uninitialized'; did you mean '-Wuninitialized'? [-Wunknown-warning-option]
  CC      drivers/usb/isp1760/isp1760-core.o
warning: unknown warning option '-Werror=designated-init' [-Wunknown-warning-option]
1 warning generated.
warning: unknown warning option '-Werror=designated-init' [-Wunknown-warning-option]
1 warning generated.
  CC      drivers/usb/gadget/u_f.o
1 warning generated.
warning: unknown warning option '-Werror=designated-init' [-Wunknown-warning-option]
  CC      drivers/usb/isp1760/isp1760-if.o
warning: unknown warning option '-Werror=designated-init' [-Wunknown-warning-option]
1 warning generated.
warning: unknown warning option '-Werror=designated-init' [-Wunknown-warning-option]
1 warning generated.
  CC      drivers/usb/isp1760/isp1760-hcd.o
warning: unknown warning option '-Werror=designated-init' [-Wunknown-warning-option]
1 warning generated.
1 warning generated.
  CC      drivers/usb/gadget/function/u_ether.o
warning: unknown warning option '-Werror=designated-init' [-Wunknown-warning-option]
warning: unknown warning option '-Werror=designated-init' [-Wunknown-warning-option]
1 warning generated.
  CC      drivers/usb/host/ehci-platform.o
warning: unknown warning option '-Werror=designated-init' [-Wunknown-warning-option]
2 warnings generated.
1 warning generated.
  AR      drivers/usb/isp1760/isp1760.o
  CC      drivers/staging/qcacld-3.0/core/hdd/src/wlan_hdd_spectralscan.o
  AR      drivers/usb/isp1760/built-in.a
warning: unknown warning option '-Werror=designated-init' [-Wunknown-warning-option]
warning: unknown warning option '-Wmaybe-uninitialized'; did you mean '-Wuninitialized'? [-Wunknown-warning-option]
  AR      drivers/usb/gadget/legacy/built-in.a
  CC      drivers/usb/host/ohci-hcd.o
warning: unknown warning option '-Werror=designated-init' [-Wunknown-warning-option]
1 warning generated.
warning: unknown warning option '-Werror=designated-init' [-Wunknown-warning-option]
1 warning generated.
  CC      drivers/usb/gadget/function/rndis.o
warning: unknown warning option '-Werror=designated-init' [-Wunknown-warning-option]
1 warning generated.
  CC      drivers/staging/qcacld-3.0/core/hdd/src/wlan_hdd_fips.o
warning: unknown warning option '-Werror=designated-init' [-Wunknown-warning-option]
warning: unknown warning option '-Wmaybe-uninitialized'; did you mean '-Wuninitialized'? [-Wunknown-warning-option]
1 warning generated.
1 warning generated.
warning: unknown warning option '-Werror=designated-init' [-Wunknown-warning-option]
warning: unknown warning option '-Werror=designated-init' [-Wunknown-warning-option]
1 warning generated.
  CC      drivers/usb/host/ohci-platform.o
warning: unknown warning option '-Werror=designated-init' [-Wunknown-warning-option]
1 warning generated.
2 warnings generated.
  CC      drivers/usb/gadget/function/f_ncm.o
warning: unknown warning option '-Werror=designated-init' [-Wunknown-warning-option]
  CC      drivers/staging/qcacld-3.0/core/hdd/src/wlan_hdd_green_ap.o
warning: unknown warning option '-Werror=designated-init' [-Wunknown-warning-option]
warning: unknown warning option '-Wmaybe-uninitialized'; did you mean '-Wuninitialized'? [-Wunknown-warning-option]
1 warning generated.
  CC      drivers/usb/host/xhci.o
warning: unknown warning option '-Werror=designated-init' [-Wunknown-warning-option]
2 warnings generated.
  CC      drivers/usb/misc/ehset.o
warning: unknown warning option '-Werror=designated-init' [-Wunknown-warning-option]
1 warning generated.
  CC      drivers/usb/gadget/function/f_mass_storage.o
warning: unknown warning option '-Werror=designated-init' [-Wunknown-warning-option]
1 warning generated.
  CC      drivers/usb/misc/lvstest.o
warning: unknown warning option '-Werror=designated-init' [-Wunknown-warning-option]
1 warning generated.
2 warnings generated.
  AR      drivers/usb/misc/built-in.a
  CC      drivers/usb/gadget/udc/core.o
  CC      drivers/staging/qcacld-3.0/core/hdd/src/wlan_hdd_apf.o
warning: unknown warning option '-Werror=designated-init' [-Wunknown-warning-option]
1 warning generated.
warning: unknown warning option '-Werror=designated-init' [-Wunknown-warning-option]
warning: unknown warning option '-Wmaybe-uninitialized'; did you mean '-Wuninitialized'? [-Wunknown-warning-option]
warning: unknown warning option '-Werror=designated-init' [-Wunknown-warning-option]
1 warning generated.
warning: unknown warning option '-Werror=designated-init' [-Wunknown-warning-option]
1 warning generated.
1 warning generated.
  CC      drivers/usb/host/xhci-mem.o
  CC      drivers/usb/gadget/function/storage_common.o
warning: unknown warning option '-Werror=designated-init' [-Wunknown-warning-option]
warning: unknown warning option '-Werror=designated-init' [-Wunknown-warning-option]
1 warning generated.
warning: unknown warning option '-Werror=designated-init' [-Wunknown-warning-option]
1 warning generated.
1 warning generated.
  CC      drivers/usb/gadget/udc/trace.o
warning: unknown warning option '-Werror=designated-init' [-Wunknown-warning-option]
warning: unknown warning option '-Werror=designated-init' [-Wunknown-warning-option]
1 warning generated.
  CC      drivers/usb/gadget/function/f_fs.o
2 warnings generated.
warning: unknown warning option '-Werror=designated-init' [-Wunknown-warning-option]
  CC      drivers/staging/qcacld-3.0/core/hdd/src/wlan_hdd_lpass.o
warning: unknown warning option '-Werror=designated-init' [-Wunknown-warning-option]
warning: unknown warning option '-Wmaybe-uninitialized'; did you mean '-Wuninitialized'? [-Wunknown-warning-option]
1 warning generated.
  CC      drivers/usb/host/xhci-ring.o
warning: unknown warning option '-Werror=designated-init' [-Wunknown-warning-option]
1 warning generated.
  AR      drivers/usb/gadget/udc/udc-core.o
  AR      drivers/usb/gadget/udc/built-in.a
  CC      drivers/usb/pd/policy_engine.o
warning: unknown warning option '-Werror=designated-init' [-Wunknown-warning-option]
1 warning generated.
warning: unknown warning option '-Werror=designated-init' [-Wunknown-warning-option]
1 warning generated.
warning: unknown warning option '-Werror=designated-init' [-Wunknown-warning-option]
11 warning generated.
 warning generated.
1 warning generated.
  CC      drivers/usb/pd/qpnp-pdphy.o
  CC      drivers/usb/host/xhci-hub.o
2 warnings generated.
warning: unknown warning option '-Werror=designated-init' [-Wunknown-warning-option]
warning: unknown warning option '-Werror=designated-init' [-Wunknown-warning-option]
  CC      drivers/usb/gadget/function/uvc-new/f_uvc.o
warning: unknown warning option '-Werror=designated-init' [-Wunknown-warning-option]
  CC      drivers/staging/qcacld-3.0/core/hdd/src/wlan_hdd_napi.o
warning: unknown warning option '-Werror=designated-init' [-Wunknown-warning-option]
warning: unknown warning option '-Wmaybe-uninitialized'; did you mean '-Wuninitialized'? [-Wunknown-warning-option]
1 warning generated.
warning: unknown warning option '-Werror=designated-init' [-Wunknown-warning-option]
1 warning generated.
1 warning generated.
  CC      drivers/usb/gadget/function/uvc-new/uvc_queue.o
warning: unknown warning option '-Werror=designated-init' [-Wunknown-warning-option]
  CC      drivers/usb/host/xhci-dbg.o
warning: unknown warning option '-Werror=designated-init' [-Wunknown-warning-option]
1 warning generated.
  AR      drivers/usb/pd/built-in.a
  CC      drivers/usb/phy/phy.o
warning: unknown warning option '-Werror=designated-init' [-Wunknown-warning-option]
1 warning generated.
warning: unknown warning option '-Werror=designated-init' [-Wunknown-warning-option]
1 warning generated.
  CC      drivers/usb/gadget/function/uvc-new/uvc_v4l2.o
1 warning generated.
warning: unknown warning option '-Werror=designated-init' [-Wunknown-warning-option]
warning: unknown warning option '-Werror=designated-init' [-Wunknown-warning-option]
1 warning generated.
  CC      drivers/usb/host/xhci-trace.o
warning: unknown warning option '-Werror=designated-init' [-Wunknown-warning-option]
1 warning generated.
  CC      drivers/usb/phy/of.o
warning: unknown warning option '-Werror=designated-init' [-Wunknown-warning-option]
2 warnings generated.
  CC      drivers/staging/qcacld-3.0/core/hdd/src/wlan_hdd_ipa.o
warning: unknown warning option '-Werror=designated-init' [-Wunknown-warning-option]
warning: unknown warning option '-Wmaybe-uninitialized'; did you mean '-Wuninitialized'? [-Wunknown-warning-option]
1 warning generated.
  CC      drivers/usb/gadget/function/uvc-new/uvc_video.o
warning: unknown warning option '-Werror=designated-init' [-Wunknown-warning-option]
1 warning generated.
warning: unknown warning option '-Werror=designated-init' [-Wunknown-warning-option]
1 warning generated.
1 warning generated.
  CC      drivers/usb/phy/class-dual-role.o
warning: unknown warning option '-Werror=designated-init' [-Wunknown-warning-option]
warning: unknown warning option '-Werror=designated-init' [-Wunknown-warning-option]
1 warning generated.
  CC      drivers/usb/gadget/function/uvc-new/uvc_configfs.o
warning: unknown warning option '-Werror=designated-init' [-Wunknown-warning-option]
1 warning generated.
1 warning generated.
  CC      drivers/usb/host/xhci-plat.o
warning: unknown warning option '-Werror=designated-init' [-Wunknown-warning-option]
warning: unknown warning option '-Werror=designated-init' [-Wunknown-warning-option]
1 warning generated.
  CC      drivers/usb/phy/phy-generic.o
warning: unknown warning option '-Werror=designated-init' [-Wunknown-warning-option]
1 warning generated.
  AR      drivers/usb/gadget/function/uvc-new/usb_f_uvc.o
  AR      drivers/usb/gadget/function/uvc-new/built-in.a
  CC      drivers/usb/gadget/function/f_midi.o
2 warnings generated.
warning: unknown warning option '-Werror=designated-init' [-Wunknown-warning-option]
1 warning generated.
  AR      drivers/usb/host/xhci-hcd.o
  CC      drivers/staging/qcacld-3.0/core/hdd/src/wlan_hdd_nan.o
  AR      drivers/usb/host/xhci-plat-hcd.o
warning: unknown warning option '-Werror=designated-init' [-Wunknown-warning-option]
warning: unknown warning option '-Wmaybe-uninitialized'; did you mean '-Wuninitialized'? [-Wunknown-warning-option]
  AR      drivers/usb/host/built-in.a
  CC      drivers/staging/qcacld-3.0/core/hdd/src/wlan_hdd_nan_datapath.o
1 warning generated.
warning: unknown warning option '-Werror=designated-init' [-Wunknown-warning-option]
warning: unknown warning option '-Wmaybe-uninitialized'; did you mean '-Wuninitialized'? [-Wunknown-warning-option]
warning: unknown warning option '-Werror=designated-init' [-Wunknown-warning-option]
11 warning generated.
 warning generated.
  CC      drivers/usb/phy/phy-qcom-emu.o
warning: unknown warning option '-Werror=designated-init' [-Wunknown-warning-option]
  CC      drivers/usb/gadget/function/f_hid.o
warning: unknown warning option '-Werror=designated-init' [-Wunknown-warning-option]
1 warning generated.
  CC      drivers/usb/phy/phy-msm-ssusb-qmp.o
warning: unknown warning option '-Werror=designated-init' [-Wunknown-warning-option]
1 warning generated.
  CC      drivers/usb/gadget/function/f_mtp.o
warning: unknown warning option '-Werror=designated-init' [-Wunknown-warning-option]
1 warning generated.
2 warnings generated.
  CC      drivers/usb/phy/phy-msm-qusb.o
warning: unknown warning option '-Werror=designated-init' [-Wunknown-warning-option]
  CC      drivers/staging/qcacld-3.0/core/hdd/src/wlan_hdd_tdls.o
warning: unknown warning option '-Werror=designated-init' [-Wunknown-warning-option]
warning: unknown warning option '-Wmaybe-uninitialized'; did you mean '-Wuninitialized'? [-Wunknown-warning-option]
2 warnings generated.
1 warning generated.
  AR      drivers/usb/gadget/libcomposite.o
warning: unknown warning option '-Werror=designated-init' [-Wunknown-warning-option]
  CC      drivers/usb/storage/scsiglue.o
warning: unknown warning option '-Werror=designated-init' [-Wunknown-warning-option]
1 warning generated.
1 warning generated.
  CC      drivers/usb/gadget/function/f_ptp.o
warning: unknown warning option '-Werror=designated-init' [-Wunknown-warning-option]
  CC      drivers/usb/phy/phy-msm-qusb-v2.o
warning: unknown warning option '-Werror=designated-init' [-Wunknown-warning-option]
1 warning generated.
warning: unknown warning option '-Werror=designated-init' [-Wunknown-warning-option]
1 warning generated.
  CC      drivers/usb/gadget/function/f_audio_source.o
warning: unknown warning option '-Werror=designated-init' [-Wunknown-warning-option]
1 warning generated.
1 warning generated.
  CC      drivers/usb/storage/protocol.o
warning: unknown warning option '-Werror=designated-init' [-Wunknown-warning-option]
  CC      drivers/usb/phy/phy-msm-snps-hs.o
warning: unknown warning option '-Werror=designated-init' [-Wunknown-warning-option]
2 warnings generated.
  CC      drivers/staging/qcacld-3.0/core/hdd/src/wlan_hdd_tsf.o
warning: unknown warning option '-Werror=designated-init' [-Wunknown-warning-option]
warning: unknown warning option '-Wmaybe-uninitialized'; did you mean '-Wuninitialized'? [-Wunknown-warning-option]
1 warning generated.
  CC      drivers/usb/gadget/function/f_accessory.o
warning: unknown warning option '-Werror=designated-init' [-Wunknown-warning-option]
1 warning generated.
warning: unknown warning option '-Werror=designated-init' [-Wunknown-warning-option]
1 warning generated.
  AR      drivers/usb/phy/built-in.a
  CC      drivers/staging/qcacld-3.0/core/hdd/src/wlan_hdd_disa.o
warning: unknown warning option '-Werror=designated-init' [-Wunknown-warning-option]
warning: unknown warning option '-Wmaybe-uninitialized'; did you mean '-Wuninitialized'? [-Wunknown-warning-option]
1 warning generated.
  CC      drivers/usb/storage/transport.o
warning: unknown warning option '-Werror=designated-init' [-Wunknown-warning-option]
1 warning generated.
warning: unknown warning option '-Werror=designated-init' [-Wunknown-warning-option]
1 warning generated.
  CC      drivers/usb/gadget/function/f_diag.o
warning: unknown warning option '-Werror=designated-init' [-Wunknown-warning-option]
1 warning generated.
warning: unknown warning option '-Werror=designated-init' [-Wunknown-warning-option]
2 warnings generated.
1 warning generated.
  CC      drivers/usb/storage/usb.o
1 warning generated.
  CC      drivers/staging/qcacld-3.0/core/hdd/src/wlan_hdd_subnet_detect.o
warning: unknown warning option '-Werror=designated-init' [-Wunknown-warning-option]
warning: unknown warning option '-Werror=designated-init' [-Wunknown-warning-option]
warning: unknown warning option '-Wmaybe-uninitialized'; did you mean '-Wuninitialized'? [-Wunknown-warning-option]
warning: unknown warning option '-Werror=designated-init' [-Wunknown-warning-option]
2 warnings generated.
  CC      drivers/usb/gadget/function/f_cdev.o
1 warning generated.
  CC      drivers/usb/storage/initializers.o
warning: unknown warning option '-Werror=designated-init' [-Wunknown-warning-option]
warning: unknown warning option '-Werror=designated-init' [-Wunknown-warning-option]
1 warning generated.
warning: unknown warning option '-Werror=designated-init' [-Wunknown-warning-option]
1 warning generated.
  CC      drivers/staging/qcacld-3.0/core/hdd/src/wlan_hdd_twt.o
1 warning generated.
warning: unknown warning option '-Werror=designated-init' [-Wunknown-warning-option]
warning: unknown warning option '-Wmaybe-uninitialized'; did you mean '-Wuninitialized'? [-Wunknown-warning-option]
1 warning generated.
  CC      drivers/usb/gadget/function/f_ccid.o
warning: unknown warning option '-Werror=designated-init' [-Wunknown-warning-option]
  CC      drivers/usb/storage/sierra_ms.o
warning: unknown warning option '-Werror=designated-init' [-Wunknown-warning-option]
2 warnings generated.
1 warning generated.
1 warning generated.
  CC      drivers/usb/storage/option_ms.o
  CC      drivers/staging/qcacld-3.0/core/hdd/src/wlan_hdd_nud_tracking.o
  CC      drivers/usb/gadget/function/f_gsi.o
warning: unknown warning option '-Werror=designated-init' [-Wunknown-warning-option]
warning: unknown warning option '-Werror=designated-init' [-Wunknown-warning-option]
warning: unknown warning option '-Werror=designated-init' [-Wunknown-warning-option]
warning: unknown warning option '-Wmaybe-uninitialized'; did you mean '-Wuninitialized'? [-Wunknown-warning-option]
1 warning generated.
  CC      drivers/usb/storage/usual-tables.o
warning: unknown warning option '-Werror=designated-init' [-Wunknown-warning-option]
1 warning generated.
2 warnings generated.
  AR      drivers/usb/storage/usb-storage.o
  CC      drivers/staging/qcacld-3.0/core/hdd/src/wlan_hdd_packet_filter.o
  AR      drivers/usb/storage/built-in.a
  CC      drivers/usb/gadget/function/f_qdss.o
warning: unknown warning option '-Werror=designated-init' [-Wunknown-warning-option]
warning: unknown warning option '-Wmaybe-uninitialized'; did you mean '-Wuninitialized'? [-Wunknown-warning-option]
warning: unknown warning option '-Werror=designated-init' [-Wunknown-warning-option]
1 warning generated.
  CC      drivers/usb/gadget/function/u_qdss.o
warning: unknown warning option '-Werror=designated-init' [-Wunknown-warning-option]
2 warnings generated.
  CC      drivers/staging/qcacld-3.0/core/hdd/src/wlan_hdd_rssi_monitor.o
1 warning generated.
warning: unknown warning option '-Werror=designated-init' [-Wunknown-warning-option]
warning: unknown warning option '-Wmaybe-uninitialized'; did you mean '-Wuninitialized'? [-Wunknown-warning-option]
warning: unknown warning option '-Werror=designated-init' [-Wunknown-warning-option]
1 warning generated.
  AR      drivers/usb/gadget/function/usb_f_ncm.o
  AR      drivers/usb/gadget/function/usb_f_mass_storage.o
  CC      drivers/staging/qcacld-3.0/core/hdd/src/wlan_hdd_bss_transition.o
warning: unknown warning option '-Werror=designated-init' [-Wunknown-warning-option]
warning: unknown warning option '-Wmaybe-uninitialized'; did you mean '-Wuninitialized'? [-Wunknown-warning-option]
1 warning generated.
  AR      drivers/usb/gadget/function/usb_f_fs.o
  AR      drivers/usb/gadget/function/usb_f_midi.o
  AR      drivers/usb/gadget/function/usb_f_hid.o
  AR      drivers/usb/gadget/function/usb_f_mtp.o
  AR      drivers/usb/gadget/function/usb_f_ptp.o
  AR      drivers/usb/gadget/function/usb_f_audio_source.o
  AR      drivers/usb/gadget/function/usb_f_accessory.o
  AR      drivers/usb/gadget/function/usb_f_diag.o
  AR      drivers/usb/gadget/function/usb_f_cdev.o
  AR      drivers/usb/gadget/function/usb_f_ccid.o
  AR      drivers/usb/gadget/function/usb_f_gsi.o
  AR      drivers/usb/gadget/function/usb_f_qdss.o
  AR      drivers/usb/gadget/function/built-in.a
  AR      drivers/usb/gadget/built-in.a
  AR      drivers/usb/built-in.a
2 warnings generated.
  CC      drivers/staging/qcacld-3.0/core/hdd/src/wlan_hdd_station_info.o
warning: unknown warning option '-Werror=designated-init' [-Wunknown-warning-option]
warning: unknown warning option '-Wmaybe-uninitialized'; did you mean '-Wuninitialized'? [-Wunknown-warning-option]
  CC      drivers/staging/qcacld-3.0/core/hdd/src/wlan_hdd_tx_power.o
warning: unknown warning option '-Werror=designated-init' [-Wunknown-warning-option]
warning: unknown warning option '-Wmaybe-uninitialized'; did you mean '-Wuninitialized'? [-Wunknown-warning-option]
2 warnings generated.
  CC      drivers/staging/qcacld-3.0/core/hdd/src/wlan_hdd_ota_test.o
warning: unknown warning option '-Werror=designated-init' [-Wunknown-warning-option]
warning: unknown warning option '-Wmaybe-uninitialized'; did you mean '-Wuninitialized'? [-Wunknown-warning-option]
2 warnings generated.
  CC      drivers/staging/qcacld-3.0/core/hdd/src/wlan_hdd_active_tos.o
warning: unknown warning option '-Werror=designated-init' [-Wunknown-warning-option]
warning: unknown warning option '-Wmaybe-uninitialized'; did you mean '-Wuninitialized'? [-Wunknown-warning-option]
2 warnings generated.
  CC      drivers/staging/qcacld-3.0/core/hdd/src/wlan_hdd_sar_limits.o
2 warnings generated.
warning: unknown warning option '-Werror=designated-init' [-Wunknown-warning-option]
warning: unknown warning option '-Wmaybe-uninitialized'; did you mean '-Wuninitialized'? [-Wunknown-warning-option]
  CC      drivers/staging/qcacld-3.0/core/hdd/src/wlan_hdd_concurrency_matrix.o
warning: unknown warning option '-Werror=designated-init' [-Wunknown-warning-option]
warning: unknown warning option '-Wmaybe-uninitialized'; did you mean '-Wuninitialized'? [-Wunknown-warning-option]
2 warnings generated.
  CC      drivers/staging/qcacld-3.0/core/hdd/src/wlan_hdd_sap_cond_chan_switch.o
warning: unknown warning option '-Werror=designated-init' [-Wunknown-warning-option]
warning: unknown warning option '-Wmaybe-uninitialized'; did you mean '-Wuninitialized'? [-Wunknown-warning-option]
2 warnings generated.
  CC      drivers/staging/qcacld-3.0/core/hdd/src/wlan_hdd_p2p_listen_offload.o
warning: unknown warning option '-Werror=designated-init' [-Wunknown-warning-option]
warning: unknown warning option '-Wmaybe-uninitialized'; did you mean '-Wuninitialized'? [-Wunknown-warning-option]
2 warnings generated.
2 warnings generated.
  CC      drivers/staging/qcacld-3.0/core/hdd/src/wlan_hdd_sysfs.o
warning: unknown warning option '-Werror=designated-init' [-Wunknown-warning-option]
warning: unknown warning option '-Wmaybe-uninitialized'; did you mean '-Wuninitialized'? [-Wunknown-warning-option]
  CC      drivers/staging/qcacld-3.0/core/hdd/src/wlan_hdd_fw_state.o
warning: unknown warning option '-Werror=designated-init' [-Wunknown-warning-option]
warning: unknown warning option '-Wmaybe-uninitialized'; did you mean '-Wuninitialized'? [-Wunknown-warning-option]
2 warnings generated.
  CC      drivers/staging/qcacld-3.0/core/hdd/src/wlan_hdd_bcn_recv.o
warning: unknown warning option '-Werror=designated-init' [-Wunknown-warning-option]
warning: unknown warning option '-Wmaybe-uninitialized'; did you mean '-Wuninitialized'? [-Wunknown-warning-option]
2 warnings generated.
  CC      drivers/staging/qcacld-3.0/core/hdd/src/wlan_hdd_thermal.o
warning: unknown warning option '-Werror=designated-init' [-Wunknown-warning-option]
warning: unknown warning option '-Wmaybe-uninitialized'; did you mean '-Wuninitialized'? [-Wunknown-warning-option]
2 warnings generated.
2 warnings generated.
  CC      drivers/staging/qcacld-3.0/core/hdd/src/wlan_hdd_gpio.o
warning: unknown warning option '-Werror=designated-init' [-Wunknown-warning-option]
warning: unknown warning option '-Wmaybe-uninitialized'; did you mean '-Wuninitialized'? [-Wunknown-warning-option]
  CC      drivers/staging/qcacld-3.0/os_if/sync/src/osif_sync.o
warning: unknown warning option '-Werror=designated-init' [-Wunknown-warning-option]
warning: unknown warning option '-Wmaybe-uninitialized'; did you mean '-Wuninitialized'? [-Wunknown-warning-option]
2 warnings generated.
  CC      drivers/staging/qcacld-3.0/os_if/sync/src/osif_driver_sync.o
warning: unknown warning option '-Werror=designated-init' [-Wunknown-warning-option]
warning: unknown warning option '-Wmaybe-uninitialized'; did you mean '-Wuninitialized'? [-Wunknown-warning-option]
2 warnings generated.
  CC      drivers/staging/qcacld-3.0/os_if/sync/src/osif_psoc_sync.o
warning: unknown warning option '-Werror=designated-init' [-Wunknown-warning-option]
warning: unknown warning option '-Wmaybe-uninitialized'; did you mean '-Wuninitialized'? [-Wunknown-warning-option]
2 warnings generated.
  CC      drivers/staging/qcacld-3.0/os_if/sync/src/osif_vdev_sync.o
warning: unknown warning option '-Werror=designated-init' [-Wunknown-warning-option]
warning: unknown warning option '-Wmaybe-uninitialized'; did you mean '-Wuninitialized'? [-Wunknown-warning-option]
2 warnings generated.
2 warnings generated.
  CC      drivers/staging/qcacld-3.0/components/dsc/src/__wlan_dsc.o
warning: unknown warning option '-Werror=designated-init' [-Wunknown-warning-option]
warning: unknown warning option '-Wmaybe-uninitialized'; did you mean '-Wuninitialized'? [-Wunknown-warning-option]
  CC      drivers/staging/qcacld-3.0/components/dsc/src/wlan_dsc_driver.o
warning: unknown warning option '-Werror=designated-init' [-Wunknown-warning-option]
warning: unknown warning option '-Wmaybe-uninitialized'; did you mean '-Wuninitialized'? [-Wunknown-warning-option]
2 warnings generated.
  CC      drivers/staging/qcacld-3.0/components/dsc/src/wlan_dsc_psoc.o
warning: unknown warning option '-Werror=designated-init' [-Wunknown-warning-option]
warning: unknown warning option '-Wmaybe-uninitialized'; did you mean '-Wuninitialized'? [-Wunknown-warning-option]
2 warnings generated.
  CC      drivers/staging/qcacld-3.0/components/dsc/src/wlan_dsc_vdev.o
warning: unknown warning option '-Werror=designated-init' [-Wunknown-warning-option]
warning: unknown warning option '-Wmaybe-uninitialized'; did you mean '-Wuninitialized'? [-Wunknown-warning-option]
2 warnings generated.
2 warnings generated.
  CC      drivers/staging/qcacld-3.0/core/mac/src/dph/dph_hash_table.o
warning: unknown warning option '-Werror=designated-init' [-Wunknown-warning-option]
  CC      drivers/staging/qcacld-3.0/core/mac/src/pe/lim/lim_aid_mgmt.o
warning: unknown warning option '-Wmaybe-uninitialized'; did you mean '-Wuninitialized'? [-Wunknown-warning-option]
warning: unknown warning option '-Werror=designated-init' [-Wunknown-warning-option]
warning: unknown warning option '-Wmaybe-uninitialized'; did you mean '-Wuninitialized'? [-Wunknown-warning-option]
2 warnings generated.
  CC      drivers/staging/qcacld-3.0/core/mac/src/pe/lim/lim_admit_control.o
warning: unknown warning option '-Werror=designated-init' [-Wunknown-warning-option]
warning: unknown warning option '-Wmaybe-uninitialized'; did you mean '-Wuninitialized'? [-Wunknown-warning-option]
2 warnings generated.
  CC      drivers/staging/qcacld-3.0/core/mac/src/pe/lim/lim_api.o
warning: unknown warning option '-Werror=designated-init' [-Wunknown-warning-option]
warning: unknown warning option '-Wmaybe-uninitialized'; did you mean '-Wuninitialized'? [-Wunknown-warning-option]
2 warnings generated.
2 warnings generated.
  CC      drivers/staging/qcacld-3.0/core/mac/src/pe/lim/lim_assoc_utils.o
warning: unknown warning option '-Werror=designated-init' [-Wunknown-warning-option]
warning: unknown warning option '-Wmaybe-uninitialized'; did you mean '-Wuninitialized'? [-Wunknown-warning-option]
  CC      drivers/staging/qcacld-3.0/core/mac/src/pe/lim/lim_ft.o
warning: unknown warning option '-Werror=designated-init' [-Wunknown-warning-option]
warning: unknown warning option '-Wmaybe-uninitialized'; did you mean '-Wuninitialized'? [-Wunknown-warning-option]
2 warnings generated.
  CC      drivers/staging/qcacld-3.0/core/mac/src/pe/lim/lim_link_monitoring_algo.o
warning: unknown warning option '-Werror=designated-init' [-Wunknown-warning-option]
warning: unknown warning option '-Wmaybe-uninitialized'; did you mean '-Wuninitialized'? [-Wunknown-warning-option]
2 warnings generated.
  CC      drivers/staging/qcacld-3.0/core/mac/src/pe/lim/lim_process_action_frame.o
warning: unknown warning option '-Werror=designated-init' [-Wunknown-warning-option]
warning: unknown warning option '-Wmaybe-uninitialized'; did you mean '-Wuninitialized'? [-Wunknown-warning-option]
2 warnings generated.
  CC      drivers/staging/qcacld-3.0/core/mac/src/pe/lim/lim_process_assoc_req_frame.o
warning: unknown warning option '-Werror=designated-init' [-Wunknown-warning-option]
warning: unknown warning option '-Wmaybe-uninitialized'; did you mean '-Wuninitialized'? [-Wunknown-warning-option]
2 warnings generated.
2 warnings generated.
  CC      drivers/staging/qcacld-3.0/core/mac/src/pe/lim/lim_process_assoc_rsp_frame.o
warning: unknown warning option '-Werror=designated-init' [-Wunknown-warning-option]
warning: unknown warning option '-Wmaybe-uninitialized'; did you mean '-Wuninitialized'? [-Wunknown-warning-option]
  CC      drivers/staging/qcacld-3.0/core/mac/src/pe/lim/lim_process_auth_frame.o
warning: unknown warning option '-Werror=designated-init' [-Wunknown-warning-option]
warning: unknown warning option '-Wmaybe-uninitialized'; did you mean '-Wuninitialized'? [-Wunknown-warning-option]
2 warnings generated.
  CC      drivers/staging/qcacld-3.0/core/mac/src/pe/lim/lim_process_beacon_frame.o
warning: unknown warning option '-Werror=designated-init' [-Wunknown-warning-option]
warning: unknown warning option '-Wmaybe-uninitialized'; did you mean '-Wuninitialized'? [-Wunknown-warning-option]
2 warnings generated.
2 warnings generated.
  CC      drivers/staging/qcacld-3.0/core/mac/src/pe/lim/lim_process_cfg_updates.o
warning: unknown warning option '-Werror=designated-init' [-Wunknown-warning-option]
warning: unknown warning option '-Wmaybe-uninitialized'; did you mean '-Wuninitialized'? [-Wunknown-warning-option]
  CC      drivers/staging/qcacld-3.0/core/mac/src/pe/lim/lim_process_deauth_frame.o
warning: unknown warning option '-Werror=designated-init' [-Wunknown-warning-option]
warning: unknown warning option '-Wmaybe-uninitialized'; did you mean '-Wuninitialized'? [-Wunknown-warning-option]
2 warnings generated.
  CC      drivers/staging/qcacld-3.0/core/mac/src/pe/lim/lim_process_disassoc_frame.o
warning: unknown warning option '-Werror=designated-init' [-Wunknown-warning-option]
warning: unknown warning option '-Wmaybe-uninitialized'; did you mean '-Wuninitialized'? [-Wunknown-warning-option]
2 warnings generated.
  CC      drivers/staging/qcacld-3.0/core/mac/src/pe/lim/lim_process_message_queue.o
warning: unknown warning option '-Werror=designated-init' [-Wunknown-warning-option]
warning: unknown warning option '-Wmaybe-uninitialized'; did you mean '-Wuninitialized'? [-Wunknown-warning-option]
2 warnings generated.
2 warnings generated.
  CC      drivers/staging/qcacld-3.0/core/mac/src/pe/lim/lim_process_mlm_req_messages.o
warning: unknown warning option '-Werror=designated-init' [-Wunknown-warning-option]
warning: unknown warning option '-Wmaybe-uninitialized'; did you mean '-Wuninitialized'? [-Wunknown-warning-option]
  CC      drivers/staging/qcacld-3.0/core/mac/src/pe/lim/lim_process_mlm_rsp_messages.o
2 warnings generated.
warning: unknown warning option '-Werror=designated-init' [-Wunknown-warning-option]
warning: unknown warning option '-Wmaybe-uninitialized'; did you mean '-Wuninitialized'? [-Wunknown-warning-option]
  CC      drivers/staging/qcacld-3.0/core/mac/src/pe/lim/lim_process_probe_req_frame.o
warning: unknown warning option '-Werror=designated-init' [-Wunknown-warning-option]
warning: unknown warning option '-Wmaybe-uninitialized'; did you mean '-Wuninitialized'? [-Wunknown-warning-option]
2 warnings generated.
  CC      drivers/staging/qcacld-3.0/core/mac/src/pe/lim/lim_process_probe_rsp_frame.o
warning: unknown warning option '-Werror=designated-init' [-Wunknown-warning-option]
warning: unknown warning option '-Wmaybe-uninitialized'; did you mean '-Wuninitialized'? [-Wunknown-warning-option]
2 warnings generated.
2 warnings generated.
  CC      drivers/staging/qcacld-3.0/core/mac/src/pe/lim/lim_process_sme_req_messages.o
  CC      drivers/staging/qcacld-3.0/core/mac/src/pe/lim/lim_prop_exts_utils.o
warning: unknown warning option '-Werror=designated-init' [-Wunknown-warning-option]
warning: unknown warning option '-Wmaybe-uninitialized'; did you mean '-Wuninitialized'? [-Wunknown-warning-option]
2 warnings generated.
warning: unknown warning option '-Werror=designated-init' [-Wunknown-warning-option]
warning: unknown warning option '-Wmaybe-uninitialized'; did you mean '-Wuninitialized'? [-Wunknown-warning-option]
  CC      drivers/staging/qcacld-3.0/core/mac/src/pe/lim/lim_scan_result_utils.o
warning: unknown warning option '-Werror=designated-init' [-Wunknown-warning-option]
warning: unknown warning option '-Wmaybe-uninitialized'; did you mean '-Wuninitialized'? [-Wunknown-warning-option]
2 warnings generated.
  CC      drivers/staging/qcacld-3.0/core/mac/src/pe/lim/lim_security_utils.o
warning: unknown warning option '-Werror=designated-init' [-Wunknown-warning-option]
warning: unknown warning option '-Wmaybe-uninitialized'; did you mean '-Wuninitialized'? [-Wunknown-warning-option]
2 warnings generated.
2 warnings generated.
  CC      drivers/staging/qcacld-3.0/core/mac/src/pe/lim/lim_send_management_frames.o
warning: unknown warning option '-Werror=designated-init' [-Wunknown-warning-option]
warning: unknown warning option '-Wmaybe-uninitialized'; did you mean '-Wuninitialized'? [-Wunknown-warning-option]
  CC      drivers/staging/qcacld-3.0/core/mac/src/pe/lim/lim_send_messages.o
warning: unknown warning option '-Werror=designated-init' [-Wunknown-warning-option]
warning: unknown warning option '-Wmaybe-uninitialized'; did you mean '-Wuninitialized'? [-Wunknown-warning-option]
2 warnings generated.
  CC      drivers/staging/qcacld-3.0/core/mac/src/pe/lim/lim_send_sme_rsp_messages.o
warning: unknown warning option '-Werror=designated-init' [-Wunknown-warning-option]
warning: unknown warning option '-Wmaybe-uninitialized'; did you mean '-Wuninitialized'? [-Wunknown-warning-option]
2 warnings generated.
  CC      drivers/staging/qcacld-3.0/core/mac/src/pe/lim/lim_session.o
warning: unknown warning option '-Werror=designated-init' [-Wunknown-warning-option]
warning: unknown warning option '-Wmaybe-uninitialized'; did you mean '-Wuninitialized'? [-Wunknown-warning-option]
2 warnings generated.
2 warnings generated.
  CC      drivers/staging/qcacld-3.0/core/mac/src/pe/lim/lim_session_utils.o
warning: unknown warning option '-Werror=designated-init' [-Wunknown-warning-option]
warning: unknown warning option '-Wmaybe-uninitialized'; did you mean '-Wuninitialized'? [-Wunknown-warning-option]
  CC      drivers/staging/qcacld-3.0/core/mac/src/pe/lim/lim_sme_req_utils.o
warning: unknown warning option '-Werror=designated-init' [-Wunknown-warning-option]
warning: unknown warning option '-Wmaybe-uninitialized'; did you mean '-Wuninitialized'? [-Wunknown-warning-option]
2 warnings generated.
  CC      drivers/staging/qcacld-3.0/core/mac/src/pe/lim/lim_timer_utils.o
warning: unknown warning option '-Werror=designated-init' [-Wunknown-warning-option]
warning: unknown warning option '-Wmaybe-uninitialized'; did you mean '-Wuninitialized'? [-Wunknown-warning-option]
2 warnings generated.
  CC      drivers/staging/qcacld-3.0/core/mac/src/pe/lim/lim_trace.o
warning: unknown warning option '-Werror=designated-init' [-Wunknown-warning-option]
warning: unknown warning option '-Wmaybe-uninitialized'; did you mean '-Wuninitialized'? [-Wunknown-warning-option]
2 warnings generated.
  CC      drivers/staging/qcacld-3.0/core/mac/src/pe/lim/lim_utils.o
2 warnings generated.
warning: unknown warning option '-Werror=designated-init' [-Wunknown-warning-option]
warning: unknown warning option '-Wmaybe-uninitialized'; did you mean '-Wuninitialized'? [-Wunknown-warning-option]
  CC      drivers/staging/qcacld-3.0/core/mac/src/pe/lim/lim_process_tdls.o
warning: unknown warning option '-Werror=designated-init' [-Wunknown-warning-option]
warning: unknown warning option '-Wmaybe-uninitialized'; did you mean '-Wuninitialized'? [-Wunknown-warning-option]
2 warnings generated.
  CC      drivers/staging/qcacld-3.0/core/mac/src/pe/lim/lim_process_fils.o
2 warnings generated.
warning: unknown warning option '-Werror=designated-init' [-Wunknown-warning-option]
warning: unknown warning option '-Wmaybe-uninitialized'; did you mean '-Wuninitialized'? [-Wunknown-warning-option]
  CC      drivers/staging/qcacld-3.0/core/mac/src/pe/sch/sch_api.o
warning: unknown warning option '-Werror=designated-init' [-Wunknown-warning-option]
warning: unknown warning option '-Wmaybe-uninitialized'; did you mean '-Wuninitialized'? [-Wunknown-warning-option]
2 warnings generated.
  CC      drivers/staging/qcacld-3.0/core/mac/src/pe/sch/sch_beacon_gen.o
warning: unknown warning option '-Werror=designated-init' [-Wunknown-warning-option]
warning: unknown warning option '-Wmaybe-uninitialized'; did you mean '-Wuninitialized'? [-Wunknown-warning-option]
2 warnings generated.
2 warnings generated.
  CC      drivers/staging/qcacld-3.0/core/mac/src/pe/sch/sch_beacon_process.o
warning: unknown warning option '-Werror=designated-init' [-Wunknown-warning-option]
warning: unknown warning option '-Wmaybe-uninitialized'; did you mean '-Wuninitialized'? [-Wunknown-warning-option]
  CC      drivers/staging/qcacld-3.0/core/mac/src/pe/sch/sch_message.o
warning: unknown warning option '-Werror=designated-init' [-Wunknown-warning-option]
warning: unknown warning option '-Wmaybe-uninitialized'; did you mean '-Wuninitialized'? [-Wunknown-warning-option]
2 warnings generated.
  CC      drivers/staging/qcacld-3.0/core/mac/src/pe/rrm/rrm_api.o
warning: unknown warning option '-Werror=designated-init' [-Wunknown-warning-option]
warning: unknown warning option '-Wmaybe-uninitialized'; did you mean '-Wuninitialized'? [-Wunknown-warning-option]
2 warnings generated.
  CC      drivers/staging/qcacld-3.0/core/mac/src/pe/nan/nan_datapath.o
warning: unknown warning option '-Werror=designated-init' [-Wunknown-warning-option]
warning: unknown warning option '-Wmaybe-uninitialized'; did you mean '-Wuninitialized'? [-Wunknown-warning-option]
2 warnings generated.
  CC      drivers/staging/qcacld-3.0/core/sap/src/sap_api_link_cntl.o
warning: unknown warning option '-Werror=designated-init' [-Wunknown-warning-option]
warning: unknown warning option '-Wmaybe-uninitialized'; did you mean '-Wuninitialized'? [-Wunknown-warning-option]
2 warnings generated.
  CC      drivers/staging/qcacld-3.0/core/sap/src/sap_ch_select.o
warning: unknown warning option '-Werror=designated-init' [-Wunknown-warning-option]
warning: unknown warning option '-Wmaybe-uninitialized'; did you mean '-Wuninitialized'? [-Wunknown-warning-option]
2 warnings generated.
  CC      drivers/staging/qcacld-3.0/core/sap/src/sap_fsm.o
warning: unknown warning option '-Werror=designated-init' [-Wunknown-warning-option]
warning: unknown warning option '-Wmaybe-uninitialized'; did you mean '-Wuninitialized'? [-Wunknown-warning-option]
2 warnings generated.
  CC      drivers/staging/qcacld-3.0/core/sap/src/sap_module.o
warning: unknown warning option '-Werror=designated-init' [-Wunknown-warning-option]
warning: unknown warning option '-Wmaybe-uninitialized'; did you mean '-Wuninitialized'? [-Wunknown-warning-option]
2 warnings generated.
  CC      drivers/staging/qcacld-3.0/core/sme/src/common/sme_api.o
warning: unknown warning option '-Werror=designated-init' [-Wunknown-warning-option]
warning: unknown warning option '-Wmaybe-uninitialized'; did you mean '-Wuninitialized'? [-Wunknown-warning-option]
2 warnings generated.
  CC      drivers/staging/qcacld-3.0/core/sme/src/common/sme_ft_api.o
warning: unknown warning option '-Werror=designated-init' [-Wunknown-warning-option]
warning: unknown warning option '-Wmaybe-uninitialized'; did you mean '-Wuninitialized'? [-Wunknown-warning-option]
2 warnings generated.
  CC      drivers/staging/qcacld-3.0/core/sme/src/common/sme_power_save.o
warning: unknown warning option '-Werror=designated-init' [-Wunknown-warning-option]
warning: unknown warning option '-Wmaybe-uninitialized'; did you mean '-Wuninitialized'? [-Wunknown-warning-option]
2 warnings generated.
  CC      drivers/staging/qcacld-3.0/core/sme/src/common/sme_trace.o
warning: unknown warning option '-Werror=designated-init' [-Wunknown-warning-option]
warning: unknown warning option '-Wmaybe-uninitialized'; did you mean '-Wuninitialized'? [-Wunknown-warning-option]
2 warnings generated.
  CC      drivers/staging/qcacld-3.0/core/sme/src/csr/csr_api_roam.o
warning: unknown warning option '-Werror=designated-init' [-Wunknown-warning-option]
warning: unknown warning option '-Wmaybe-uninitialized'; did you mean '-Wuninitialized'? [-Wunknown-warning-option]
2 warnings generated.
  CC      drivers/staging/qcacld-3.0/core/sme/src/csr/csr_api_scan.o
warning: unknown warning option '-Werror=designated-init' [-Wunknown-warning-option]
warning: unknown warning option '-Wmaybe-uninitialized'; did you mean '-Wuninitialized'? [-Wunknown-warning-option]
2 warnings generated.
  CC      drivers/staging/qcacld-3.0/core/sme/src/csr/csr_cmd_process.o
warning: unknown warning option '-Werror=designated-init' [-Wunknown-warning-option]
warning: unknown warning option '-Wmaybe-uninitialized'; did you mean '-Wuninitialized'? [-Wunknown-warning-option]
2 warnings generated.
  CC      drivers/staging/qcacld-3.0/core/sme/src/csr/csr_link_list.o
warning: unknown warning option '-Werror=designated-init' [-Wunknown-warning-option]
warning: unknown warning option '-Wmaybe-uninitialized'; did you mean '-Wuninitialized'? [-Wunknown-warning-option]
2 warnings generated.
  CC      drivers/staging/qcacld-3.0/core/sme/src/csr/csr_neighbor_roam.o
warning: unknown warning option '-Werror=designated-init' [-Wunknown-warning-option]
warning: unknown warning option '-Wmaybe-uninitialized'; did you mean '-Wuninitialized'? [-Wunknown-warning-option]
2 warnings generated.
  CC      drivers/staging/qcacld-3.0/core/sme/src/csr/csr_util.o
warning: unknown warning option '-Werror=designated-init' [-Wunknown-warning-option]
warning: unknown warning option '-Wmaybe-uninitialized'; did you mean '-Wuninitialized'? [-Wunknown-warning-option]
2 warnings generated.
  CC      drivers/staging/qcacld-3.0/core/sme/src/qos/sme_qos.o
warning: unknown warning option '-Werror=designated-init' [-Wunknown-warning-option]
warning: unknown warning option '-Wmaybe-uninitialized'; did you mean '-Wuninitialized'? [-Wunknown-warning-option]
2 warnings generated.
  CC      drivers/staging/qcacld-3.0/core/sme/src/rrm/sme_rrm.o
warning: unknown warning option '-Werror=designated-init' [-Wunknown-warning-option]
warning: unknown warning option '-Wmaybe-uninitialized'; did you mean '-Wuninitialized'? [-Wunknown-warning-option]
2 warnings generated.
  CC      drivers/staging/qcacld-3.0/core/sme/src/nan/nan_datapath_api.o
2 warnings generated.
warning: unknown warning option '-Werror=designated-init' [-Wunknown-warning-option]
warning: unknown warning option '-Wmaybe-uninitialized'; did you mean '-Wuninitialized'? [-Wunknown-warning-option]
  CC      drivers/staging/qcacld-3.0/core/mac/src/sys/common/src/wlan_qct_sys.o
warning: unknown warning option '-Werror=designated-init' [-Wunknown-warning-option]
warning: unknown warning option '-Wmaybe-uninitialized'; did you mean '-Wuninitialized'? [-Wunknown-warning-option]
2 warnings generated.
  CC      drivers/staging/qcacld-3.0/core/mac/src/sys/legacy/src/platform/src/sys_wrapper.o
warning: unknown warning option '-Werror=designated-init' [-Wunknown-warning-option]
warning: unknown warning option '-Wmaybe-uninitialized'; did you mean '-Wuninitialized'? [-Wunknown-warning-option]
2 warnings generated.
2 warnings generated.
  CC      drivers/staging/qcacld-3.0/core/mac/src/sys/legacy/src/system/src/mac_init_api.o
  CC      drivers/staging/qcacld-3.0/core/mac/src/sys/legacy/src/system/src/sys_entry_func.o
warning: unknown warning option '-Werror=designated-init' [-Wunknown-warning-option]
warning: unknown warning option '-Wmaybe-uninitialized'; did you mean '-Wuninitialized'? [-Wunknown-warning-option]
warning: unknown warning option '-Werror=designated-init' [-Wunknown-warning-option]
warning: unknown warning option '-Wmaybe-uninitialized'; did you mean '-Wuninitialized'? [-Wunknown-warning-option]
2 warnings generated.
  CC      drivers/staging/qcacld-3.0/core/mac/src/sys/legacy/src/utils/src/dot11f.o
warning: unknown warning option '-Werror=designated-init' [-Wunknown-warning-option]
warning: unknown warning option '-Wmaybe-uninitialized'; did you mean '-Wuninitialized'? [-Wunknown-warning-option]
2 warnings generated.
  CC      drivers/staging/qcacld-3.0/core/mac/src/sys/legacy/src/utils/src/mac_trace.o
warning: unknown warning option '-Werror=designated-init' [-Wunknown-warning-option]
warning: unknown warning option '-Wmaybe-uninitialized'; did you mean '-Wuninitialized'? [-Wunknown-warning-option]
2 warnings generated.
2 warnings generated.
  CC      drivers/staging/qcacld-3.0/core/mac/src/sys/legacy/src/utils/src/parser_api.o
  CC      drivers/staging/qcacld-3.0/core/mac/src/sys/legacy/src/utils/src/utils_parser.o
warning: unknown warning option '-Werror=designated-init' [-Wunknown-warning-option]
warning: unknown warning option '-Wmaybe-uninitialized'; did you mean '-Wuninitialized'? [-Wunknown-warning-option]
warning: unknown warning option '-Werror=designated-init' [-Wunknown-warning-option]
warning: unknown warning option '-Wmaybe-uninitialized'; did you mean '-Wuninitialized'? [-Wunknown-warning-option]
2 warnings generated.
  CC      drivers/staging/qcacld-3.0/../qca-wifi-host-cmn/qdf/linux/src/qdf_crypto.o
warning: unknown warning option '-Werror=designated-init' [-Wunknown-warning-option]
warning: unknown warning option '-Wmaybe-uninitialized'; did you mean '-Wuninitialized'? [-Wunknown-warning-option]
2 warnings generated.
  CC      drivers/staging/qcacld-3.0/../qca-wifi-host-cmn/qdf/linux/src/qdf_defer.o
warning: unknown warning option '-Werror=designated-init' [-Wunknown-warning-option]
warning: unknown warning option '-Wmaybe-uninitialized'; did you mean '-Wuninitialized'? [-Wunknown-warning-option]
2 warnings generated.
  CC      drivers/staging/qcacld-3.0/../qca-wifi-host-cmn/qdf/linux/src/qdf_delayed_work.o
warning: unknown warning option '-Werror=designated-init' [-Wunknown-warning-option]
warning: unknown warning option '-Wmaybe-uninitialized'; did you mean '-Wuninitialized'? [-Wunknown-warning-option]
2 warnings generated.
  CC      drivers/staging/qcacld-3.0/../qca-wifi-host-cmn/qdf/linux/src/qdf_event.o
warning: unknown warning option '-Werror=designated-init' [-Wunknown-warning-option]
warning: unknown warning option '-Wmaybe-uninitialized'; did you mean '-Wuninitialized'? [-Wunknown-warning-option]
2 warnings generated.
  CC      drivers/staging/qcacld-3.0/../qca-wifi-host-cmn/qdf/linux/src/qdf_file.o
warning: unknown warning option '-Werror=designated-init' [-Wunknown-warning-option]
warning: unknown warning option '-Wmaybe-uninitialized'; did you mean '-Wuninitialized'? [-Wunknown-warning-option]
2 warnings generated.
  CC      drivers/staging/qcacld-3.0/../qca-wifi-host-cmn/qdf/linux/src/qdf_func_tracker.o
warning: unknown warning option '-Werror=designated-init' [-Wunknown-warning-option]
warning: unknown warning option '-Wmaybe-uninitialized'; did you mean '-Wuninitialized'? [-Wunknown-warning-option]
2 warnings generated.
  CC      drivers/staging/qcacld-3.0/../qca-wifi-host-cmn/qdf/linux/src/qdf_idr.o
warning: unknown warning option '-Werror=designated-init' [-Wunknown-warning-option]
warning: unknown warning option '-Wmaybe-uninitialized'; did you mean '-Wuninitialized'? [-Wunknown-warning-option]
2 warnings generated.
  CC      drivers/staging/qcacld-3.0/../qca-wifi-host-cmn/qdf/linux/src/qdf_list.o
warning: unknown warning option '-Werror=designated-init' [-Wunknown-warning-option]
warning: unknown warning option '-Wmaybe-uninitialized'; did you mean '-Wuninitialized'? [-Wunknown-warning-option]
2 warnings generated.
  CC      drivers/staging/qcacld-3.0/../qca-wifi-host-cmn/qdf/linux/src/qdf_lock.o
warning: unknown warning option '-Werror=designated-init' [-Wunknown-warning-option]
warning: unknown warning option '-Wmaybe-uninitialized'; did you mean '-Wuninitialized'? [-Wunknown-warning-option]
2 warnings generated.
  CC      drivers/staging/qcacld-3.0/../qca-wifi-host-cmn/qdf/linux/src/qdf_mc_timer.o
warning: unknown warning option '-Werror=designated-init' [-Wunknown-warning-option]
warning: unknown warning option '-Wmaybe-uninitialized'; did you mean '-Wuninitialized'? [-Wunknown-warning-option]
2 warnings generated.
  CC      drivers/staging/qcacld-3.0/../qca-wifi-host-cmn/qdf/linux/src/qdf_mem.o
warning: unknown warning option '-Werror=designated-init' [-Wunknown-warning-option]
warning: unknown warning option '-Wmaybe-uninitialized'; did you mean '-Wuninitialized'? [-Wunknown-warning-option]
2 warnings generated.
  CC      drivers/staging/qcacld-3.0/../qca-wifi-host-cmn/qdf/linux/src/qdf_nbuf.o
warning: unknown warning option '-Werror=designated-init' [-Wunknown-warning-option]
warning: unknown warning option '-Wmaybe-uninitialized'; did you mean '-Wuninitialized'? [-Wunknown-warning-option]
2 warnings generated.
  CC      drivers/staging/qcacld-3.0/../qca-wifi-host-cmn/qdf/linux/src/qdf_periodic_work.o
warning: unknown warning option '-Werror=designated-init' [-Wunknown-warning-option]
warning: unknown warning option '-Wmaybe-uninitialized'; did you mean '-Wuninitialized'? [-Wunknown-warning-option]
2 warnings generated.
  CC      drivers/staging/qcacld-3.0/../qca-wifi-host-cmn/qdf/linux/src/qdf_status.o
warning: unknown warning option '-Werror=designated-init' [-Wunknown-warning-option]
warning: unknown warning option '-Wmaybe-uninitialized'; did you mean '-Wuninitialized'? [-Wunknown-warning-option]
2 warnings generated.
  CC      drivers/staging/qcacld-3.0/../qca-wifi-host-cmn/qdf/linux/src/qdf_threads.o
warning: unknown warning option '-Werror=designated-init' [-Wunknown-warning-option]
warning: unknown warning option '-Wmaybe-uninitialized'; did you mean '-Wuninitialized'? [-Wunknown-warning-option]
2 warnings generated.
  CC      drivers/staging/qcacld-3.0/../qca-wifi-host-cmn/qdf/linux/src/qdf_trace.o
2 warnings generated.
warning: unknown warning option '-Werror=designated-init' [-Wunknown-warning-option]
warning: unknown warning option '-Wmaybe-uninitialized'; did you mean '-Wuninitialized'? [-Wunknown-warning-option]
2 warnings generated.
  CC      drivers/staging/qcacld-3.0/../qca-wifi-host-cmn/qdf/src/qdf_flex_mem.o
2 warnings generated.
  CC      drivers/staging/qcacld-3.0/../qca-wifi-host-cmn/qdf/src/qdf_parse.o
warning: unknown warning option '-Werror=designated-init' [-Wunknown-warning-option]
warning: unknown warning option '-Wmaybe-uninitialized'; did you mean '-Wuninitialized'? [-Wunknown-warning-option]
warning: unknown warning option '-Werror=designated-init' [-Wunknown-warning-option]
warning: unknown warning option '-Wmaybe-uninitialized'; did you mean '-Wuninitialized'? [-Wunknown-warning-option]
  CC      drivers/staging/qcacld-3.0/../qca-wifi-host-cmn/qdf/src/qdf_platform.o
warning: unknown warning option '-Werror=designated-init' [-Wunknown-warning-option]
warning: unknown warning option '-Wmaybe-uninitialized'; did you mean '-Wuninitialized'? [-Wunknown-warning-option]
2 warnings generated.
  CC      drivers/staging/qcacld-3.0/../qca-wifi-host-cmn/qdf/src/qdf_str.o
warning: unknown warning option '-Werror=designated-init' [-Wunknown-warning-option]
warning: unknown warning option '-Wmaybe-uninitialized'; did you mean '-Wuninitialized'? [-Wunknown-warning-option]
2 warnings generated.
2 warnings generated.
  CC      drivers/staging/qcacld-3.0/../qca-wifi-host-cmn/qdf/src/qdf_talloc.o
2 warnings generated.
  CC      drivers/staging/qcacld-3.0/../qca-wifi-host-cmn/qdf/src/qdf_types.o
warning: unknown warning option '-Werror=designated-init' [-Wunknown-warning-option]
warning: unknown warning option '-Wmaybe-uninitialized'; did you mean '-Wuninitialized'? [-Wunknown-warning-option]
2 warnings generated.
  CC      drivers/staging/qcacld-3.0/../qca-wifi-host-cmn/qdf/linux/src/qdf_ipa.o
warning: unknown warning option '-Werror=designated-init' [-Wunknown-warning-option]
warning: unknown warning option '-Wmaybe-uninitialized'; did you mean '-Wuninitialized'? [-Wunknown-warning-option]
  CC      drivers/staging/qcacld-3.0/../qca-wifi-host-cmn/qdf/src/qdf_cpuhp.o
warning: unknown warning option '-Werror=designated-init' [-Wunknown-warning-option]
warning: unknown warning option '-Wmaybe-uninitialized'; did you mean '-Wuninitialized'? [-Wunknown-warning-option]
warning: unknown warning option '-Werror=designated-init' [-Wunknown-warning-option]
warning: unknown warning option '-Wmaybe-uninitialized'; did you mean '-Wuninitialized'? [-Wunknown-warning-option]
2 warnings generated.
  CC      drivers/staging/qcacld-3.0/../qca-wifi-host-cmn/qdf/linux/src/qdf_cpuhp.o
warning: unknown warning option '-Werror=designated-init' [-Wunknown-warning-option]
warning: unknown warning option '-Wmaybe-uninitialized'; did you mean '-Wuninitialized'? [-Wunknown-warning-option]
2 warnings generated.
  CC      drivers/staging/qcacld-3.0/../qca-wifi-host-cmn/wbuff/src/wbuff.o
warning: unknown warning option '-Werror=designated-init' [-Wunknown-warning-option]
warning: unknown warning option '-Wmaybe-uninitialized'; did you mean '-Wuninitialized'? [-Wunknown-warning-option]
2 warnings generated.
2 warnings generated.
  CC      drivers/staging/qcacld-3.0/core/cds/src/cds_api.o
  CC      drivers/staging/qcacld-3.0/core/cds/src/cds_reg_service.o
warning: unknown warning option '-Werror=designated-init' [-Wunknown-warning-option]
warning: unknown warning option '-Wmaybe-uninitialized'; did you mean '-Wuninitialized'? [-Wunknown-warning-option]
warning: unknown warning option '-Werror=designated-init' [-Wunknown-warning-option]
warning: unknown warning option '-Wmaybe-uninitialized'; did you mean '-Wuninitialized'? [-Wunknown-warning-option]
2 warnings generated.
  CC      drivers/staging/qcacld-3.0/core/cds/src/cds_packet.o
warning: unknown warning option '-Werror=designated-init' [-Wunknown-warning-option]
warning: unknown warning option '-Wmaybe-uninitialized'; did you mean '-Wuninitialized'? [-Wunknown-warning-option]
2 warnings generated.
  CC      drivers/staging/qcacld-3.0/core/cds/src/cds_regdomain.o
warning: unknown warning option '-Werror=designated-init' [-Wunknown-warning-option]
warning: unknown warning option '-Wmaybe-uninitialized'; did you mean '-Wuninitialized'? [-Wunknown-warning-option]
2 warnings generated.
  CC      drivers/staging/qcacld-3.0/core/cds/src/cds_sched.o
warning: unknown warning option '-Werror=designated-init' [-Wunknown-warning-option]
warning: unknown warning option '-Wmaybe-uninitialized'; did you mean '-Wuninitialized'? [-Wunknown-warning-option]
2 warnings generated.
  CC      drivers/staging/qcacld-3.0/core/cds/src/cds_utils.o
2 warnings generated.
warning: unknown warning option '-Werror=designated-init' [-Wunknown-warning-option]
warning: unknown warning option '-Wmaybe-uninitialized'; did you mean '-Wuninitialized'? [-Wunknown-warning-option]
  CC      drivers/staging/qcacld-3.0/../qca-wifi-host-cmn/cfg/src/cfg.o
warning: unknown warning option '-Werror=designated-init' [-Wunknown-warning-option]
warning: unknown warning option '-Wmaybe-uninitialized'; did you mean '-Wuninitialized'? [-Wunknown-warning-option]
2 warnings generated.
  CC      drivers/staging/qcacld-3.0/../qca-wifi-host-cmn/ftm/dispatcher/src/wlan_ftm_init_deinit.o
warning: unknown warning option '-Werror=designated-init' [-Wunknown-warning-option]
warning: unknown warning option '-Wmaybe-uninitialized'; did you mean '-Wuninitialized'? [-Wunknown-warning-option]
2 warnings generated.
  CC      drivers/staging/qcacld-3.0/../qca-wifi-host-cmn/ftm/dispatcher/src/wlan_ftm_ucfg_api.o
warning: unknown warning option '-Werror=designated-init' [-Wunknown-warning-option]
warning: unknown warning option '-Wmaybe-uninitialized'; did you mean '-Wuninitialized'? [-Wunknown-warning-option]
2 warnings generated.
  CC      drivers/staging/qcacld-3.0/../qca-wifi-host-cmn/ftm/core/src/wlan_ftm_svc.o
warning: unknown warning option '-Werror=designated-init' [-Wunknown-warning-option]
warning: unknown warning option '-Wmaybe-uninitialized'; did you mean '-Wuninitialized'? [-Wunknown-warning-option]
2 warnings generated.
  CC      drivers/staging/qcacld-3.0/../qca-wifi-host-cmn/target_if/ftm/src/target_if_ftm.o
warning: unknown warning option '-Werror=designated-init' [-Wunknown-warning-option]
warning: unknown warning option '-Wmaybe-uninitialized'; did you mean '-Wuninitialized'? [-Wunknown-warning-option]
2 warnings generated.
  CC      drivers/staging/qcacld-3.0/../qca-wifi-host-cmn/os_if/linux/ftm/src/wlan_cfg80211_ftm.o
warning: unknown warning option '-Werror=designated-init' [-Wunknown-warning-option]
warning: unknown warning option '-Wmaybe-uninitialized'; did you mean '-Wuninitialized'? [-Wunknown-warning-option]
2 warnings generated.
  CC      drivers/staging/qcacld-3.0/../qca-wifi-host-cmn/os_if/linux/ftm/src/wlan_ioctl_ftm.o
warning: unknown warning option '-Werror=designated-init' [-Wunknown-warning-option]
warning: unknown warning option '-Wmaybe-uninitialized'; did you mean '-Wuninitialized'? [-Wunknown-warning-option]
2 warnings generated.
  CC      drivers/staging/qcacld-3.0/core/wma/src/wma_main.o
warning: unknown warning option '-Werror=designated-init' [-Wunknown-warning-option]
warning: unknown warning option '-Wmaybe-uninitialized'; did you mean '-Wuninitialized'? [-Wunknown-warning-option]
2 warnings generated.
  CC      drivers/staging/qcacld-3.0/core/wma/src/wma_scan_roam.o
warning: unknown warning option '-Werror=designated-init' [-Wunknown-warning-option]
warning: unknown warning option '-Wmaybe-uninitialized'; did you mean '-Wuninitialized'? [-Wunknown-warning-option]
2 warnings generated.
  CC      drivers/staging/qcacld-3.0/core/wma/src/wma_dev_if.o
warning: unknown warning option '-Werror=designated-init' [-Wunknown-warning-option]
warning: unknown warning option '-Wmaybe-uninitialized'; did you mean '-Wuninitialized'? [-Wunknown-warning-option]
2 warnings generated.
  CC      drivers/staging/qcacld-3.0/core/wma/src/wma_mgmt.o
warning: unknown warning option '-Werror=designated-init' [-Wunknown-warning-option]
warning: unknown warning option '-Wmaybe-uninitialized'; did you mean '-Wuninitialized'? [-Wunknown-warning-option]
2 warnings generated.
2 warnings generated.
  CC      drivers/staging/qcacld-3.0/core/wma/src/wma_power.o
warning: unknown warning option '-Werror=designated-init' [-Wunknown-warning-option]
warning: unknown warning option '-Wmaybe-uninitialized'; did you mean '-Wuninitialized'? [-Wunknown-warning-option]
  CC      drivers/staging/qcacld-3.0/core/wma/src/wma_data.o
warning: unknown warning option '-Werror=designated-init' [-Wunknown-warning-option]
warning: unknown warning option '-Wmaybe-uninitialized'; did you mean '-Wuninitialized'? [-Wunknown-warning-option]
2 warnings generated.
2 warnings generated.
  CC      drivers/staging/qcacld-3.0/core/wma/src/wma_utils.o
  CC      drivers/staging/qcacld-3.0/core/wma/src/wma_features.o
warning: unknown warning option '-Werror=designated-init' [-Wunknown-warning-option]
warning: unknown warning option '-Wmaybe-uninitialized'; did you mean '-Wuninitialized'? [-Wunknown-warning-option]
warning: unknown warning option '-Werror=designated-init' [-Wunknown-warning-option]
warning: unknown warning option '-Wmaybe-uninitialized'; did you mean '-Wuninitialized'? [-Wunknown-warning-option]
2 warnings generated.
  CC      drivers/staging/qcacld-3.0/core/wma/src/wlan_qct_wma_legacy.o
warning: unknown warning option '-Werror=designated-init' [-Wunknown-warning-option]
warning: unknown warning option '-Wmaybe-uninitialized'; did you mean '-Wuninitialized'? [-Wunknown-warning-option]
2 warnings generated.
  CC      drivers/staging/qcacld-3.0/core/wma/src/wma_nan_datapath.o
warning: unknown warning option '-Werror=designated-init' [-Wunknown-warning-option]
warning: unknown warning option '-Wmaybe-uninitialized'; did you mean '-Wuninitialized'? [-Wunknown-warning-option]
2 warnings generated.
2 warnings generated.
  CC      drivers/staging/qcacld-3.0/core/wma/src/wma_fips_api.o
  CC      drivers/staging/qcacld-3.0/core/wma/src/wma_twt.o
warning: unknown warning option '-Werror=designated-init' [-Wunknown-warning-option]
warning: unknown warning option '-Wmaybe-uninitialized'; did you mean '-Wuninitialized'? [-Wunknown-warning-option]
warning: unknown warning option '-Werror=designated-init' [-Wunknown-warning-option]
warning: unknown warning option '-Wmaybe-uninitialized'; did you mean '-Wuninitialized'? [-Wunknown-warning-option]
2 warnings generated.
  CC      drivers/staging/qcacld-3.0/core/wma/src/wma_fw_state.o
warning: unknown warning option '-Werror=designated-init' [-Wunknown-warning-option]
warning: unknown warning option '-Wmaybe-uninitialized'; did you mean '-Wuninitialized'? [-Wunknown-warning-option]
2 warnings generated.
  CC      drivers/staging/qcacld-3.0/core/dp/txrx/ol_txrx.o
warning: unknown warning option '-Werror=designated-init' [-Wunknown-warning-option]
warning: unknown warning option '-Wmaybe-uninitialized'; did you mean '-Wuninitialized'? [-Wunknown-warning-option]
2 warnings generated.
2 warnings generated.
  CC      drivers/staging/qcacld-3.0/core/dp/txrx/ol_cfg.o
warning: unknown warning option '-Werror=designated-init' [-Wunknown-warning-option]
warning: unknown warning option '-Wmaybe-uninitialized'; did you mean '-Wuninitialized'? [-Wunknown-warning-option]
  CC      drivers/staging/qcacld-3.0/core/dp/txrx/ol_rx.o
warning: unknown warning option '-Werror=designated-init' [-Wunknown-warning-option]
warning: unknown warning option '-Wmaybe-uninitialized'; did you mean '-Wuninitialized'? [-Wunknown-warning-option]
2 warnings generated.
  CC      drivers/staging/qcacld-3.0/core/dp/txrx/ol_rx_fwd.o
warning: unknown warning option '-Werror=designated-init' [-Wunknown-warning-option]
warning: unknown warning option '-Wmaybe-uninitialized'; did you mean '-Wuninitialized'? [-Wunknown-warning-option]
2 warnings generated.
  CC      drivers/staging/qcacld-3.0/core/dp/txrx/ol_rx_defrag.o
warning: unknown warning option '-Werror=designated-init' [-Wunknown-warning-option]
warning: unknown warning option '-Wmaybe-uninitialized'; did you mean '-Wuninitialized'? [-Wunknown-warning-option]
2 warnings generated.
2 warnings generated.
  CC      drivers/staging/qcacld-3.0/core/dp/txrx/ol_tx_desc.o
warning: unknown warning option '-Werror=designated-init' [-Wunknown-warning-option]
warning: unknown warning option '-Wmaybe-uninitialized'; did you mean '-Wuninitialized'? [-Wunknown-warning-option]
  CC      drivers/staging/qcacld-3.0/core/dp/txrx/ol_tx.o
warning: unknown warning option '-Werror=designated-init' [-Wunknown-warning-option]
warning: unknown warning option '-Wmaybe-uninitialized'; did you mean '-Wuninitialized'? [-Wunknown-warning-option]
2 warnings generated.
  CC      drivers/staging/qcacld-3.0/core/dp/txrx/ol_rx_reorder_timeout.o
warning: unknown warning option '-Werror=designated-init' [-Wunknown-warning-option]
warning: unknown warning option '-Wmaybe-uninitialized'; did you mean '-Wuninitialized'? [-Wunknown-warning-option]
2 warnings generated.
  CC      drivers/staging/qcacld-3.0/core/dp/txrx/ol_rx_reorder.o
warning: unknown warning option '-Werror=designated-init' [-Wunknown-warning-option]
warning: unknown warning option '-Wmaybe-uninitialized'; did you mean '-Wuninitialized'? [-Wunknown-warning-option]
2 warnings generated.
  CC      drivers/staging/qcacld-3.0/core/dp/txrx/ol_rx_pn.o
warning: unknown warning option '-Werror=designated-init' [-Wunknown-warning-option]
warning: unknown warning option '-Wmaybe-uninitialized'; did you mean '-Wuninitialized'? [-Wunknown-warning-option]
2 warnings generated.
  CC      drivers/staging/qcacld-3.0/core/dp/txrx/ol_txrx_peer_find.o
warning: unknown warning option '-Werror=designated-init' [-Wunknown-warning-option]
warning: unknown warning option '-Wmaybe-uninitialized'; did you mean '-Wuninitialized'? [-Wunknown-warning-option]
2 warnings generated.
  CC      drivers/staging/qcacld-3.0/core/dp/txrx/ol_txrx_encap.o
warning: unknown warning option '-Werror=designated-init' [-Wunknown-warning-option]
warning: unknown warning option '-Wmaybe-uninitialized'; did you mean '-Wuninitialized'? [-Wunknown-warning-option]
2 warnings generated.
  CC      drivers/staging/qcacld-3.0/core/dp/txrx/ol_tx_send.o
warning: unknown warning option '-Werror=designated-init' [-Wunknown-warning-option]
warning: unknown warning option '-Wmaybe-uninitialized'; did you mean '-Wuninitialized'? [-Wunknown-warning-option]
2 warnings generated.
  CC      drivers/staging/qcacld-3.0/core/dp/txrx/ol_tx_ll.o
warning: unknown warning option '-Werror=designated-init' [-Wunknown-warning-option]
warning: unknown warning option '-Wmaybe-uninitialized'; did you mean '-Wuninitialized'? [-Wunknown-warning-option]
2 warnings generated.
  CC      drivers/staging/qcacld-3.0/core/dp/txrx/ol_tx_ll_fastpath.o
warning: unknown warning option '-Werror=designated-init' [-Wunknown-warning-option]
warning: unknown warning option '-Wmaybe-uninitialized'; did you mean '-Wuninitialized'? [-Wunknown-warning-option]
2 warnings generated.
  CC      drivers/staging/qcacld-3.0/core/dp/txrx/ol_txrx_flow_control.o
warning: unknown warning option '-Werror=designated-init' [-Wunknown-warning-option]
warning: unknown warning option '-Wmaybe-uninitialized'; did you mean '-Wuninitialized'? [-Wunknown-warning-option]
2 warnings generated.
  CC      drivers/staging/qcacld-3.0/core/dp/txrx/ol_txrx_ipa.o
warning: unknown warning option '-Werror=designated-init' [-Wunknown-warning-option]
warning: unknown warning option '-Wmaybe-uninitialized'; did you mean '-Wuninitialized'? [-Wunknown-warning-option]
2 warnings generated.
  CC      drivers/staging/qcacld-3.0/core/dp/txrx/ol_tx_throttle.o
warning: unknown warning option '-Werror=designated-init' [-Wunknown-warning-option]
warning: unknown warning option '-Wmaybe-uninitialized'; did you mean '-Wuninitialized'? [-Wunknown-warning-option]
2 warnings generated.
  CC      drivers/staging/qcacld-3.0/../qca-wifi-host-cmn/wmi/src/wmi_unified.o
warning: unknown warning option '-Werror=designated-init' [-Wunknown-warning-option]
warning: unknown warning option '-Wmaybe-uninitialized'; did you mean '-Wuninitialized'? [-Wunknown-warning-option]
2 warnings generated.
  CC      drivers/staging/qcacld-3.0/../qca-wifi-host-cmn/wmi/src/wmi_tlv_helper.o
warning: unknown warning option '-Werror=designated-init' [-Wunknown-warning-option]
warning: unknown warning option '-Wmaybe-uninitialized'; did you mean '-Wuninitialized'? [-Wunknown-warning-option]
2 warnings generated.
  CC      drivers/staging/qcacld-3.0/../qca-wifi-host-cmn/wmi/src/wmi_unified_tlv.o
warning: unknown warning option '-Werror=designated-init' [-Wunknown-warning-option]
warning: unknown warning option '-Wmaybe-uninitialized'; did you mean '-Wuninitialized'? [-Wunknown-warning-option]
2 warnings generated.
  CC      drivers/staging/qcacld-3.0/../qca-wifi-host-cmn/wmi/src/wmi_unified_api.o
warning: unknown warning option '-Werror=designated-init' [-Wunknown-warning-option]
warning: unknown warning option '-Wmaybe-uninitialized'; did you mean '-Wuninitialized'? [-Wunknown-warning-option]
2 warnings generated.
  CC      drivers/staging/qcacld-3.0/../qca-wifi-host-cmn/wmi/src/wmi_unified_reg_api.o
warning: unknown warning option '-Werror=designated-init' [-Wunknown-warning-option]
warning: unknown warning option '-Wmaybe-uninitialized'; did you mean '-Wuninitialized'? [-Wunknown-warning-option]
2 warnings generated.
  CC      drivers/staging/qcacld-3.0/../qca-wifi-host-cmn/wmi/src/wmi_unified_vdev_api.o
warning: unknown warning option '-Werror=designated-init' [-Wunknown-warning-option]
warning: unknown warning option '-Wmaybe-uninitialized'; did you mean '-Wuninitialized'? [-Wunknown-warning-option]
2 warnings generated.
2 warnings generated.
  CC      drivers/staging/qcacld-3.0/../qca-wifi-host-cmn/wmi/src/wmi_unified_vdev_tlv.o
warning: unknown warning option '-Werror=designated-init' [-Wunknown-warning-option]
warning: unknown warning option '-Wmaybe-uninitialized'; did you mean '-Wuninitialized'? [-Wunknown-warning-option]
  CC      drivers/staging/qcacld-3.0/../qca-wifi-host-cmn/wmi/src/wmi_unified_crypto_api.o
warning: unknown warning option '-Werror=designated-init' [-Wunknown-warning-option]
warning: unknown warning option '-Wmaybe-uninitialized'; did you mean '-Wuninitialized'? [-Wunknown-warning-option]
2 warnings generated.
  CC      drivers/staging/qcacld-3.0/../qca-wifi-host-cmn/wmi/src/wmi_unified_pmo_api.o
warning: unknown warning option '-Werror=designated-init' [-Wunknown-warning-option]
warning: unknown warning option '-Wmaybe-uninitialized'; did you mean '-Wuninitialized'? [-Wunknown-warning-option]
2 warnings generated.
  CC      drivers/staging/qcacld-3.0/../qca-wifi-host-cmn/wmi/src/wmi_unified_pmo_tlv.o
warning: unknown warning option '-Werror=designated-init' [-Wunknown-warning-option]
warning: unknown warning option '-Wmaybe-uninitialized'; did you mean '-Wuninitialized'? [-Wunknown-warning-option]
2 warnings generated.
  CC      drivers/staging/qcacld-3.0/../qca-wifi-host-cmn/wmi/src/wmi_unified_apf_tlv.o
2 warnings generated.
warning: unknown warning option '-Werror=designated-init' [-Wunknown-warning-option]
warning: unknown warning option '-Wmaybe-uninitialized'; did you mean '-Wuninitialized'? [-Wunknown-warning-option]
  CC      drivers/staging/qcacld-3.0/../qca-wifi-host-cmn/wmi/src/wmi_unified_action_oui_tlv.o
warning: unknown warning option '-Werror=designated-init' [-Wunknown-warning-option]
warning: unknown warning option '-Wmaybe-uninitialized'; did you mean '-Wuninitialized'? [-Wunknown-warning-option]
2 warnings generated.
  CC      drivers/staging/qcacld-3.0/../qca-wifi-host-cmn/wmi/src/wmi_unified_dfs_api.o
warning: unknown warning option '-Werror=designated-init' [-Wunknown-warning-option]
warning: unknown warning option '-Wmaybe-uninitialized'; did you mean '-Wuninitialized'? [-Wunknown-warning-option]
2 warnings generated.
  CC      drivers/staging/qcacld-3.0/../qca-wifi-host-cmn/wmi/src/wmi_unified_twt_api.o
warning: unknown warning option '-Werror=designated-init' [-Wunknown-warning-option]
warning: unknown warning option '-Wmaybe-uninitialized'; did you mean '-Wuninitialized'? [-Wunknown-warning-option]
2 warnings generated.
  CC      drivers/staging/qcacld-3.0/../qca-wifi-host-cmn/wmi/src/wmi_unified_twt_tlv.o
warning: unknown warning option '-Werror=designated-init' [-Wunknown-warning-option]
warning: unknown warning option '-Wmaybe-uninitialized'; did you mean '-Wuninitialized'? [-Wunknown-warning-option]
2 warnings generated.
2 warnings generated.
  CC      drivers/staging/qcacld-3.0/../qca-wifi-host-cmn/wmi/src/wmi_unified_interop_issues_ap_api.o
warning: unknown warning option '-Werror=designated-init' [-Wunknown-warning-option]
warning: unknown warning option '-Wmaybe-uninitialized'; did you mean '-Wuninitialized'? [-Wunknown-warning-option]
  CC      drivers/staging/qcacld-3.0/../qca-wifi-host-cmn/wmi/src/wmi_unified_interop_issues_ap_tlv.o
warning: unknown warning option '-Werror=designated-init' [-Wunknown-warning-option]
warning: unknown warning option '-Wmaybe-uninitialized'; did you mean '-Wuninitialized'? [-Wunknown-warning-option]
2 warnings generated.
  CC      drivers/staging/qcacld-3.0/../qca-wifi-host-cmn/wmi/src/wmi_unified_nan_api.o
warning: unknown warning option '-Werror=designated-init' [-Wunknown-warning-option]
warning: unknown warning option '-Wmaybe-uninitialized'; did you mean '-Wuninitialized'? [-Wunknown-warning-option]
2 warnings generated.
2 warnings generated.
  CC      drivers/staging/qcacld-3.0/../qca-wifi-host-cmn/wmi/src/wmi_unified_nan_tlv.o
  CC      drivers/staging/qcacld-3.0/../qca-wifi-host-cmn/wmi/src/wmi_unified_p2p_api.o
warning: unknown warning option '-Werror=designated-init' [-Wunknown-warning-option]
warning: unknown warning option '-Wmaybe-uninitialized'; did you mean '-Wuninitialized'? [-Wunknown-warning-option]
warning: unknown warning option '-Werror=designated-init' [-Wunknown-warning-option]
warning: unknown warning option '-Wmaybe-uninitialized'; did you mean '-Wuninitialized'? [-Wunknown-warning-option]
2 warnings generated.
  CC      drivers/staging/qcacld-3.0/../qca-wifi-host-cmn/wmi/src/wmi_unified_p2p_tlv.o
warning: unknown warning option '-Werror=designated-init' [-Wunknown-warning-option]
warning: unknown warning option '-Wmaybe-uninitialized'; did you mean '-Wuninitialized'? [-Wunknown-warning-option]
2 warnings generated.
  CC      drivers/staging/qcacld-3.0/../qca-wifi-host-cmn/wmi/src/wmi_unified_roam_api.o
warning: unknown warning option '-Werror=designated-init' [-Wunknown-warning-option]
warning: unknown warning option '-Wmaybe-uninitialized'; did you mean '-Wuninitialized'? [-Wunknown-warning-option]
2 warnings generated.
  CC      drivers/staging/qcacld-3.0/../qca-wifi-host-cmn/wmi/src/wmi_unified_roam_tlv.o
warning: unknown warning option '-Werror=designated-init' [-Wunknown-warning-option]
warning: unknown warning option '-Wmaybe-uninitialized'; did you mean '-Wuninitialized'? [-Wunknown-warning-option]
2 warnings generated.
  CC      drivers/staging/qcacld-3.0/../qca-wifi-host-cmn/wmi/src/wmi_unified_concurrency_api.o
warning: unknown warning option '-Werror=designated-init' [-Wunknown-warning-option]
warning: unknown warning option '-Wmaybe-uninitialized'; did you mean '-Wuninitialized'? [-Wunknown-warning-option]
2 warnings generated.
  CC      drivers/staging/qcacld-3.0/../qca-wifi-host-cmn/wmi/src/wmi_unified_concurrency_tlv.o
warning: unknown warning option '-Werror=designated-init' [-Wunknown-warning-option]
warning: unknown warning option '-Wmaybe-uninitialized'; did you mean '-Wuninitialized'? [-Wunknown-warning-option]
2 warnings generated.
  CC      drivers/staging/qcacld-3.0/../qca-wifi-host-cmn/wmi/src/wmi_unified_sta_api.o
warning: unknown warning option '-Werror=designated-init' [-Wunknown-warning-option]
warning: unknown warning option '-Wmaybe-uninitialized'; did you mean '-Wuninitialized'? [-Wunknown-warning-option]
2 warnings generated.
2 warnings generated.
  CC      drivers/staging/qcacld-3.0/../qca-wifi-host-cmn/wmi/src/wmi_unified_sta_tlv.o
warning: unknown warning option '-Werror=designated-init' [-Wunknown-warning-option]
warning: unknown warning option '-Wmaybe-uninitialized'; did you mean '-Wuninitialized'? [-Wunknown-warning-option]
  CC      drivers/staging/qcacld-3.0/../qca-wifi-host-cmn/wmi/src/wmi_unified_bcn_api.o
warning: unknown warning option '-Werror=designated-init' [-Wunknown-warning-option]
warning: unknown warning option '-Wmaybe-uninitialized'; did you mean '-Wuninitialized'? [-Wunknown-warning-option]
2 warnings generated.
  CC      drivers/staging/qcacld-3.0/../qca-wifi-host-cmn/wmi/src/wmi_unified_bcn_tlv.o
warning: unknown warning option '-Werror=designated-init' [-Wunknown-warning-option]
warning: unknown warning option '-Wmaybe-uninitialized'; did you mean '-Wuninitialized'? [-Wunknown-warning-option]
2 warnings generated.
  CC      drivers/staging/qcacld-3.0/../qca-wifi-host-cmn/wmi/src/wmi_unified_fwol_api.o
warning: unknown warning option '-Werror=designated-init' [-Wunknown-warning-option]
warning: unknown warning option '-Wmaybe-uninitialized'; did you mean '-Wuninitialized'? [-Wunknown-warning-option]
2 warnings generated.
  CC      drivers/staging/qcacld-3.0/../qca-wifi-host-cmn/wmi/src/wmi_unified_fwol_tlv.o
warning: unknown warning option '-Werror=designated-init' [-Wunknown-warning-option]
warning: unknown warning option '-Wmaybe-uninitialized'; did you mean '-Wuninitialized'? [-Wunknown-warning-option]
2 warnings generated.
  CC      drivers/staging/qcacld-3.0/../qca-wifi-host-cmn/wmi/src/wmi_unified_gpio_api.o
warning: unknown warning option '-Werror=designated-init' [-Wunknown-warning-option]
warning: unknown warning option '-Wmaybe-uninitialized'; did you mean '-Wuninitialized'? [-Wunknown-warning-option]
2 warnings generated.
  CC      drivers/staging/qcacld-3.0/../qca-wifi-host-cmn/wmi/src/wmi_unified_gpio_tlv.o
warning: unknown warning option '-Werror=designated-init' [-Wunknown-warning-option]
warning: unknown warning option '-Wmaybe-uninitialized'; did you mean '-Wuninitialized'? [-Wunknown-warning-option]
2 warnings generated.
  CC      drivers/staging/qcacld-3.0/../qca-wifi-host-cmn/htc/htc.o
warning: unknown warning option '-Werror=designated-init' [-Wunknown-warning-option]
warning: unknown warning option '-Wmaybe-uninitialized'; did you mean '-Wuninitialized'? [-Wunknown-warning-option]
2 warnings generated.
2 warnings generated.
  CC      drivers/staging/qcacld-3.0/../qca-wifi-host-cmn/htc/htc_send.o
warning: unknown warning option '-Werror=designated-init' [-Wunknown-warning-option]
warning: unknown warning option '-Wmaybe-uninitialized'; did you mean '-Wuninitialized'? [-Wunknown-warning-option]
  CC      drivers/staging/qcacld-3.0/../qca-wifi-host-cmn/htc/htc_recv.o
warning: unknown warning option '-Werror=designated-init' [-Wunknown-warning-option]
warning: unknown warning option '-Wmaybe-uninitialized'; did you mean '-Wuninitialized'? [-Wunknown-warning-option]
2 warnings generated.
  CC      drivers/staging/qcacld-3.0/../qca-wifi-host-cmn/htc/htc_services.o
warning: unknown warning option '-Werror=designated-init' [-Wunknown-warning-option]
warning: unknown warning option '-Wmaybe-uninitialized'; did you mean '-Wuninitialized'? [-Wunknown-warning-option]
2 warnings generated.
  CC      drivers/staging/qcacld-3.0/../qca-wifi-host-cmn/init_deinit/dispatcher/src/dispatcher_init_deinit.o
warning: unknown warning option '-Werror=designated-init' [-Wunknown-warning-option]
warning: unknown warning option '-Wmaybe-uninitialized'; did you mean '-Wuninitialized'? [-Wunknown-warning-option]
2 warnings generated.
2 warnings generated.
  CC      drivers/staging/qcacld-3.0/../qca-wifi-host-cmn/scheduler/src/scheduler_api.o
warning: unknown warning option '-Werror=designated-init' [-Wunknown-warning-option]
warning: unknown warning option '-Wmaybe-uninitialized'; did you mean '-Wuninitialized'? [-Wunknown-warning-option]
  CC      drivers/staging/qcacld-3.0/../qca-wifi-host-cmn/scheduler/src/scheduler_core.o
warning: unknown warning option '-Werror=designated-init' [-Wunknown-warning-option]
warning: unknown warning option '-Wmaybe-uninitialized'; did you mean '-Wuninitialized'? [-Wunknown-warning-option]
2 warnings generated.
  CC      drivers/staging/qcacld-3.0/../qca-wifi-host-cmn/umac/regulatory/core/src/reg_build_chan_list.o
warning: unknown warning option '-Werror=designated-init' [-Wunknown-warning-option]
warning: unknown warning option '-Wmaybe-uninitialized'; did you mean '-Wuninitialized'? [-Wunknown-warning-option]
2 warnings generated.
  CC      drivers/staging/qcacld-3.0/../qca-wifi-host-cmn/umac/regulatory/core/src/reg_callbacks.o
warning: unknown warning option '-Werror=designated-init' [-Wunknown-warning-option]
warning: unknown warning option '-Wmaybe-uninitialized'; did you mean '-Wuninitialized'? [-Wunknown-warning-option]
2 warnings generated.
  CC      drivers/staging/qcacld-3.0/../qca-wifi-host-cmn/umac/regulatory/core/src/reg_db.o
warning: unknown warning option '-Werror=designated-init' [-Wunknown-warning-option]
warning: unknown warning option '-Wmaybe-uninitialized'; did you mean '-Wuninitialized'? [-Wunknown-warning-option]
2 warnings generated.
  CC      drivers/staging/qcacld-3.0/../qca-wifi-host-cmn/umac/regulatory/core/src/reg_db_parser.o
warning: unknown warning option '-Werror=designated-init' [-Wunknown-warning-option]
warning: unknown warning option '-Wmaybe-uninitialized'; did you mean '-Wuninitialized'? [-Wunknown-warning-option]
2 warnings generated.
  CC      drivers/staging/qcacld-3.0/../qca-wifi-host-cmn/umac/regulatory/core/src/reg_utils.o
warning: unknown warning option '-Werror=designated-init' [-Wunknown-warning-option]
warning: unknown warning option '-Wmaybe-uninitialized'; did you mean '-Wuninitialized'? [-Wunknown-warning-option]
2 warnings generated.
2 warnings generated.
  CC      drivers/staging/qcacld-3.0/../qca-wifi-host-cmn/umac/regulatory/core/src/reg_lte.o
  CC      drivers/staging/qcacld-3.0/../qca-wifi-host-cmn/umac/regulatory/core/src/reg_offload_11d_scan.o
warning: unknown warning option '-Werror=designated-init' [-Wunknown-warning-option]
warning: unknown warning option '-Wmaybe-uninitialized'; did you mean '-Wuninitialized'? [-Wunknown-warning-option]
2 warnings generated.
warning: unknown warning option '-Werror=designated-init' [-Wunknown-warning-option]
warning: unknown warning option '-Wmaybe-uninitialized'; did you mean '-Wuninitialized'? [-Wunknown-warning-option]
  CC      drivers/staging/qcacld-3.0/../qca-wifi-host-cmn/umac/regulatory/core/src/reg_opclass.o
warning: unknown warning option '-Werror=designated-init' [-Wunknown-warning-option]
warning: unknown warning option '-Wmaybe-uninitialized'; did you mean '-Wuninitialized'? [-Wunknown-warning-option]
2 warnings generated.
  CC      drivers/staging/qcacld-3.0/../qca-wifi-host-cmn/umac/regulatory/core/src/reg_priv_objs.o
warning: unknown warning option '-Werror=designated-init' [-Wunknown-warning-option]
warning: unknown warning option '-Wmaybe-uninitialized'; did you mean '-Wuninitialized'? [-Wunknown-warning-option]
2 warnings generated.
  CC      drivers/staging/qcacld-3.0/../qca-wifi-host-cmn/umac/regulatory/dispatcher/src/wlan_reg_services_api.o
2 warnings generated.
warning: unknown warning option '-Werror=designated-init' [-Wunknown-warning-option]
warning: unknown warning option '-Wmaybe-uninitialized'; did you mean '-Wuninitialized'? [-Wunknown-warning-option]
  CC      drivers/staging/qcacld-3.0/../qca-wifi-host-cmn/umac/regulatory/core/src/reg_services_common.o
warning: unknown warning option '-Werror=designated-init' [-Wunknown-warning-option]
warning: unknown warning option '-Wmaybe-uninitialized'; did you mean '-Wuninitialized'? [-Wunknown-warning-option]
2 warnings generated.
  CC      drivers/staging/qcacld-3.0/../qca-wifi-host-cmn/umac/regulatory/dispatcher/src/wlan_reg_tgt_api.o
warning: unknown warning option '-Werror=designated-init' [-Wunknown-warning-option]
warning: unknown warning option '-Wmaybe-uninitialized'; did you mean '-Wuninitialized'? [-Wunknown-warning-option]
2 warnings generated.
2 warnings generated.
  CC      drivers/staging/qcacld-3.0/../qca-wifi-host-cmn/umac/regulatory/dispatcher/src/wlan_reg_ucfg_api.o
warning: unknown warning option '-Werror=designated-init' [-Wunknown-warning-option]
warning: unknown warning option '-Wmaybe-uninitialized'; did you mean '-Wuninitialized'? [-Wunknown-warning-option]
  CC      drivers/staging/qcacld-3.0/../qca-wifi-host-cmn/hif/src/hif_napi.o
warning: unknown warning option '-Werror=designated-init' [-Wunknown-warning-option]
warning: unknown warning option '-Wmaybe-uninitialized'; did you mean '-Wuninitialized'? [-Wunknown-warning-option]
2 warnings generated.
  CC      drivers/staging/qcacld-3.0/../qca-wifi-host-cmn/hif/src/dispatcher/multibus.o
warning: unknown warning option '-Werror=designated-init' [-Wunknown-warning-option]
warning: unknown warning option '-Wmaybe-uninitialized'; did you mean '-Wuninitialized'? [-Wunknown-warning-option]
2 warnings generated.
  CC      drivers/staging/qcacld-3.0/../qca-wifi-host-cmn/hif/src/dispatcher/dummy.o
warning: unknown warning option '-Werror=designated-init' [-Wunknown-warning-option]
warning: unknown warning option '-Wmaybe-uninitialized'; did you mean '-Wuninitialized'? [-Wunknown-warning-option]
2 warnings generated.
2 warnings generated.
  CC      drivers/staging/qcacld-3.0/../qca-wifi-host-cmn/hif/src/ath_procfs.o
2 warnings generated.
warning: unknown warning option '-Werror=designated-init' [-Wunknown-warning-option]
warning: unknown warning option '-Wmaybe-uninitialized'; did you mean '-Wuninitialized'? [-Wunknown-warning-option]
2 warnings generated.
  CC      drivers/staging/qcacld-3.0/../qca-wifi-host-cmn/hif/src/hif_main.o
warning: unknown warning option '-Werror=designated-init' [-Wunknown-warning-option]
warning: unknown warning option '-Wmaybe-uninitialized'; did you mean '-Wuninitialized'? [-Wunknown-warning-option]
  CC      drivers/staging/qcacld-3.0/../qca-wifi-host-cmn/hif/src/hif_exec.o
  CC      drivers/staging/qcacld-3.0/../qca-wifi-host-cmn/hif/src/hif_main_legacy.o
warning: unknown warning option '-Werror=designated-init' [-Wunknown-warning-option]
warning: unknown warning option '-Wmaybe-uninitialized'; did you mean '-Wuninitialized'? [-Wunknown-warning-option]
warning: unknown warning option '-Werror=designated-init' [-Wunknown-warning-option]
warning: unknown warning option '-Wmaybe-uninitialized'; did you mean '-Wuninitialized'? [-Wunknown-warning-option]
2 warnings generated.
  CC      drivers/staging/qcacld-3.0/../qca-wifi-host-cmn/hif/src/hif_irq_affinity.o
warning: unknown warning option '-Werror=designated-init' [-Wunknown-warning-option]
warning: unknown warning option '-Wmaybe-uninitialized'; did you mean '-Wuninitialized'? [-Wunknown-warning-option]
2 warnings generated.
2 warnings generated.
2 warnings generated.
  CC      drivers/staging/qcacld-3.0/../qca-wifi-host-cmn/hif/src/snoc/if_snoc.o
  CC      drivers/staging/qcacld-3.0/../qca-wifi-host-cmn/hif/src/ce/ce_diag.o
warning: unknown warning option '-Werror=designated-init' [-Wunknown-warning-option]
warning: unknown warning option '-Wmaybe-uninitialized'; did you mean '-Wuninitialized'? [-Wunknown-warning-option]
warning: unknown warning option '-Werror=designated-init' [-Wunknown-warning-option]
warning: unknown warning option '-Wmaybe-uninitialized'; did you mean '-Wuninitialized'? [-Wunknown-warning-option]
  CC      drivers/staging/qcacld-3.0/../qca-wifi-host-cmn/hif/src/ce/ce_main.o
warning: unknown warning option '-Werror=designated-init' [-Wunknown-warning-option]
warning: unknown warning option '-Wmaybe-uninitialized'; did you mean '-Wuninitialized'? [-Wunknown-warning-option]
2 warnings generated.
  CC      drivers/staging/qcacld-3.0/../qca-wifi-host-cmn/hif/src/ce/ce_service.o
warning: unknown warning option '-Werror=designated-init' [-Wunknown-warning-option]
warning: unknown warning option '-Wmaybe-uninitialized'; did you mean '-Wuninitialized'? [-Wunknown-warning-option]
2 warnings generated.
2 warnings generated.
../drivers/staging/qcacld-3.0/../qca-wifi-host-cmn/hif/src/ce/ce_main.c:2135:10: warning: implicit conversion from enumeration type 'A_STATUS' to different enumeration type 'QDF_STATUS' [-Wimplicit-enum-enum-cast]
 2135 |                 return A_ERROR;
      |                 ~~~~~~ ^~~~~~~
  CC      drivers/staging/qcacld-3.0/../qca-wifi-host-cmn/hif/src/ce/ce_tasklet.o
  CC      drivers/staging/qcacld-3.0/../qca-wifi-host-cmn/hif/src/mp_dev.o
warning: unknown warning option '-Werror=designated-init' [-Wunknown-warning-option]
warning: unknown warning option '-Wmaybe-uninitialized'; did you mean '-Wuninitialized'? [-Wunknown-warning-option]
warning: unknown warning option '-Werror=designated-init' [-Wunknown-warning-option]
warning: unknown warning option '-Wmaybe-uninitialized'; did you mean '-Wuninitialized'? [-Wunknown-warning-option]
3 warnings generated.
  CC      drivers/staging/qcacld-3.0/../qca-wifi-host-cmn/hif/src/regtable.o
warning: unknown warning option '-Werror=designated-init' [-Wunknown-warning-option]
warning: unknown warning option '-Wmaybe-uninitialized'; did you mean '-Wuninitialized'? [-Wunknown-warning-option]
2 warnings generated.
  CC      drivers/staging/qcacld-3.0/../qca-wifi-host-cmn/hif/src/ce/ce_service_legacy.o
warning: unknown warning option '-Werror=designated-init' [-Wunknown-warning-option]
warning: unknown warning option '-Wmaybe-uninitialized'; did you mean '-Wuninitialized'? [-Wunknown-warning-option]
2 warnings generated.
2 warnings generated.
  CC      drivers/staging/qcacld-3.0/../qca-wifi-host-cmn/hif/src/dispatcher/multibus_snoc.o
  CC      drivers/staging/qcacld-3.0/../qca-wifi-host-cmn/os_if/linux/wlan_osif_request_manager.o
warning: unknown warning option '-Werror=designated-init' [-Wunknown-warning-option]
warning: unknown warning option '-Wmaybe-uninitialized'; did you mean '-Wuninitialized'? [-Wunknown-warning-option]
warning: unknown warning option '-Werror=designated-init' [-Wunknown-warning-option]
warning: unknown warning option '-Wmaybe-uninitialized'; did you mean '-Wuninitialized'? [-Wunknown-warning-option]
2 warnings generated.
  CC      drivers/staging/qcacld-3.0/../qca-wifi-host-cmn/os_if/linux/crypto/src/wlan_nl_to_crypto_params.o
warning: unknown warning option '-Werror=designated-init' [-Wunknown-warning-option]
warning: unknown warning option '-Wmaybe-uninitialized'; did you mean '-Wuninitialized'? [-Wunknown-warning-option]
2 warnings generated.
  CC      drivers/staging/qcacld-3.0/../qca-wifi-host-cmn/os_if/linux/crypto/src/wlan_cfg80211_crypto.o
warning: unknown warning option '-Werror=designated-init' [-Wunknown-warning-option]
warning: unknown warning option '-Wmaybe-uninitialized'; did you mean '-Wuninitialized'? [-Wunknown-warning-option]
2 warnings generated.
  CC      drivers/staging/qcacld-3.0/../qca-wifi-host-cmn/target_if/core/src/target_if_main.o
warning: unknown warning option '-Werror=designated-init' [-Wunknown-warning-option]
warning: unknown warning option '-Wmaybe-uninitialized'; did you mean '-Wuninitialized'? [-Wunknown-warning-option]
2 warnings generated.
  CC      drivers/staging/qcacld-3.0/../qca-wifi-host-cmn/target_if/regulatory/src/target_if_reg.o
2 warnings generated.
warning: unknown warning option '-Werror=designated-init' [-Wunknown-warning-option]
warning: unknown warning option '-Wmaybe-uninitialized'; did you mean '-Wuninitialized'? [-Wunknown-warning-option]
  CC      drivers/staging/qcacld-3.0/../qca-wifi-host-cmn/target_if/regulatory/src/target_if_reg_lte.o
warning: unknown warning option '-Werror=designated-init' [-Wunknown-warning-option]
warning: unknown warning option '-Wmaybe-uninitialized'; did you mean '-Wuninitialized'? [-Wunknown-warning-option]
2 warnings generated.
  CC      drivers/staging/qcacld-3.0/../qca-wifi-host-cmn/target_if/regulatory/src/target_if_reg_11d.o
warning: unknown warning option '-Werror=designated-init' [-Wunknown-warning-option]
warning: unknown warning option '-Wmaybe-uninitialized'; did you mean '-Wuninitialized'? [-Wunknown-warning-option]
2 warnings generated.
  CC      drivers/staging/qcacld-3.0/../qca-wifi-host-cmn/target_if/init_deinit/src/init_cmd_api.o
warning: unknown warning option '-Werror=designated-init' [-Wunknown-warning-option]
warning: unknown warning option '-Wmaybe-uninitialized'; did you mean '-Wuninitialized'? [-Wunknown-warning-option]
2 warnings generated.
2 warnings generated.
  CC      drivers/staging/qcacld-3.0/../qca-wifi-host-cmn/target_if/init_deinit/src/init_deinit_lmac.o
warning: unknown warning option '-Werror=designated-init' [-Wunknown-warning-option]
warning: unknown warning option '-Wmaybe-uninitialized'; did you mean '-Wuninitialized'? [-Wunknown-warning-option]
  CC      drivers/staging/qcacld-3.0/../qca-wifi-host-cmn/target_if/init_deinit/src/init_event_handler.o
warning: unknown warning option '-Werror=designated-init' [-Wunknown-warning-option]
warning: unknown warning option '-Wmaybe-uninitialized'; did you mean '-Wuninitialized'? [-Wunknown-warning-option]
2 warnings generated.
  CC      drivers/staging/qcacld-3.0/../qca-wifi-host-cmn/target_if/init_deinit/src/service_ready_util.o
warning: unknown warning option '-Werror=designated-init' [-Wunknown-warning-option]
warning: unknown warning option '-Wmaybe-uninitialized'; did you mean '-Wuninitialized'? [-Wunknown-warning-option]
2 warnings generated.
  CC      drivers/staging/qcacld-3.0/../qca-wifi-host-cmn/target_if/mlme/vdev_mgr/src/target_if_vdev_mgr_tx_ops.o
warning: unknown warning option '-Werror=designated-init' [-Wunknown-warning-option]
warning: unknown warning option '-Wmaybe-uninitialized'; did you mean '-Wuninitialized'? [-Wunknown-warning-option]
2 warnings generated.
  CC      drivers/staging/qcacld-3.0/../qca-wifi-host-cmn/target_if/mlme/vdev_mgr/src/target_if_vdev_mgr_rx_ops.o
warning: unknown warning option '-Werror=designated-init' [-Wunknown-warning-option]
warning: unknown warning option '-Wmaybe-uninitialized'; did you mean '-Wuninitialized'? [-Wunknown-warning-option]
2 warnings generated.
  CC      drivers/staging/qcacld-3.0/../qca-wifi-host-cmn/target_if/mlme/psoc/src/target_if_psoc_timer_tx_ops.o
warning: unknown warning option '-Werror=designated-init' [-Wunknown-warning-option]
warning: unknown warning option '-Wmaybe-uninitialized'; did you mean '-Wuninitialized'? [-Wunknown-warning-option]
2 warnings generated.
  CC      drivers/staging/qcacld-3.0/../qca-wifi-host-cmn/target_if/mlme/psoc/src/target_if_psoc_wake_lock.o
warning: unknown warning option '-Werror=designated-init' [-Wunknown-warning-option]
warning: unknown warning option '-Wmaybe-uninitialized'; did you mean '-Wuninitialized'? [-Wunknown-warning-option]
2 warnings generated.
2 warnings generated.
  CC      drivers/staging/qcacld-3.0/../qca-wifi-host-cmn/target_if/crypto/src/target_if_crypto.o
warning: unknown warning option '-Werror=designated-init' [-Wunknown-warning-option]
warning: unknown warning option '-Wmaybe-uninitialized'; did you mean '-Wuninitialized'? [-Wunknown-warning-option]
  CC      drivers/staging/qcacld-3.0/components/target_if/pmo/src/target_if_pmo_arp.o
2 warnings generated.
warning: unknown warning option '-Werror=designated-init' [-Wunknown-warning-option]
warning: unknown warning option '-Wmaybe-uninitialized'; did you mean '-Wuninitialized'? [-Wunknown-warning-option]
  CC      drivers/staging/qcacld-3.0/components/target_if/pmo/src/target_if_pmo_gtk.o
warning: unknown warning option '-Werror=designated-init' [-Wunknown-warning-option]
warning: unknown warning option '-Wmaybe-uninitialized'; did you mean '-Wuninitialized'? [-Wunknown-warning-option]
2 warnings generated.
  CC      drivers/staging/qcacld-3.0/components/target_if/pmo/src/target_if_pmo_hw_filter.o
warning: unknown warning option '-Werror=designated-init' [-Wunknown-warning-option]
warning: unknown warning option '-Wmaybe-uninitialized'; did you mean '-Wuninitialized'? [-Wunknown-warning-option]
2 warnings generated.
2 warnings generated.
2 warnings generated.
  CC      drivers/staging/qcacld-3.0/components/target_if/pmo/src/target_if_pmo_lphb.o
warning: unknown warning option '-Werror=designated-init' [-Wunknown-warning-option]
warning: unknown warning option '-Wmaybe-uninitialized'; did you mean '-Wuninitialized'? [-Wunknown-warning-option]
  CC      drivers/staging/qcacld-3.0/components/target_if/pmo/src/target_if_pmo_main.o
warning: unknown warning option '-Werror=designated-init' [-Wunknown-warning-option]
warning: unknown warning option '-Wmaybe-uninitialized'; did you mean '-Wuninitialized'? [-Wunknown-warning-option]
  CC      drivers/staging/qcacld-3.0/components/target_if/pmo/src/target_if_pmo_mc_addr_filtering.o
warning: unknown warning option '-Werror=designated-init' [-Wunknown-warning-option]
warning: unknown warning option '-Wmaybe-uninitialized'; did you mean '-Wuninitialized'? [-Wunknown-warning-option]
2 warnings generated.
  CC      drivers/staging/qcacld-3.0/components/target_if/pmo/src/target_if_pmo_static_config.o
warning: unknown warning option '-Werror=designated-init' [-Wunknown-warning-option]
warning: unknown warning option '-Wmaybe-uninitialized'; did you mean '-Wuninitialized'? [-Wunknown-warning-option]
2 warnings generated.
2 warnings generated.
  CC      drivers/staging/qcacld-3.0/components/target_if/pmo/src/target_if_pmo_suspend_resume.o
  CC      drivers/staging/qcacld-3.0/components/target_if/pmo/src/target_if_pmo_wow.o
warning: unknown warning option '-Werror=designated-init' [-Wunknown-warning-option]
warning: unknown warning option '-Wmaybe-uninitialized'; did you mean '-Wuninitialized'? [-Wunknown-warning-option]
2 warnings generated.
warning: unknown warning option '-Werror=designated-init' [-Wunknown-warning-option]
warning: unknown warning option '-Wmaybe-uninitialized'; did you mean '-Wuninitialized'? [-Wunknown-warning-option]
  CC      drivers/staging/qcacld-3.0/components/target_if/pmo/src/target_if_pmo_ns.o
warning: unknown warning option '-Werror=designated-init' [-Wunknown-warning-option]
warning: unknown warning option '-Wmaybe-uninitialized'; did you mean '-Wuninitialized'? [-Wunknown-warning-option]
2 warnings generated.
  CC      drivers/staging/qcacld-3.0/components/target_if/pmo/src/target_if_pmo_pkt_filter.o
warning: unknown warning option '-Werror=designated-init' [-Wunknown-warning-option]
warning: unknown warning option '-Wmaybe-uninitialized'; did you mean '-Wuninitialized'? [-Wunknown-warning-option]
2 warnings generated.
2 warnings generated.
  CC      drivers/staging/qcacld-3.0/components/target_if/disa/src/target_if_disa.o
  CC      drivers/staging/qcacld-3.0/components/target_if/blacklist_mgr/src/target_if_blm.o
warning: unknown warning option '-Werror=designated-init' [-Wunknown-warning-option]
warning: unknown warning option '-Wmaybe-uninitialized'; did you mean '-Wuninitialized'? [-Wunknown-warning-option]
warning: unknown warning option '-Werror=designated-init' [-Wunknown-warning-option]
warning: unknown warning option '-Wmaybe-uninitialized'; did you mean '-Wuninitialized'? [-Wunknown-warning-option]
2 warnings generated.
2 warnings generated.
  CC      drivers/staging/qcacld-3.0/components/target_if/ipa/src/target_if_ipa.o
  CC      drivers/staging/qcacld-3.0/components/target_if/action_oui/src/target_if_action_oui.o
warning: unknown warning option '-Werror=designated-init' [-Wunknown-warning-option]
warning: unknown warning option '-Wmaybe-uninitialized'; did you mean '-Wuninitialized'? [-Wunknown-warning-option]
warning: unknown warning option '-Werror=designated-init' [-Wunknown-warning-option]
warning: unknown warning option '-Wmaybe-uninitialized'; did you mean '-Wuninitialized'? [-Wunknown-warning-option]
2 warnings generated.
2 warnings generated.
  CC      drivers/staging/qcacld-3.0/../qca-wifi-host-cmn/global_lmac_if/src/wlan_global_lmac_if.o
warning: unknown warning option '-Werror=designated-init' [-Wunknown-warning-option]
warning: unknown warning option '-Wmaybe-uninitialized'; did you mean '-Wuninitialized'? [-Wunknown-warning-option]
  CC      drivers/staging/qcacld-3.0/core/dp/htt/htt_tx.o
warning: unknown warning option '-Werror=designated-init' [-Wunknown-warning-option]
warning: unknown warning option '-Wmaybe-uninitialized'; did you mean '-Wuninitialized'? [-Wunknown-warning-option]
2 warnings generated.
2 warnings generated.
  CC      drivers/staging/qcacld-3.0/core/dp/htt/htt.o
  CC      drivers/staging/qcacld-3.0/core/dp/htt/htt_t2h.o
warning: unknown warning option '-Werror=designated-init' [-Wunknown-warning-option]
warning: unknown warning option '-Wmaybe-uninitialized'; did you mean '-Wuninitialized'? [-Wunknown-warning-option]
warning: unknown warning option '-Werror=designated-init' [-Wunknown-warning-option]
warning: unknown warning option '-Wmaybe-uninitialized'; did you mean '-Wuninitialized'? [-Wunknown-warning-option]
2 warnings generated.
  CC      drivers/staging/qcacld-3.0/core/dp/htt/htt_h2t.o
warning: unknown warning option '-Werror=designated-init' [-Wunknown-warning-option]
warning: unknown warning option '-Wmaybe-uninitialized'; did you mean '-Wuninitialized'? [-Wunknown-warning-option]
2 warnings generated.
  CC      drivers/staging/qcacld-3.0/core/dp/htt/htt_fw_stats.o
warning: unknown warning option '-Werror=designated-init' [-Wunknown-warning-option]
warning: unknown warning option '-Wmaybe-uninitialized'; did you mean '-Wuninitialized'? [-Wunknown-warning-option]
2 warnings generated.
  CC      drivers/staging/qcacld-3.0/core/dp/htt/htt_rx.o
warning: unknown warning option '-Werror=designated-init' [-Wunknown-warning-option]
warning: unknown warning option '-Wmaybe-uninitialized'; did you mean '-Wuninitialized'? [-Wunknown-warning-option]
2 warnings generated.
  CC      drivers/staging/qcacld-3.0/core/dp/htt/htt_rx_ll.o
warning: unknown warning option '-Werror=designated-init' [-Wunknown-warning-option]
warning: unknown warning option '-Wmaybe-uninitialized'; did you mean '-Wuninitialized'? [-Wunknown-warning-option]
../drivers/staging/qcacld-3.0/core/dp/htt/htt_h2t.c:631:10: warning: implicit conversion from enumeration type 'A_STATUS' to different enumeration type 'QDF_STATUS' [-Wimplicit-enum-enum-cast]
  631 |                 return A_ERROR; /* failure */
      |                 ~~~~~~ ^~~~~~~
../drivers/staging/qcacld-3.0/core/dp/htt/htt_h2t.c:647:10: warning: implicit conversion from enumeration type 'A_STATUS' to different enumeration type 'QDF_STATUS' [-Wimplicit-enum-enum-cast]
  647 |                 return A_ERROR; /* failure */
      |                 ~~~~~~ ^~~~~~~
4 warnings generated.
  CC      drivers/staging/qcacld-3.0/../qca-wifi-host-cmn/umac/dfs/core/src/misc/dfs.o
warning: unknown warning option '-Werror=designated-init' [-Wunknown-warning-option]
warning: unknown warning option '-Wmaybe-uninitialized'; did you mean '-Wuninitialized'? [-Wunknown-warning-option]
2 warnings generated.
  CC      drivers/staging/qcacld-3.0/../qca-wifi-host-cmn/umac/dfs/core/src/misc/dfs_cac.o
warning: unknown warning option '-Werror=designated-init' [-Wunknown-warning-option]
warning: unknown warning option '-Wmaybe-uninitialized'; did you mean '-Wuninitialized'? [-Wunknown-warning-option]
2 warnings generated.
  CC      drivers/staging/qcacld-3.0/../qca-wifi-host-cmn/umac/dfs/core/src/misc/dfs_nol.o
warning: unknown warning option '-Werror=designated-init' [-Wunknown-warning-option]
warning: unknown warning option '-Wmaybe-uninitialized'; did you mean '-Wuninitialized'? [-Wunknown-warning-option]
2 warnings generated.
  CC      drivers/staging/qcacld-3.0/../qca-wifi-host-cmn/umac/dfs/core/src/misc/dfs_random_chan_sel.o
2 warnings generated.
warning: unknown warning option '-Werror=designated-init' [-Wunknown-warning-option]
warning: unknown warning option '-Wmaybe-uninitialized'; did you mean '-Wuninitialized'? [-Wunknown-warning-option]
  CC      drivers/staging/qcacld-3.0/../qca-wifi-host-cmn/umac/dfs/core/src/misc/dfs_process_radar_found_ind.o
warning: unknown warning option '-Werror=designated-init' [-Wunknown-warning-option]
warning: unknown warning option '-Wmaybe-uninitialized'; did you mean '-Wuninitialized'? [-Wunknown-warning-option]
2 warnings generated.
  CC      drivers/staging/qcacld-3.0/../qca-wifi-host-cmn/umac/dfs/dispatcher/src/wlan_dfs_init_deinit_api.o
warning: unknown warning option '-Werror=designated-init' [-Wunknown-warning-option]
warning: unknown warning option '-Wmaybe-uninitialized'; did you mean '-Wuninitialized'? [-Wunknown-warning-option]
2 warnings generated.
  CC      drivers/staging/qcacld-3.0/../qca-wifi-host-cmn/umac/dfs/dispatcher/src/wlan_dfs_lmac_api.o
warning: unknown warning option '-Werror=designated-init' [-Wunknown-warning-option]
warning: unknown warning option '-Wmaybe-uninitialized'; did you mean '-Wuninitialized'? [-Wunknown-warning-option]
2 warnings generated.
2 warnings generated.
  CC      drivers/staging/qcacld-3.0/../qca-wifi-host-cmn/umac/dfs/dispatcher/src/wlan_dfs_mlme_api.o
  CC      drivers/staging/qcacld-3.0/../qca-wifi-host-cmn/umac/dfs/dispatcher/src/wlan_dfs_tgt_api.o
warning: unknown warning option '-Werror=designated-init' [-Wunknown-warning-option]
warning: unknown warning option '-Wmaybe-uninitialized'; did you mean '-Wuninitialized'? [-Wunknown-warning-option]
warning: unknown warning option '-Werror=designated-init' [-Wunknown-warning-option]
warning: unknown warning option '-Wmaybe-uninitialized'; did you mean '-Wuninitialized'? [-Wunknown-warning-option]
2 warnings generated.
  CC      drivers/staging/qcacld-3.0/../qca-wifi-host-cmn/umac/dfs/dispatcher/src/wlan_dfs_ucfg_api.o
warning: unknown warning option '-Werror=designated-init' [-Wunknown-warning-option]
warning: unknown warning option '-Wmaybe-uninitialized'; did you mean '-Wuninitialized'? [-Wunknown-warning-option]
2 warnings generated.
  CC      drivers/staging/qcacld-3.0/../qca-wifi-host-cmn/umac/dfs/dispatcher/src/wlan_dfs_utils_api.o
warning: unknown warning option '-Werror=designated-init' [-Wunknown-warning-option]
warning: unknown warning option '-Wmaybe-uninitialized'; did you mean '-Wuninitialized'? [-Wunknown-warning-option]
2 warnings generated.
2 warnings generated.
  CC      drivers/staging/qcacld-3.0/../qca-wifi-host-cmn/target_if/dfs/src/target_if_dfs.o
2 warnings generated.
warning: unknown warning option '-Werror=designated-init' [-Wunknown-warning-option]
warning: unknown warning option '-Wmaybe-uninitialized'; did you mean '-Wuninitialized'? [-Wunknown-warning-option]
  CC      drivers/staging/qcacld-3.0/../qca-wifi-host-cmn/target_if/dfs/src/target_if_dfs_partial_offload.o
warning: unknown warning option '-Werror=designated-init' [-Wunknown-warning-option]
warning: unknown warning option '-Wmaybe-uninitialized'; did you mean '-Wuninitialized'? [-Wunknown-warning-option]
  CC      drivers/staging/qcacld-3.0/../qca-wifi-host-cmn/umac/dfs/core/src/filtering/dfs_fcc_bin5.o
warning: unknown warning option '-Werror=designated-init' [-Wunknown-warning-option]
warning: unknown warning option '-Wmaybe-uninitialized'; did you mean '-Wuninitialized'? [-Wunknown-warning-option]
2 warnings generated.
  CC      drivers/staging/qcacld-3.0/../qca-wifi-host-cmn/umac/dfs/core/src/filtering/dfs_bindetects.o
warning: unknown warning option '-Werror=designated-init' [-Wunknown-warning-option]
warning: unknown warning option '-Wmaybe-uninitialized'; did you mean '-Wuninitialized'? [-Wunknown-warning-option]
2 warnings generated.
2 warnings generated.
2 warnings generated.
  CC      drivers/staging/qcacld-3.0/../qca-wifi-host-cmn/umac/dfs/core/src/filtering/dfs_init.o
  CC      drivers/staging/qcacld-3.0/../qca-wifi-host-cmn/umac/dfs/core/src/filtering/dfs_misc.o
warning: unknown warning option '-Werror=designated-init' [-Wunknown-warning-option]
warning: unknown warning option '-Wmaybe-uninitialized'; did you mean '-Wuninitialized'? [-Wunknown-warning-option]
warning: unknown warning option '-Werror=designated-init' [-Wunknown-warning-option]
warning: unknown warning option '-Wmaybe-uninitialized'; did you mean '-Wuninitialized'? [-Wunknown-warning-option]
  CC      drivers/staging/qcacld-3.0/../qca-wifi-host-cmn/umac/dfs/core/src/filtering/dfs_phyerr_tlv.o
warning: unknown warning option '-Werror=designated-init' [-Wunknown-warning-option]
warning: unknown warning option '-Wmaybe-uninitialized'; did you mean '-Wuninitialized'? [-Wunknown-warning-option]
2 warnings generated.
  CC      drivers/staging/qcacld-3.0/../qca-wifi-host-cmn/umac/dfs/core/src/filtering/dfs_process_phyerr.o
warning: unknown warning option '-Werror=designated-init' [-Wunknown-warning-option]
warning: unknown warning option '-Wmaybe-uninitialized'; did you mean '-Wuninitialized'? [-Wunknown-warning-option]
2 warnings generated.
2 warnings generated.
  CC      drivers/staging/qcacld-3.0/../qca-wifi-host-cmn/umac/dfs/core/src/filtering/dfs_process_radarevent.o
2 warnings generated.
warning: unknown warning option '-Werror=designated-init' [-Wunknown-warning-option]
warning: unknown warning option '-Wmaybe-uninitialized'; did you mean '-Wuninitialized'? [-Wunknown-warning-option]
  CC      drivers/staging/qcacld-3.0/../qca-wifi-host-cmn/umac/dfs/core/src/filtering/dfs_staggered.o
warning: unknown warning option '-Werror=designated-init' [-Wunknown-warning-option]
warning: unknown warning option '-Wmaybe-uninitialized'; did you mean '-Wuninitialized'? [-Wunknown-warning-option]
  CC      drivers/staging/qcacld-3.0/../qca-wifi-host-cmn/umac/dfs/core/src/filtering/dfs_radar.o
warning: unknown warning option '-Werror=designated-init' [-Wunknown-warning-option]
warning: unknown warning option '-Wmaybe-uninitialized'; did you mean '-Wuninitialized'? [-Wunknown-warning-option]
2 warnings generated.
  CC      drivers/staging/qcacld-3.0/../qca-wifi-host-cmn/umac/dfs/core/src/filtering/dfs_partial_offload_radar.o
warning: unknown warning option '-Werror=designated-init' [-Wunknown-warning-option]
warning: unknown warning option '-Wmaybe-uninitialized'; did you mean '-Wuninitialized'? [-Wunknown-warning-option]
2 warnings generated.
  CC      drivers/staging/qcacld-3.0/../qca-wifi-host-cmn/umac/dfs/core/src/misc/dfs_filter_init.o
2 warnings generated.
warning: unknown warning option '-Werror=designated-init' [-Wunknown-warning-option]
warning: unknown warning option '-Wmaybe-uninitialized'; did you mean '-Wuninitialized'? [-Wunknown-warning-option]
  CC      drivers/staging/qcacld-3.0/../qca-wifi-host-cmn/umac/cmn_services/obj_mgr/src/wlan_objmgr_global_obj.o
warning: unknown warning option '-Werror=designated-init' [-Wunknown-warning-option]
warning: unknown warning option '-Wmaybe-uninitialized'; did you mean '-Wuninitialized'? [-Wunknown-warning-option]
2 warnings generated.
  CC      drivers/staging/qcacld-3.0/../qca-wifi-host-cmn/umac/cmn_services/obj_mgr/src/wlan_objmgr_pdev_obj.o
warning: unknown warning option '-Werror=designated-init' [-Wunknown-warning-option]
warning: unknown warning option '-Wmaybe-uninitialized'; did you mean '-Wuninitialized'? [-Wunknown-warning-option]
2 warnings generated.
  CC      drivers/staging/qcacld-3.0/../qca-wifi-host-cmn/umac/cmn_services/obj_mgr/src/wlan_objmgr_peer_obj.o
warning: unknown warning option '-Werror=designated-init' [-Wunknown-warning-option]
warning: unknown warning option '-Wmaybe-uninitialized'; did you mean '-Wuninitialized'? [-Wunknown-warning-option]
2 warnings generated.
  CC      drivers/staging/qcacld-3.0/../qca-wifi-host-cmn/umac/cmn_services/obj_mgr/src/wlan_objmgr_psoc_obj.o
2 warnings generated.
warning: unknown warning option '-Werror=designated-init' [-Wunknown-warning-option]
warning: unknown warning option '-Wmaybe-uninitialized'; did you mean '-Wuninitialized'? [-Wunknown-warning-option]
  CC      drivers/staging/qcacld-3.0/../qca-wifi-host-cmn/umac/cmn_services/obj_mgr/src/wlan_objmgr_vdev_obj.o
warning: unknown warning option '-Werror=designated-init' [-Wunknown-warning-option]
warning: unknown warning option '-Wmaybe-uninitialized'; did you mean '-Wuninitialized'? [-Wunknown-warning-option]
2 warnings generated.
  CC      drivers/staging/qcacld-3.0/../qca-wifi-host-cmn/umac/wifi_pos/src/wifi_pos_api.o
warning: unknown warning option '-Werror=designated-init' [-Wunknown-warning-option]
warning: unknown warning option '-Wmaybe-uninitialized'; did you mean '-Wuninitialized'? [-Wunknown-warning-option]
2 warnings generated.
  CC      drivers/staging/qcacld-3.0/../qca-wifi-host-cmn/umac/wifi_pos/src/wifi_pos_main.o
warning: unknown warning option '-Werror=designated-init' [-Wunknown-warning-option]
warning: unknown warning option '-Wmaybe-uninitialized'; did you mean '-Wuninitialized'? [-Wunknown-warning-option]
2 warnings generated.
2 warnings generated.
  CC      drivers/staging/qcacld-3.0/../qca-wifi-host-cmn/umac/wifi_pos/src/wifi_pos_ucfg.o
2 warnings generated.
warning: unknown warning option '-Werror=designated-init' [-Wunknown-warning-option]
warning: unknown warning option '-Wmaybe-uninitialized'; did you mean '-Wuninitialized'? [-Wunknown-warning-option]
  CC      drivers/staging/qcacld-3.0/../qca-wifi-host-cmn/umac/wifi_pos/src/wifi_pos_utils.o
  CC      drivers/staging/qcacld-3.0/../qca-wifi-host-cmn/os_if/linux/wifi_pos/src/os_if_wifi_pos.o
warning: unknown warning option '-Werror=designated-init' [-Wunknown-warning-option]
warning: unknown warning option '-Wmaybe-uninitialized'; did you mean '-Wuninitialized'? [-Wunknown-warning-option]
warning: unknown warning option '-Werror=designated-init' [-Wunknown-warning-option]
warning: unknown warning option '-Wmaybe-uninitialized'; did you mean '-Wuninitialized'? [-Wunknown-warning-option]
2 warnings generated.
  CC      drivers/staging/qcacld-3.0/../qca-wifi-host-cmn/target_if/wifi_pos/src/target_if_wifi_pos.o
warning: unknown warning option '-Werror=designated-init' [-Wunknown-warning-option]
warning: unknown warning option '-Wmaybe-uninitialized'; did you mean '-Wuninitialized'? [-Wunknown-warning-option]
2 warnings generated.
  CC      drivers/staging/qcacld-3.0/../qca-wifi-host-cmn/target_if/cp_stats/src/target_if_mc_cp_stats.o
warning: unknown warning option '-Werror=designated-init' [-Wunknown-warning-option]
warning: unknown warning option '-Wmaybe-uninitialized'; did you mean '-Wuninitialized'? [-Wunknown-warning-option]
2 warnings generated.
  CC      drivers/staging/qcacld-3.0/../qca-wifi-host-cmn/umac/cp_stats/core/src/wlan_cp_stats_comp_handler.o
warning: unknown warning option '-Werror=designated-init' [-Wunknown-warning-option]
warning: unknown warning option '-Wmaybe-uninitialized'; did you mean '-Wuninitialized'? [-Wunknown-warning-option]
2 warnings generated.
  CC      drivers/staging/qcacld-3.0/../qca-wifi-host-cmn/umac/cp_stats/core/src/wlan_cp_stats_obj_mgr_handler.o
warning: unknown warning option '-Werror=designated-init' [-Wunknown-warning-option]
warning: unknown warning option '-Wmaybe-uninitialized'; did you mean '-Wuninitialized'? [-Wunknown-warning-option]
2 warnings generated.
  CC      drivers/staging/qcacld-3.0/../qca-wifi-host-cmn/umac/cp_stats/core/src/wlan_cp_stats_ol_api.o
warning: unknown warning option '-Werror=designated-init' [-Wunknown-warning-option]
warning: unknown warning option '-Wmaybe-uninitialized'; did you mean '-Wuninitialized'? [-Wunknown-warning-option]
2 warnings generated.
  CC      drivers/staging/qcacld-3.0/../qca-wifi-host-cmn/os_if/linux/cp_stats/src/wlan_cfg80211_mc_cp_stats.o
warning: unknown warning option '-Werror=designated-init' [-Wunknown-warning-option]
warning: unknown warning option '-Wmaybe-uninitialized'; did you mean '-Wuninitialized'? [-Wunknown-warning-option]
2 warnings generated.
2 warnings generated.
  CC      drivers/staging/qcacld-3.0/../qca-wifi-host-cmn/umac/cp_stats/dispatcher/src/wlan_cp_stats_utils_api.o
  CC      drivers/staging/qcacld-3.0/../qca-wifi-host-cmn/umac/cp_stats/dispatcher/src/wlan_cp_stats_mc_tgt_api.o
warning: unknown warning option '-Werror=designated-init' [-Wunknown-warning-option]
warning: unknown warning option '-Wmaybe-uninitialized'; did you mean '-Wuninitialized'? [-Wunknown-warning-option]
warning: unknown warning option '-Werror=designated-init' [-Wunknown-warning-option]
warning: unknown warning option '-Wmaybe-uninitialized'; did you mean '-Wuninitialized'? [-Wunknown-warning-option]
2 warnings generated.
  CC      drivers/staging/qcacld-3.0/../qca-wifi-host-cmn/umac/cp_stats/dispatcher/src/wlan_cp_stats_mc_ucfg_api.o
warning: unknown warning option '-Werror=designated-init' [-Wunknown-warning-option]
warning: unknown warning option '-Wmaybe-uninitialized'; did you mean '-Wuninitialized'? [-Wunknown-warning-option]
2 warnings generated.
  CC      drivers/staging/qcacld-3.0/components/target_if/interop_issues_ap/src/target_if_interop_issues_ap.o
warning: unknown warning option '-Werror=designated-init' [-Wunknown-warning-option]
warning: unknown warning option '-Wmaybe-uninitialized'; did you mean '-Wuninitialized'? [-Wunknown-warning-option]
2 warnings generated.
  CC      drivers/staging/qcacld-3.0/components/interop_issues_ap/core/src/wlan_interop_issues_ap_api.o
warning: unknown warning option '-Werror=designated-init' [-Wunknown-warning-option]
warning: unknown warning option '-Wmaybe-uninitialized'; did you mean '-Wuninitialized'? [-Wunknown-warning-option]
2 warnings generated.
  CC      drivers/staging/qcacld-3.0/os_if/interop_issues_ap/src/wlan_cfg80211_interop_issues_ap.o
warning: unknown warning option '-Werror=designated-init' [-Wunknown-warning-option]
warning: unknown warning option '-Wmaybe-uninitialized'; did you mean '-Wuninitialized'? [-Wunknown-warning-option]
2 warnings generated.
  CC      drivers/staging/qcacld-3.0/components/interop_issues_ap/dispatcher/src/wlan_interop_issues_ap_tgt_api.o
warning: unknown warning option '-Werror=designated-init' [-Wunknown-warning-option]
warning: unknown warning option '-Wmaybe-uninitialized'; did you mean '-Wuninitialized'? [-Wunknown-warning-option]
2 warnings generated.
2 warnings generated.
  CC      drivers/staging/qcacld-3.0/components/interop_issues_ap/dispatcher/src/wlan_interop_issues_ap_ucfg_api.o
warning: unknown warning option '-Werror=designated-init' [-Wunknown-warning-option]
warning: unknown warning option '-Wmaybe-uninitialized'; did you mean '-Wuninitialized'? [-Wunknown-warning-option]
  CC      drivers/staging/qcacld-3.0/components/nan/core/src/nan_main.o
warning: unknown warning option '-Werror=designated-init' [-Wunknown-warning-option]
warning: unknown warning option '-Wmaybe-uninitialized'; did you mean '-Wuninitialized'? [-Wunknown-warning-option]
2 warnings generated.
2 warnings generated.
  CC      drivers/staging/qcacld-3.0/components/nan/core/src/nan_api.o
  CC      drivers/staging/qcacld-3.0/components/nan/dispatcher/src/nan_ucfg_api.o
warning: unknown warning option '-Werror=designated-init' [-Wunknown-warning-option]
warning: unknown warning option '-Wmaybe-uninitialized'; did you mean '-Wuninitialized'? [-Wunknown-warning-option]
warning: unknown warning option '-Werror=designated-init' [-Wunknown-warning-option]
warning: unknown warning option '-Wmaybe-uninitialized'; did you mean '-Wuninitialized'? [-Wunknown-warning-option]
2 warnings generated.
  CC      drivers/staging/qcacld-3.0/components/nan/dispatcher/src/cfg_nan.o
warning: unknown warning option '-Werror=designated-init' [-Wunknown-warning-option]
warning: unknown warning option '-Wmaybe-uninitialized'; did you mean '-Wuninitialized'? [-Wunknown-warning-option]
2 warnings generated.
  CC      drivers/staging/qcacld-3.0/components/target_if/nan/src/target_if_nan.o
warning: unknown warning option '-Werror=designated-init' [-Wunknown-warning-option]
warning: unknown warning option '-Wmaybe-uninitialized'; did you mean '-Wuninitialized'? [-Wunknown-warning-option]
2 warnings generated.
  CC      drivers/staging/qcacld-3.0/os_if/nan/src/os_if_nan.o
2 warnings generated.
warning: unknown warning option '-Werror=designated-init' [-Wunknown-warning-option]
warning: unknown warning option '-Wmaybe-uninitialized'; did you mean '-Wuninitialized'? [-Wunknown-warning-option]
  CC      drivers/staging/qcacld-3.0/../qca-wifi-host-cmn/umac/cmn_services/mgmt_txrx/core/src/wlan_mgmt_txrx_main.o
warning: unknown warning option '-Werror=designated-init' [-Wunknown-warning-option]
warning: unknown warning option '-Wmaybe-uninitialized'; did you mean '-Wuninitialized'? [-Wunknown-warning-option]
2 warnings generated.
  CC      drivers/staging/qcacld-3.0/../qca-wifi-host-cmn/umac/cmn_services/mgmt_txrx/dispatcher/src/wlan_mgmt_txrx_utils_api.o
warning: unknown warning option '-Werror=designated-init' [-Wunknown-warning-option]
warning: unknown warning option '-Wmaybe-uninitialized'; did you mean '-Wuninitialized'? [-Wunknown-warning-option]
2 warnings generated.
  CC      drivers/staging/qcacld-3.0/../qca-wifi-host-cmn/umac/cmn_services/mgmt_txrx/dispatcher/src/wlan_mgmt_txrx_tgt_api.o
warning: unknown warning option '-Werror=designated-init' [-Wunknown-warning-option]
warning: unknown warning option '-Wmaybe-uninitialized'; did you mean '-Wuninitialized'? [-Wunknown-warning-option]
2 warnings generated.
  CC      drivers/staging/qcacld-3.0/components/tdls/core/src/wlan_tdls_main.o
warning: unknown warning option '-Werror=designated-init' [-Wunknown-warning-option]
warning: unknown warning option '-Wmaybe-uninitialized'; did you mean '-Wuninitialized'? [-Wunknown-warning-option]
2 warnings generated.
2 warnings generated.
  CC      drivers/staging/qcacld-3.0/components/tdls/core/src/wlan_tdls_cmds_process.o
warning: unknown warning option '-Werror=designated-init' [-Wunknown-warning-option]
warning: unknown warning option '-Wmaybe-uninitialized'; did you mean '-Wuninitialized'? [-Wunknown-warning-option]
  CC      drivers/staging/qcacld-3.0/components/tdls/core/src/wlan_tdls_peer.o
2 warnings generated.
warning: unknown warning option '-Werror=designated-init' [-Wunknown-warning-option]
warning: unknown warning option '-Wmaybe-uninitialized'; did you mean '-Wuninitialized'? [-Wunknown-warning-option]
  CC      drivers/staging/qcacld-3.0/components/tdls/core/src/wlan_tdls_mgmt.o
warning: unknown warning option '-Werror=designated-init' [-Wunknown-warning-option]
warning: unknown warning option '-Wmaybe-uninitialized'; did you mean '-Wuninitialized'? [-Wunknown-warning-option]
2 warnings generated.
  CC      drivers/staging/qcacld-3.0/components/tdls/core/src/wlan_tdls_ct.o
warning: unknown warning option '-Werror=designated-init' [-Wunknown-warning-option]
warning: unknown warning option '-Wmaybe-uninitialized'; did you mean '-Wuninitialized'? [-Wunknown-warning-option]
2 warnings generated.
  CC      drivers/staging/qcacld-3.0/components/tdls/dispatcher/src/wlan_tdls_tgt_api.o
warning: unknown warning option '-Werror=designated-init' [-Wunknown-warning-option]
warning: unknown warning option '-Wmaybe-uninitialized'; did you mean '-Wuninitialized'? [-Wunknown-warning-option]
2 warnings generated.
2 warnings generated.
  CC      drivers/staging/qcacld-3.0/components/tdls/dispatcher/src/wlan_tdls_ucfg_api.o
  CC      drivers/staging/qcacld-3.0/components/tdls/dispatcher/src/wlan_tdls_utils_api.o
warning: unknown warning option '-Werror=designated-init' [-Wunknown-warning-option]
warning: unknown warning option '-Wmaybe-uninitialized'; did you mean '-Wuninitialized'? [-Wunknown-warning-option]
warning: unknown warning option '-Werror=designated-init' [-Wunknown-warning-option]
warning: unknown warning option '-Wmaybe-uninitialized'; did you mean '-Wuninitialized'? [-Wunknown-warning-option]
2 warnings generated.
  CC      drivers/staging/qcacld-3.0/components/tdls/dispatcher/src/wlan_tdls_cfg.o
warning: unknown warning option '-Werror=designated-init' [-Wunknown-warning-option]
warning: unknown warning option '-Wmaybe-uninitialized'; did you mean '-Wuninitialized'? [-Wunknown-warning-option]
2 warnings generated.
  CC      drivers/staging/qcacld-3.0/os_if/tdls/src/wlan_cfg80211_tdls.o
warning: unknown warning option '-Werror=designated-init' [-Wunknown-warning-option]
warning: unknown warning option '-Wmaybe-uninitialized'; did you mean '-Wuninitialized'? [-Wunknown-warning-option]
2 warnings generated.
  CC      drivers/staging/qcacld-3.0/components/target_if/tdls/src/target_if_tdls.o
warning: unknown warning option '-Werror=designated-init' [-Wunknown-warning-option]
warning: unknown warning option '-Wmaybe-uninitialized'; did you mean '-Wuninitialized'? [-Wunknown-warning-option]
2 warnings generated.
  CC      drivers/staging/qcacld-3.0/components/pmo/core/src/wlan_pmo_main.o
warning: unknown warning option '-Werror=designated-init' [-Wunknown-warning-option]
warning: unknown warning option '-Wmaybe-uninitialized'; did you mean '-Wuninitialized'? [-Wunknown-warning-option]
2 warnings generated.
  CC      drivers/staging/qcacld-3.0/components/pmo/core/src/wlan_pmo_apf.o
warning: unknown warning option '-Werror=designated-init' [-Wunknown-warning-option]
warning: unknown warning option '-Wmaybe-uninitialized'; did you mean '-Wuninitialized'? [-Wunknown-warning-option]
2 warnings generated.
  CC      drivers/staging/qcacld-3.0/components/pmo/core/src/wlan_pmo_arp.o
warning: unknown warning option '-Werror=designated-init' [-Wunknown-warning-option]
warning: unknown warning option '-Wmaybe-uninitialized'; did you mean '-Wuninitialized'? [-Wunknown-warning-option]
2 warnings generated.
  CC      drivers/staging/qcacld-3.0/components/pmo/core/src/wlan_pmo_gtk.o
warning: unknown warning option '-Werror=designated-init' [-Wunknown-warning-option]
warning: unknown warning option '-Wmaybe-uninitialized'; did you mean '-Wuninitialized'? [-Wunknown-warning-option]
2 warnings generated.
2 warnings generated.
  CC      drivers/staging/qcacld-3.0/components/pmo/core/src/wlan_pmo_mc_addr_filtering.o
  CC      drivers/staging/qcacld-3.0/components/pmo/core/src/wlan_pmo_static_config.o
warning: unknown warning option '-Werror=designated-init' [-Wunknown-warning-option]
warning: unknown warning option '-Wmaybe-uninitialized'; did you mean '-Wuninitialized'? [-Wunknown-warning-option]
warning: unknown warning option '-Werror=designated-init' [-Wunknown-warning-option]
warning: unknown warning option '-Wmaybe-uninitialized'; did you mean '-Wuninitialized'? [-Wunknown-warning-option]
2 warnings generated.
  CC      drivers/staging/qcacld-3.0/components/pmo/core/src/wlan_pmo_wow.o
2 warnings generated.
warning: unknown warning option '-Werror=designated-init' [-Wunknown-warning-option]
warning: unknown warning option '-Wmaybe-uninitialized'; did you mean '-Wuninitialized'? [-Wunknown-warning-option]
  CC      drivers/staging/qcacld-3.0/components/pmo/core/src/wlan_pmo_lphb.o
warning: unknown warning option '-Werror=designated-init' [-Wunknown-warning-option]
warning: unknown warning option '-Wmaybe-uninitialized'; did you mean '-Wuninitialized'? [-Wunknown-warning-option]
2 warnings generated.
2 warnings generated.
  CC      drivers/staging/qcacld-3.0/components/pmo/core/src/wlan_pmo_suspend_resume.o
  CC      drivers/staging/qcacld-3.0/components/pmo/core/src/wlan_pmo_hw_filter.o
warning: unknown warning option '-Werror=designated-init' [-Wunknown-warning-option]
warning: unknown warning option '-Wmaybe-uninitialized'; did you mean '-Wuninitialized'? [-Wunknown-warning-option]
warning: unknown warning option '-Werror=designated-init' [-Wunknown-warning-option]
warning: unknown warning option '-Wmaybe-uninitialized'; did you mean '-Wuninitialized'? [-Wunknown-warning-option]
2 warnings generated.
2 warnings generated.
  CC      drivers/staging/qcacld-3.0/components/pmo/dispatcher/src/wlan_pmo_obj_mgmt_api.o
warning: unknown warning option '-Werror=designated-init' [-Wunknown-warning-option]
warning: unknown warning option '-Wmaybe-uninitialized'; did you mean '-Wuninitialized'? [-Wunknown-warning-option]
  CC      drivers/staging/qcacld-3.0/components/pmo/dispatcher/src/wlan_pmo_ucfg_api.o
warning: unknown warning option '-Werror=designated-init' [-Wunknown-warning-option]
warning: unknown warning option '-Wmaybe-uninitialized'; did you mean '-Wuninitialized'? [-Wunknown-warning-option]
2 warnings generated.
  CC      drivers/staging/qcacld-3.0/components/pmo/dispatcher/src/wlan_pmo_tgt_arp.o
warning: unknown warning option '-Werror=designated-init' [-Wunknown-warning-option]
warning: unknown warning option '-Wmaybe-uninitialized'; did you mean '-Wuninitialized'? [-Wunknown-warning-option]
2 warnings generated.
  CC      drivers/staging/qcacld-3.0/components/pmo/dispatcher/src/wlan_pmo_tgt_gtk.o
warning: unknown warning option '-Werror=designated-init' [-Wunknown-warning-option]
warning: unknown warning option '-Wmaybe-uninitialized'; did you mean '-Wuninitialized'? [-Wunknown-warning-option]
2 warnings generated.
  CC      drivers/staging/qcacld-3.0/components/pmo/dispatcher/src/wlan_pmo_tgt_wow.o
warning: unknown warning option '-Werror=designated-init' [-Wunknown-warning-option]
warning: unknown warning option '-Wmaybe-uninitialized'; did you mean '-Wuninitialized'? [-Wunknown-warning-option]
2 warnings generated.
  CC      drivers/staging/qcacld-3.0/components/pmo/dispatcher/src/wlan_pmo_tgt_static_config.o
2 warnings generated.
warning: unknown warning option '-Werror=designated-init' [-Wunknown-warning-option]
warning: unknown warning option '-Wmaybe-uninitialized'; did you mean '-Wuninitialized'? [-Wunknown-warning-option]
  CC      drivers/staging/qcacld-3.0/components/pmo/dispatcher/src/wlan_pmo_tgt_mc_addr_filtering.o
warning: unknown warning option '-Werror=designated-init' [-Wunknown-warning-option]
warning: unknown warning option '-Wmaybe-uninitialized'; did you mean '-Wuninitialized'? [-Wunknown-warning-option]
2 warnings generated.
  CC      drivers/staging/qcacld-3.0/components/pmo/dispatcher/src/wlan_pmo_tgt_lphb.o
warning: unknown warning option '-Werror=designated-init' [-Wunknown-warning-option]
warning: unknown warning option '-Wmaybe-uninitialized'; did you mean '-Wuninitialized'? [-Wunknown-warning-option]
2 warnings generated.
  CC      drivers/staging/qcacld-3.0/components/pmo/dispatcher/src/wlan_pmo_tgt_suspend_resume.o
warning: unknown warning option '-Werror=designated-init' [-Wunknown-warning-option]
warning: unknown warning option '-Wmaybe-uninitialized'; did you mean '-Wuninitialized'? [-Wunknown-warning-option]
2 warnings generated.
2 warnings generated.
  CC      drivers/staging/qcacld-3.0/components/pmo/dispatcher/src/wlan_pmo_tgt_hw_filter.o
  CC      drivers/staging/qcacld-3.0/components/pmo/core/src/wlan_pmo_pkt_filter.o
warning: unknown warning option '-Werror=designated-init' [-Wunknown-warning-option]
warning: unknown warning option '-Wmaybe-uninitialized'; did you mean '-Wuninitialized'? [-Wunknown-warning-option]
warning: unknown warning option '-Werror=designated-init' [-Wunknown-warning-option]
warning: unknown warning option '-Wmaybe-uninitialized'; did you mean '-Wuninitialized'? [-Wunknown-warning-option]
2 warnings generated.
  CC      drivers/staging/qcacld-3.0/components/pmo/dispatcher/src/wlan_pmo_tgt_pkt_filter.o
warning: unknown warning option '-Werror=designated-init' [-Wunknown-warning-option]
warning: unknown warning option '-Wmaybe-uninitialized'; did you mean '-Wuninitialized'? [-Wunknown-warning-option]
2 warnings generated.
  CC      drivers/staging/qcacld-3.0/components/pmo/core/src/wlan_pmo_ns.o
warning: unknown warning option '-Werror=designated-init' [-Wunknown-warning-option]
warning: unknown warning option '-Wmaybe-uninitialized'; did you mean '-Wuninitialized'? [-Wunknown-warning-option]
2 warnings generated.
2 warnings generated.
  CC      drivers/staging/qcacld-3.0/components/pmo/dispatcher/src/wlan_pmo_tgt_ns.o
  CC      drivers/staging/qcacld-3.0/components/p2p/dispatcher/src/wlan_p2p_ucfg_api.o
warning: unknown warning option '-Werror=designated-init' [-Wunknown-warning-option]
warning: unknown warning option '-Wmaybe-uninitialized'; did you mean '-Wuninitialized'? [-Wunknown-warning-option]
warning: unknown warning option '-Werror=designated-init' [-Wunknown-warning-option]
warning: unknown warning option '-Wmaybe-uninitialized'; did you mean '-Wuninitialized'? [-Wunknown-warning-option]
2 warnings generated.
  CC      drivers/staging/qcacld-3.0/components/p2p/dispatcher/src/wlan_p2p_tgt_api.o
warning: unknown warning option '-Werror=designated-init' [-Wunknown-warning-option]
warning: unknown warning option '-Wmaybe-uninitialized'; did you mean '-Wuninitialized'? [-Wunknown-warning-option]
2 warnings generated.
  CC      drivers/staging/qcacld-3.0/components/p2p/dispatcher/src/wlan_p2p_cfg.o
warning: unknown warning option '-Werror=designated-init' [-Wunknown-warning-option]
warning: unknown warning option '-Wmaybe-uninitialized'; did you mean '-Wuninitialized'? [-Wunknown-warning-option]
2 warnings generated.
  CC      drivers/staging/qcacld-3.0/components/p2p/dispatcher/src/wlan_p2p_api.o
2 warnings generated.
warning: unknown warning option '-Werror=designated-init' [-Wunknown-warning-option]
warning: unknown warning option '-Wmaybe-uninitialized'; did you mean '-Wuninitialized'? [-Wunknown-warning-option]
  CC      drivers/staging/qcacld-3.0/components/p2p/core/src/wlan_p2p_main.o
warning: unknown warning option '-Werror=designated-init' [-Wunknown-warning-option]
warning: unknown warning option '-Wmaybe-uninitialized'; did you mean '-Wuninitialized'? [-Wunknown-warning-option]
2 warnings generated.
  CC      drivers/staging/qcacld-3.0/components/p2p/core/src/wlan_p2p_roc.o
warning: unknown warning option '-Werror=designated-init' [-Wunknown-warning-option]
warning: unknown warning option '-Wmaybe-uninitialized'; did you mean '-Wuninitialized'? [-Wunknown-warning-option]
2 warnings generated.
  CC      drivers/staging/qcacld-3.0/components/p2p/core/src/wlan_p2p_off_chan_tx.o
2 warnings generated.
warning: unknown warning option '-Werror=designated-init' [-Wunknown-warning-option]
warning: unknown warning option '-Wmaybe-uninitialized'; did you mean '-Wuninitialized'? [-Wunknown-warning-option]
  CC      drivers/staging/qcacld-3.0/os_if/p2p/src/wlan_cfg80211_p2p.o
warning: unknown warning option '-Werror=designated-init' [-Wunknown-warning-option]
warning: unknown warning option '-Wmaybe-uninitialized'; did you mean '-Wuninitialized'? [-Wunknown-warning-option]
2 warnings generated.
  CC      drivers/staging/qcacld-3.0/components/target_if/p2p/src/target_if_p2p.o
warning: unknown warning option '-Werror=designated-init' [-Wunknown-warning-option]
warning: unknown warning option '-Wmaybe-uninitialized'; did you mean '-Wuninitialized'? [-Wunknown-warning-option]
2 warnings generated.
  CC      drivers/staging/qcacld-3.0/components/cmn_services/policy_mgr/src/wlan_policy_mgr_action.o
warning: unknown warning option '-Werror=designated-init' [-Wunknown-warning-option]
warning: unknown warning option '-Wmaybe-uninitialized'; did you mean '-Wuninitialized'? [-Wunknown-warning-option]
2 warnings generated.
  CC      drivers/staging/qcacld-3.0/components/cmn_services/policy_mgr/src/wlan_policy_mgr_core.o
warning: unknown warning option '-Werror=designated-init' [-Wunknown-warning-option]
warning: unknown warning option '-Wmaybe-uninitialized'; did you mean '-Wuninitialized'? [-Wunknown-warning-option]
2 warnings generated.
  CC      drivers/staging/qcacld-3.0/components/cmn_services/policy_mgr/src/wlan_policy_mgr_get_set_utils.o
warning: unknown warning option '-Werror=designated-init' [-Wunknown-warning-option]
warning: unknown warning option '-Wmaybe-uninitialized'; did you mean '-Wuninitialized'? [-Wunknown-warning-option]
2 warnings generated.
  CC      drivers/staging/qcacld-3.0/components/cmn_services/policy_mgr/src/wlan_policy_mgr_init_deinit.o
warning: unknown warning option '-Werror=designated-init' [-Wunknown-warning-option]
warning: unknown warning option '-Wmaybe-uninitialized'; did you mean '-Wuninitialized'? [-Wunknown-warning-option]
2 warnings generated.
  CC      drivers/staging/qcacld-3.0/components/cmn_services/policy_mgr/src/wlan_policy_mgr_ucfg.o
warning: unknown warning option '-Werror=designated-init' [-Wunknown-warning-option]
warning: unknown warning option '-Wmaybe-uninitialized'; did you mean '-Wuninitialized'? [-Wunknown-warning-option]
2 warnings generated.
  CC      drivers/staging/qcacld-3.0/components/cmn_services/policy_mgr/src/wlan_policy_mgr_pcl.o
warning: unknown warning option '-Werror=designated-init' [-Wunknown-warning-option]
warning: unknown warning option '-Wmaybe-uninitialized'; did you mean '-Wuninitialized'? [-Wunknown-warning-option]
2 warnings generated.
  CC      drivers/staging/qcacld-3.0/../qca-wifi-host-cmn/utils/nlink/src/wlan_nlink_srv.o
warning: unknown warning option '-Werror=designated-init' [-Wunknown-warning-option]
warning: unknown warning option '-Wmaybe-uninitialized'; did you mean '-Wuninitialized'? [-Wunknown-warning-option]
2 warnings generated.
  CC      drivers/staging/qcacld-3.0/../qca-wifi-host-cmn/utils/ptt/src/wlan_ptt_sock_svc.o
warning: unknown warning option '-Werror=designated-init' [-Wunknown-warning-option]
warning: unknown warning option '-Wmaybe-uninitialized'; did you mean '-Wuninitialized'? [-Wunknown-warning-option]
2 warnings generated.
  CC      drivers/staging/qcacld-3.0/../qca-wifi-host-cmn/umac/cmn_services/serialization/src/wlan_serialization_main.o
warning: unknown warning option '-Werror=designated-init' [-Wunknown-warning-option]
warning: unknown warning option '-Wmaybe-uninitialized'; did you mean '-Wuninitialized'? [-Wunknown-warning-option]
2 warnings generated.
  CC      drivers/staging/qcacld-3.0/../qca-wifi-host-cmn/umac/cmn_services/serialization/src/wlan_serialization_api.o
warning: unknown warning option '-Werror=designated-init' [-Wunknown-warning-option]
warning: unknown warning option '-Wmaybe-uninitialized'; did you mean '-Wuninitialized'? [-Wunknown-warning-option]
2 warnings generated.
2 warnings generated.
  CC      drivers/staging/qcacld-3.0/../qca-wifi-host-cmn/umac/cmn_services/serialization/src/wlan_serialization_utils.o
warning: unknown warning option '-Werror=designated-init' [-Wunknown-warning-option]
warning: unknown warning option '-Wmaybe-uninitialized'; did you mean '-Wuninitialized'? [-Wunknown-warning-option]
  CC      drivers/staging/qcacld-3.0/../qca-wifi-host-cmn/umac/cmn_services/serialization/src/wlan_serialization_legacy_api.o
warning: unknown warning option '-Werror=designated-init' [-Wunknown-warning-option]
warning: unknown warning option '-Wmaybe-uninitialized'; did you mean '-Wuninitialized'? [-Wunknown-warning-option]
2 warnings generated.
  CC      drivers/staging/qcacld-3.0/../qca-wifi-host-cmn/umac/cmn_services/serialization/src/wlan_serialization_rules.o
warning: unknown warning option '-Werror=designated-init' [-Wunknown-warning-option]
warning: unknown warning option '-Wmaybe-uninitialized'; did you mean '-Wuninitialized'? [-Wunknown-warning-option]
2 warnings generated.
  CC      drivers/staging/qcacld-3.0/../qca-wifi-host-cmn/umac/cmn_services/serialization/src/wlan_serialization_internal.o
warning: unknown warning option '-Werror=designated-init' [-Wunknown-warning-option]
warning: unknown warning option '-Wmaybe-uninitialized'; did you mean '-Wuninitialized'? [-Wunknown-warning-option]
2 warnings generated.
2 warnings generated.
  CC      drivers/staging/qcacld-3.0/../qca-wifi-host-cmn/umac/cmn_services/serialization/src/wlan_serialization_non_scan.o
warning: unknown warning option '-Werror=designated-init' [-Wunknown-warning-option]
warning: unknown warning option '-Wmaybe-uninitialized'; did you mean '-Wuninitialized'? [-Wunknown-warning-option]
  CC      drivers/staging/qcacld-3.0/../qca-wifi-host-cmn/umac/cmn_services/serialization/src/wlan_serialization_queue.o
warning: unknown warning option '-Werror=designated-init' [-Wunknown-warning-option]
warning: unknown warning option '-Wmaybe-uninitialized'; did you mean '-Wuninitialized'? [-Wunknown-warning-option]
2 warnings generated.
  CC      drivers/staging/qcacld-3.0/../qca-wifi-host-cmn/umac/cmn_services/serialization/src/wlan_serialization_scan.o
warning: unknown warning option '-Werror=designated-init' [-Wunknown-warning-option]
warning: unknown warning option '-Wmaybe-uninitialized'; did you mean '-Wuninitialized'? [-Wunknown-warning-option]
2 warnings generated.
  CC      drivers/staging/qcacld-3.0/core/pld/src/pld_common.o
warning: unknown warning option '-Werror=designated-init' [-Wunknown-warning-option]
warning: unknown warning option '-Wmaybe-uninitialized'; did you mean '-Wuninitialized'? [-Wunknown-warning-option]
2 warnings generated.
2 warnings generated.
  CC      drivers/staging/qcacld-3.0/core/pld/src/pld_snoc.o
  CC      drivers/staging/qcacld-3.0/../qca-wifi-host-cmn/umac/cmn_services/sm_engine/src/wlan_sm_engine.o
warning: unknown warning option '-Werror=designated-init' [-Wunknown-warning-option]
warning: unknown warning option '-Wmaybe-uninitialized'; did you mean '-Wuninitialized'? [-Wunknown-warning-option]
warning: unknown warning option '-Werror=designated-init' [-Wunknown-warning-option]
warning: unknown warning option '-Wmaybe-uninitialized'; did you mean '-Wuninitialized'? [-Wunknown-warning-option]
2 warnings generated.
  CC      drivers/staging/qcacld-3.0/../qca-wifi-host-cmn/umac/mlme/mlme_objmgr/dispatcher/src/wlan_vdev_mlme_main.o
warning: unknown warning option '-Werror=designated-init' [-Wunknown-warning-option]
warning: unknown warning option '-Wmaybe-uninitialized'; did you mean '-Wuninitialized'? [-Wunknown-warning-option]
2 warnings generated.
  CC      drivers/staging/qcacld-3.0/../qca-wifi-host-cmn/umac/mlme/vdev_mgr/core/src/vdev_mlme_sm.o
warning: unknown warning option '-Werror=designated-init' [-Wunknown-warning-option]
warning: unknown warning option '-Wmaybe-uninitialized'; did you mean '-Wuninitialized'? [-Wunknown-warning-option]
2 warnings generated.
  CC      drivers/staging/qcacld-3.0/../qca-wifi-host-cmn/umac/mlme/vdev_mgr/dispatcher/src/wlan_vdev_mlme_api.o
warning: unknown warning option '-Werror=designated-init' [-Wunknown-warning-option]
warning: unknown warning option '-Wmaybe-uninitialized'; did you mean '-Wuninitialized'? [-Wunknown-warning-option]
2 warnings generated.
  CC      drivers/staging/qcacld-3.0/../qca-wifi-host-cmn/umac/mlme/vdev_mgr/core/src/vdev_mgr_ops.o
warning: unknown warning option '-Werror=designated-init' [-Wunknown-warning-option]
warning: unknown warning option '-Wmaybe-uninitialized'; did you mean '-Wuninitialized'? [-Wunknown-warning-option]
2 warnings generated.
  CC      drivers/staging/qcacld-3.0/../qca-wifi-host-cmn/umac/mlme/vdev_mgr/dispatcher/src/wlan_vdev_mgr_tgt_if_rx_api.o
warning: unknown warning option '-Werror=designated-init' [-Wunknown-warning-option]
warning: unknown warning option '-Wmaybe-uninitialized'; did you mean '-Wuninitialized'? [-Wunknown-warning-option]
2 warnings generated.
  CC      drivers/staging/qcacld-3.0/../qca-wifi-host-cmn/umac/mlme/vdev_mgr/dispatcher/src/wlan_vdev_mgr_tgt_if_tx_api.o
warning: unknown warning option '-Werror=designated-init' [-Wunknown-warning-option]
warning: unknown warning option '-Wmaybe-uninitialized'; did you mean '-Wuninitialized'? [-Wunknown-warning-option]
2 warnings generated.
  CC      drivers/staging/qcacld-3.0/../qca-wifi-host-cmn/umac/mlme/vdev_mgr/dispatcher/src/wlan_vdev_mgr_ucfg_api.o
warning: unknown warning option '-Werror=designated-init' [-Wunknown-warning-option]
warning: unknown warning option '-Wmaybe-uninitialized'; did you mean '-Wuninitialized'? [-Wunknown-warning-option]
2 warnings generated.
  CC      drivers/staging/qcacld-3.0/../qca-wifi-host-cmn/umac/mlme/vdev_mgr/dispatcher/src/wlan_vdev_mgr_utils_api.o
warning: unknown warning option '-Werror=designated-init' [-Wunknown-warning-option]
warning: unknown warning option '-Wmaybe-uninitialized'; did you mean '-Wuninitialized'? [-Wunknown-warning-option]
2 warnings generated.
  CC      drivers/staging/qcacld-3.0/../qca-wifi-host-cmn/umac/mlme/mlme_objmgr/dispatcher/src/wlan_cmn_mlme_main.o
warning: unknown warning option '-Werror=designated-init' [-Wunknown-warning-option]
warning: unknown warning option '-Wmaybe-uninitialized'; did you mean '-Wuninitialized'? [-Wunknown-warning-option]
2 warnings generated.
  CC      drivers/staging/qcacld-3.0/../qca-wifi-host-cmn/umac/mlme/mlme_objmgr/dispatcher/src/wlan_pdev_mlme_main.o
2 warnings generated.
warning: unknown warning option '-Werror=designated-init' [-Wunknown-warning-option]
warning: unknown warning option '-Wmaybe-uninitialized'; did you mean '-Wuninitialized'? [-Wunknown-warning-option]
  CC      drivers/staging/qcacld-3.0/../qca-wifi-host-cmn/umac/mlme/pdev_mgr/dispatcher/src/wlan_pdev_mlme_api.o
warning: unknown warning option '-Werror=designated-init' [-Wunknown-warning-option]
warning: unknown warning option '-Wmaybe-uninitialized'; did you mean '-Wuninitialized'? [-Wunknown-warning-option]
2 warnings generated.
  CC      drivers/staging/qcacld-3.0/../qca-wifi-host-cmn/umac/mlme/mlme_objmgr/dispatcher/src/wlan_psoc_mlme_main.o
warning: unknown warning option '-Werror=designated-init' [-Wunknown-warning-option]
warning: unknown warning option '-Wmaybe-uninitialized'; did you mean '-Wuninitialized'? [-Wunknown-warning-option]
2 warnings generated.
  CC      drivers/staging/qcacld-3.0/../qca-wifi-host-cmn/umac/mlme/psoc_mgr/dispatcher/src/wlan_psoc_mlme_api.o
warning: unknown warning option '-Werror=designated-init' [-Wunknown-warning-option]
warning: unknown warning option '-Wmaybe-uninitialized'; did you mean '-Wuninitialized'? [-Wunknown-warning-option]
2 warnings generated.
  CC      drivers/staging/qcacld-3.0/components/mlme/core/src/wlan_mlme_main.o
warning: unknown warning option '-Werror=designated-init' [-Wunknown-warning-option]
warning: unknown warning option '-Wmaybe-uninitialized'; did you mean '-Wuninitialized'? [-Wunknown-warning-option]
2 warnings generated.
  CC      drivers/staging/qcacld-3.0/components/mlme/dispatcher/src/wlan_mlme_api.o
warning: unknown warning option '-Werror=designated-init' [-Wunknown-warning-option]
warning: unknown warning option '-Wmaybe-uninitialized'; did you mean '-Wuninitialized'? [-Wunknown-warning-option]
2 warnings generated.
  CC      drivers/staging/qcacld-3.0/components/mlme/dispatcher/src/wlan_mlme_ucfg_api.o
warning: unknown warning option '-Werror=designated-init' [-Wunknown-warning-option]
warning: unknown warning option '-Wmaybe-uninitialized'; did you mean '-Wuninitialized'? [-Wunknown-warning-option]
2 warnings generated.
  CC      drivers/staging/qcacld-3.0/components/mlme/core/src/wlan_mlme_vdev_mgr_interface.o
warning: unknown warning option '-Werror=designated-init' [-Wunknown-warning-option]
warning: unknown warning option '-Wmaybe-uninitialized'; did you mean '-Wuninitialized'? [-Wunknown-warning-option]
2 warnings generated.
  CC      drivers/staging/qcacld-3.0/components/fw_offload/core/src/wlan_fw_offload_main.o
warning: unknown warning option '-Werror=designated-init' [-Wunknown-warning-option]
warning: unknown warning option '-Wmaybe-uninitialized'; did you mean '-Wuninitialized'? [-Wunknown-warning-option]
2 warnings generated.
  CC      drivers/staging/qcacld-3.0/components/fw_offload/dispatcher/src/wlan_fwol_ucfg_api.o
warning: unknown warning option '-Werror=designated-init' [-Wunknown-warning-option]
warning: unknown warning option '-Wmaybe-uninitialized'; did you mean '-Wuninitialized'? [-Wunknown-warning-option]
2 warnings generated.
2 warnings generated.
  CC      drivers/staging/qcacld-3.0/components/fw_offload/dispatcher/src/wlan_fwol_tgt_api.o
warning: unknown warning option '-Werror=designated-init' [-Wunknown-warning-option]
warning: unknown warning option '-Wmaybe-uninitialized'; did you mean '-Wuninitialized'? [-Wunknown-warning-option]
  CC      drivers/staging/qcacld-3.0/components/target_if/fw_offload/src/target_if_fwol.o
warning: unknown warning option '-Werror=designated-init' [-Wunknown-warning-option]
warning: unknown warning option '-Wmaybe-uninitialized'; did you mean '-Wuninitialized'? [-Wunknown-warning-option]
2 warnings generated.
  CC      drivers/staging/qcacld-3.0/os_if/fw_offload/src/os_if_fwol.o
2 warnings generated.
warning: unknown warning option '-Werror=designated-init' [-Wunknown-warning-option]
warning: unknown warning option '-Wmaybe-uninitialized'; did you mean '-Wuninitialized'? [-Wunknown-warning-option]
  CC      drivers/staging/qcacld-3.0/components/blacklist_mgr/core/src/wlan_blm_main.o
warning: unknown warning option '-Werror=designated-init' [-Wunknown-warning-option]
warning: unknown warning option '-Wmaybe-uninitialized'; did you mean '-Wuninitialized'? [-Wunknown-warning-option]
2 warnings generated.
2 warnings generated.
  CC      drivers/staging/qcacld-3.0/components/blacklist_mgr/core/src/wlan_blm_core.o
  CC      drivers/staging/qcacld-3.0/components/blacklist_mgr/dispatcher/src/wlan_blm_ucfg_api.o
warning: unknown warning option '-Werror=designated-init' [-Wunknown-warning-option]
warning: unknown warning option '-Wmaybe-uninitialized'; did you mean '-Wuninitialized'? [-Wunknown-warning-option]
warning: unknown warning option '-Werror=designated-init' [-Wunknown-warning-option]
warning: unknown warning option '-Wmaybe-uninitialized'; did you mean '-Wuninitialized'? [-Wunknown-warning-option]
2 warnings generated.
2 warnings generated.
  CC      drivers/staging/qcacld-3.0/components/blacklist_mgr/dispatcher/src/wlan_blm_tgt_api.o
2 warnings generated.
2 warnings generated.
  CC      drivers/staging/qcacld-3.0/components/ipa/dispatcher/src/wlan_ipa_ucfg_api.o
warning: unknown warning option '-Werror=designated-init' [-Wunknown-warning-option]
warning: unknown warning option '-Wmaybe-uninitialized'; did you mean '-Wuninitialized'? [-Wunknown-warning-option]
warning: unknown warning option '-Werror=designated-init' [-Wunknown-warning-option]
warning: unknown warning option '-Wmaybe-uninitialized'; did you mean '-Wuninitialized'? [-Wunknown-warning-option]
  CC      drivers/staging/qcacld-3.0/components/ipa/dispatcher/src/wlan_ipa_obj_mgmt_api.o
warning: unknown warning option '-Werror=designated-init' [-Wunknown-warning-option]
warning: unknown warning option '-Wmaybe-uninitialized'; did you mean '-Wuninitialized'? [-Wunknown-warning-option]
  CC      drivers/staging/qcacld-3.0/components/ipa/dispatcher/src/wlan_ipa_tgt_api.o
warning: unknown warning option '-Werror=designated-init' [-Wunknown-warning-option]
warning: unknown warning option '-Wmaybe-uninitialized'; did you mean '-Wuninitialized'? [-Wunknown-warning-option]
2 warnings generated.
  CC      drivers/staging/qcacld-3.0/components/ipa/core/src/wlan_ipa_main.o
2 warnings generated.
warning: unknown warning option '-Werror=designated-init' [-Wunknown-warning-option]
warning: unknown warning option '-Wmaybe-uninitialized'; did you mean '-Wuninitialized'? [-Wunknown-warning-option]
2 warnings generated.
  CC      drivers/staging/qcacld-3.0/components/ipa/core/src/wlan_ipa_core.o
warning: unknown warning option '-Werror=designated-init' [-Wunknown-warning-option]
warning: unknown warning option '-Wmaybe-uninitialized'; did you mean '-Wuninitialized'? [-Wunknown-warning-option]
  CC      drivers/staging/qcacld-3.0/components/ipa/core/src/wlan_ipa_stats.o
warning: unknown warning option '-Werror=designated-init' [-Wunknown-warning-option]
warning: unknown warning option '-Wmaybe-uninitialized'; did you mean '-Wuninitialized'? [-Wunknown-warning-option]
2 warnings generated.
  CC      drivers/staging/qcacld-3.0/components/ipa/core/src/wlan_ipa_rm.o
warning: unknown warning option '-Werror=designated-init' [-Wunknown-warning-option]
warning: unknown warning option '-Wmaybe-uninitialized'; did you mean '-Wuninitialized'? [-Wunknown-warning-option]
2 warnings generated.
2 warnings generated.
  CC      drivers/staging/qcacld-3.0/components/disa/core/src/wlan_disa_main.o
  CC      drivers/staging/qcacld-3.0/components/disa/dispatcher/src/wlan_disa_obj_mgmt_api.o
warning: unknown warning option '-Werror=designated-init' [-Wunknown-warning-option]
warning: unknown warning option '-Wmaybe-uninitialized'; did you mean '-Wuninitialized'? [-Wunknown-warning-option]
warning: unknown warning option '-Werror=designated-init' [-Wunknown-warning-option]
warning: unknown warning option '-Wmaybe-uninitialized'; did you mean '-Wuninitialized'? [-Wunknown-warning-option]
2 warnings generated.
  CC      drivers/staging/qcacld-3.0/components/disa/dispatcher/src/wlan_disa_tgt_api.o
warning: unknown warning option '-Werror=designated-init' [-Wunknown-warning-option]
warning: unknown warning option '-Wmaybe-uninitialized'; did you mean '-Wuninitialized'? [-Wunknown-warning-option]
2 warnings generated.
  CC      drivers/staging/qcacld-3.0/components/disa/dispatcher/src/wlan_disa_ucfg_api.o
warning: unknown warning option '-Werror=designated-init' [-Wunknown-warning-option]
warning: unknown warning option '-Wmaybe-uninitialized'; did you mean '-Wuninitialized'? [-Wunknown-warning-option]
2 warnings generated.
2 warnings generated.
  CC      drivers/staging/qcacld-3.0/components/action_oui/core/src/wlan_action_oui_main.o
warning: unknown warning option '-Werror=designated-init' [-Wunknown-warning-option]
warning: unknown warning option '-Wmaybe-uninitialized'; did you mean '-Wuninitialized'? [-Wunknown-warning-option]
  CC      drivers/staging/qcacld-3.0/components/action_oui/core/src/wlan_action_oui_parse.o
warning: unknown warning option '-Werror=designated-init' [-Wunknown-warning-option]
warning: unknown warning option '-Wmaybe-uninitialized'; did you mean '-Wuninitialized'? [-Wunknown-warning-option]
2 warnings generated.
  CC      drivers/staging/qcacld-3.0/components/action_oui/dispatcher/src/wlan_action_oui_tgt_api.o
warning: unknown warning option '-Werror=designated-init' [-Wunknown-warning-option]
warning: unknown warning option '-Wmaybe-uninitialized'; did you mean '-Wuninitialized'? [-Wunknown-warning-option]
2 warnings generated.
  CC      drivers/staging/qcacld-3.0/components/action_oui/dispatcher/src/wlan_action_oui_ucfg_api.o
warning: unknown warning option '-Werror=designated-init' [-Wunknown-warning-option]
warning: unknown warning option '-Wmaybe-uninitialized'; did you mean '-Wuninitialized'? [-Wunknown-warning-option]
2 warnings generated.
2 warnings generated.
  CC      drivers/staging/qcacld-3.0/../qca-wifi-host-cmn/umac/global_umac_dispatcher/lmac_if/src/wlan_lmac_if.o
2 warnings generated.
warning: unknown warning option '-Werror=designated-init' [-Wunknown-warning-option]
warning: unknown warning option '-Wmaybe-uninitialized'; did you mean '-Wuninitialized'? [-Wunknown-warning-option]
  CC      drivers/staging/qcacld-3.0/../qca-wifi-host-cmn/umac/scan/core/src/wlan_scan_cache_db.o
warning: unknown warning option '-Werror=designated-init' [-Wunknown-warning-option]
warning: unknown warning option '-Wmaybe-uninitialized'; did you mean '-Wuninitialized'? [-Wunknown-warning-option]
  CC      drivers/staging/qcacld-3.0/../qca-wifi-host-cmn/umac/scan/core/src/wlan_scan_11d.o
warning: unknown warning option '-Werror=designated-init' [-Wunknown-warning-option]
warning: unknown warning option '-Wmaybe-uninitialized'; did you mean '-Wuninitialized'? [-Wunknown-warning-option]
2 warnings generated.
  CC      drivers/staging/qcacld-3.0/../qca-wifi-host-cmn/umac/scan/core/src/wlan_scan_bss_score.o
warning: unknown warning option '-Werror=designated-init' [-Wunknown-warning-option]
warning: unknown warning option '-Wmaybe-uninitialized'; did you mean '-Wuninitialized'? [-Wunknown-warning-option]
2 warnings generated.
  CC      drivers/staging/qcacld-3.0/../qca-wifi-host-cmn/umac/scan/core/src/wlan_scan_filter.o
warning: unknown warning option '-Werror=designated-init' [-Wunknown-warning-option]
warning: unknown warning option '-Wmaybe-uninitialized'; did you mean '-Wuninitialized'? [-Wunknown-warning-option]
2 warnings generated.
  CC      drivers/staging/qcacld-3.0/../qca-wifi-host-cmn/umac/scan/core/src/wlan_scan_main.o
warning: unknown warning option '-Werror=designated-init' [-Wunknown-warning-option]
warning: unknown warning option '-Wmaybe-uninitialized'; did you mean '-Wuninitialized'? [-Wunknown-warning-option]
2 warnings generated.
  CC      drivers/staging/qcacld-3.0/../qca-wifi-host-cmn/umac/scan/core/src/wlan_scan_manager.o
warning: unknown warning option '-Werror=designated-init' [-Wunknown-warning-option]
warning: unknown warning option '-Wmaybe-uninitialized'; did you mean '-Wuninitialized'? [-Wunknown-warning-option]
2 warnings generated.
  CC      drivers/staging/qcacld-3.0/../qca-wifi-host-cmn/umac/scan/dispatcher/src/wlan_scan_tgt_api.o
warning: unknown warning option '-Werror=designated-init' [-Wunknown-warning-option]
warning: unknown warning option '-Wmaybe-uninitialized'; did you mean '-Wuninitialized'? [-Wunknown-warning-option]
2 warnings generated.
  CC      drivers/staging/qcacld-3.0/../qca-wifi-host-cmn/umac/scan/dispatcher/src/wlan_scan_ucfg_api.o
warning: unknown warning option '-Werror=designated-init' [-Wunknown-warning-option]
warning: unknown warning option '-Wmaybe-uninitialized'; did you mean '-Wuninitialized'? [-Wunknown-warning-option]
2 warnings generated.
  CC      drivers/staging/qcacld-3.0/../qca-wifi-host-cmn/umac/scan/dispatcher/src/wlan_scan_api.o
warning: unknown warning option '-Werror=designated-init' [-Wunknown-warning-option]
warning: unknown warning option '-Wmaybe-uninitialized'; did you mean '-Wuninitialized'? [-Wunknown-warning-option]
2 warnings generated.
  CC      drivers/staging/qcacld-3.0/../qca-wifi-host-cmn/umac/scan/dispatcher/src/wlan_scan_utils_api.o
warning: unknown warning option '-Werror=designated-init' [-Wunknown-warning-option]
warning: unknown warning option '-Wmaybe-uninitialized'; did you mean '-Wuninitialized'? [-Wunknown-warning-option]
2 warnings generated.
  CC      drivers/staging/qcacld-3.0/../qca-wifi-host-cmn/os_if/linux/scan/src/wlan_cfg80211_scan.o
warning: unknown warning option '-Werror=designated-init' [-Wunknown-warning-option]
warning: unknown warning option '-Wmaybe-uninitialized'; did you mean '-Wuninitialized'? [-Wunknown-warning-option]
2 warnings generated.
  CC      drivers/staging/qcacld-3.0/../qca-wifi-host-cmn/os_if/linux/wlan_cfg80211.o
warning: unknown warning option '-Werror=designated-init' [-Wunknown-warning-option]
warning: unknown warning option '-Wmaybe-uninitialized'; did you mean '-Wuninitialized'? [-Wunknown-warning-option]
2 warnings generated.
  CC      drivers/staging/qcacld-3.0/../qca-wifi-host-cmn/target_if/scan/src/target_if_scan.o
warning: unknown warning option '-Werror=designated-init' [-Wunknown-warning-option]
warning: unknown warning option '-Wmaybe-uninitialized'; did you mean '-Wuninitialized'? [-Wunknown-warning-option]
2 warnings generated.
  CC      drivers/staging/qcacld-3.0/../qca-wifi-host-cmn/umac/cmn_services/utils/src/wlan_utility.o
warning: unknown warning option '-Werror=designated-init' [-Wunknown-warning-option]
warning: unknown warning option '-Wmaybe-uninitialized'; did you mean '-Wuninitialized'? [-Wunknown-warning-option]
2 warnings generated.
  CC      drivers/staging/qcacld-3.0/../qca-wifi-host-cmn/spectral/core/spectral_offload.o
warning: unknown warning option '-Werror=designated-init' [-Wunknown-warning-option]
warning: unknown warning option '-Wmaybe-uninitialized'; did you mean '-Wuninitialized'? [-Wunknown-warning-option]
2 warnings generated.
  CC      drivers/staging/qcacld-3.0/../qca-wifi-host-cmn/spectral/core/spectral_common.o
warning: unknown warning option '-Werror=designated-init' [-Wunknown-warning-option]
warning: unknown warning option '-Wmaybe-uninitialized'; did you mean '-Wuninitialized'? [-Wunknown-warning-option]
2 warnings generated.
  CC      drivers/staging/qcacld-3.0/../qca-wifi-host-cmn/spectral/dispatcher/src/wlan_spectral_ucfg_api.o
warning: unknown warning option '-Werror=designated-init' [-Wunknown-warning-option]
warning: unknown warning option '-Wmaybe-uninitialized'; did you mean '-Wuninitialized'? [-Wunknown-warning-option]
2 warnings generated.
  CC      drivers/staging/qcacld-3.0/../qca-wifi-host-cmn/spectral/dispatcher/src/wlan_spectral_utils_api.o
warning: unknown warning option '-Werror=designated-init' [-Wunknown-warning-option]
warning: unknown warning option '-Wmaybe-uninitialized'; did you mean '-Wuninitialized'? [-Wunknown-warning-option]
2 warnings generated.
  CC      drivers/staging/qcacld-3.0/../qca-wifi-host-cmn/spectral/dispatcher/src/wlan_spectral_tgt_api.o
warning: unknown warning option '-Werror=designated-init' [-Wunknown-warning-option]
warning: unknown warning option '-Wmaybe-uninitialized'; did you mean '-Wuninitialized'? [-Wunknown-warning-option]
2 warnings generated.
  CC      drivers/staging/qcacld-3.0/../qca-wifi-host-cmn/os_if/linux/spectral/src/wlan_cfg80211_spectral.o
warning: unknown warning option '-Werror=designated-init' [-Wunknown-warning-option]
warning: unknown warning option '-Wmaybe-uninitialized'; did you mean '-Wuninitialized'? [-Wunknown-warning-option]
2 warnings generated.
2 warnings generated.
  CC      drivers/staging/qcacld-3.0/../qca-wifi-host-cmn/os_if/linux/spectral/src/os_if_spectral_netlink.o
warning: unknown warning option '-Werror=designated-init' [-Wunknown-warning-option]
  CC      drivers/staging/qcacld-3.0/../qca-wifi-host-cmn/target_if/spectral/target_if_spectral_netlink.o
warning: unknown warning option '-Wmaybe-uninitialized'; did you mean '-Wuninitialized'? [-Wunknown-warning-option]
2 warnings generated.
warning: unknown warning option '-Werror=designated-init' [-Wunknown-warning-option]
warning: unknown warning option '-Wmaybe-uninitialized'; did you mean '-Wuninitialized'? [-Wunknown-warning-option]
  CC      drivers/staging/qcacld-3.0/../qca-wifi-host-cmn/target_if/spectral/target_if_spectral_phyerr.o
warning: unknown warning option '-Werror=designated-init' [-Wunknown-warning-option]
warning: unknown warning option '-Wmaybe-uninitialized'; did you mean '-Wuninitialized'? [-Wunknown-warning-option]
2 warnings generated.
  CC      drivers/staging/qcacld-3.0/../qca-wifi-host-cmn/target_if/spectral/target_if_spectral.o
warning: unknown warning option '-Werror=designated-init' [-Wunknown-warning-option]
warning: unknown warning option '-Wmaybe-uninitialized'; did you mean '-Wuninitialized'? [-Wunknown-warning-option]
2 warnings generated.
  CC      drivers/staging/qcacld-3.0/../qca-wifi-host-cmn/target_if/spectral/target_if_spectral_sim.o
warning: unknown warning option '-Werror=designated-init' [-Wunknown-warning-option]
warning: unknown warning option '-Wmaybe-uninitialized'; did you mean '-Wuninitialized'? [-Wunknown-warning-option]
2 warnings generated.
  CC      drivers/staging/qcacld-3.0/../qca-wifi-host-cmn/gpio/dispatcher/src/wlan_gpio_tgt_api.o
warning: unknown warning option '-Werror=designated-init' [-Wunknown-warning-option]
warning: unknown warning option '-Wmaybe-uninitialized'; did you mean '-Wuninitialized'? [-Wunknown-warning-option]
2 warnings generated.
  CC      drivers/staging/qcacld-3.0/../qca-wifi-host-cmn/gpio/dispatcher/src/wlan_gpio_ucfg_api.o
warning: unknown warning option '-Werror=designated-init' [-Wunknown-warning-option]
warning: unknown warning option '-Wmaybe-uninitialized'; did you mean '-Wuninitialized'? [-Wunknown-warning-option]
2 warnings generated.
  CC      drivers/staging/qcacld-3.0/../qca-wifi-host-cmn/gpio/core/src/wlan_gpio_api.o
warning: unknown warning option '-Werror=designated-init' [-Wunknown-warning-option]
warning: unknown warning option '-Wmaybe-uninitialized'; did you mean '-Wuninitialized'? [-Wunknown-warning-option]
2 warnings generated.
  CC      drivers/staging/qcacld-3.0/../qca-wifi-host-cmn/os_if/linux/gpio/src/wlan_cfg80211_gpio.o
warning: unknown warning option '-Werror=designated-init' [-Wunknown-warning-option]
warning: unknown warning option '-Wmaybe-uninitialized'; did you mean '-Wuninitialized'? [-Wunknown-warning-option]
2 warnings generated.
2 warnings generated.
  CC      drivers/staging/qcacld-3.0/../qca-wifi-host-cmn/target_if/gpio/target_if_gpio.o
warning: unknown warning option '-Werror=designated-init' [-Wunknown-warning-option]
warning: unknown warning option '-Wmaybe-uninitialized'; did you mean '-Wuninitialized'? [-Wunknown-warning-option]
  CC      drivers/staging/qcacld-3.0/../qca-wifi-host-cmn/umac/green_ap/core/src/wlan_green_ap_main.o
warning: unknown warning option '-Werror=designated-init' [-Wunknown-warning-option]
warning: unknown warning option '-Wmaybe-uninitialized'; did you mean '-Wuninitialized'? [-Wunknown-warning-option]
2 warnings generated.
  CC      drivers/staging/qcacld-3.0/../qca-wifi-host-cmn/umac/green_ap/dispatcher/src/wlan_green_ap_api.o
warning: unknown warning option '-Werror=designated-init' [-Wunknown-warning-option]
warning: unknown warning option '-Wmaybe-uninitialized'; did you mean '-Wuninitialized'? [-Wunknown-warning-option]
2 warnings generated.
  CC      drivers/staging/qcacld-3.0/../qca-wifi-host-cmn/umac/green_ap/dispatcher/src/wlan_green_ap_ucfg_api.o
warning: unknown warning option '-Werror=designated-init' [-Wunknown-warning-option]
warning: unknown warning option '-Wmaybe-uninitialized'; did you mean '-Wuninitialized'? [-Wunknown-warning-option]
2 warnings generated.
  CC      drivers/staging/qcacld-3.0/../qca-wifi-host-cmn/target_if/green_ap/src/target_if_green_ap.o
2 warnings generated.
warning: unknown warning option '-Werror=designated-init' [-Wunknown-warning-option]
warning: unknown warning option '-Wmaybe-uninitialized'; did you mean '-Wuninitialized'? [-Wunknown-warning-option]
  CC      drivers/staging/qcacld-3.0/../qca-wifi-host-cmn/umac/cmn_services/crypto/src/wlan_crypto_global_api.o
warning: unknown warning option '-Werror=designated-init' [-Wunknown-warning-option]
warning: unknown warning option '-Wmaybe-uninitialized'; did you mean '-Wuninitialized'? [-Wunknown-warning-option]
2 warnings generated.
  CC      drivers/staging/qcacld-3.0/../qca-wifi-host-cmn/umac/cmn_services/crypto/src/wlan_crypto_ucfg_api.o
warning: unknown warning option '-Werror=designated-init' [-Wunknown-warning-option]
warning: unknown warning option '-Wmaybe-uninitialized'; did you mean '-Wuninitialized'? [-Wunknown-warning-option]
2 warnings generated.
  CC      drivers/staging/qcacld-3.0/../qca-wifi-host-cmn/umac/cmn_services/crypto/src/wlan_crypto_main.o
warning: unknown warning option '-Werror=designated-init' [-Wunknown-warning-option]
warning: unknown warning option '-Wmaybe-uninitialized'; did you mean '-Wuninitialized'? [-Wunknown-warning-option]
2 warnings generated.
  CC      drivers/staging/qcacld-3.0/../qca-wifi-host-cmn/umac/cmn_services/crypto/src/wlan_crypto_obj_mgr.o
warning: unknown warning option '-Werror=designated-init' [-Wunknown-warning-option]
warning: unknown warning option '-Wmaybe-uninitialized'; did you mean '-Wuninitialized'? [-Wunknown-warning-option]
2 warnings generated.
  CC      drivers/staging/qcacld-3.0/../qca-wifi-host-cmn/umac/cmn_services/crypto/src/wlan_crypto_param_handling.o
warning: unknown warning option '-Werror=designated-init' [-Wunknown-warning-option]
warning: unknown warning option '-Wmaybe-uninitialized'; did you mean '-Wuninitialized'? [-Wunknown-warning-option]
2 warnings generated.
2 warnings generated.
2 warnings generated.
2 warnings generated.
  AR      drivers/staging/qcacld-3.0/wlan.o
  AR      drivers/staging/qcacld-3.0/built-in.a
  AR      drivers/staging/built-in.a
  AR      drivers/built-in.a
make[1]: Target 'Image.gz' not remade because of errors.
make[1]: Leaving directory '/home/runner/work/Kinesis/Kinesis/out'
make: *** [Makefile:153: sub-make] Error 2
make: Target 'Image.gz' not remade because of errors.
```

