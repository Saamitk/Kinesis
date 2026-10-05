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
==> quick check: preparing generated headers
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
  WRAP    arch/arm64/include/generated/uapi/asm/errno.h
  UPD     include/generated/uapi/linux/version.h
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
  CHK     include/generated/timeconst.h
  CC      kernel/bounds.s
  UPD     include/generated/timeconst.h
warning: unknown warning option '-Werror=designated-init' [-Wunknown-warning-option]
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
make[1]: Leaving directory '/home/runner/work/Kinesis/Kinesis/out'
make[1]: Entering directory '/home/runner/work/Kinesis/Kinesis/out'
  CHK     include/config/kernel.release
  GEN     ./Makefile
  CHK     include/generated/uapi/linux/version.h
  CHK     include/generated/utsrelease.h
  Using .. as source for kernel
  LDS     scripts/module-lto.lds
  HOSTCC  scripts/genksyms/genksyms.o
  HOSTCC  scripts/dtc/dtc.o
  CC      scripts/mod/empty.o
warning: unknown warning option '-Werror=designated-init' [-Wunknown-warning-option]
1 warning generated.
  HOSTCC  scripts/mod/mk_elfconfig
  HOSTCC  scripts/selinux/genheaders/genheaders
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
  UPD     scripts/mod/devicetable-offsets.h
  HOSTCC  scripts/mod/sumversion.o
  HOSTCC  scripts/selinux/mdp/mdp
  HOSTCC  scripts/dtc/fstree.o
  HOSTCC  scripts/genksyms/lex.lex.o
  HOSTCC  scripts/dtc/data.o
  HOSTCC  scripts/kallsyms
  HOSTCC  scripts/mod/modpost.o
  HOSTCC  scripts/dtc/livetree.o
  HOSTCC  scripts/dtc/treesource.o
  HOSTLD  scripts/genksyms/genksyms
  HOSTCC  scripts/mod/file2alias.o
  HOSTCC  scripts/pnmtologo
  HOSTCC  scripts/dtc/srcpos.o
  HOSTCC  scripts/conmakehash
  HOSTCC  scripts/dtc/checks.o
  HOSTCC  scripts/dtc/util.o
  SHIPPED scripts/dtc/dtc-lexer.lex.c
  SHIPPED scripts/dtc/dtc-parser.tab.h
  SHIPPED scripts/dtc/dtc-parser.tab.c
  HOSTCC  scripts/dtc/dtc-lexer.lex.o
  HOSTLD  scripts/mod/modpost
  HOSTCC  scripts/dtc/dtc-parser.tab.o
  HOSTCC  scripts/sortextable
  HOSTCC  scripts/asn1_compiler
  HOSTCC  scripts/extract-cert
  HOSTLD  scripts/dtc/dtc
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
-- KDIR: 
-- MDIR: /home/runner/work/Kinesis/Kinesis/KernelSU/kernel
-- KernelSU Manager signature size: 0x033b
-- KernelSU Manager signature hash: c371061b19d8c7d7d6133c6a9bafe198fa944e50c1b31c9d8daa8d7f1fc2d2d6
warning: unknown warning option '-Werror=designated-init' [-Wunknown-warning-option]
-- KernelSU/compat: iterate_dir found!
-- KernelSU/compat: f_op->read_iter found!
  CC      fs/susfs.o
warning: unknown warning option '-Werror=designated-init' [-Wunknown-warning-option]
1 warning generated.
1 warning generated.
  CC      drivers/kernelsu/ksu.o
warning: unknown warning option '-Werror=designated-init' [-Wunknown-warning-option]
warning: unknown warning option '-Wno-discarded-qualifiers'; did you mean '-Wno-ignored-qualifiers'? [-Wunknown-warning-option]
In file included from ../drivers/kernelsu/ksu.c:24:
../security/selinux/include/avc_ss.h:10:10: fatal error: 'flask.h' file not found
   10 | #include "flask.h"
      |          ^~~~~~~~~
2 warnings and 1 error generated.
make[2]: *** [../scripts/Makefile.build:365: drivers/kernelsu/ksu.o] Error 1
make[1]: *** [/home/runner/work/Kinesis/Kinesis/Makefile:1962: drivers/kernelsu/ksu.o] Error 2
make[1]: Leaving directory '/home/runner/work/Kinesis/Kinesis/out'
make: *** [Makefile:153: sub-make] Error 2
```

