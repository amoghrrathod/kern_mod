savedcmd_jack.mod.o := gcc -Wp,-MMD,./.jack.mod.o.d -nostdinc -I/usr/lib/modules/6.13.6-1-aarch64-ARCH/build/arch/arm64/include -I/usr/lib/modules/6.13.6-1-aarch64-ARCH/build/arch/arm64/include/generated -I/usr/lib/modules/6.13.6-1-aarch64-ARCH/build/include -I/usr/lib/modules/6.13.6-1-aarch64-ARCH/build/include -I/usr/lib/modules/6.13.6-1-aarch64-ARCH/build/arch/arm64/include/uapi -I/usr/lib/modules/6.13.6-1-aarch64-ARCH/build/arch/arm64/include/generated/uapi -I/usr/lib/modules/6.13.6-1-aarch64-ARCH/build/include/uapi -I/usr/lib/modules/6.13.6-1-aarch64-ARCH/build/include/generated/uapi -include /usr/lib/modules/6.13.6-1-aarch64-ARCH/build/include/linux/compiler-version.h -include /usr/lib/modules/6.13.6-1-aarch64-ARCH/build/include/linux/kconfig.h -include /usr/lib/modules/6.13.6-1-aarch64-ARCH/build/include/linux/compiler_types.h -D__KERNEL__ -mlittle-endian -DKASAN_SHADOW_SCALE_SHIFT= -std=gnu11 -fshort-wchar -funsigned-char -fno-common -fno-PIE -fno-strict-aliasing -mgeneral-regs-only -DCONFIG_CC_HAS_K_CONSTRAINT=1 -Wno-psabi -mabi=lp64 -fno-asynchronous-unwind-tables -fno-unwind-tables -mbranch-protection=pac-ret -Wa,-march=armv8.5-a -DARM64_ASM_ARCH='"armv8.5-a"' -DKASAN_SHADOW_SCALE_SHIFT= -fno-delete-null-pointer-checks -O2 -fno-allow-store-data-races -fstack-protector-strong -fno-omit-frame-pointer -fno-optimize-sibling-calls -fno-stack-clash-protection -fno-inline-functions-called-once -fmin-function-alignment=4 -fstrict-flex-arrays=3 -fno-strict-overflow -fno-stack-check -fconserve-stack -Wall -Wundef -Werror=implicit-function-declaration -Werror=implicit-int -Werror=return-type -Werror=strict-prototypes -Wno-format-security -Wno-trigraphs -Wno-frame-address -Wno-address-of-packed-member -Wmissing-declarations -Wmissing-prototypes -Wframe-larger-than=1024 -Wno-main -Wno-dangling-pointer -Wvla -Wno-pointer-sign -Wcast-function-type -Wno-stringop-overflow -Wno-array-bounds -Wno-alloc-size-larger-than -Wimplicit-fallthrough=5 -Werror=date-time -Werror=incompatible-pointer-types -Werror=designated-init -Wenum-conversion -Wextra -Wunused -Wno-unused-but-set-variable -Wno-unused-const-variable -Wno-packed-not-aligned -Wno-format-overflow -Wno-format-truncation -Wno-stringop-truncation -Wno-override-init -Wno-missing-field-initializers -Wno-type-limits -Wno-shift-negative-value -Wno-maybe-uninitialized -Wno-sign-compare -Wno-unused-parameter -mstack-protector-guard=sysreg -mstack-protector-guard-reg=sp_el0 -mstack-protector-guard-offset=1424  -DMODULE  -DKBUILD_BASENAME='"jack.mod"' -DKBUILD_MODNAME='"jack"' -D__KBUILD_MODNAME=kmod_jack -c -o jack.mod.o jack.mod.c  

source_jack.mod.o := jack.mod.c

deps_jack.mod.o := \
    $(wildcard include/config/MODULE_UNLOAD) \
  /usr/lib/modules/6.13.6-1-aarch64-ARCH/build/include/linux/compiler-version.h \
    $(wildcard include/config/CC_VERSION_TEXT) \
  /usr/lib/modules/6.13.6-1-aarch64-ARCH/build/include/linux/kconfig.h \
    $(wildcard include/config/CPU_BIG_ENDIAN) \
    $(wildcard include/config/BOOGER) \
    $(wildcard include/config/FOO) \
  /usr/lib/modules/6.13.6-1-aarch64-ARCH/build/include/linux/compiler_types.h \
    $(wildcard include/config/DEBUG_INFO_BTF) \
    $(wildcard include/config/PAHOLE_HAS_BTF_TAG) \
    $(wildcard include/config/FUNCTION_ALIGNMENT) \
    $(wildcard include/config/CC_HAS_SANE_FUNCTION_ALIGNMENT) \
    $(wildcard include/config/X86_64) \
    $(wildcard include/config/ARM64) \
    $(wildcard include/config/LD_DEAD_CODE_DATA_ELIMINATION) \
    $(wildcard include/config/LTO_CLANG) \
    $(wildcard include/config/HAVE_ARCH_COMPILER_H) \
    $(wildcard include/config/CC_HAS_COUNTED_BY) \
    $(wildcard include/config/UBSAN_SIGNED_WRAP) \
    $(wildcard include/config/CC_HAS_ASM_INLINE) \
  /usr/lib/modules/6.13.6-1-aarch64-ARCH/build/include/linux/compiler_attributes.h \
  /usr/lib/modules/6.13.6-1-aarch64-ARCH/build/include/linux/compiler-gcc.h \
    $(wildcard include/config/MITIGATION_RETPOLINE) \
    $(wildcard include/config/ARCH_USE_BUILTIN_BSWAP) \
    $(wildcard include/config/SHADOW_CALL_STACK) \
    $(wildcard include/config/KCOV) \
  /usr/lib/modules/6.13.6-1-aarch64-ARCH/build/arch/arm64/include/asm/compiler.h \
    $(wildcard include/config/ARM64_PTR_AUTH_KERNEL) \
    $(wildcard include/config/ARM64_PTR_AUTH) \
    $(wildcard include/config/BUILTIN_RETURN_ADDRESS_STRIPS_PAC) \
  /usr/lib/modules/6.13.6-1-aarch64-ARCH/build/include/linux/module.h \
    $(wildcard include/config/MODULES) \
    $(wildcard include/config/SYSFS) \
    $(wildcard include/config/MODULES_TREE_LOOKUP) \
    $(wildcard include/config/LIVEPATCH) \
    $(wildcard include/config/STACKTRACE_BUILD_ID) \
    $(wildcard include/config/ARCH_USES_CFI_TRAPS) \
    $(wildcard include/config/MODULE_SIG) \
    $(wildcard include/config/GENERIC_BUG) \
    $(wildcard include/config/KALLSYMS) \
    $(wildcard include/config/SMP) \
    $(wildcard include/config/TRACEPOINTS) \
    $(wildcard include/config/TREE_SRCU) \
    $(wildcard include/config/BPF_EVENTS) \
    $(wildcard include/config/DEBUG_INFO_BTF_MODULES) \
    $(wildcard include/config/JUMP_LABEL) \
    $(wildcard include/config/TRACING) \
    $(wildcard include/config/EVENT_TRACING) \
    $(wildcard include/config/FTRACE_MCOUNT_RECORD) \
    $(wildcard include/config/KPROBES) \
    $(wildcard include/config/HAVE_STATIC_CALL_INLINE) \
    $(wildcard include/config/KUNIT) \
    $(wildcard include/config/PRINTK_INDEX) \
    $(wildcard include/config/CONSTRUCTORS) \
    $(wildcard include/config/FUNCTION_ERROR_INJECTION) \
    $(wildcard include/config/DYNAMIC_DEBUG_CORE) \
    $(wildcard include/config/ARCH_HAS_EXECMEM_ROX) \
  /usr/lib/modules/6.13.6-1-aarch64-ARCH/build/include/linux/list.h \
    $(wildcard include/config/LIST_HARDENED) \
    $(wildcard include/config/DEBUG_LIST) \
  /usr/lib/modules/6.13.6-1-aarch64-ARCH/build/include/linux/container_of.h \
  /usr/lib/modules/6.13.6-1-aarch64-ARCH/build/include/linux/build_bug.h \
  /usr/lib/modules/6.13.6-1-aarch64-ARCH/build/include/linux/compiler.h \
    $(wildcard include/config/TRACE_BRANCH_PROFILING) \
    $(wildcard include/config/PROFILE_ALL_BRANCHES) \
    $(wildcard include/config/OBJTOOL) \
    $(wildcard include/config/64BIT) \
  /usr/lib/modules/6.13.6-1-aarch64-ARCH/build/arch/arm64/include/asm/rwonce.h \
    $(wildcard include/config/LTO) \
    $(wildcard include/config/AS_HAS_LDAPR) \
  /usr/lib/modules/6.13.6-1-aarch64-ARCH/build/include/asm-generic/rwonce.h \
  /usr/lib/modules/6.13.6-1-aarch64-ARCH/build/include/linux/kasan-checks.h \
    $(wildcard include/config/KASAN_GENERIC) \
    $(wildcard include/config/KASAN_SW_TAGS) \
  /usr/lib/modules/6.13.6-1-aarch64-ARCH/build/include/linux/types.h \
    $(wildcard include/config/HAVE_UID16) \
    $(wildcard include/config/UID16) \
    $(wildcard include/config/ARCH_DMA_ADDR_T_64BIT) \
    $(wildcard include/config/PHYS_ADDR_T_64BIT) \
    $(wildcard include/config/ARCH_32BIT_USTAT_F_TINODE) \
  /usr/lib/modules/6.13.6-1-aarch64-ARCH/build/include/uapi/linux/types.h \
  /usr/lib/modules/6.13.6-1-aarch64-ARCH/build/arch/arm64/include/generated/uapi/asm/types.h \
  /usr/lib/modules/6.13.6-1-aarch64-ARCH/build/include/uapi/asm-generic/types.h \
  /usr/lib/modules/6.13.6-1-aarch64-ARCH/build/include/asm-generic/int-ll64.h \
  /usr/lib/modules/6.13.6-1-aarch64-ARCH/build/include/uapi/asm-generic/int-ll64.h \
  /usr/lib/modules/6.13.6-1-aarch64-ARCH/build/arch/arm64/include/uapi/asm/bitsperlong.h \
  /usr/lib/modules/6.13.6-1-aarch64-ARCH/build/include/asm-generic/bitsperlong.h \
  /usr/lib/modules/6.13.6-1-aarch64-ARCH/build/include/uapi/asm-generic/bitsperlong.h \
  /usr/lib/modules/6.13.6-1-aarch64-ARCH/build/include/uapi/linux/posix_types.h \
  /usr/lib/modules/6.13.6-1-aarch64-ARCH/build/include/linux/stddef.h \
  /usr/lib/modules/6.13.6-1-aarch64-ARCH/build/include/uapi/linux/stddef.h \
  /usr/lib/modules/6.13.6-1-aarch64-ARCH/build/arch/arm64/include/uapi/asm/posix_types.h \
  /usr/lib/modules/6.13.6-1-aarch64-ARCH/build/include/uapi/asm-generic/posix_types.h \
  /usr/lib/modules/6.13.6-1-aarch64-ARCH/build/include/linux/kcsan-checks.h \
    $(wildcard include/config/KCSAN) \
    $(wildcard include/config/KCSAN_WEAK_MEMORY) \
    $(wildcard include/config/KCSAN_IGNORE_ATOMICS) \
  /usr/lib/modules/6.13.6-1-aarch64-ARCH/build/include/linux/poison.h \
    $(wildcard include/config/ILLEGAL_POINTER_VALUE) \
  /usr/lib/modules/6.13.6-1-aarch64-ARCH/build/include/linux/const.h \
  /usr/lib/modules/6.13.6-1-aarch64-ARCH/build/include/vdso/const.h \
  /usr/lib/modules/6.13.6-1-aarch64-ARCH/build/include/uapi/linux/const.h \
  /usr/lib/modules/6.13.6-1-aarch64-ARCH/build/arch/arm64/include/asm/barrier.h \
    $(wildcard include/config/ARM64_PSEUDO_NMI) \
  /usr/lib/modules/6.13.6-1-aarch64-ARCH/build/arch/arm64/include/asm/alternative-macros.h \
  /usr/lib/modules/6.13.6-1-aarch64-ARCH/build/include/vdso/bits.h \
  /usr/lib/modules/6.13.6-1-aarch64-ARCH/build/arch/arm64/include/asm/cpucaps.h \
    $(wildcard include/config/ARM64_PAN) \
    $(wildcard include/config/ARM64_EPAN) \
    $(wildcard include/config/ARM64_SVE) \
    $(wildcard include/config/ARM64_SME) \
    $(wildcard include/config/ARM64_CNP) \
    $(wildcard include/config/ARM64_MTE) \
    $(wildcard include/config/ARM64_BTI) \
    $(wildcard include/config/ARM64_TLB_RANGE) \
    $(wildcard include/config/ARM64_POE) \
    $(wildcard include/config/ARM64_GCS) \
    $(wildcard include/config/UNMAP_KERNEL_AT_EL0) \
    $(wildcard include/config/ARM64_ERRATUM_843419) \
    $(wildcard include/config/ARM64_ERRATUM_1742098) \
    $(wildcard include/config/ARM64_ERRATUM_2645198) \
    $(wildcard include/config/ARM64_ERRATUM_2658417) \
    $(wildcard include/config/CAVIUM_ERRATUM_23154) \
    $(wildcard include/config/NVIDIA_CARMEL_CNP_ERRATUM) \
    $(wildcard include/config/ARM64_WORKAROUND_REPEAT_TLBI) \
    $(wildcard include/config/ARM64_ERRATUM_3194386) \
  /usr/lib/modules/6.13.6-1-aarch64-ARCH/build/arch/arm64/include/generated/asm/cpucap-defs.h \
  /usr/lib/modules/6.13.6-1-aarch64-ARCH/build/arch/arm64/include/asm/insn-def.h \
  /usr/lib/modules/6.13.6-1-aarch64-ARCH/build/arch/arm64/include/asm/brk-imm.h \
  /usr/lib/modules/6.13.6-1-aarch64-ARCH/build/include/linux/stringify.h \
  /usr/lib/modules/6.13.6-1-aarch64-ARCH/build/include/asm-generic/barrier.h \
  /usr/lib/modules/6.13.6-1-aarch64-ARCH/build/include/linux/stat.h \
  /usr/lib/modules/6.13.6-1-aarch64-ARCH/build/arch/arm64/include/asm/stat.h \
    $(wildcard include/config/COMPAT) \
  /usr/lib/modules/6.13.6-1-aarch64-ARCH/build/arch/arm64/include/generated/uapi/asm/stat.h \
  /usr/lib/modules/6.13.6-1-aarch64-ARCH/build/include/uapi/asm-generic/stat.h \
  /usr/lib/modules/6.13.6-1-aarch64-ARCH/build/include/linux/time.h \
    $(wildcard include/config/POSIX_TIMERS) \
  /usr/lib/modules/6.13.6-1-aarch64-ARCH/build/include/linux/cache.h \
    $(wildcard include/config/ARCH_HAS_CACHE_LINE_SIZE) \
  /usr/lib/modules/6.13.6-1-aarch64-ARCH/build/include/uapi/linux/kernel.h \
  /usr/lib/modules/6.13.6-1-aarch64-ARCH/build/include/uapi/linux/sysinfo.h \
  /usr/lib/modules/6.13.6-1-aarch64-ARCH/build/arch/arm64/include/asm/cache.h \
    $(wildcard include/config/KASAN_HW_TAGS) \
  /usr/lib/modules/6.13.6-1-aarch64-ARCH/build/include/linux/bitops.h \
  /usr/lib/modules/6.13.6-1-aarch64-ARCH/build/include/linux/bits.h \
  /usr/lib/modules/6.13.6-1-aarch64-ARCH/build/include/uapi/linux/bits.h \
  /usr/lib/modules/6.13.6-1-aarch64-ARCH/build/include/linux/typecheck.h \
  /usr/lib/modules/6.13.6-1-aarch64-ARCH/build/include/asm-generic/bitops/generic-non-atomic.h \
  /usr/lib/modules/6.13.6-1-aarch64-ARCH/build/arch/arm64/include/asm/bitops.h \
  /usr/lib/modules/6.13.6-1-aarch64-ARCH/build/include/asm-generic/bitops/builtin-__ffs.h \
  /usr/lib/modules/6.13.6-1-aarch64-ARCH/build/include/asm-generic/bitops/builtin-ffs.h \
  /usr/lib/modules/6.13.6-1-aarch64-ARCH/build/include/asm-generic/bitops/builtin-__fls.h \
  /usr/lib/modules/6.13.6-1-aarch64-ARCH/build/include/asm-generic/bitops/builtin-fls.h \
  /usr/lib/modules/6.13.6-1-aarch64-ARCH/build/include/asm-generic/bitops/ffz.h \
  /usr/lib/modules/6.13.6-1-aarch64-ARCH/build/include/asm-generic/bitops/fls64.h \
  /usr/lib/modules/6.13.6-1-aarch64-ARCH/build/include/asm-generic/bitops/sched.h \
  /usr/lib/modules/6.13.6-1-aarch64-ARCH/build/include/asm-generic/bitops/hweight.h \
  /usr/lib/modules/6.13.6-1-aarch64-ARCH/build/include/asm-generic/bitops/arch_hweight.h \
  /usr/lib/modules/6.13.6-1-aarch64-ARCH/build/include/asm-generic/bitops/const_hweight.h \
  /usr/lib/modules/6.13.6-1-aarch64-ARCH/build/include/asm-generic/bitops/atomic.h \
  /usr/lib/modules/6.13.6-1-aarch64-ARCH/build/include/linux/atomic.h \
  /usr/lib/modules/6.13.6-1-aarch64-ARCH/build/arch/arm64/include/asm/atomic.h \
  /usr/lib/modules/6.13.6-1-aarch64-ARCH/build/arch/arm64/include/asm/cmpxchg.h \
  /usr/lib/modules/6.13.6-1-aarch64-ARCH/build/arch/arm64/include/asm/lse.h \
    $(wildcard include/config/ARM64_LSE_ATOMICS) \
  /usr/lib/modules/6.13.6-1-aarch64-ARCH/build/arch/arm64/include/asm/atomic_ll_sc.h \
    $(wildcard include/config/CC_HAS_K_CONSTRAINT) \
  /usr/lib/modules/6.13.6-1-aarch64-ARCH/build/include/linux/export.h \
    $(wildcard include/config/MODVERSIONS) \
  /usr/lib/modules/6.13.6-1-aarch64-ARCH/build/include/linux/linkage.h \
    $(wildcard include/config/ARCH_USE_SYM_ANNOTATIONS) \
  /usr/lib/modules/6.13.6-1-aarch64-ARCH/build/arch/arm64/include/asm/linkage.h \
  /usr/lib/modules/6.13.6-1-aarch64-ARCH/build/arch/arm64/include/asm/alternative.h \
  /usr/lib/modules/6.13.6-1-aarch64-ARCH/build/include/linux/init.h \
    $(wildcard include/config/MEMORY_HOTPLUG) \
    $(wildcard include/config/HAVE_ARCH_PREL32_RELOCATIONS) \
  /usr/lib/modules/6.13.6-1-aarch64-ARCH/build/arch/arm64/include/asm/atomic_lse.h \
  /usr/lib/modules/6.13.6-1-aarch64-ARCH/build/include/linux/atomic/atomic-arch-fallback.h \
    $(wildcard include/config/GENERIC_ATOMIC64) \
  /usr/lib/modules/6.13.6-1-aarch64-ARCH/build/include/linux/atomic/atomic-long.h \
  /usr/lib/modules/6.13.6-1-aarch64-ARCH/build/include/linux/atomic/atomic-instrumented.h \
  /usr/lib/modules/6.13.6-1-aarch64-ARCH/build/include/linux/instrumented.h \
  /usr/lib/modules/6.13.6-1-aarch64-ARCH/build/include/linux/kmsan-checks.h \
    $(wildcard include/config/KMSAN) \
  /usr/lib/modules/6.13.6-1-aarch64-ARCH/build/include/asm-generic/bitops/instrumented-atomic.h \
  /usr/lib/modules/6.13.6-1-aarch64-ARCH/build/include/asm-generic/bitops/lock.h \
  /usr/lib/modules/6.13.6-1-aarch64-ARCH/build/include/asm-generic/bitops/instrumented-lock.h \
  /usr/lib/modules/6.13.6-1-aarch64-ARCH/build/include/asm-generic/bitops/non-atomic.h \
  /usr/lib/modules/6.13.6-1-aarch64-ARCH/build/include/asm-generic/bitops/non-instrumented-non-atomic.h \
  /usr/lib/modules/6.13.6-1-aarch64-ARCH/build/include/asm-generic/bitops/le.h \
  /usr/lib/modules/6.13.6-1-aarch64-ARCH/build/arch/arm64/include/uapi/asm/byteorder.h \
  /usr/lib/modules/6.13.6-1-aarch64-ARCH/build/include/linux/byteorder/little_endian.h \
  /usr/lib/modules/6.13.6-1-aarch64-ARCH/build/include/uapi/linux/byteorder/little_endian.h \
  /usr/lib/modules/6.13.6-1-aarch64-ARCH/build/include/linux/swab.h \
  /usr/lib/modules/6.13.6-1-aarch64-ARCH/build/include/uapi/linux/swab.h \
  /usr/lib/modules/6.13.6-1-aarch64-ARCH/build/arch/arm64/include/generated/uapi/asm/swab.h \
  /usr/lib/modules/6.13.6-1-aarch64-ARCH/build/include/uapi/asm-generic/swab.h \
  /usr/lib/modules/6.13.6-1-aarch64-ARCH/build/include/linux/byteorder/generic.h \
  /usr/lib/modules/6.13.6-1-aarch64-ARCH/build/include/asm-generic/bitops/ext2-atomic-setbit.h \
  /usr/lib/modules/6.13.6-1-aarch64-ARCH/build/include/linux/kasan-enabled.h \
    $(wildcard include/config/KASAN) \
  /usr/lib/modules/6.13.6-1-aarch64-ARCH/build/include/linux/static_key.h \
  /usr/lib/modules/6.13.6-1-aarch64-ARCH/build/include/linux/jump_label.h \
    $(wildcard include/config/HAVE_ARCH_JUMP_LABEL_RELATIVE) \
  /usr/lib/modules/6.13.6-1-aarch64-ARCH/build/arch/arm64/include/asm/jump_label.h \
  /usr/lib/modules/6.13.6-1-aarch64-ARCH/build/arch/arm64/include/asm/insn.h \
  /usr/lib/modules/6.13.6-1-aarch64-ARCH/build/arch/arm64/include/asm/cputype.h \
  /usr/lib/modules/6.13.6-1-aarch64-ARCH/build/arch/arm64/include/asm/sysreg.h \
    $(wildcard include/config/BROKEN_GAS_INST) \
    $(wildcard include/config/ARM64_PA_BITS_52) \
    $(wildcard include/config/ARM64_4K_PAGES) \
    $(wildcard include/config/ARM64_16K_PAGES) \
    $(wildcard include/config/ARM64_64K_PAGES) \
  /usr/lib/modules/6.13.6-1-aarch64-ARCH/build/include/linux/kasan-tags.h \
  /usr/lib/modules/6.13.6-1-aarch64-ARCH/build/arch/arm64/include/asm/gpr-num.h \
  /usr/lib/modules/6.13.6-1-aarch64-ARCH/build/arch/arm64/include/generated/asm/sysreg-defs.h \
  /usr/lib/modules/6.13.6-1-aarch64-ARCH/build/include/linux/bitfield.h \
  /usr/lib/modules/6.13.6-1-aarch64-ARCH/build/arch/arm64/include/asm/mte-def.h \
  /usr/lib/modules/6.13.6-1-aarch64-ARCH/build/include/linux/math64.h \
    $(wildcard include/config/ARCH_SUPPORTS_INT128) \
  /usr/lib/modules/6.13.6-1-aarch64-ARCH/build/include/linux/math.h \
  /usr/lib/modules/6.13.6-1-aarch64-ARCH/build/arch/arm64/include/generated/asm/div64.h \
  /usr/lib/modules/6.13.6-1-aarch64-ARCH/build/include/asm-generic/div64.h \
    $(wildcard include/config/CC_OPTIMIZE_FOR_PERFORMANCE) \
  /usr/lib/modules/6.13.6-1-aarch64-ARCH/build/include/vdso/math64.h \
  /usr/lib/modules/6.13.6-1-aarch64-ARCH/build/include/linux/time64.h \
  /usr/lib/modules/6.13.6-1-aarch64-ARCH/build/include/vdso/time64.h \
  /usr/lib/modules/6.13.6-1-aarch64-ARCH/build/include/uapi/linux/time.h \
  /usr/lib/modules/6.13.6-1-aarch64-ARCH/build/include/uapi/linux/time_types.h \
  /usr/lib/modules/6.13.6-1-aarch64-ARCH/build/include/linux/time32.h \
  /usr/lib/modules/6.13.6-1-aarch64-ARCH/build/include/linux/timex.h \
  /usr/lib/modules/6.13.6-1-aarch64-ARCH/build/include/uapi/linux/timex.h \
  /usr/lib/modules/6.13.6-1-aarch64-ARCH/build/include/uapi/linux/param.h \
  /usr/lib/modules/6.13.6-1-aarch64-ARCH/build/arch/arm64/include/uapi/asm/param.h \
  /usr/lib/modules/6.13.6-1-aarch64-ARCH/build/include/asm-generic/param.h \
    $(wildcard include/config/HZ) \
  /usr/lib/modules/6.13.6-1-aarch64-ARCH/build/include/uapi/asm-generic/param.h \
  /usr/lib/modules/6.13.6-1-aarch64-ARCH/build/arch/arm64/include/asm/timex.h \
  /usr/lib/modules/6.13.6-1-aarch64-ARCH/build/arch/arm64/include/asm/arch_timer.h \
    $(wildcard include/config/ARM_ARCH_TIMER_OOL_WORKAROUND) \
  /usr/lib/modules/6.13.6-1-aarch64-ARCH/build/arch/arm64/include/asm/hwcap.h \
  /usr/lib/modules/6.13.6-1-aarch64-ARCH/build/arch/arm64/include/uapi/asm/hwcap.h \
  /usr/lib/modules/6.13.6-1-aarch64-ARCH/build/arch/arm64/include/asm/cpufeature.h \
    $(wildcard include/config/ARM64_SW_TTBR0_PAN) \
    $(wildcard include/config/ARM64_DEBUG_PRIORITY_MASKING) \
    $(wildcard include/config/ARM64_BTI_KERNEL) \
    $(wildcard include/config/ARM64_HAFT) \
    $(wildcard include/config/ARM64_PA_BITS) \
    $(wildcard include/config/ARM64_HW_AFDBM) \
    $(wildcard include/config/ARM64_AMU_EXTN) \
    $(wildcard include/config/ARM64_LPA2) \
  /usr/lib/modules/6.13.6-1-aarch64-ARCH/build/include/linux/bug.h \
    $(wildcard include/config/BUG_ON_DATA_CORRUPTION) \
  /usr/lib/modules/6.13.6-1-aarch64-ARCH/build/arch/arm64/include/asm/bug.h \
  /usr/lib/modules/6.13.6-1-aarch64-ARCH/build/arch/arm64/include/asm/asm-bug.h \
    $(wildcard include/config/DEBUG_BUGVERBOSE) \
  /usr/lib/modules/6.13.6-1-aarch64-ARCH/build/include/asm-generic/bug.h \
    $(wildcard include/config/BUG) \
    $(wildcard include/config/GENERIC_BUG_RELATIVE_POINTERS) \
  /usr/lib/modules/6.13.6-1-aarch64-ARCH/build/include/linux/instrumentation.h \
    $(wildcard include/config/NOINSTR_VALIDATION) \
  /usr/lib/modules/6.13.6-1-aarch64-ARCH/build/include/linux/once_lite.h \
  /usr/lib/modules/6.13.6-1-aarch64-ARCH/build/include/linux/panic.h \
    $(wildcard include/config/PANIC_TIMEOUT) \
  /usr/lib/modules/6.13.6-1-aarch64-ARCH/build/include/linux/printk.h \
    $(wildcard include/config/MESSAGE_LOGLEVEL_DEFAULT) \
    $(wildcard include/config/CONSOLE_LOGLEVEL_DEFAULT) \
    $(wildcard include/config/CONSOLE_LOGLEVEL_QUIET) \
    $(wildcard include/config/EARLY_PRINTK) \
    $(wildcard include/config/PRINTK) \
    $(wildcard include/config/DYNAMIC_DEBUG) \
  /usr/lib/modules/6.13.6-1-aarch64-ARCH/build/include/linux/stdarg.h \
  /usr/lib/modules/6.13.6-1-aarch64-ARCH/build/include/linux/kern_levels.h \
  /usr/lib/modules/6.13.6-1-aarch64-ARCH/build/include/linux/ratelimit_types.h \
  /usr/lib/modules/6.13.6-1-aarch64-ARCH/build/include/linux/spinlock_types_raw.h \
    $(wildcard include/config/DEBUG_SPINLOCK) \
    $(wildcard include/config/DEBUG_LOCK_ALLOC) \
  /usr/lib/modules/6.13.6-1-aarch64-ARCH/build/arch/arm64/include/asm/spinlock_types.h \
  /usr/lib/modules/6.13.6-1-aarch64-ARCH/build/include/asm-generic/qspinlock_types.h \
    $(wildcard include/config/NR_CPUS) \
  /usr/lib/modules/6.13.6-1-aarch64-ARCH/build/include/asm-generic/qrwlock_types.h \
  /usr/lib/modules/6.13.6-1-aarch64-ARCH/build/include/linux/lockdep_types.h \
    $(wildcard include/config/PROVE_RAW_LOCK_NESTING) \
    $(wildcard include/config/LOCKDEP) \
    $(wildcard include/config/LOCK_STAT) \
  /usr/lib/modules/6.13.6-1-aarch64-ARCH/build/include/linux/dynamic_debug.h \
  /usr/lib/modules/6.13.6-1-aarch64-ARCH/build/include/linux/kernel.h \
    $(wildcard include/config/PREEMPT_VOLUNTARY_BUILD) \
    $(wildcard include/config/PREEMPT_DYNAMIC) \
    $(wildcard include/config/HAVE_PREEMPT_DYNAMIC_CALL) \
    $(wildcard include/config/HAVE_PREEMPT_DYNAMIC_KEY) \
    $(wildcard include/config/PREEMPT_) \
    $(wildcard include/config/DEBUG_ATOMIC_SLEEP) \
    $(wildcard include/config/MMU) \
    $(wildcard include/config/PROVE_LOCKING) \
  /usr/lib/modules/6.13.6-1-aarch64-ARCH/build/include/linux/align.h \
  /usr/lib/modules/6.13.6-1-aarch64-ARCH/build/include/linux/array_size.h \
  /usr/lib/modules/6.13.6-1-aarch64-ARCH/build/include/linux/limits.h \
  /usr/lib/modules/6.13.6-1-aarch64-ARCH/build/include/uapi/linux/limits.h \
  /usr/lib/modules/6.13.6-1-aarch64-ARCH/build/include/vdso/limits.h \
  /usr/lib/modules/6.13.6-1-aarch64-ARCH/build/include/linux/hex.h \
  /usr/lib/modules/6.13.6-1-aarch64-ARCH/build/include/linux/kstrtox.h \
  /usr/lib/modules/6.13.6-1-aarch64-ARCH/build/include/linux/log2.h \
    $(wildcard include/config/ARCH_HAS_ILOG2_U32) \
    $(wildcard include/config/ARCH_HAS_ILOG2_U64) \
  /usr/lib/modules/6.13.6-1-aarch64-ARCH/build/include/linux/minmax.h \
  /usr/lib/modules/6.13.6-1-aarch64-ARCH/build/include/linux/sprintf.h \
  /usr/lib/modules/6.13.6-1-aarch64-ARCH/build/include/linux/static_call_types.h \
    $(wildcard include/config/HAVE_STATIC_CALL) \
  /usr/lib/modules/6.13.6-1-aarch64-ARCH/build/include/linux/instruction_pointer.h \
  /usr/lib/modules/6.13.6-1-aarch64-ARCH/build/include/linux/wordpart.h \
  /usr/lib/modules/6.13.6-1-aarch64-ARCH/build/include/linux/cpumask.h \
    $(wildcard include/config/FORCE_NR_CPUS) \
    $(wildcard include/config/HOTPLUG_CPU) \
    $(wildcard include/config/DEBUG_PER_CPU_MAPS) \
    $(wildcard include/config/CPUMASK_OFFSTACK) \
  /usr/lib/modules/6.13.6-1-aarch64-ARCH/build/include/linux/cleanup.h \
  /usr/lib/modules/6.13.6-1-aarch64-ARCH/build/include/linux/bitmap.h \
  /usr/lib/modules/6.13.6-1-aarch64-ARCH/build/include/linux/errno.h \
  /usr/lib/modules/6.13.6-1-aarch64-ARCH/build/include/uapi/linux/errno.h \
  /usr/lib/modules/6.13.6-1-aarch64-ARCH/build/arch/arm64/include/generated/uapi/asm/errno.h \
  /usr/lib/modules/6.13.6-1-aarch64-ARCH/build/include/uapi/asm-generic/errno.h \
  /usr/lib/modules/6.13.6-1-aarch64-ARCH/build/include/uapi/asm-generic/errno-base.h \
  /usr/lib/modules/6.13.6-1-aarch64-ARCH/build/include/linux/find.h \
  /usr/lib/modules/6.13.6-1-aarch64-ARCH/build/include/linux/string.h \
    $(wildcard include/config/BINARY_PRINTF) \
    $(wildcard include/config/FORTIFY_SOURCE) \
  /usr/lib/modules/6.13.6-1-aarch64-ARCH/build/include/linux/args.h \
  /usr/lib/modules/6.13.6-1-aarch64-ARCH/build/include/linux/err.h \
  /usr/lib/modules/6.13.6-1-aarch64-ARCH/build/include/linux/overflow.h \
  /usr/lib/modules/6.13.6-1-aarch64-ARCH/build/include/uapi/linux/string.h \
  /usr/lib/modules/6.13.6-1-aarch64-ARCH/build/arch/arm64/include/asm/string.h \
    $(wildcard include/config/ARCH_HAS_UACCESS_FLUSHCACHE) \
  /usr/lib/modules/6.13.6-1-aarch64-ARCH/build/include/linux/bitmap-str.h \
  /usr/lib/modules/6.13.6-1-aarch64-ARCH/build/include/linux/cpumask_types.h \
  /usr/lib/modules/6.13.6-1-aarch64-ARCH/build/include/linux/threads.h \
    $(wildcard include/config/BASE_SMALL) \
  /usr/lib/modules/6.13.6-1-aarch64-ARCH/build/include/linux/gfp_types.h \
    $(wildcard include/config/SLAB_OBJ_EXT) \
  /usr/lib/modules/6.13.6-1-aarch64-ARCH/build/include/linux/numa.h \
    $(wildcard include/config/NODES_SHIFT) \
    $(wildcard include/config/NUMA_KEEP_MEMINFO) \
    $(wildcard include/config/NUMA) \
    $(wildcard include/config/HAVE_ARCH_NODE_DEV_GROUP) \
  /usr/lib/modules/6.13.6-1-aarch64-ARCH/build/include/linux/percpu.h \
    $(wildcard include/config/MEM_ALLOC_PROFILING) \
    $(wildcard include/config/RANDOM_KMALLOC_CACHES) \
    $(wildcard include/config/PAGE_SIZE_4KB) \
    $(wildcard include/config/NEED_PER_CPU_PAGE_FIRST_CHUNK) \
    $(wildcard include/config/HAVE_SETUP_PER_CPU_AREA) \
  /usr/lib/modules/6.13.6-1-aarch64-ARCH/build/include/linux/alloc_tag.h \
    $(wildcard include/config/MEM_ALLOC_PROFILING_DEBUG) \
    $(wildcard include/config/MEM_ALLOC_PROFILING_ENABLED_BY_DEFAULT) \
  /usr/lib/modules/6.13.6-1-aarch64-ARCH/build/include/linux/codetag.h \
    $(wildcard include/config/CODE_TAGGING) \
  /usr/lib/modules/6.13.6-1-aarch64-ARCH/build/include/linux/preempt.h \
    $(wildcard include/config/PREEMPT_RT) \
    $(wildcard include/config/PREEMPT_COUNT) \
    $(wildcard include/config/DEBUG_PREEMPT) \
    $(wildcard include/config/TRACE_PREEMPT_TOGGLE) \
    $(wildcard include/config/PREEMPTION) \
    $(wildcard include/config/PREEMPT_NOTIFIERS) \
    $(wildcard include/config/PREEMPT_NONE) \
    $(wildcard include/config/PREEMPT_VOLUNTARY) \
    $(wildcard include/config/PREEMPT) \
    $(wildcard include/config/PREEMPT_LAZY) \
  /usr/lib/modules/6.13.6-1-aarch64-ARCH/build/arch/arm64/include/asm/preempt.h \
  /usr/lib/modules/6.13.6-1-aarch64-ARCH/build/include/linux/thread_info.h \
    $(wildcard include/config/THREAD_INFO_IN_TASK) \
    $(wildcard include/config/GENERIC_ENTRY) \
    $(wildcard include/config/ARCH_HAS_PREEMPT_LAZY) \
    $(wildcard include/config/HAVE_ARCH_WITHIN_STACK_FRAMES) \
    $(wildcard include/config/HARDENED_USERCOPY) \
    $(wildcard include/config/SH) \
  /usr/lib/modules/6.13.6-1-aarch64-ARCH/build/include/linux/restart_block.h \
  /usr/lib/modules/6.13.6-1-aarch64-ARCH/build/arch/arm64/include/asm/current.h \
  /usr/lib/modules/6.13.6-1-aarch64-ARCH/build/arch/arm64/include/asm/thread_info.h \
  /usr/lib/modules/6.13.6-1-aarch64-ARCH/build/arch/arm64/include/asm/memory.h \
    $(wildcard include/config/ARM64_VA_BITS) \
    $(wildcard include/config/KASAN_SHADOW_OFFSET) \
    $(wildcard include/config/VMAP_STACK) \
    $(wildcard include/config/RANDOMIZE_BASE) \
    $(wildcard include/config/DEBUG_VIRTUAL) \
    $(wildcard include/config/EFI) \
    $(wildcard include/config/ARM_GIC_V3_ITS) \
  /usr/lib/modules/6.13.6-1-aarch64-ARCH/build/include/linux/sizes.h \
  /usr/lib/modules/6.13.6-1-aarch64-ARCH/build/arch/arm64/include/asm/page-def.h \
  /usr/lib/modules/6.13.6-1-aarch64-ARCH/build/include/vdso/page.h \
    $(wildcard include/config/PAGE_SHIFT) \
  /usr/lib/modules/6.13.6-1-aarch64-ARCH/build/include/linux/mmdebug.h \
    $(wildcard include/config/DEBUG_VM) \
    $(wildcard include/config/DEBUG_VM_IRQSOFF) \
    $(wildcard include/config/DEBUG_VM_PGFLAGS) \
  /usr/lib/modules/6.13.6-1-aarch64-ARCH/build/arch/arm64/include/asm/boot.h \
  /usr/lib/modules/6.13.6-1-aarch64-ARCH/build/arch/arm64/include/asm/sections.h \
  /usr/lib/modules/6.13.6-1-aarch64-ARCH/build/include/asm-generic/sections.h \
    $(wildcard include/config/HAVE_FUNCTION_DESCRIPTORS) \
  /usr/lib/modules/6.13.6-1-aarch64-ARCH/build/include/asm-generic/memory_model.h \
    $(wildcard include/config/FLATMEM) \
    $(wildcard include/config/SPARSEMEM_VMEMMAP) \
    $(wildcard include/config/SPARSEMEM) \
  /usr/lib/modules/6.13.6-1-aarch64-ARCH/build/include/linux/pfn.h \
  /usr/lib/modules/6.13.6-1-aarch64-ARCH/build/arch/arm64/include/asm/stack_pointer.h \
  /usr/lib/modules/6.13.6-1-aarch64-ARCH/build/arch/arm64/include/asm/percpu.h \
  /usr/lib/modules/6.13.6-1-aarch64-ARCH/build/include/asm-generic/percpu.h \
  /usr/lib/modules/6.13.6-1-aarch64-ARCH/build/include/linux/percpu-defs.h \
    $(wildcard include/config/DEBUG_FORCE_WEAK_PER_CPU) \
    $(wildcard include/config/AMD_MEM_ENCRYPT) \
  /usr/lib/modules/6.13.6-1-aarch64-ARCH/build/include/linux/smp.h \
    $(wildcard include/config/UP_LATE_INIT) \
    $(wildcard include/config/CSD_LOCK_WAIT_DEBUG) \
  /usr/lib/modules/6.13.6-1-aarch64-ARCH/build/include/linux/smp_types.h \
  /usr/lib/modules/6.13.6-1-aarch64-ARCH/build/include/linux/llist.h \
    $(wildcard include/config/ARCH_HAVE_NMI_SAFE_CMPXCHG) \
  /usr/lib/modules/6.13.6-1-aarch64-ARCH/build/arch/arm64/include/asm/smp.h \
    $(wildcard include/config/ARM64_ACPI_PARKING_PROTOCOL) \
  /usr/lib/modules/6.13.6-1-aarch64-ARCH/build/include/linux/irqflags.h \
    $(wildcard include/config/TRACE_IRQFLAGS) \
    $(wildcard include/config/IRQSOFF_TRACER) \
    $(wildcard include/config/PREEMPT_TRACER) \
    $(wildcard include/config/DEBUG_IRQFLAGS) \
    $(wildcard include/config/TRACE_IRQFLAGS_SUPPORT) \
  /usr/lib/modules/6.13.6-1-aarch64-ARCH/build/include/linux/irqflags_types.h \
  /usr/lib/modules/6.13.6-1-aarch64-ARCH/build/arch/arm64/include/asm/irqflags.h \
  /usr/lib/modules/6.13.6-1-aarch64-ARCH/build/arch/arm64/include/asm/ptrace.h \
  /usr/lib/modules/6.13.6-1-aarch64-ARCH/build/arch/arm64/include/uapi/asm/ptrace.h \
  /usr/lib/modules/6.13.6-1-aarch64-ARCH/build/arch/arm64/include/uapi/asm/sve_context.h \
  /usr/lib/modules/6.13.6-1-aarch64-ARCH/build/include/linux/irqchip/arm-gic-v3-prio.h \
  /usr/lib/modules/6.13.6-1-aarch64-ARCH/build/arch/arm64/include/asm/stacktrace/frame.h \
  /usr/lib/modules/6.13.6-1-aarch64-ARCH/build/include/linux/sched.h \
    $(wildcard include/config/VIRT_CPU_ACCOUNTING_NATIVE) \
    $(wildcard include/config/SCHED_INFO) \
    $(wildcard include/config/SCHEDSTATS) \
    $(wildcard include/config/SCHED_CORE) \
    $(wildcard include/config/FAIR_GROUP_SCHED) \
    $(wildcard include/config/RT_GROUP_SCHED) \
    $(wildcard include/config/RT_MUTEXES) \
    $(wildcard include/config/UCLAMP_TASK) \
    $(wildcard include/config/UCLAMP_BUCKETS_COUNT) \
    $(wildcard include/config/KMAP_LOCAL) \
    $(wildcard include/config/SCHED_CLASS_EXT) \
    $(wildcard include/config/CGROUP_SCHED) \
    $(wildcard include/config/BLK_DEV_IO_TRACE) \
    $(wildcard include/config/PREEMPT_RCU) \
    $(wildcard include/config/TASKS_RCU) \
    $(wildcard include/config/TASKS_TRACE_RCU) \
    $(wildcard include/config/MEMCG_V1) \
    $(wildcard include/config/LRU_GEN) \
    $(wildcard include/config/COMPAT_BRK) \
    $(wildcard include/config/CGROUPS) \
    $(wildcard include/config/BLK_CGROUP) \
    $(wildcard include/config/PSI) \
    $(wildcard include/config/PAGE_OWNER) \
    $(wildcard include/config/EVENTFD) \
    $(wildcard include/config/ARCH_HAS_CPU_PASID) \
    $(wildcard include/config/X86_BUS_LOCK_DETECT) \
    $(wildcard include/config/TASK_DELAY_ACCT) \
    $(wildcard include/config/STACKPROTECTOR) \
    $(wildcard include/config/ARCH_HAS_SCALED_CPUTIME) \
    $(wildcard include/config/VIRT_CPU_ACCOUNTING_GEN) \
    $(wildcard include/config/NO_HZ_FULL) \
    $(wildcard include/config/POSIX_CPUTIMERS) \
    $(wildcard include/config/POSIX_CPU_TIMERS_TASK_WORK) \
    $(wildcard include/config/KEYS) \
    $(wildcard include/config/SYSVIPC) \
    $(wildcard include/config/DETECT_HUNG_TASK) \
    $(wildcard include/config/IO_URING) \
    $(wildcard include/config/AUDIT) \
    $(wildcard include/config/AUDITSYSCALL) \
    $(wildcard include/config/DEBUG_MUTEXES) \
    $(wildcard include/config/UBSAN) \
    $(wildcard include/config/UBSAN_TRAP) \
    $(wildcard include/config/COMPACTION) \
    $(wildcard include/config/TASK_XACCT) \
    $(wildcard include/config/CPUSETS) \
    $(wildcard include/config/X86_CPU_RESCTRL) \
    $(wildcard include/config/FUTEX) \
    $(wildcard include/config/PERF_EVENTS) \
    $(wildcard include/config/NUMA_BALANCING) \
    $(wildcard include/config/RSEQ) \
    $(wildcard include/config/SCHED_MM_CID) \
    $(wildcard include/config/FAULT_INJECTION) \
    $(wildcard include/config/LATENCYTOP) \
    $(wildcard include/config/FUNCTION_GRAPH_TRACER) \
    $(wildcard include/config/MEMCG) \
    $(wildcard include/config/UPROBES) \
    $(wildcard include/config/BCACHE) \
    $(wildcard include/config/SECURITY) \
    $(wildcard include/config/BPF_SYSCALL) \
    $(wildcard include/config/GCC_PLUGIN_STACKLEAK) \
    $(wildcard include/config/X86_MCE) \
    $(wildcard include/config/KRETPROBES) \
    $(wildcard include/config/RETHOOK) \
    $(wildcard include/config/ARCH_HAS_PARANOID_L1D_FLUSH) \
    $(wildcard include/config/RV) \
    $(wildcard include/config/USER_EVENTS) \
  /usr/lib/modules/6.13.6-1-aarch64-ARCH/build/include/uapi/linux/sched.h \
  /usr/lib/modules/6.13.6-1-aarch64-ARCH/build/arch/arm64/include/asm/processor.h \
    $(wildcard include/config/KUSER_HELPERS) \
    $(wildcard include/config/ARM64_FORCE_52BIT) \
    $(wildcard include/config/HAVE_HW_BREAKPOINT) \
    $(wildcard include/config/ARM64_TAGGED_ADDR_ABI) \
  /usr/lib/modules/6.13.6-1-aarch64-ARCH/build/include/vdso/processor.h \
  /usr/lib/modules/6.13.6-1-aarch64-ARCH/build/arch/arm64/include/asm/vdso/processor.h \
  /usr/lib/modules/6.13.6-1-aarch64-ARCH/build/arch/arm64/include/asm/hw_breakpoint.h \
    $(wildcard include/config/CPU_PM) \
  /usr/lib/modules/6.13.6-1-aarch64-ARCH/build/arch/arm64/include/asm/virt.h \
    $(wildcard include/config/KVM) \
  /usr/lib/modules/6.13.6-1-aarch64-ARCH/build/arch/arm64/include/asm/kasan.h \
  /usr/lib/modules/6.13.6-1-aarch64-ARCH/build/arch/arm64/include/asm/mte-kasan.h \
  /usr/lib/modules/6.13.6-1-aarch64-ARCH/build/arch/arm64/include/asm/pgtable-types.h \
    $(wildcard include/config/PGTABLE_LEVELS) \
  /usr/lib/modules/6.13.6-1-aarch64-ARCH/build/include/asm-generic/pgtable-nop4d.h \
  /usr/lib/modules/6.13.6-1-aarch64-ARCH/build/arch/arm64/include/asm/pgtable-hwdef.h \
    $(wildcard include/config/ARM64_CONT_PTE_SHIFT) \
    $(wildcard include/config/ARM64_CONT_PMD_SHIFT) \
    $(wildcard include/config/ARM64_VA_BITS_52) \
  /usr/lib/modules/6.13.6-1-aarch64-ARCH/build/arch/arm64/include/asm/pointer_auth.h \
  /usr/lib/modules/6.13.6-1-aarch64-ARCH/build/include/uapi/linux/prctl.h \
  /usr/lib/modules/6.13.6-1-aarch64-ARCH/build/include/linux/random.h \
    $(wildcard include/config/VMGENID) \
  /usr/lib/modules/6.13.6-1-aarch64-ARCH/build/include/uapi/linux/random.h \
  /usr/lib/modules/6.13.6-1-aarch64-ARCH/build/include/uapi/linux/ioctl.h \
  /usr/lib/modules/6.13.6-1-aarch64-ARCH/build/arch/arm64/include/generated/uapi/asm/ioctl.h \
  /usr/lib/modules/6.13.6-1-aarch64-ARCH/build/include/asm-generic/ioctl.h \
  /usr/lib/modules/6.13.6-1-aarch64-ARCH/build/include/uapi/asm-generic/ioctl.h \
  /usr/lib/modules/6.13.6-1-aarch64-ARCH/build/include/linux/irqnr.h \
  /usr/lib/modules/6.13.6-1-aarch64-ARCH/build/include/uapi/linux/irqnr.h \
  /usr/lib/modules/6.13.6-1-aarch64-ARCH/build/arch/arm64/include/asm/spectre.h \
  /usr/lib/modules/6.13.6-1-aarch64-ARCH/build/arch/arm64/include/asm/fpsimd.h \
  /usr/lib/modules/6.13.6-1-aarch64-ARCH/build/arch/arm64/include/uapi/asm/sigcontext.h \
  /usr/lib/modules/6.13.6-1-aarch64-ARCH/build/include/linux/pid_types.h \
  /usr/lib/modules/6.13.6-1-aarch64-ARCH/build/include/linux/sem_types.h \
  /usr/lib/modules/6.13.6-1-aarch64-ARCH/build/include/linux/shm.h \
  /usr/lib/modules/6.13.6-1-aarch64-ARCH/build/arch/arm64/include/asm/page.h \
  /usr/lib/modules/6.13.6-1-aarch64-ARCH/build/include/linux/personality.h \
  /usr/lib/modules/6.13.6-1-aarch64-ARCH/build/include/uapi/linux/personality.h \
  /usr/lib/modules/6.13.6-1-aarch64-ARCH/build/include/asm-generic/getorder.h \
  /usr/lib/modules/6.13.6-1-aarch64-ARCH/build/arch/arm64/include/asm/shmparam.h \
  /usr/lib/modules/6.13.6-1-aarch64-ARCH/build/include/asm-generic/shmparam.h \
  /usr/lib/modules/6.13.6-1-aarch64-ARCH/build/include/linux/kmsan_types.h \
  /usr/lib/modules/6.13.6-1-aarch64-ARCH/build/include/linux/mutex_types.h \
    $(wildcard include/config/MUTEX_SPIN_ON_OWNER) \
  /usr/lib/modules/6.13.6-1-aarch64-ARCH/build/include/linux/osq_lock.h \
  /usr/lib/modules/6.13.6-1-aarch64-ARCH/build/include/linux/spinlock_types.h \
  /usr/lib/modules/6.13.6-1-aarch64-ARCH/build/include/linux/rwlock_types.h \
  /usr/lib/modules/6.13.6-1-aarch64-ARCH/build/include/linux/plist_types.h \
  /usr/lib/modules/6.13.6-1-aarch64-ARCH/build/include/linux/hrtimer_types.h \
  /usr/lib/modules/6.13.6-1-aarch64-ARCH/build/include/linux/timerqueue_types.h \
  /usr/lib/modules/6.13.6-1-aarch64-ARCH/build/include/linux/rbtree_types.h \
  /usr/lib/modules/6.13.6-1-aarch64-ARCH/build/include/linux/timer_types.h \
  /usr/lib/modules/6.13.6-1-aarch64-ARCH/build/include/linux/seccomp_types.h \
    $(wildcard include/config/SECCOMP) \
  /usr/lib/modules/6.13.6-1-aarch64-ARCH/build/include/linux/nodemask_types.h \
  /usr/lib/modules/6.13.6-1-aarch64-ARCH/build/include/linux/refcount_types.h \
  /usr/lib/modules/6.13.6-1-aarch64-ARCH/build/include/linux/resource.h \
  /usr/lib/modules/6.13.6-1-aarch64-ARCH/build/include/uapi/linux/resource.h \
  /usr/lib/modules/6.13.6-1-aarch64-ARCH/build/arch/arm64/include/generated/uapi/asm/resource.h \
  /usr/lib/modules/6.13.6-1-aarch64-ARCH/build/include/asm-generic/resource.h \
  /usr/lib/modules/6.13.6-1-aarch64-ARCH/build/include/uapi/asm-generic/resource.h \
  /usr/lib/modules/6.13.6-1-aarch64-ARCH/build/include/linux/latencytop.h \
  /usr/lib/modules/6.13.6-1-aarch64-ARCH/build/include/linux/sched/prio.h \
  /usr/lib/modules/6.13.6-1-aarch64-ARCH/build/include/linux/sched/types.h \
  /usr/lib/modules/6.13.6-1-aarch64-ARCH/build/include/linux/signal_types.h \
    $(wildcard include/config/OLD_SIGACTION) \
  /usr/lib/modules/6.13.6-1-aarch64-ARCH/build/include/uapi/linux/signal.h \
  /usr/lib/modules/6.13.6-1-aarch64-ARCH/build/arch/arm64/include/asm/signal.h \
  /usr/lib/modules/6.13.6-1-aarch64-ARCH/build/arch/arm64/include/uapi/asm/signal.h \
  /usr/lib/modules/6.13.6-1-aarch64-ARCH/build/include/asm-generic/signal.h \
  /usr/lib/modules/6.13.6-1-aarch64-ARCH/build/include/uapi/asm-generic/signal.h \
  /usr/lib/modules/6.13.6-1-aarch64-ARCH/build/include/uapi/asm-generic/signal-defs.h \
  /usr/lib/modules/6.13.6-1-aarch64-ARCH/build/arch/arm64/include/generated/uapi/asm/siginfo.h \
  /usr/lib/modules/6.13.6-1-aarch64-ARCH/build/include/uapi/asm-generic/siginfo.h \
  /usr/lib/modules/6.13.6-1-aarch64-ARCH/build/include/linux/syscall_user_dispatch_types.h \
  /usr/lib/modules/6.13.6-1-aarch64-ARCH/build/include/linux/mm_types_task.h \
    $(wildcard include/config/ARCH_WANT_BATCHED_UNMAP_TLB_FLUSH) \
  /usr/lib/modules/6.13.6-1-aarch64-ARCH/build/arch/arm64/include/asm/tlbbatch.h \
  /usr/lib/modules/6.13.6-1-aarch64-ARCH/build/include/linux/netdevice_xmit.h \
    $(wildcard include/config/NET_EGRESS) \
  /usr/lib/modules/6.13.6-1-aarch64-ARCH/build/include/linux/task_io_accounting.h \
    $(wildcard include/config/TASK_IO_ACCOUNTING) \
  /usr/lib/modules/6.13.6-1-aarch64-ARCH/build/include/linux/posix-timers_types.h \
  /usr/lib/modules/6.13.6-1-aarch64-ARCH/build/include/uapi/linux/rseq.h \
  /usr/lib/modules/6.13.6-1-aarch64-ARCH/build/include/linux/seqlock_types.h \
  /usr/lib/modules/6.13.6-1-aarch64-ARCH/build/include/linux/kcsan.h \
  /usr/lib/modules/6.13.6-1-aarch64-ARCH/build/include/linux/rv.h \
    $(wildcard include/config/RV_REACTORS) \
  /usr/lib/modules/6.13.6-1-aarch64-ARCH/build/include/linux/livepatch_sched.h \
  /usr/lib/modules/6.13.6-1-aarch64-ARCH/build/include/linux/uidgid_types.h \
  /usr/lib/modules/6.13.6-1-aarch64-ARCH/build/arch/arm64/include/generated/asm/kmap_size.h \
  /usr/lib/modules/6.13.6-1-aarch64-ARCH/build/include/asm-generic/kmap_size.h \
    $(wildcard include/config/DEBUG_KMAP_LOCAL) \
  /usr/lib/modules/6.13.6-1-aarch64-ARCH/build/include/linux/sched/ext.h \
    $(wildcard include/config/EXT_GROUP_SCHED) \
  /usr/lib/modules/6.13.6-1-aarch64-ARCH/build/include/linux/spinlock.h \
  /usr/lib/modules/6.13.6-1-aarch64-ARCH/build/include/linux/bottom_half.h \
  /usr/lib/modules/6.13.6-1-aarch64-ARCH/build/include/linux/lockdep.h \
    $(wildcard include/config/DEBUG_LOCKING_API_SELFTESTS) \
  /usr/lib/modules/6.13.6-1-aarch64-ARCH/build/arch/arm64/include/generated/asm/mmiowb.h \
  /usr/lib/modules/6.13.6-1-aarch64-ARCH/build/include/asm-generic/mmiowb.h \
    $(wildcard include/config/MMIOWB) \
  /usr/lib/modules/6.13.6-1-aarch64-ARCH/build/arch/arm64/include/asm/spinlock.h \
  /usr/lib/modules/6.13.6-1-aarch64-ARCH/build/arch/arm64/include/generated/asm/qspinlock.h \
  /usr/lib/modules/6.13.6-1-aarch64-ARCH/build/include/asm-generic/qspinlock.h \
  /usr/lib/modules/6.13.6-1-aarch64-ARCH/build/arch/arm64/include/generated/asm/qrwlock.h \
  /usr/lib/modules/6.13.6-1-aarch64-ARCH/build/include/asm-generic/qrwlock.h \
  /usr/lib/modules/6.13.6-1-aarch64-ARCH/build/include/linux/rwlock.h \
  /usr/lib/modules/6.13.6-1-aarch64-ARCH/build/include/linux/spinlock_api_smp.h \
    $(wildcard include/config/INLINE_SPIN_LOCK) \
    $(wildcard include/config/INLINE_SPIN_LOCK_BH) \
    $(wildcard include/config/INLINE_SPIN_LOCK_IRQ) \
    $(wildcard include/config/INLINE_SPIN_LOCK_IRQSAVE) \
    $(wildcard include/config/INLINE_SPIN_TRYLOCK) \
    $(wildcard include/config/INLINE_SPIN_TRYLOCK_BH) \
    $(wildcard include/config/UNINLINE_SPIN_UNLOCK) \
    $(wildcard include/config/INLINE_SPIN_UNLOCK_BH) \
    $(wildcard include/config/INLINE_SPIN_UNLOCK_IRQ) \
    $(wildcard include/config/INLINE_SPIN_UNLOCK_IRQRESTORE) \
    $(wildcard include/config/GENERIC_LOCKBREAK) \
  /usr/lib/modules/6.13.6-1-aarch64-ARCH/build/include/linux/rwlock_api_smp.h \
    $(wildcard include/config/INLINE_READ_LOCK) \
    $(wildcard include/config/INLINE_WRITE_LOCK) \
    $(wildcard include/config/INLINE_READ_LOCK_BH) \
    $(wildcard include/config/INLINE_WRITE_LOCK_BH) \
    $(wildcard include/config/INLINE_READ_LOCK_IRQ) \
    $(wildcard include/config/INLINE_WRITE_LOCK_IRQ) \
    $(wildcard include/config/INLINE_READ_LOCK_IRQSAVE) \
    $(wildcard include/config/INLINE_WRITE_LOCK_IRQSAVE) \
    $(wildcard include/config/INLINE_READ_TRYLOCK) \
    $(wildcard include/config/INLINE_WRITE_TRYLOCK) \
    $(wildcard include/config/INLINE_READ_UNLOCK) \
    $(wildcard include/config/INLINE_WRITE_UNLOCK) \
    $(wildcard include/config/INLINE_READ_UNLOCK_BH) \
    $(wildcard include/config/INLINE_WRITE_UNLOCK_BH) \
    $(wildcard include/config/INLINE_READ_UNLOCK_IRQ) \
    $(wildcard include/config/INLINE_WRITE_UNLOCK_IRQ) \
    $(wildcard include/config/INLINE_READ_UNLOCK_IRQRESTORE) \
    $(wildcard include/config/INLINE_WRITE_UNLOCK_IRQRESTORE) \
  /usr/lib/modules/6.13.6-1-aarch64-ARCH/build/include/clocksource/arm_arch_timer.h \
    $(wildcard include/config/ARM_ARCH_TIMER) \
  /usr/lib/modules/6.13.6-1-aarch64-ARCH/build/include/linux/timecounter.h \
  /usr/lib/modules/6.13.6-1-aarch64-ARCH/build/include/asm-generic/timex.h \
  /usr/lib/modules/6.13.6-1-aarch64-ARCH/build/include/vdso/time32.h \
  /usr/lib/modules/6.13.6-1-aarch64-ARCH/build/include/vdso/time.h \
  /usr/lib/modules/6.13.6-1-aarch64-ARCH/build/arch/arm64/include/asm/compat.h \
  /usr/lib/modules/6.13.6-1-aarch64-ARCH/build/include/asm-generic/compat.h \
    $(wildcard include/config/COMPAT_FOR_U64_ALIGNMENT) \
  /usr/lib/modules/6.13.6-1-aarch64-ARCH/build/include/linux/sched/task_stack.h \
    $(wildcard include/config/STACK_GROWSUP) \
    $(wildcard include/config/DEBUG_STACK_USAGE) \
  /usr/lib/modules/6.13.6-1-aarch64-ARCH/build/include/uapi/linux/magic.h \
  /usr/lib/modules/6.13.6-1-aarch64-ARCH/build/include/linux/refcount.h \
  /usr/lib/modules/6.13.6-1-aarch64-ARCH/build/include/linux/kasan.h \
    $(wildcard include/config/KASAN_STACK) \
    $(wildcard include/config/KASAN_VMALLOC) \
  /usr/lib/modules/6.13.6-1-aarch64-ARCH/build/include/uapi/linux/stat.h \
  /usr/lib/modules/6.13.6-1-aarch64-ARCH/build/include/linux/uidgid.h \
    $(wildcard include/config/MULTIUSER) \
    $(wildcard include/config/USER_NS) \
  /usr/lib/modules/6.13.6-1-aarch64-ARCH/build/include/linux/highuid.h \
  /usr/lib/modules/6.13.6-1-aarch64-ARCH/build/include/linux/buildid.h \
    $(wildcard include/config/VMCORE_INFO) \
  /usr/lib/modules/6.13.6-1-aarch64-ARCH/build/include/linux/kmod.h \
  /usr/lib/modules/6.13.6-1-aarch64-ARCH/build/include/linux/umh.h \
  /usr/lib/modules/6.13.6-1-aarch64-ARCH/build/include/linux/gfp.h \
    $(wildcard include/config/HIGHMEM) \
    $(wildcard include/config/ZONE_DMA) \
    $(wildcard include/config/ZONE_DMA32) \
    $(wildcard include/config/ZONE_DEVICE) \
    $(wildcard include/config/CONTIG_ALLOC) \
  /usr/lib/modules/6.13.6-1-aarch64-ARCH/build/include/linux/mmzone.h \
    $(wildcard include/config/ARCH_FORCE_MAX_ORDER) \
    $(wildcard include/config/CMA) \
    $(wildcard include/config/MEMORY_ISOLATION) \
    $(wildcard include/config/ZSMALLOC) \
    $(wildcard include/config/UNACCEPTED_MEMORY) \
    $(wildcard include/config/IOMMU_SUPPORT) \
    $(wildcard include/config/SWAP) \
    $(wildcard include/config/HUGETLB_PAGE) \
    $(wildcard include/config/TRANSPARENT_HUGEPAGE) \
    $(wildcard include/config/LRU_GEN_STATS) \
    $(wildcard include/config/LRU_GEN_WALKS_MMU) \
    $(wildcard include/config/MEMORY_FAILURE) \
    $(wildcard include/config/PAGE_EXTENSION) \
    $(wildcard include/config/DEFERRED_STRUCT_PAGE_INIT) \
    $(wildcard include/config/HAVE_MEMORYLESS_NODES) \
    $(wildcard include/config/SPARSEMEM_EXTREME) \
    $(wildcard include/config/HAVE_ARCH_PFN_VALID) \
  /usr/lib/modules/6.13.6-1-aarch64-ARCH/build/include/linux/list_nulls.h \
  /usr/lib/modules/6.13.6-1-aarch64-ARCH/build/include/linux/wait.h \
  /usr/lib/modules/6.13.6-1-aarch64-ARCH/build/include/linux/seqlock.h \
  /usr/lib/modules/6.13.6-1-aarch64-ARCH/build/include/linux/mutex.h \
  /usr/lib/modules/6.13.6-1-aarch64-ARCH/build/include/linux/debug_locks.h \
  /usr/lib/modules/6.13.6-1-aarch64-ARCH/build/include/linux/nodemask.h \
  /usr/lib/modules/6.13.6-1-aarch64-ARCH/build/include/linux/pageblock-flags.h \
    $(wildcard include/config/HUGETLB_PAGE_SIZE_VARIABLE) \
  /usr/lib/modules/6.13.6-1-aarch64-ARCH/build/include/linux/page-flags-layout.h \
  /usr/lib/modules/6.13.6-1-aarch64-ARCH/build/include/generated/bounds.h \
  /usr/lib/modules/6.13.6-1-aarch64-ARCH/build/arch/arm64/include/asm/sparsemem.h \
  /usr/lib/modules/6.13.6-1-aarch64-ARCH/build/arch/arm64/include/asm/pgtable-prot.h \
    $(wildcard include/config/HAVE_ARCH_USERFAULTFD_WP) \
  /usr/lib/modules/6.13.6-1-aarch64-ARCH/build/arch/arm64/include/asm/rsi.h \
  /usr/lib/modules/6.13.6-1-aarch64-ARCH/build/arch/arm64/include/asm/rsi_cmds.h \
  /usr/lib/modules/6.13.6-1-aarch64-ARCH/build/include/linux/arm-smccc.h \
    $(wildcard include/config/HAVE_ARM_SMCCC) \
    $(wildcard include/config/ARM) \
  /usr/lib/modules/6.13.6-1-aarch64-ARCH/build/arch/arm64/include/asm/rsi_smc.h \
  /usr/lib/modules/6.13.6-1-aarch64-ARCH/build/include/linux/mm_types.h \
    $(wildcard include/config/HAVE_ALIGNED_STRUCT_PAGE) \
    $(wildcard include/config/HUGETLB_PMD_PAGE_TABLE_SHARING) \
    $(wildcard include/config/USERFAULTFD) \
    $(wildcard include/config/ANON_VMA_NAME) \
    $(wildcard include/config/PER_VMA_LOCK) \
    $(wildcard include/config/HAVE_ARCH_COMPAT_MMAP_BASES) \
    $(wildcard include/config/MEMBARRIER) \
    $(wildcard include/config/AIO) \
    $(wildcard include/config/MMU_NOTIFIER) \
    $(wildcard include/config/SPLIT_PMD_PTLOCKS) \
    $(wildcard include/config/IOMMU_MM_DATA) \
    $(wildcard include/config/KSM) \
    $(wildcard include/config/CORE_DUMP_DEFAULT_ELF_HEADERS) \
  /usr/lib/modules/6.13.6-1-aarch64-ARCH/build/include/linux/auxvec.h \
  /usr/lib/modules/6.13.6-1-aarch64-ARCH/build/include/uapi/linux/auxvec.h \
  /usr/lib/modules/6.13.6-1-aarch64-ARCH/build/arch/arm64/include/uapi/asm/auxvec.h \
  /usr/lib/modules/6.13.6-1-aarch64-ARCH/build/include/linux/kref.h \
  /usr/lib/modules/6.13.6-1-aarch64-ARCH/build/include/linux/rbtree.h \
  /usr/lib/modules/6.13.6-1-aarch64-ARCH/build/include/linux/rcupdate.h \
    $(wildcard include/config/TINY_RCU) \
    $(wildcard include/config/RCU_STRICT_GRACE_PERIOD) \
    $(wildcard include/config/RCU_LAZY) \
    $(wildcard include/config/TASKS_RCU_GENERIC) \
    $(wildcard include/config/RCU_STALL_COMMON) \
    $(wildcard include/config/KVM_XFER_TO_GUEST_WORK) \
    $(wildcard include/config/RCU_NOCB_CPU) \
    $(wildcard include/config/TASKS_RUDE_RCU) \
    $(wildcard include/config/TREE_RCU) \
    $(wildcard include/config/DEBUG_OBJECTS_RCU_HEAD) \
    $(wildcard include/config/PROVE_RCU) \
    $(wildcard include/config/ARCH_WEAK_RELEASE_ACQUIRE) \
  /usr/lib/modules/6.13.6-1-aarch64-ARCH/build/include/linux/context_tracking_irq.h \
    $(wildcard include/config/CONTEXT_TRACKING_IDLE) \
  /usr/lib/modules/6.13.6-1-aarch64-ARCH/build/include/linux/rcutree.h \
  /usr/lib/modules/6.13.6-1-aarch64-ARCH/build/include/linux/maple_tree.h \
    $(wildcard include/config/MAPLE_RCU_DISABLED) \
    $(wildcard include/config/DEBUG_MAPLE_TREE) \
  /usr/lib/modules/6.13.6-1-aarch64-ARCH/build/include/linux/rwsem.h \
    $(wildcard include/config/RWSEM_SPIN_ON_OWNER) \
    $(wildcard include/config/DEBUG_RWSEMS) \
  /usr/lib/modules/6.13.6-1-aarch64-ARCH/build/include/linux/completion.h \
  /usr/lib/modules/6.13.6-1-aarch64-ARCH/build/include/linux/swait.h \
  /usr/lib/modules/6.13.6-1-aarch64-ARCH/build/include/linux/uprobes.h \
  /usr/lib/modules/6.13.6-1-aarch64-ARCH/build/include/linux/timer.h \
    $(wildcard include/config/DEBUG_OBJECTS_TIMERS) \
  /usr/lib/modules/6.13.6-1-aarch64-ARCH/build/include/linux/ktime.h \
  /usr/lib/modules/6.13.6-1-aarch64-ARCH/build/include/linux/jiffies.h \
  /usr/lib/modules/6.13.6-1-aarch64-ARCH/build/include/vdso/jiffies.h \
  /usr/lib/modules/6.13.6-1-aarch64-ARCH/build/include/generated/timeconst.h \
  /usr/lib/modules/6.13.6-1-aarch64-ARCH/build/include/vdso/ktime.h \
  /usr/lib/modules/6.13.6-1-aarch64-ARCH/build/include/linux/timekeeping.h \
    $(wildcard include/config/GENERIC_CMOS_UPDATE) \
  /usr/lib/modules/6.13.6-1-aarch64-ARCH/build/include/linux/clocksource_ids.h \
  /usr/lib/modules/6.13.6-1-aarch64-ARCH/build/include/linux/debugobjects.h \
    $(wildcard include/config/DEBUG_OBJECTS) \
    $(wildcard include/config/DEBUG_OBJECTS_FREE) \
  /usr/lib/modules/6.13.6-1-aarch64-ARCH/build/include/linux/workqueue.h \
    $(wildcard include/config/DEBUG_OBJECTS_WORK) \
    $(wildcard include/config/FREEZER) \
    $(wildcard include/config/WQ_WATCHDOG) \
  /usr/lib/modules/6.13.6-1-aarch64-ARCH/build/include/linux/workqueue_types.h \
  /usr/lib/modules/6.13.6-1-aarch64-ARCH/build/include/linux/percpu_counter.h \
  /usr/lib/modules/6.13.6-1-aarch64-ARCH/build/arch/arm64/include/asm/mmu.h \
    $(wildcard include/config/ARM64_E0PD) \
    $(wildcard include/config/CAVIUM_ERRATUM_27456) \
  /usr/lib/modules/6.13.6-1-aarch64-ARCH/build/include/linux/page-flags.h \
    $(wildcard include/config/PAGE_IDLE_FLAG) \
    $(wildcard include/config/ARCH_USES_PG_ARCH_2) \
    $(wildcard include/config/ARCH_USES_PG_ARCH_3) \
    $(wildcard include/config/HUGETLB_PAGE_OPTIMIZE_VMEMMAP) \
  /usr/lib/modules/6.13.6-1-aarch64-ARCH/build/include/linux/local_lock.h \
  /usr/lib/modules/6.13.6-1-aarch64-ARCH/build/include/linux/local_lock_internal.h \
  /usr/lib/modules/6.13.6-1-aarch64-ARCH/build/include/linux/zswap.h \
    $(wildcard include/config/ZSWAP) \
  /usr/lib/modules/6.13.6-1-aarch64-ARCH/build/include/linux/memory_hotplug.h \
    $(wildcard include/config/ARCH_HAS_ADD_PAGES) \
    $(wildcard include/config/MEMORY_HOTREMOVE) \
  /usr/lib/modules/6.13.6-1-aarch64-ARCH/build/include/linux/notifier.h \
  /usr/lib/modules/6.13.6-1-aarch64-ARCH/build/include/linux/srcu.h \
    $(wildcard include/config/TINY_SRCU) \
    $(wildcard include/config/NEED_SRCU_NMI_SAFE) \
  /usr/lib/modules/6.13.6-1-aarch64-ARCH/build/include/linux/rcu_segcblist.h \
  /usr/lib/modules/6.13.6-1-aarch64-ARCH/build/include/linux/srcutree.h \
  /usr/lib/modules/6.13.6-1-aarch64-ARCH/build/include/linux/rcu_node_tree.h \
    $(wildcard include/config/RCU_FANOUT) \
    $(wildcard include/config/RCU_FANOUT_LEAF) \
  /usr/lib/modules/6.13.6-1-aarch64-ARCH/build/include/linux/topology.h \
    $(wildcard include/config/USE_PERCPU_NUMA_NODE_ID) \
    $(wildcard include/config/SCHED_SMT) \
  /usr/lib/modules/6.13.6-1-aarch64-ARCH/build/include/linux/arch_topology.h \
    $(wildcard include/config/GENERIC_ARCH_TOPOLOGY) \
  /usr/lib/modules/6.13.6-1-aarch64-ARCH/build/arch/arm64/include/asm/topology.h \
  /usr/lib/modules/6.13.6-1-aarch64-ARCH/build/include/asm-generic/topology.h \
  /usr/lib/modules/6.13.6-1-aarch64-ARCH/build/include/linux/sysctl.h \
    $(wildcard include/config/SYSCTL) \
  /usr/lib/modules/6.13.6-1-aarch64-ARCH/build/include/uapi/linux/sysctl.h \
  /usr/lib/modules/6.13.6-1-aarch64-ARCH/build/include/linux/elf.h \
    $(wildcard include/config/ARCH_HAVE_EXTRA_ELF_NOTES) \
    $(wildcard include/config/ARCH_USE_GNU_PROPERTY) \
    $(wildcard include/config/ARCH_HAVE_ELF_PROT) \
  /usr/lib/modules/6.13.6-1-aarch64-ARCH/build/arch/arm64/include/asm/elf.h \
    $(wildcard include/config/COMPAT_VDSO) \
  /usr/lib/modules/6.13.6-1-aarch64-ARCH/build/arch/arm64/include/generated/asm/user.h \
  /usr/lib/modules/6.13.6-1-aarch64-ARCH/build/include/asm-generic/user.h \
  /usr/lib/modules/6.13.6-1-aarch64-ARCH/build/include/uapi/linux/elf.h \
  /usr/lib/modules/6.13.6-1-aarch64-ARCH/build/include/uapi/linux/elf-em.h \
  /usr/lib/modules/6.13.6-1-aarch64-ARCH/build/include/linux/fs.h \
    $(wildcard include/config/READ_ONLY_THP_FOR_FS) \
    $(wildcard include/config/FS_POSIX_ACL) \
    $(wildcard include/config/CGROUP_WRITEBACK) \
    $(wildcard include/config/IMA) \
    $(wildcard include/config/FILE_LOCKING) \
    $(wildcard include/config/FSNOTIFY) \
    $(wildcard include/config/FS_ENCRYPTION) \
    $(wildcard include/config/FS_VERITY) \
    $(wildcard include/config/EPOLL) \
    $(wildcard include/config/UNICODE) \
    $(wildcard include/config/QUOTA) \
    $(wildcard include/config/FS_DAX) \
    $(wildcard include/config/BLOCK) \
  /usr/lib/modules/6.13.6-1-aarch64-ARCH/build/include/linux/wait_bit.h \
  /usr/lib/modules/6.13.6-1-aarch64-ARCH/build/include/linux/kdev_t.h \
  /usr/lib/modules/6.13.6-1-aarch64-ARCH/build/include/uapi/linux/kdev_t.h \
  /usr/lib/modules/6.13.6-1-aarch64-ARCH/build/include/linux/dcache.h \
  /usr/lib/modules/6.13.6-1-aarch64-ARCH/build/include/linux/rculist.h \
    $(wildcard include/config/PROVE_RCU_LIST) \
  /usr/lib/modules/6.13.6-1-aarch64-ARCH/build/include/linux/rculist_bl.h \
  /usr/lib/modules/6.13.6-1-aarch64-ARCH/build/include/linux/list_bl.h \
  /usr/lib/modules/6.13.6-1-aarch64-ARCH/build/include/linux/bit_spinlock.h \
  /usr/lib/modules/6.13.6-1-aarch64-ARCH/build/include/linux/lockref.h \
    $(wildcard include/config/ARCH_USE_CMPXCHG_LOCKREF) \
  /usr/lib/modules/6.13.6-1-aarch64-ARCH/build/include/linux/stringhash.h \
    $(wildcard include/config/DCACHE_WORD_ACCESS) \
  /usr/lib/modules/6.13.6-1-aarch64-ARCH/build/include/linux/hash.h \
    $(wildcard include/config/HAVE_ARCH_HASH) \
  /usr/lib/modules/6.13.6-1-aarch64-ARCH/build/include/linux/path.h \
  /usr/lib/modules/6.13.6-1-aarch64-ARCH/build/include/linux/list_lru.h \
  /usr/lib/modules/6.13.6-1-aarch64-ARCH/build/include/linux/shrinker.h \
    $(wildcard include/config/SHRINKER_DEBUG) \
  /usr/lib/modules/6.13.6-1-aarch64-ARCH/build/include/linux/xarray.h \
    $(wildcard include/config/XARRAY_MULTI) \
  /usr/lib/modules/6.13.6-1-aarch64-ARCH/build/include/linux/sched/mm.h \
    $(wildcard include/config/MMU_LAZY_TLB_REFCOUNT) \
    $(wildcard include/config/ARCH_HAS_MEMBARRIER_CALLBACKS) \
  /usr/lib/modules/6.13.6-1-aarch64-ARCH/build/include/linux/sync_core.h \
    $(wildcard include/config/ARCH_HAS_SYNC_CORE_BEFORE_USERMODE) \
    $(wildcard include/config/ARCH_HAS_PREPARE_SYNC_CORE_CMD) \
  /usr/lib/modules/6.13.6-1-aarch64-ARCH/build/include/linux/sched/coredump.h \
  /usr/lib/modules/6.13.6-1-aarch64-ARCH/build/include/linux/radix-tree.h \
  /usr/lib/modules/6.13.6-1-aarch64-ARCH/build/include/linux/pid.h \
  /usr/lib/modules/6.13.6-1-aarch64-ARCH/build/include/linux/capability.h \
  /usr/lib/modules/6.13.6-1-aarch64-ARCH/build/include/uapi/linux/capability.h \
  /usr/lib/modules/6.13.6-1-aarch64-ARCH/build/include/linux/semaphore.h \
  /usr/lib/modules/6.13.6-1-aarch64-ARCH/build/include/linux/fcntl.h \
    $(wildcard include/config/ARCH_32BIT_OFF_T) \
  /usr/lib/modules/6.13.6-1-aarch64-ARCH/build/include/uapi/linux/fcntl.h \
  /usr/lib/modules/6.13.6-1-aarch64-ARCH/build/arch/arm64/include/uapi/asm/fcntl.h \
  /usr/lib/modules/6.13.6-1-aarch64-ARCH/build/include/uapi/asm-generic/fcntl.h \
  /usr/lib/modules/6.13.6-1-aarch64-ARCH/build/include/uapi/linux/openat2.h \
  /usr/lib/modules/6.13.6-1-aarch64-ARCH/build/include/linux/migrate_mode.h \
  /usr/lib/modules/6.13.6-1-aarch64-ARCH/build/include/linux/percpu-rwsem.h \
  /usr/lib/modules/6.13.6-1-aarch64-ARCH/build/include/linux/rcuwait.h \
  /usr/lib/modules/6.13.6-1-aarch64-ARCH/build/include/linux/sched/signal.h \
    $(wildcard include/config/SCHED_AUTOGROUP) \
    $(wildcard include/config/BSD_PROCESS_ACCT) \
    $(wildcard include/config/TASKSTATS) \
  /usr/lib/modules/6.13.6-1-aarch64-ARCH/build/include/linux/signal.h \
    $(wildcard include/config/DYNAMIC_SIGFRAME) \
    $(wildcard include/config/PROC_FS) \
  /usr/lib/modules/6.13.6-1-aarch64-ARCH/build/include/linux/sched/jobctl.h \
  /usr/lib/modules/6.13.6-1-aarch64-ARCH/build/include/linux/sched/task.h \
    $(wildcard include/config/HAVE_EXIT_THREAD) \
    $(wildcard include/config/ARCH_WANTS_DYNAMIC_TASK_STRUCT) \
    $(wildcard include/config/HAVE_ARCH_THREAD_STRUCT_WHITELIST) \
  /usr/lib/modules/6.13.6-1-aarch64-ARCH/build/include/linux/uaccess.h \
    $(wildcard include/config/ARCH_HAS_SUBPAGE_FAULTS) \
  /usr/lib/modules/6.13.6-1-aarch64-ARCH/build/include/linux/fault-inject-usercopy.h \
    $(wildcard include/config/FAULT_INJECTION_USERCOPY) \
  /usr/lib/modules/6.13.6-1-aarch64-ARCH/build/include/linux/nospec.h \
  /usr/lib/modules/6.13.6-1-aarch64-ARCH/build/arch/arm64/include/asm/uaccess.h \
    $(wildcard include/config/CC_HAS_ASM_GOTO_OUTPUT) \
  /usr/lib/modules/6.13.6-1-aarch64-ARCH/build/arch/arm64/include/asm/kernel-pgtable.h \
    $(wildcard include/config/RELOCATABLE) \
  /usr/lib/modules/6.13.6-1-aarch64-ARCH/build/arch/arm64/include/asm/asm-extable.h \
  /usr/lib/modules/6.13.6-1-aarch64-ARCH/build/arch/arm64/include/asm/mte.h \
  /usr/lib/modules/6.13.6-1-aarch64-ARCH/build/arch/arm64/include/asm/extable.h \
    $(wildcard include/config/BPF_JIT) \
  /usr/lib/modules/6.13.6-1-aarch64-ARCH/build/include/asm-generic/access_ok.h \
    $(wildcard include/config/ALTERNATE_USER_ADDRESS_SPACE) \
  /usr/lib/modules/6.13.6-1-aarch64-ARCH/build/include/linux/cred.h \
  /usr/lib/modules/6.13.6-1-aarch64-ARCH/build/include/linux/key.h \
    $(wildcard include/config/KEY_NOTIFICATIONS) \
    $(wildcard include/config/NET) \
  /usr/lib/modules/6.13.6-1-aarch64-ARCH/build/include/linux/assoc_array.h \
    $(wildcard include/config/ASSOCIATIVE_ARRAY) \
  /usr/lib/modules/6.13.6-1-aarch64-ARCH/build/include/linux/sched/user.h \
    $(wildcard include/config/VFIO_PCI_ZDEV_KVM) \
    $(wildcard include/config/IOMMUFD) \
    $(wildcard include/config/WATCH_QUEUE) \
  /usr/lib/modules/6.13.6-1-aarch64-ARCH/build/include/linux/ratelimit.h \
  /usr/lib/modules/6.13.6-1-aarch64-ARCH/build/include/linux/posix-timers.h \
  /usr/lib/modules/6.13.6-1-aarch64-ARCH/build/include/linux/alarmtimer.h \
    $(wildcard include/config/RTC_CLASS) \
  /usr/lib/modules/6.13.6-1-aarch64-ARCH/build/include/linux/hrtimer.h \
    $(wildcard include/config/HIGH_RES_TIMERS) \
    $(wildcard include/config/TIME_LOW_RES) \
    $(wildcard include/config/TIMERFD) \
  /usr/lib/modules/6.13.6-1-aarch64-ARCH/build/include/linux/hrtimer_defs.h \
  /usr/lib/modules/6.13.6-1-aarch64-ARCH/build/include/linux/timerqueue.h \
  /usr/lib/modules/6.13.6-1-aarch64-ARCH/build/include/linux/rcuref.h \
  /usr/lib/modules/6.13.6-1-aarch64-ARCH/build/include/linux/rcu_sync.h \
  /usr/lib/modules/6.13.6-1-aarch64-ARCH/build/include/linux/delayed_call.h \
  /usr/lib/modules/6.13.6-1-aarch64-ARCH/build/include/linux/uuid.h \
  /usr/lib/modules/6.13.6-1-aarch64-ARCH/build/include/linux/errseq.h \
  /usr/lib/modules/6.13.6-1-aarch64-ARCH/build/include/linux/ioprio.h \
  /usr/lib/modules/6.13.6-1-aarch64-ARCH/build/include/linux/sched/rt.h \
  /usr/lib/modules/6.13.6-1-aarch64-ARCH/build/include/linux/iocontext.h \
    $(wildcard include/config/BLK_ICQ) \
  /usr/lib/modules/6.13.6-1-aarch64-ARCH/build/include/uapi/linux/ioprio.h \
  /usr/lib/modules/6.13.6-1-aarch64-ARCH/build/include/linux/fs_types.h \
  /usr/lib/modules/6.13.6-1-aarch64-ARCH/build/include/linux/mount.h \
  /usr/lib/modules/6.13.6-1-aarch64-ARCH/build/include/linux/mnt_idmapping.h \
  /usr/lib/modules/6.13.6-1-aarch64-ARCH/build/include/linux/slab.h \
    $(wildcard include/config/FAILSLAB) \
    $(wildcard include/config/KFENCE) \
    $(wildcard include/config/SLUB_TINY) \
    $(wildcard include/config/SLUB_DEBUG) \
    $(wildcard include/config/SLAB_FREELIST_HARDENED) \
    $(wildcard include/config/SLAB_BUCKETS) \
  /usr/lib/modules/6.13.6-1-aarch64-ARCH/build/include/linux/percpu-refcount.h \
  /usr/lib/modules/6.13.6-1-aarch64-ARCH/build/include/linux/rw_hint.h \
  /usr/lib/modules/6.13.6-1-aarch64-ARCH/build/include/linux/file_ref.h \
  /usr/lib/modules/6.13.6-1-aarch64-ARCH/build/include/linux/unicode.h \
  /usr/lib/modules/6.13.6-1-aarch64-ARCH/build/include/uapi/linux/fs.h \
  /usr/lib/modules/6.13.6-1-aarch64-ARCH/build/include/linux/quota.h \
    $(wildcard include/config/QUOTA_NETLINK_INTERFACE) \
  /usr/lib/modules/6.13.6-1-aarch64-ARCH/build/include/uapi/linux/dqblk_xfs.h \
  /usr/lib/modules/6.13.6-1-aarch64-ARCH/build/include/linux/dqblk_v1.h \
  /usr/lib/modules/6.13.6-1-aarch64-ARCH/build/include/linux/dqblk_v2.h \
  /usr/lib/modules/6.13.6-1-aarch64-ARCH/build/include/linux/dqblk_qtree.h \
  /usr/lib/modules/6.13.6-1-aarch64-ARCH/build/include/linux/projid.h \
  /usr/lib/modules/6.13.6-1-aarch64-ARCH/build/include/uapi/linux/quota.h \
  /usr/lib/modules/6.13.6-1-aarch64-ARCH/build/include/linux/kobject.h \
    $(wildcard include/config/UEVENT_HELPER) \
    $(wildcard include/config/DEBUG_KOBJECT_RELEASE) \
  /usr/lib/modules/6.13.6-1-aarch64-ARCH/build/include/linux/sysfs.h \
  /usr/lib/modules/6.13.6-1-aarch64-ARCH/build/include/linux/kernfs.h \
    $(wildcard include/config/KERNFS) \
  /usr/lib/modules/6.13.6-1-aarch64-ARCH/build/include/linux/idr.h \
  /usr/lib/modules/6.13.6-1-aarch64-ARCH/build/include/linux/kobject_ns.h \
  /usr/lib/modules/6.13.6-1-aarch64-ARCH/build/include/linux/moduleparam.h \
    $(wildcard include/config/ALPHA) \
    $(wildcard include/config/PPC64) \
  /usr/lib/modules/6.13.6-1-aarch64-ARCH/build/include/linux/rbtree_latch.h \
  /usr/lib/modules/6.13.6-1-aarch64-ARCH/build/include/linux/error-injection.h \
  /usr/lib/modules/6.13.6-1-aarch64-ARCH/build/include/asm-generic/error-injection.h \
  /usr/lib/modules/6.13.6-1-aarch64-ARCH/build/include/linux/tracepoint-defs.h \
  /usr/lib/modules/6.13.6-1-aarch64-ARCH/build/arch/arm64/include/asm/module.h \
    $(wildcard include/config/DYNAMIC_FTRACE) \
  /usr/lib/modules/6.13.6-1-aarch64-ARCH/build/include/asm-generic/module.h \
    $(wildcard include/config/HAVE_MOD_ARCH_SPECIFIC) \
    $(wildcard include/config/MODULES_USE_ELF_REL) \
    $(wildcard include/config/MODULES_USE_ELF_RELA) \
  /usr/lib/modules/6.13.6-1-aarch64-ARCH/build/include/linux/export-internal.h \
    $(wildcard include/config/PARISC) \

jack.mod.o: $(deps_jack.mod.o)

$(deps_jack.mod.o):
