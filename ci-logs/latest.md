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
arch/arm64/configs/vendor/xiaomi/miatoll_defconfig:775:warning: override: reassigning to symbol PID_NS
arch/arm64/configs/vendor/xiaomi/miatoll_defconfig:776:warning: override: reassigning to symbol UTS_NS
arch/arm64/configs/vendor/xiaomi/miatoll_defconfig:791:warning: override: reassigning to symbol BRIDGE_NETFILTER
==> building Image.gz (4 jobs, Android (15682573, +pgo, +bolt, +lto, +mlgo, based on r596125) clang version 22.0.2 (https://android.googlesource.com/toolchain/llvm-project de03d430485c884861198b25459851f429cbdbad))
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
  WRAP    arch/arm64/include/generated/uapi/asm/ioctl.h
  UPD     include/generated/uapi/linux/version.h
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
  HOSTCC  scripts/genksyms/genksyms.o
  HOSTCC  scripts/dtc/dtc.o
  CC      scripts/mod/empty.o
warning: unknown warning option '-Werror=designated-init' [-Wunknown-warning-option]
1 warning generated.
  HOSTCC  scripts/mod/mk_elfconfig
  HOSTCC  scripts/selinux/genheaders/genheaders
  HOSTCC  scripts/dtc/flattree.o
  SHIPPED scripts/genksyms/parse.tab.c
  SHIPPED scripts/genksyms/lex.lex.c
  SHIPPED scripts/genksyms/parse.tab.h
  HOSTCC  scripts/genksyms/parse.tab.o
  HOSTCC  scripts/dtc/fstree.o
  CC      scripts/mod/devicetable-offsets.s
warning: unknown warning option '-Werror=designated-init' [-Wunknown-warning-option]
  HOSTCC  scripts/selinux/mdp/mdp
1 warning generated.
  HOSTCC  scripts/genksyms/lex.lex.o
  MKELF   scripts/mod/elfconfig.h
  HOSTCC  scripts/dtc/data.o
  CHK     scripts/mod/devicetable-offsets.h
  UPD     scripts/mod/devicetable-offsets.h
  HOSTCC  scripts/mod/sumversion.o
  HOSTCC  scripts/dtc/livetree.o
  HOSTCC  scripts/kallsyms
  HOSTCC  scripts/mod/modpost.o
  HOSTLD  scripts/genksyms/genksyms
  HOSTCC  scripts/dtc/treesource.o
  HOSTCC  scripts/pnmtologo
  HOSTCC  scripts/conmakehash
  HOSTCC  scripts/dtc/srcpos.o
  HOSTCC  scripts/dtc/checks.o
  HOSTCC  scripts/mod/file2alias.o
  HOSTCC  scripts/sortextable
  HOSTCC  scripts/dtc/util.o
  HOSTCC  scripts/asn1_compiler
  SHIPPED scripts/dtc/dtc-lexer.lex.c
  SHIPPED scripts/dtc/dtc-parser.tab.h
  SHIPPED scripts/dtc/dtc-parser.tab.c
  HOSTCC  scripts/dtc/dtc-lexer.lex.o
  HOSTLD  scripts/mod/modpost
  HOSTCC  scripts/extract-cert
  HOSTCC  scripts/dtc/dtc-parser.tab.o
  HOSTLD  scripts/dtc/dtc
  CHK     include/generated/timeconst.h
  CC      kernel/bounds.s
warning: unknown warning option '-Werror=designated-init' [-Wunknown-warning-option]
1 warning generated.
  CHK     include/generated/bounds.h
  UPD     include/generated/bounds.h
  UPD     include/generated/timeconst.h
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
  CC      init/main.o
  HOSTCC  usr/gen_init_cpio
warning: unknown warning option '-Werror=designated-init' [-Wunknown-warning-option]
  CC      arch/arm64/mm/dma-mapping.o
warning: unknown warning option '-Werror=designated-init' [-Wunknown-warning-option]
  CC      arch/arm64/kernel/debug-monitors.o
warning: unknown warning option '-Werror=designated-init' [-Wunknown-warning-option]
  GEN     usr/initramfs_data.cpio
1 warning generated.
warning: unknown warning option '-Werror=designated-init' [-Wunknown-warning-option]
1 warning generated.
  AS      arch/arm64/kernel/entry.o
1 warning generated.
  CHK     include/generated/compile.h
  UPD     include/generated/compile.h
  CC      init/do_mounts.o
1 warning generated.
  AS      usr/initramfs_data.o
  CC      arch/arm64/kernel/irq.o
warning: unknown warning option '-Werror=designated-init' [-Wunknown-warning-option]
warning: unknown warning option '-Werror=designated-init' [-Wunknown-warning-option]
warning: unknown warning option '-Werror=designated-init' [-Wunknown-warning-option]
1 warning generated.
  CC      arch/arm64/mm/extable.o
warning: unknown warning option '-Werror=designated-init' [-Wunknown-warning-option]
1 warning generated.
  CC      arch/arm64/kernel/fpsimd.o
warning: unknown warning option '-Werror=designated-init' [-Wunknown-warning-option]
1 warning generated.
  AR      usr/built-in.a
  CC      arch/arm64/mm/fault.o
warning: unknown warning option '-Werror=designated-init' [-Wunknown-warning-option]
In file included from ../init/do_mounts.c:32:
In file included from ../include/linux/nfs_fs.h:31:
In file included from ../include/linux/sunrpc/clnt.h:28:
In file included from ../include/net/ipv6.h:16:
In file included from ../include/linux/ipv6.h:87:
In file included from ../include/linux/tcp.h:23:
In file included from ../include/net/sock.h:51:
In file included from ../include/linux/netdevice.h:46:
../include/net/netprio_cgroup.h:35:21: error: no member named 'id' in 'struct cgroup'
   35 |         idx = css->cgroup->id;
      |               ~~~~~~~~~~~  ^
  CC      arch/arm64/net/bpf_jit_comp.o
warning: unknown warning option '-Werror=designated-init' [-Wunknown-warning-option]
1 warning and 1 error generated.
make[2]: *** [../scripts/Makefile.build:364: init/do_mounts.o] Error 1
make[1]: *** [/home/runner/work/Kinesis/Kinesis/Makefile:1271: init] Error 2
make[1]: *** Waiting for unfinished jobs....
  AS      arch/arm64/kernel/entry-fpsimd.o
1 warning generated.
warning: unknown warning option '-Werror=designated-init' [-Wunknown-warning-option]
  CC      arch/arm64/mm/init.o
warning: unknown warning option '-Werror=designated-init' [-Wunknown-warning-option]
1 warning generated.
1 warning generated.
In file included from ../arch/arm64/net/bpf_jit_comp.c:22:
In file included from ../include/linux/filter.h:22:
In file included from ../include/linux/if_vlan.h:15:
In file included from ../include/linux/netdevice.h:46:
../include/net/netprio_cgroup.h:35:21: error: no member named 'id' in 'struct cgroup'
   35 |         idx = css->cgroup->id;
      |               ~~~~~~~~~~~  ^
  CC      arch/arm64/kernel/process.o
  CC      arch/arm64/kernel/ptrace.o
warning: unknown warning option '-Werror=designated-init' [-Wunknown-warning-option]
warning: unknown warning option '-Werror=designated-init' [-Wunknown-warning-option]
1 warning and 1 error generated.
make[2]: *** [../scripts/Makefile.build:365: arch/arm64/net/bpf_jit_comp.o] Error 1
make[1]: *** [/home/runner/work/Kinesis/Kinesis/Makefile:1271: arch/arm64/net] Error 2
  AS      arch/arm64/mm/cache.o
  CC      arch/arm64/kernel/setup.o
warning: unknown warning option '-Werror=designated-init' [-Wunknown-warning-option]
1 warning generated.
warning: unknown warning option '-Werror=designated-init' [-Wunknown-warning-option]
1 warning generated.
1 warning generated.
  CC      arch/arm64/mm/copypage.o
warning: unknown warning option '-Werror=designated-init' [-Wunknown-warning-option]
warning: unknown warning option '-Werror=designated-init' [-Wunknown-warning-option]
1 warning generated.
1 warning generated.
warning: unknown warning option '-Werror=designated-init' [-Wunknown-warning-option]
  CC      arch/arm64/kernel/signal.o
warning: unknown warning option '-Werror=designated-init' [-Wunknown-warning-option]
1 warning generated.
warning: unknown warning option '-Werror=designated-init' [-Wunknown-warning-option]
1 warning generated.
  CC      arch/arm64/mm/flush.o
warning: unknown warning option '-Werror=designated-init' [-Wunknown-warning-option]
1 warning generated.
  CC      arch/arm64/kernel/sys.o
warning: unknown warning option '-Werror=designated-init' [-Wunknown-warning-option]
1 warning generated.
  CC      arch/arm64/mm/ioremap.o
warning: unknown warning option '-Werror=designated-init' [-Wunknown-warning-option]
1 warning generated.
warning: unknown warning option '-Werror=designated-init' [-Wunknown-warning-option]
1 warning generated.
1 warning generated.
  CC      arch/arm64/kernel/stacktrace.o
1 warning generated.
warning: unknown warning option '-Werror=designated-init' [-Wunknown-warning-option]
  CC      arch/arm64/mm/mmap.o
warning: unknown warning option '-Werror=designated-init' [-Wunknown-warning-option]
warning: unknown warning option '-Werror=designated-init' [-Wunknown-warning-option]
1 warning generated.
  CC      arch/arm64/kernel/time.o
warning: unknown warning option '-Werror=designated-init' [-Wunknown-warning-option]
1 warning generated.
  CC      arch/arm64/mm/pgd.o
warning: unknown warning option '-Werror=designated-init' [-Wunknown-warning-option]
1 warning generated.
1 warning generated.
  CC      arch/arm64/kernel/traps.o
warning: unknown warning option '-Werror=designated-init' [-Wunknown-warning-option]
warning: unknown warning option '-Werror=designated-init' [-Wunknown-warning-option]
1 warning generated.
warning: unknown warning option '-Werror=designated-init' [-Wunknown-warning-option]
1 warning generated.
  CC      arch/arm64/mm/mmu.o
1 warning generated.
warning: unknown warning option '-Werror=designated-init' [-Wunknown-warning-option]
  CC      arch/arm64/kernel/io.o
warning: unknown warning option '-Werror=designated-init' [-Wunknown-warning-option]
1 warning generated.
  CC      arch/arm64/kernel/vdso.o
warning: unknown warning option '-Werror=designated-init' [-Wunknown-warning-option]
1 warning generated.
warning: unknown warning option '-Werror=designated-init' [-Wunknown-warning-option]
1 warning generated.
1 warning generated.
  CC      arch/arm64/mm/context.o
  AS      arch/arm64/mm/proc.o
warning: unknown warning option '-Werror=designated-init' [-Wunknown-warning-option]
  AS      arch/arm64/kernel/hyp-stub.o
1 warning generated.
  CC      arch/arm64/kernel/psci.o
warning: unknown warning option '-Werror=designated-init' [-Wunknown-warning-option]
  CC      arch/arm64/mm/pageattr.o
warning: unknown warning option '-Werror=designated-init' [-Wunknown-warning-option]
1 warning generated.
  CC      arch/arm64/kernel/cpu_ops.o
warning: unknown warning option '-Werror=designated-init' [-Wunknown-warning-option]
1 warning generated.
1 warning generated.
1 warning generated.
  CC      arch/arm64/kernel/insn.o
warning: unknown warning option '-Werror=designated-init' [-Wunknown-warning-option]
warning: unknown warning option '-Werror=designated-init' [-Wunknown-warning-option]
warning: unknown warning option '-Werror=designated-init' [-Wunknown-warning-option]
1 warning generated.
  CC      arch/arm64/kernel/return_address.o
warning: unknown warning option '-Werror=designated-init' [-Wunknown-warning-option]
1 warning generated.
  CC      arch/arm64/kernel/cpuinfo.o
warning: unknown warning option '-Werror=designated-init' [-Wunknown-warning-option]
1 warning generated.
  AR      arch/arm64/mm/built-in.a
  CC      arch/arm64/kernel/cpu_errata.o
1 warning generated.
warning: unknown warning option '-Werror=designated-init' [-Wunknown-warning-option]
  CC      arch/arm64/kernel/cpufeature.o
warning: unknown warning option '-Werror=designated-init' [-Wunknown-warning-option]
1 warning generated.
warning: unknown warning option '-Werror=designated-init' [-Wunknown-warning-option]
1 warning generated.
warning: unknown warning option '-Werror=designated-init' [-Wunknown-warning-option]
1 warning generated.
1 warning generated.
  CC      arch/arm64/kernel/alternative.o
  CC      arch/arm64/kernel/cacheinfo.o
warning: warning: unknown warning option '-Werror=designated-init' [-Wunknown-warning-option]unknown warning option '-Werror=designated-init' [-Wunknown-warning-option]

1 warning generated.
  CC      arch/arm64/kernel/smp.o
warning: unknown warning option '-Werror=designated-init' [-Wunknown-warning-option]
1 warning generated.
  CC      arch/arm64/kernel/smp_spin_table.o
warning: unknown warning option '-Werror=designated-init' [-Wunknown-warning-option]
1 warning generated.
  CC      arch/arm64/kernel/topology.o
1 warning generated.
warning: unknown warning option '-Werror=designated-init' [-Wunknown-warning-option]
warning: unknown warning option '-Werror=designated-init' [-Wunknown-warning-option]
1 warning generated.
  AS      arch/arm64/kernel/smccc-call.o
1 warning generated.
1 warning generated.
1 warning generated.
  CC      arch/arm64/kernel/sys32.o
warning: unknown warning option '-Werror=designated-init' [-Wunknown-warning-option]
warning: unknown warning option '-Werror=designated-init' [-Wunknown-warning-option]
warning: unknown warning option '-Werror=designated-init' [-Wunknown-warning-option]
  AS      arch/arm64/kernel/kuser32.o
1 warning generated.
  CC      arch/arm64/kernel/signal32.o
  CC      arch/arm64/kernel/sys_compat.o
warning: unknown warning option '-Werror=designated-init' [-Wunknown-warning-option]
warning: unknown warning option '-Werror=designated-init' [-Wunknown-warning-option]
1 warning generated.
  AS      arch/arm64/kernel/entry32.o
  CC      arch/arm64/kernel/arm64ksyms.o
1 warning generated.
warning: unknown warning option '-Werror=designated-init' [-Wunknown-warning-option]
  CC      arch/arm64/kernel/module.o
warning: unknown warning option '-Werror=designated-init' [-Wunknown-warning-option]
1 warning generated.
  CC      arch/arm64/kernel/module-plts.o
warning: unknown warning option '-Werror=designated-init' [-Wunknown-warning-option]
1 warning generated.
1 warning generated.
  CC      arch/arm64/kernel/perf_regs.o
1 warning generated.
warning: unknown warning option '-Werror=designated-init' [-Wunknown-warning-option]
warning: unknown warning option '-Werror=designated-init' [-Wunknown-warning-option]
  CC      arch/arm64/kernel/perf_callchain.o
1 warning generated.
warning: unknown warning option '-Werror=designated-init' [-Wunknown-warning-option]
  CC      arch/arm64/kernel/perf_event.o
warning: unknown warning option '-Werror=designated-init' [-Wunknown-warning-option]
1 warning generated.
  CC      arch/arm64/kernel/hw_breakpoint.o
warning: unknown warning option '-Werror=designated-init' [-Wunknown-warning-option]
1 warning generated.
  AS      arch/arm64/kernel/sleep.o
1 warning generated.
  CC      arch/arm64/kernel/suspend.o
  CC      arch/arm64/kernel/cpuidle.o
warning: unknown warning option '-Werror=designated-init' [-Wunknown-warning-option]
warning: unknown warning option '-Werror=designated-init' [-Wunknown-warning-option]
1 warning generated.
  CC      arch/arm64/kernel/jump_label.o
warning: unknown warning option '-Werror=designated-init' [-Wunknown-warning-option]
1 warning generated.
  CC      arch/arm64/kernel/armv8_deprecated.o
warning: unknown warning option '-Werror=designated-init' [-Wunknown-warning-option]
1 warning generated.
  CC      arch/arm64/kernel/kaslr.o
warning: unknown warning option '-Werror=designated-init' [-Wunknown-warning-option]
1 warning generated.
1 warning generated.
  CC      arch/arm64/kernel/ssbd.o
warning: unknown warning option '-Werror=designated-init' [-Wunknown-warning-option]
  CC      arch/arm64/kernel/scs.o
warning: unknown warning option '-Werror=designated-init' [-Wunknown-warning-option]
1 warning generated.
1 warning generated.
1 warning generated.
  AS      arch/arm64/kernel/head.o
1 warning generated.
  OBJCOPY arch/arm64/kernel/vdso/vdso.so
  CC      arch/arm64/kernel/probes/uprobes.o
  AS      arch/arm64/kernel/vdso/vdso.o
warning: unknown warning option '-Werror=designated-init' [-Wunknown-warning-option]
  LDS     arch/arm64/kernel/vmlinux.lds
  CC      arch/arm64/kernel/probes/decode-insn.o
  AR      arch/arm64/kernel/vdso/built-in.a
  CC      arch/arm64/kernel/probes/simulate-insn.o
warning: unknown warning option '-Werror=designated-init' [-Wunknown-warning-option]
warning: unknown warning option '-Werror=designated-init' [-Wunknown-warning-option]
1 warning generated.
1 warning generated.
1 warning generated.
  AR      arch/arm64/kernel/probes/built-in.a
  AR      arch/arm64/kernel/built-in.a
make[1]: Leaving directory '/home/runner/work/Kinesis/Kinesis/out'
make: *** [Makefile:153: sub-make] Error 2
```

