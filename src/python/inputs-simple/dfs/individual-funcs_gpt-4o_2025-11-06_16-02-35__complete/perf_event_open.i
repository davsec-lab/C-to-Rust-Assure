# 1 "dfs.c"
# 1 "<built-in>" 1
# 1 "<built-in>" 3
# 357 "<built-in>" 3
# 1 "<command line>" 1
# 1 "<built-in>" 2
# 1 "dfs.c" 2
# 1 "/usr/include/time.h" 1 3 4
# 25 "/usr/include/time.h" 3 4
# 1 "/usr/include/features.h" 1 3 4
# 402 "/usr/include/features.h" 3 4
# 1 "/usr/include/features-time64.h" 1 3 4
# 20 "/usr/include/features-time64.h" 3 4
# 1 "/usr/include/x86_64-linux-gnu/bits/wordsize.h" 1 3 4
# 21 "/usr/include/features-time64.h" 2 3 4
# 1 "/usr/include/x86_64-linux-gnu/bits/timesize.h" 1 3 4
# 19 "/usr/include/x86_64-linux-gnu/bits/timesize.h" 3 4
# 1 "/usr/include/x86_64-linux-gnu/bits/wordsize.h" 1 3 4
# 20 "/usr/include/x86_64-linux-gnu/bits/timesize.h" 2 3 4
# 22 "/usr/include/features-time64.h" 2 3 4
# 403 "/usr/include/features.h" 2 3 4
# 488 "/usr/include/features.h" 3 4
# 1 "/usr/include/stdc-predef.h" 1 3 4
# 489 "/usr/include/features.h" 2 3 4
# 510 "/usr/include/features.h" 3 4
# 1 "/usr/include/x86_64-linux-gnu/sys/cdefs.h" 1 3 4
# 730 "/usr/include/x86_64-linux-gnu/sys/cdefs.h" 3 4
# 1 "/usr/include/x86_64-linux-gnu/bits/wordsize.h" 1 3 4
# 731 "/usr/include/x86_64-linux-gnu/sys/cdefs.h" 2 3 4
# 1 "/usr/include/x86_64-linux-gnu/bits/long-double.h" 1 3 4
# 732 "/usr/include/x86_64-linux-gnu/sys/cdefs.h" 2 3 4
# 511 "/usr/include/features.h" 2 3 4
# 534 "/usr/include/features.h" 3 4
# 1 "/usr/include/x86_64-linux-gnu/gnu/stubs.h" 1 3 4
# 10 "/usr/include/x86_64-linux-gnu/gnu/stubs.h" 3 4
# 1 "/usr/include/x86_64-linux-gnu/gnu/stubs-64.h" 1 3 4
# 11 "/usr/include/x86_64-linux-gnu/gnu/stubs.h" 2 3 4
# 535 "/usr/include/features.h" 2 3 4
# 26 "/usr/include/time.h" 2 3 4
# 1 "/home/gabe/typedefextractor-target/lib/clang/14.0.0/include/stddef.h" 1 3 4
# 46 "/home/gabe/typedefextractor-target/lib/clang/14.0.0/include/stddef.h" 3 4
# 30 "/usr/include/time.h" 2 3 4
# 1 "/usr/include/x86_64-linux-gnu/bits/time.h" 1 3 4
# 26 "/usr/include/x86_64-linux-gnu/bits/time.h" 3 4
# 1 "/usr/include/x86_64-linux-gnu/bits/types.h" 1 3 4
# 27 "/usr/include/x86_64-linux-gnu/bits/types.h" 3 4
# 1 "/usr/include/x86_64-linux-gnu/bits/wordsize.h" 1 3 4
# 28 "/usr/include/x86_64-linux-gnu/bits/types.h" 2 3 4
# 1 "/usr/include/x86_64-linux-gnu/bits/timesize.h" 1 3 4
# 19 "/usr/include/x86_64-linux-gnu/bits/timesize.h" 3 4
# 1 "/usr/include/x86_64-linux-gnu/bits/wordsize.h" 1 3 4
# 20 "/usr/include/x86_64-linux-gnu/bits/timesize.h" 2 3 4
# 29 "/usr/include/x86_64-linux-gnu/bits/types.h" 2 3 4
# 141 "/usr/include/x86_64-linux-gnu/bits/types.h" 3 4
# 1 "/usr/include/x86_64-linux-gnu/bits/typesizes.h" 1 3 4
# 142 "/usr/include/x86_64-linux-gnu/bits/types.h" 2 3 4
# 1 "/usr/include/x86_64-linux-gnu/bits/time64.h" 1 3 4
# 143 "/usr/include/x86_64-linux-gnu/bits/types.h" 2 3 4
typedef int __pid_t;
typedef long int __time_t;
typedef long int __syscall_slong_t;
# 27 "/usr/include/x86_64-linux-gnu/bits/time.h" 2 3 4
# 34 "/usr/include/time.h" 2 3 4
# 1 "/usr/include/x86_64-linux-gnu/bits/types/clock_t.h" 1 3 4
# 38 "/usr/include/time.h" 2 3 4
# 1 "/usr/include/x86_64-linux-gnu/bits/types/time_t.h" 1 3 4
# 10 "/usr/include/x86_64-linux-gnu/bits/types/time_t.h" 3 4
# 39 "/usr/include/time.h" 2 3 4
# 1 "/usr/include/x86_64-linux-gnu/bits/types/struct_tm.h" 1 3 4
# 40 "/usr/include/time.h" 2 3 4
# 1 "/usr/include/x86_64-linux-gnu/bits/types/struct_timespec.h" 1 3 4
# 1 "/usr/include/x86_64-linux-gnu/bits/endian.h" 1 3 4
# 35 "/usr/include/x86_64-linux-gnu/bits/endian.h" 3 4
# 1 "/usr/include/x86_64-linux-gnu/bits/endianness.h" 1 3 4
# 36 "/usr/include/x86_64-linux-gnu/bits/endian.h" 2 3 4
# 7 "/usr/include/x86_64-linux-gnu/bits/types/struct_timespec.h" 2 3 4
struct timespec
{
  __time_t tv_sec;
  __syscall_slong_t tv_nsec;
# 31 "/usr/include/x86_64-linux-gnu/bits/types/struct_timespec.h" 3 4
};
# 43 "/usr/include/time.h" 2 3 4
# 1 "/usr/include/x86_64-linux-gnu/bits/types/clockid_t.h" 1 3 4
# 47 "/usr/include/time.h" 2 3 4
# 1 "/usr/include/x86_64-linux-gnu/bits/types/timer_t.h" 1 3 4
# 48 "/usr/include/time.h" 2 3 4
# 1 "/usr/include/x86_64-linux-gnu/bits/types/struct_itimerspec.h" 1 3 4
# 49 "/usr/include/time.h" 2 3 4
struct sigevent;
typedef __pid_t pid_t;
# 1 "/usr/include/x86_64-linux-gnu/bits/types/locale_t.h" 1 3 4
# 22 "/usr/include/x86_64-linux-gnu/bits/types/locale_t.h" 3 4
# 1 "/usr/include/x86_64-linux-gnu/bits/types/__locale_t.h" 1 3 4
# 27 "/usr/include/x86_64-linux-gnu/bits/types/__locale_t.h" 3 4
# 23 "/usr/include/x86_64-linux-gnu/bits/types/locale_t.h" 2 3 4
# 61 "/usr/include/time.h" 2 3 4
# 72 "/usr/include/time.h" 3 4
# 99 "/usr/include/time.h" 3 4
# 116 "/usr/include/time.h" 3 4
# 132 "/usr/include/time.h" 3 4
# 154 "/usr/include/time.h" 3 4
# 179 "/usr/include/time.h" 3 4
# 197 "/usr/include/time.h" 3 4
# 217 "/usr/include/time.h" 3 4
# 246 "/usr/include/time.h" 3 4
# 263 "/usr/include/time.h" 3 4
# 281 "/usr/include/time.h" 3 4
# 323 "/usr/include/time.h" 3 4
# 338 "/usr/include/time.h" 3 4
# 376 "/usr/include/time.h" 3 4
# 2 "dfs.c" 2
# 1 "/usr/include/err.h" 1 3 4
# 25 "/usr/include/err.h" 3 4
# 1 "/home/gabe/typedefextractor-target/lib/clang/14.0.0/include/stdarg.h" 1 3 4
# 14 "/home/gabe/typedefextractor-target/lib/clang/14.0.0/include/stdarg.h" 3 4
# 32 "/home/gabe/typedefextractor-target/lib/clang/14.0.0/include/stdarg.h" 3 4
# 26 "/usr/include/err.h" 2 3 4
# 1 "/usr/include/x86_64-linux-gnu/bits/floatn.h" 1 3 4
# 119 "/usr/include/x86_64-linux-gnu/bits/floatn.h" 3 4
# 1 "/usr/include/x86_64-linux-gnu/bits/floatn-common.h" 1 3 4
# 24 "/usr/include/x86_64-linux-gnu/bits/floatn-common.h" 3 4
# 1 "/usr/include/x86_64-linux-gnu/bits/long-double.h" 1 3 4
# 25 "/usr/include/x86_64-linux-gnu/bits/floatn-common.h" 2 3 4
# 214 "/usr/include/x86_64-linux-gnu/bits/floatn-common.h" 3 4
# 251 "/usr/include/x86_64-linux-gnu/bits/floatn-common.h" 3 4
# 268 "/usr/include/x86_64-linux-gnu/bits/floatn-common.h" 3 4
# 285 "/usr/include/x86_64-linux-gnu/bits/floatn-common.h" 3 4
# 120 "/usr/include/x86_64-linux-gnu/bits/floatn.h" 2 3 4
# 56 "/usr/include/err.h" 2 3 4
# 3 "dfs.c" 2
# 1 "/usr/include/linux/perf_event.h" 1 3 4
# 18 "/usr/include/linux/perf_event.h" 3 4
# 1 "/usr/include/linux/types.h" 1 3 4
# 1 "/usr/include/x86_64-linux-gnu/asm/types.h" 1 3 4
# 1 "/usr/include/asm-generic/types.h" 1 3 4
# 1 "/usr/include/asm-generic/int-ll64.h" 1 3 4
# 12 "/usr/include/asm-generic/int-ll64.h" 3 4
# 1 "/usr/include/x86_64-linux-gnu/asm/bitsperlong.h" 1 3 4
# 11 "/usr/include/x86_64-linux-gnu/asm/bitsperlong.h" 3 4
# 1 "/usr/include/asm-generic/bitsperlong.h" 1 3 4
# 12 "/usr/include/x86_64-linux-gnu/asm/bitsperlong.h" 2 3 4
# 13 "/usr/include/asm-generic/int-ll64.h" 2 3 4
typedef unsigned short __u16;
typedef __signed__ int __s32;
typedef unsigned int __u32;
 typedef unsigned long long __u64;
# 8 "/usr/include/asm-generic/types.h" 2 3 4
# 2 "/usr/include/x86_64-linux-gnu/asm/types.h" 2 3 4
# 6 "/usr/include/linux/types.h" 2 3 4
# 1 "/usr/include/linux/posix_types.h" 1 3 4
# 1 "/usr/include/linux/stddef.h" 1 3 4
# 6 "/usr/include/linux/posix_types.h" 2 3 4
# 25 "/usr/include/linux/posix_types.h" 3 4
# 1 "/usr/include/x86_64-linux-gnu/asm/posix_types.h" 1 3 4
# 1 "/usr/include/x86_64-linux-gnu/asm/posix_types_64.h" 1 3 4
# 11 "/usr/include/x86_64-linux-gnu/asm/posix_types_64.h" 3 4
# 1 "/usr/include/asm-generic/posix_types.h" 1 3 4
# 15 "/usr/include/asm-generic/posix_types.h" 3 4
# 72 "/usr/include/asm-generic/posix_types.h" 3 4
# 19 "/usr/include/x86_64-linux-gnu/asm/posix_types_64.h" 2 3 4
# 8 "/usr/include/x86_64-linux-gnu/asm/posix_types.h" 2 3 4
# 37 "/usr/include/linux/posix_types.h" 2 3 4
# 10 "/usr/include/linux/types.h" 2 3 4
# 31 "/usr/include/linux/types.h" 3 4
# 54 "/usr/include/linux/types.h" 3 4
# 19 "/usr/include/linux/perf_event.h" 2 3 4
# 1 "/usr/include/linux/ioctl.h" 1 3 4
# 1 "/usr/include/x86_64-linux-gnu/asm/ioctl.h" 1 3 4
# 1 "/usr/include/asm-generic/ioctl.h" 1 3 4
# 2 "/usr/include/x86_64-linux-gnu/asm/ioctl.h" 2 3 4
# 6 "/usr/include/linux/ioctl.h" 2 3 4
# 20 "/usr/include/linux/perf_event.h" 2 3 4
# 1 "/usr/include/x86_64-linux-gnu/asm/byteorder.h" 1 3 4
# 1 "/usr/include/linux/byteorder/little_endian.h" 1 3 4
# 14 "/usr/include/linux/byteorder/little_endian.h" 3 4
# 1 "/usr/include/linux/swab.h" 1 3 4
# 1 "/usr/include/x86_64-linux-gnu/asm/swab.h" 1 3 4
# 9 "/usr/include/linux/swab.h" 2 3 4
# 48 "/usr/include/linux/swab.h" 3 4
# 136 "/usr/include/linux/swab.h" 3 4
# 171 "/usr/include/linux/swab.h" 3 4
# 15 "/usr/include/linux/byteorder/little_endian.h" 2 3 4
# 45 "/usr/include/linux/byteorder/little_endian.h" 3 4
# 6 "/usr/include/x86_64-linux-gnu/asm/byteorder.h" 2 3 4
# 21 "/usr/include/linux/perf_event.h" 2 3 4
enum perf_type_id {
 PERF_TYPE_HARDWARE = 0,
 PERF_TYPE_SOFTWARE = 1,
 PERF_TYPE_TRACEPOINT = 2,
 PERF_TYPE_HW_CACHE = 3,
 PERF_TYPE_RAW = 4,
 PERF_TYPE_BREAKPOINT = 5,
 PERF_TYPE_MAX,
};
# 60 "/usr/include/linux/perf_event.h" 3 4
enum perf_hw_id {
 PERF_COUNT_HW_CPU_CYCLES = 0,
 PERF_COUNT_HW_INSTRUCTIONS = 1,
 PERF_COUNT_HW_CACHE_REFERENCES = 2,
 PERF_COUNT_HW_CACHE_MISSES = 3,
 PERF_COUNT_HW_BRANCH_INSTRUCTIONS = 4,
 PERF_COUNT_HW_BRANCH_MISSES = 5,
 PERF_COUNT_HW_BUS_CYCLES = 6,
 PERF_COUNT_HW_STALLED_CYCLES_FRONTEND = 7,
 PERF_COUNT_HW_STALLED_CYCLES_BACKEND = 8,
 PERF_COUNT_HW_REF_CPU_CYCLES = 9,
 PERF_COUNT_HW_MAX,
};
# 85 "/usr/include/linux/perf_event.h" 3 4
enum perf_hw_cache_id {
 PERF_COUNT_HW_CACHE_L1D = 0,
 PERF_COUNT_HW_CACHE_L1I = 1,
 PERF_COUNT_HW_CACHE_LL = 2,
 PERF_COUNT_HW_CACHE_DTLB = 3,
 PERF_COUNT_HW_CACHE_ITLB = 4,
 PERF_COUNT_HW_CACHE_BPU = 5,
 PERF_COUNT_HW_CACHE_NODE = 6,
 PERF_COUNT_HW_CACHE_MAX,
};
enum perf_hw_cache_op_id {
 PERF_COUNT_HW_CACHE_OP_READ = 0,
 PERF_COUNT_HW_CACHE_OP_WRITE = 1,
 PERF_COUNT_HW_CACHE_OP_PREFETCH = 2,
 PERF_COUNT_HW_CACHE_OP_MAX,
};
enum perf_hw_cache_op_result_id {
 PERF_COUNT_HW_CACHE_RESULT_ACCESS = 0,
 PERF_COUNT_HW_CACHE_RESULT_MISS = 1,
 PERF_COUNT_HW_CACHE_RESULT_MAX,
};
enum perf_sw_ids {
 PERF_COUNT_SW_CPU_CLOCK = 0,
 PERF_COUNT_SW_TASK_CLOCK = 1,
 PERF_COUNT_SW_PAGE_FAULTS = 2,
 PERF_COUNT_SW_CONTEXT_SWITCHES = 3,
 PERF_COUNT_SW_CPU_MIGRATIONS = 4,
 PERF_COUNT_SW_PAGE_FAULTS_MIN = 5,
 PERF_COUNT_SW_PAGE_FAULTS_MAJ = 6,
 PERF_COUNT_SW_ALIGNMENT_FAULTS = 7,
 PERF_COUNT_SW_EMULATION_FAULTS = 8,
 PERF_COUNT_SW_DUMMY = 9,
 PERF_COUNT_SW_BPF_OUTPUT = 10,
 PERF_COUNT_SW_CGROUP_SWITCHES = 11,
 PERF_COUNT_SW_MAX,
};
enum perf_event_sample_format {
 PERF_SAMPLE_IP = 1U << 0,
 PERF_SAMPLE_TID = 1U << 1,
 PERF_SAMPLE_TIME = 1U << 2,
 PERF_SAMPLE_ADDR = 1U << 3,
 PERF_SAMPLE_READ = 1U << 4,
 PERF_SAMPLE_CALLCHAIN = 1U << 5,
 PERF_SAMPLE_ID = 1U << 6,
 PERF_SAMPLE_CPU = 1U << 7,
 PERF_SAMPLE_PERIOD = 1U << 8,
 PERF_SAMPLE_STREAM_ID = 1U << 9,
 PERF_SAMPLE_RAW = 1U << 10,
 PERF_SAMPLE_BRANCH_STACK = 1U << 11,
 PERF_SAMPLE_REGS_USER = 1U << 12,
 PERF_SAMPLE_STACK_USER = 1U << 13,
 PERF_SAMPLE_WEIGHT = 1U << 14,
 PERF_SAMPLE_DATA_SRC = 1U << 15,
 PERF_SAMPLE_IDENTIFIER = 1U << 16,
 PERF_SAMPLE_TRANSACTION = 1U << 17,
 PERF_SAMPLE_REGS_INTR = 1U << 18,
 PERF_SAMPLE_PHYS_ADDR = 1U << 19,
 PERF_SAMPLE_AUX = 1U << 20,
 PERF_SAMPLE_CGROUP = 1U << 21,
 PERF_SAMPLE_DATA_PAGE_SIZE = 1U << 22,
 PERF_SAMPLE_CODE_PAGE_SIZE = 1U << 23,
 PERF_SAMPLE_WEIGHT_STRUCT = 1U << 24,
 PERF_SAMPLE_MAX = 1U << 25,
};
# 180 "/usr/include/linux/perf_event.h" 3 4
enum perf_branch_sample_type_shift {
 PERF_SAMPLE_BRANCH_USER_SHIFT = 0,
 PERF_SAMPLE_BRANCH_KERNEL_SHIFT = 1,
 PERF_SAMPLE_BRANCH_HV_SHIFT = 2,
 PERF_SAMPLE_BRANCH_ANY_SHIFT = 3,
 PERF_SAMPLE_BRANCH_ANY_CALL_SHIFT = 4,
 PERF_SAMPLE_BRANCH_ANY_RETURN_SHIFT = 5,
 PERF_SAMPLE_BRANCH_IND_CALL_SHIFT = 6,
 PERF_SAMPLE_BRANCH_ABORT_TX_SHIFT = 7,
 PERF_SAMPLE_BRANCH_IN_TX_SHIFT = 8,
 PERF_SAMPLE_BRANCH_NO_TX_SHIFT = 9,
 PERF_SAMPLE_BRANCH_COND_SHIFT = 10,
 PERF_SAMPLE_BRANCH_CALL_STACK_SHIFT = 11,
 PERF_SAMPLE_BRANCH_IND_JUMP_SHIFT = 12,
 PERF_SAMPLE_BRANCH_CALL_SHIFT = 13,
 PERF_SAMPLE_BRANCH_NO_FLAGS_SHIFT = 14,
 PERF_SAMPLE_BRANCH_NO_CYCLES_SHIFT = 15,
 PERF_SAMPLE_BRANCH_TYPE_SAVE_SHIFT = 16,
 PERF_SAMPLE_BRANCH_HW_INDEX_SHIFT = 17,
 PERF_SAMPLE_BRANCH_PRIV_SAVE_SHIFT = 18,
 PERF_SAMPLE_BRANCH_COUNTERS_SHIFT = 19,
 PERF_SAMPLE_BRANCH_MAX_SHIFT
};
enum perf_branch_sample_type {
 PERF_SAMPLE_BRANCH_USER = 1U << PERF_SAMPLE_BRANCH_USER_SHIFT,
 PERF_SAMPLE_BRANCH_KERNEL = 1U << PERF_SAMPLE_BRANCH_KERNEL_SHIFT,
 PERF_SAMPLE_BRANCH_HV = 1U << PERF_SAMPLE_BRANCH_HV_SHIFT,
 PERF_SAMPLE_BRANCH_ANY = 1U << PERF_SAMPLE_BRANCH_ANY_SHIFT,
 PERF_SAMPLE_BRANCH_ANY_CALL = 1U << PERF_SAMPLE_BRANCH_ANY_CALL_SHIFT,
 PERF_SAMPLE_BRANCH_ANY_RETURN = 1U << PERF_SAMPLE_BRANCH_ANY_RETURN_SHIFT,
 PERF_SAMPLE_BRANCH_IND_CALL = 1U << PERF_SAMPLE_BRANCH_IND_CALL_SHIFT,
 PERF_SAMPLE_BRANCH_ABORT_TX = 1U << PERF_SAMPLE_BRANCH_ABORT_TX_SHIFT,
 PERF_SAMPLE_BRANCH_IN_TX = 1U << PERF_SAMPLE_BRANCH_IN_TX_SHIFT,
 PERF_SAMPLE_BRANCH_NO_TX = 1U << PERF_SAMPLE_BRANCH_NO_TX_SHIFT,
 PERF_SAMPLE_BRANCH_COND = 1U << PERF_SAMPLE_BRANCH_COND_SHIFT,
 PERF_SAMPLE_BRANCH_CALL_STACK = 1U << PERF_SAMPLE_BRANCH_CALL_STACK_SHIFT,
 PERF_SAMPLE_BRANCH_IND_JUMP = 1U << PERF_SAMPLE_BRANCH_IND_JUMP_SHIFT,
 PERF_SAMPLE_BRANCH_CALL = 1U << PERF_SAMPLE_BRANCH_CALL_SHIFT,
 PERF_SAMPLE_BRANCH_NO_FLAGS = 1U << PERF_SAMPLE_BRANCH_NO_FLAGS_SHIFT,
 PERF_SAMPLE_BRANCH_NO_CYCLES = 1U << PERF_SAMPLE_BRANCH_NO_CYCLES_SHIFT,
 PERF_SAMPLE_BRANCH_TYPE_SAVE =
  1U << PERF_SAMPLE_BRANCH_TYPE_SAVE_SHIFT,
 PERF_SAMPLE_BRANCH_HW_INDEX = 1U << PERF_SAMPLE_BRANCH_HW_INDEX_SHIFT,
 PERF_SAMPLE_BRANCH_PRIV_SAVE = 1U << PERF_SAMPLE_BRANCH_PRIV_SAVE_SHIFT,
 PERF_SAMPLE_BRANCH_COUNTERS = 1U << PERF_SAMPLE_BRANCH_COUNTERS_SHIFT,
 PERF_SAMPLE_BRANCH_MAX = 1U << PERF_SAMPLE_BRANCH_MAX_SHIFT,
};
enum {
 PERF_BR_UNKNOWN = 0,
 PERF_BR_COND = 1,
 PERF_BR_UNCOND = 2,
 PERF_BR_IND = 3,
 PERF_BR_CALL = 4,
 PERF_BR_IND_CALL = 5,
 PERF_BR_RET = 6,
 PERF_BR_SYSCALL = 7,
 PERF_BR_SYSRET = 8,
 PERF_BR_COND_CALL = 9,
 PERF_BR_COND_RET = 10,
 PERF_BR_ERET = 11,
 PERF_BR_IRQ = 12,
 PERF_BR_SERROR = 13,
 PERF_BR_NO_TX = 14,
 PERF_BR_EXTEND_ABI = 15,
 PERF_BR_MAX,
};
enum {
 PERF_BR_SPEC_NA = 0,
 PERF_BR_SPEC_WRONG_PATH = 1,
 PERF_BR_NON_SPEC_CORRECT_PATH = 2,
 PERF_BR_SPEC_CORRECT_PATH = 3,
 PERF_BR_SPEC_MAX,
};
enum {
 PERF_BR_NEW_FAULT_ALGN = 0,
 PERF_BR_NEW_FAULT_DATA = 1,
 PERF_BR_NEW_FAULT_INST = 2,
 PERF_BR_NEW_ARCH_1 = 3,
 PERF_BR_NEW_ARCH_2 = 4,
 PERF_BR_NEW_ARCH_3 = 5,
 PERF_BR_NEW_ARCH_4 = 6,
 PERF_BR_NEW_ARCH_5 = 7,
 PERF_BR_NEW_MAX,
};
enum {
 PERF_BR_PRIV_UNKNOWN = 0,
 PERF_BR_PRIV_USER = 1,
 PERF_BR_PRIV_KERNEL = 2,
 PERF_BR_PRIV_HV = 3,
};
# 312 "/usr/include/linux/perf_event.h" 3 4
enum perf_sample_regs_abi {
 PERF_SAMPLE_REGS_ABI_NONE = 0,
 PERF_SAMPLE_REGS_ABI_32 = 1,
 PERF_SAMPLE_REGS_ABI_64 = 2,
};
enum {
 PERF_TXN_ELISION = (1 << 0),
 PERF_TXN_TRANSACTION = (1 << 1),
 PERF_TXN_SYNC = (1 << 2),
 PERF_TXN_ASYNC = (1 << 3),
 PERF_TXN_RETRY = (1 << 4),
 PERF_TXN_CONFLICT = (1 << 5),
 PERF_TXN_CAPACITY_WRITE = (1 << 6),
 PERF_TXN_CAPACITY_READ = (1 << 7),
 PERF_TXN_MAX = (1 << 8),
 PERF_TXN_ABORT_MASK = (0xffffffffULL << 32),
 PERF_TXN_ABORT_SHIFT = 32,
};
# 362 "/usr/include/linux/perf_event.h" 3 4
enum perf_event_read_format {
 PERF_FORMAT_TOTAL_TIME_ENABLED = 1U << 0,
 PERF_FORMAT_TOTAL_TIME_RUNNING = 1U << 1,
 PERF_FORMAT_ID = 1U << 2,
 PERF_FORMAT_GROUP = 1U << 3,
 PERF_FORMAT_LOST = 1U << 4,
 PERF_FORMAT_MAX = 1U << 5,
};
# 389 "/usr/include/linux/perf_event.h" 3 4
struct perf_event_attr {
 __u32 type;
 __u32 size;
 __u64 config;
 union {
  __u64 sample_period;
  __u64 sample_freq;
 };
 __u64 sample_type;
 __u64 read_format;
 __u64 disabled : 1,
    inherit : 1,
    pinned : 1,
    exclusive : 1,
    exclude_user : 1,
    exclude_kernel : 1,
    exclude_hv : 1,
    exclude_idle : 1,
    mmap : 1,
    comm : 1,
    freq : 1,
    inherit_stat : 1,
    enable_on_exec : 1,
    task : 1,
    watermark : 1,
# 439 "/usr/include/linux/perf_event.h" 3 4
    precise_ip : 2,
    mmap_data : 1,
    sample_id_all : 1,
    exclude_host : 1,
    exclude_guest : 1,
    exclude_callchain_kernel : 1,
    exclude_callchain_user : 1,
    mmap2 : 1,
    comm_exec : 1,
    use_clockid : 1,
    context_switch : 1,
    write_backward : 1,
    namespaces : 1,
    ksymbol : 1,
    bpf_event : 1,
    aux_output : 1,
    cgroup : 1,
    text_poke : 1,
    build_id : 1,
    inherit_thread : 1,
    remove_on_exec : 1,
    sigtrap : 1,
    __reserved_1 : 26;
 union {
  __u32 wakeup_events;
  __u32 wakeup_watermark;
 };
 __u32 bp_type;
 union {
  __u64 bp_addr;
  __u64 kprobe_func;
  __u64 uprobe_path;
  __u64 config1;
 };
 union {
  __u64 bp_len;
  __u64 kprobe_addr;
  __u64 probe_offset;
  __u64 config2;
 };
 __u64 branch_sample_type;
 __u64 sample_regs_user;
 __u32 sample_stack_user;
 __s32 clockid;
# 505 "/usr/include/linux/perf_event.h" 3 4
 __u64 sample_regs_intr;
 __u32 aux_watermark;
 __u16 sample_max_stack;
 __u16 __reserved_2;
 __u32 aux_sample_size;
 __u32 __reserved_3;
 __u64 sig_data;
 __u64 config3;
};
# 564 "/usr/include/linux/perf_event.h" 3 4
enum perf_event_ioc_flags {
 PERF_IOC_FLAG_GROUP = 1U << 0,
};
# 815 "/usr/include/linux/perf_event.h" 3 4
enum {
 NET_NS_INDEX = 0,
 UTS_NS_INDEX = 1,
 IPC_NS_INDEX = 2,
 PID_NS_INDEX = 3,
 USER_NS_INDEX = 4,
 MNT_NS_INDEX = 5,
 CGROUP_NS_INDEX = 6,
 NR_NAMESPACES,
};
enum perf_event_type {
# 879 "/usr/include/linux/perf_event.h" 3 4
 PERF_RECORD_MMAP = 1,
# 889 "/usr/include/linux/perf_event.h" 3 4
 PERF_RECORD_LOST = 2,
# 900 "/usr/include/linux/perf_event.h" 3 4
 PERF_RECORD_COMM = 3,
# 911 "/usr/include/linux/perf_event.h" 3 4
 PERF_RECORD_EXIT = 4,
# 922 "/usr/include/linux/perf_event.h" 3 4
 PERF_RECORD_THROTTLE = 5,
 PERF_RECORD_UNTHROTTLE = 6,
# 934 "/usr/include/linux/perf_event.h" 3 4
 PERF_RECORD_FORK = 7,
# 945 "/usr/include/linux/perf_event.h" 3 4
 PERF_RECORD_READ = 8,
# 1033 "/usr/include/linux/perf_event.h" 3 4
 PERF_RECORD_SAMPLE = 9,
# 1065 "/usr/include/linux/perf_event.h" 3 4
 PERF_RECORD_MMAP2 = 10,
# 1079 "/usr/include/linux/perf_event.h" 3 4
 PERF_RECORD_AUX = 11,
# 1091 "/usr/include/linux/perf_event.h" 3 4
 PERF_RECORD_ITRACE_START = 12,
# 1103 "/usr/include/linux/perf_event.h" 3 4
 PERF_RECORD_LOST_SAMPLES = 13,
# 1115 "/usr/include/linux/perf_event.h" 3 4
 PERF_RECORD_SWITCH = 14,
# 1129 "/usr/include/linux/perf_event.h" 3 4
 PERF_RECORD_SWITCH_CPU_WIDE = 15,
# 1141 "/usr/include/linux/perf_event.h" 3 4
 PERF_RECORD_NAMESPACES = 16,
# 1156 "/usr/include/linux/perf_event.h" 3 4
 PERF_RECORD_KSYMBOL = 17,
# 1175 "/usr/include/linux/perf_event.h" 3 4
 PERF_RECORD_BPF_EVENT = 18,
# 1185 "/usr/include/linux/perf_event.h" 3 4
 PERF_RECORD_CGROUP = 19,
# 1203 "/usr/include/linux/perf_event.h" 3 4
 PERF_RECORD_TEXT_POKE = 20,
# 1218 "/usr/include/linux/perf_event.h" 3 4
 PERF_RECORD_AUX_OUTPUT_HW_ID = 21,
 PERF_RECORD_MAX,
};
enum perf_record_ksymbol_type {
 PERF_RECORD_KSYMBOL_TYPE_UNKNOWN = 0,
 PERF_RECORD_KSYMBOL_TYPE_BPF = 1,
 PERF_RECORD_KSYMBOL_TYPE_OOL = 2,
 PERF_RECORD_KSYMBOL_TYPE_MAX
};
enum perf_bpf_event_type {
 PERF_BPF_EVENT_UNKNOWN = 0,
 PERF_BPF_EVENT_PROG_LOAD = 1,
 PERF_BPF_EVENT_PROG_UNLOAD = 2,
 PERF_BPF_EVENT_MAX,
};
enum perf_callchain_context {
 PERF_CONTEXT_HV = (__u64)-32,
 PERF_CONTEXT_KERNEL = (__u64)-128,
 PERF_CONTEXT_USER = (__u64)-512,
 PERF_CONTEXT_GUEST = (__u64)-2048,
 PERF_CONTEXT_GUEST_KERNEL = (__u64)-2176,
 PERF_CONTEXT_GUEST_USER = (__u64)-2560,
 PERF_CONTEXT_MAX = (__u64)-4095,
};
# 1277 "/usr/include/linux/perf_event.h" 3 4
union perf_mem_data_src {
 __u64 val;
 struct {
  __u64 mem_op:5,
   mem_lvl:14,
   mem_snoop:5,
   mem_lock:2,
   mem_dtlb:7,
   mem_lvl_num:4,
   mem_remote:1,
   mem_snoopx:2,
   mem_blk:3,
   mem_hops:3,
   mem_rsvd:18;
 };
};
# 1427 "/usr/include/linux/perf_event.h" 3 4
union perf_sample_weight {
 __u64 full;
 struct {
  __u32 var1_dw;
  __u16 var2_w;
  __u16 var3_w;
 };
# 1462 "/usr/include/linux/perf_event.h" 3 4
};
# 4 "dfs.c" 2
# 1 "/usr/include/stdio.h" 1 3 4
# 28 "/usr/include/stdio.h" 3 4
# 1 "/usr/include/x86_64-linux-gnu/bits/libc-header-start.h" 1 3 4
# 29 "/usr/include/stdio.h" 2 3 4
# 1 "/home/gabe/typedefextractor-target/lib/clang/14.0.0/include/stddef.h" 1 3 4
# 35 "/usr/include/stdio.h" 2 3 4
# 1 "/usr/include/x86_64-linux-gnu/bits/types/__fpos_t.h" 1 3 4
# 1 "/usr/include/x86_64-linux-gnu/bits/types/__mbstate_t.h" 1 3 4
# 13 "/usr/include/x86_64-linux-gnu/bits/types/__mbstate_t.h" 3 4
# 6 "/usr/include/x86_64-linux-gnu/bits/types/__fpos_t.h" 2 3 4
# 41 "/usr/include/stdio.h" 2 3 4
# 1 "/usr/include/x86_64-linux-gnu/bits/types/__fpos64_t.h" 1 3 4
# 10 "/usr/include/x86_64-linux-gnu/bits/types/__fpos64_t.h" 3 4
# 42 "/usr/include/stdio.h" 2 3 4
# 1 "/usr/include/x86_64-linux-gnu/bits/types/__FILE.h" 1 3 4
struct _IO_FILE;
# 43 "/usr/include/stdio.h" 2 3 4
# 1 "/usr/include/x86_64-linux-gnu/bits/types/FILE.h" 1 3 4
struct _IO_FILE;
# 44 "/usr/include/stdio.h" 2 3 4
# 1 "/usr/include/x86_64-linux-gnu/bits/types/struct_FILE.h" 1 3 4
# 35 "/usr/include/x86_64-linux-gnu/bits/types/struct_FILE.h" 3 4
struct _IO_FILE;
struct _IO_marker;
struct _IO_codecvt;
struct _IO_wide_data;
# 45 "/usr/include/stdio.h" 2 3 4
# 1 "/usr/include/x86_64-linux-gnu/bits/types/cookie_io_functions_t.h" 1 3 4
# 27 "/usr/include/x86_64-linux-gnu/bits/types/cookie_io_functions_t.h" 3 4
# 48 "/usr/include/stdio.h" 2 3 4
# 64 "/usr/include/stdio.h" 3 4
# 78 "/usr/include/stdio.h" 3 4
# 129 "/usr/include/stdio.h" 3 4
# 1 "/usr/include/x86_64-linux-gnu/bits/stdio_lim.h" 1 3 4
# 130 "/usr/include/stdio.h" 2 3 4
# 149 "/usr/include/stdio.h" 3 4
# 184 "/usr/include/stdio.h" 3 4
# 194 "/usr/include/stdio.h" 3 4
# 211 "/usr/include/stdio.h" 3 4
# 228 "/usr/include/stdio.h" 3 4
# 245 "/usr/include/stdio.h" 3 4
# 264 "/usr/include/stdio.h" 3 4
# 299 "/usr/include/stdio.h" 3 4
# 334 "/usr/include/stdio.h" 3 4
# 463 "/usr/include/stdio.h" 3 4
# 490 "/usr/include/stdio.h" 3 4
# 540 "/usr/include/stdio.h" 3 4
# 575 "/usr/include/stdio.h" 3 4
# 600 "/usr/include/stdio.h" 3 4
# 611 "/usr/include/stdio.h" 3 4
# 627 "/usr/include/stdio.h" 3 4
# 689 "/usr/include/stdio.h" 3 4
# 756 "/usr/include/stdio.h" 3 4
# 793 "/usr/include/stdio.h" 3 4
# 819 "/usr/include/stdio.h" 3 4
# 850 "/usr/include/stdio.h" 3 4
# 887 "/usr/include/stdio.h" 3 4
# 931 "/usr/include/stdio.h" 3 4
# 949 "/usr/include/stdio.h" 3 4
# 5 "dfs.c" 2
# 1 "/usr/include/stdlib.h" 1 3 4
# 26 "/usr/include/stdlib.h" 3 4
# 1 "/usr/include/x86_64-linux-gnu/bits/libc-header-start.h" 1 3 4
# 27 "/usr/include/stdlib.h" 2 3 4
# 1 "/home/gabe/typedefextractor-target/lib/clang/14.0.0/include/stddef.h" 1 3 4
# 74 "/home/gabe/typedefextractor-target/lib/clang/14.0.0/include/stddef.h" 3 4
# 33 "/usr/include/stdlib.h" 2 3 4
# 1 "/usr/include/x86_64-linux-gnu/bits/waitflags.h" 1 3 4
# 41 "/usr/include/stdlib.h" 2 3 4
# 1 "/usr/include/x86_64-linux-gnu/bits/waitstatus.h" 1 3 4
# 42 "/usr/include/stdlib.h" 2 3 4
# 59 "/usr/include/stdlib.h" 3 4
# 98 "/usr/include/stdlib.h" 3 4
# 177 "/usr/include/stdlib.h" 3 4
# 505 "/usr/include/stdlib.h" 3 4
# 1 "/usr/include/x86_64-linux-gnu/sys/types.h" 1 3 4
# 33 "/usr/include/x86_64-linux-gnu/sys/types.h" 3 4
# 59 "/usr/include/x86_64-linux-gnu/sys/types.h" 3 4
# 103 "/usr/include/x86_64-linux-gnu/sys/types.h" 3 4
# 114 "/usr/include/x86_64-linux-gnu/sys/types.h" 3 4
# 144 "/usr/include/x86_64-linux-gnu/sys/types.h" 3 4
# 1 "/home/gabe/typedefextractor-target/lib/clang/14.0.0/include/stddef.h" 1 3 4
# 145 "/usr/include/x86_64-linux-gnu/sys/types.h" 2 3 4
# 1 "/usr/include/x86_64-linux-gnu/bits/stdint-intn.h" 1 3 4
# 24 "/usr/include/x86_64-linux-gnu/bits/stdint-intn.h" 3 4
# 156 "/usr/include/x86_64-linux-gnu/sys/types.h" 2 3 4
# 176 "/usr/include/x86_64-linux-gnu/sys/types.h" 3 4
# 1 "/usr/include/endian.h" 1 3 4
# 35 "/usr/include/endian.h" 3 4
# 1 "/usr/include/x86_64-linux-gnu/bits/byteswap.h" 1 3 4
# 33 "/usr/include/x86_64-linux-gnu/bits/byteswap.h" 3 4
# 69 "/usr/include/x86_64-linux-gnu/bits/byteswap.h" 3 4
# 36 "/usr/include/endian.h" 2 3 4
# 1 "/usr/include/x86_64-linux-gnu/bits/uintn-identity.h" 1 3 4
# 32 "/usr/include/x86_64-linux-gnu/bits/uintn-identity.h" 3 4
# 37 "/usr/include/endian.h" 2 3 4
# 177 "/usr/include/x86_64-linux-gnu/sys/types.h" 2 3 4
# 1 "/usr/include/x86_64-linux-gnu/sys/select.h" 1 3 4
# 30 "/usr/include/x86_64-linux-gnu/sys/select.h" 3 4
# 1 "/usr/include/x86_64-linux-gnu/bits/select.h" 1 3 4
# 31 "/usr/include/x86_64-linux-gnu/sys/select.h" 2 3 4
# 1 "/usr/include/x86_64-linux-gnu/bits/types/sigset_t.h" 1 3 4
# 1 "/usr/include/x86_64-linux-gnu/bits/types/__sigset_t.h" 1 3 4
typedef struct
{
  unsigned long int __val[(1024 / (8 * sizeof (unsigned long int)))];
} __sigset_t;
# 5 "/usr/include/x86_64-linux-gnu/bits/types/sigset_t.h" 2 3 4
# 34 "/usr/include/x86_64-linux-gnu/sys/select.h" 2 3 4
# 1 "/usr/include/x86_64-linux-gnu/bits/types/struct_timeval.h" 1 3 4
# 38 "/usr/include/x86_64-linux-gnu/sys/select.h" 2 3 4
typedef long int __fd_mask;
# 59 "/usr/include/x86_64-linux-gnu/sys/select.h" 3 4
typedef struct
  {
    __fd_mask __fds_bits[1024 / (8 * (int) sizeof (__fd_mask))];
  } fd_set;
# 102 "/usr/include/x86_64-linux-gnu/sys/select.h" 3 4
# 127 "/usr/include/x86_64-linux-gnu/sys/select.h" 3 4
# 180 "/usr/include/x86_64-linux-gnu/sys/types.h" 2 3 4
# 227 "/usr/include/x86_64-linux-gnu/sys/types.h" 3 4
# 1 "/usr/include/x86_64-linux-gnu/bits/pthreadtypes.h" 1 3 4
# 23 "/usr/include/x86_64-linux-gnu/bits/pthreadtypes.h" 3 4
# 1 "/usr/include/x86_64-linux-gnu/bits/thread-shared-types.h" 1 3 4
# 44 "/usr/include/x86_64-linux-gnu/bits/thread-shared-types.h" 3 4
# 1 "/usr/include/x86_64-linux-gnu/bits/pthreadtypes-arch.h" 1 3 4
# 21 "/usr/include/x86_64-linux-gnu/bits/pthreadtypes-arch.h" 3 4
# 1 "/usr/include/x86_64-linux-gnu/bits/wordsize.h" 1 3 4
# 22 "/usr/include/x86_64-linux-gnu/bits/pthreadtypes-arch.h" 2 3 4
# 45 "/usr/include/x86_64-linux-gnu/bits/thread-shared-types.h" 2 3 4
# 1 "/usr/include/x86_64-linux-gnu/bits/atomic_wide_counter.h" 1 3 4
# 25 "/usr/include/x86_64-linux-gnu/bits/atomic_wide_counter.h" 3 4
# 47 "/usr/include/x86_64-linux-gnu/bits/thread-shared-types.h" 2 3 4
# 76 "/usr/include/x86_64-linux-gnu/bits/thread-shared-types.h" 3 4
# 1 "/usr/include/x86_64-linux-gnu/bits/struct_mutex.h" 1 3 4
# 22 "/usr/include/x86_64-linux-gnu/bits/struct_mutex.h" 3 4
# 77 "/usr/include/x86_64-linux-gnu/bits/thread-shared-types.h" 2 3 4
# 89 "/usr/include/x86_64-linux-gnu/bits/thread-shared-types.h" 3 4
# 1 "/usr/include/x86_64-linux-gnu/bits/struct_rwlock.h" 1 3 4
# 23 "/usr/include/x86_64-linux-gnu/bits/struct_rwlock.h" 3 4
# 90 "/usr/include/x86_64-linux-gnu/bits/thread-shared-types.h" 2 3 4
# 24 "/usr/include/x86_64-linux-gnu/bits/pthreadtypes.h" 2 3 4
union pthread_attr_t
{
  char __size[56];
  long int __align;
};
# 228 "/usr/include/x86_64-linux-gnu/sys/types.h" 2 3 4
# 515 "/usr/include/stdlib.h" 2 3 4
# 1 "/usr/include/alloca.h" 1 3 4
# 24 "/usr/include/alloca.h" 3 4
# 1 "/home/gabe/typedefextractor-target/lib/clang/14.0.0/include/stddef.h" 1 3 4
# 25 "/usr/include/alloca.h" 2 3 4
# 707 "/usr/include/stdlib.h" 2 3 4
# 786 "/usr/include/stdlib.h" 3 4
# 814 "/usr/include/stdlib.h" 3 4
# 827 "/usr/include/stdlib.h" 3 4
# 849 "/usr/include/stdlib.h" 3 4
# 870 "/usr/include/stdlib.h" 3 4
# 923 "/usr/include/stdlib.h" 3 4
# 940 "/usr/include/stdlib.h" 3 4
# 960 "/usr/include/stdlib.h" 3 4
# 980 "/usr/include/stdlib.h" 3 4
# 1012 "/usr/include/stdlib.h" 3 4
# 1099 "/usr/include/stdlib.h" 3 4
# 1145 "/usr/include/stdlib.h" 3 4
# 1155 "/usr/include/stdlib.h" 3 4
# 1 "/usr/include/x86_64-linux-gnu/bits/stdlib-float.h" 1 3 4
# 1156 "/usr/include/stdlib.h" 2 3 4
# 6 "dfs.c" 2
# 1 "/usr/include/string.h" 1 3 4
# 26 "/usr/include/string.h" 3 4
# 1 "/usr/include/x86_64-linux-gnu/bits/libc-header-start.h" 1 3 4
# 27 "/usr/include/string.h" 2 3 4
# 1 "/home/gabe/typedefextractor-target/lib/clang/14.0.0/include/stddef.h" 1 3 4
# 34 "/usr/include/string.h" 2 3 4
# 43 "/usr/include/string.h" 3 4
# 80 "/usr/include/string.h" 3 4
# 107 "/usr/include/string.h" 3 4
# 141 "/usr/include/string.h" 3 4
# 246 "/usr/include/string.h" 3 4
# 273 "/usr/include/string.h" 3 4
# 286 "/usr/include/string.h" 3 4
# 323 "/usr/include/string.h" 3 4
# 350 "/usr/include/string.h" 3 4
# 380 "/usr/include/string.h" 3 4
# 432 "/usr/include/string.h" 3 4
# 458 "/usr/include/string.h" 3 4
# 1 "/usr/include/strings.h" 1 3 4
# 23 "/usr/include/strings.h" 3 4
# 1 "/home/gabe/typedefextractor-target/lib/clang/14.0.0/include/stddef.h" 1 3 4
# 24 "/usr/include/strings.h" 2 3 4
# 34 "/usr/include/strings.h" 3 4
# 68 "/usr/include/strings.h" 3 4
# 96 "/usr/include/strings.h" 3 4
# 463 "/usr/include/string.h" 2 3 4
# 489 "/usr/include/string.h" 3 4
# 7 "dfs.c" 2
# 1 "/usr/include/x86_64-linux-gnu/sys/ioctl.h" 1 3 4
# 26 "/usr/include/x86_64-linux-gnu/sys/ioctl.h" 3 4
# 1 "/usr/include/x86_64-linux-gnu/bits/ioctls.h" 1 3 4
# 23 "/usr/include/x86_64-linux-gnu/bits/ioctls.h" 3 4
# 1 "/usr/include/x86_64-linux-gnu/asm/ioctls.h" 1 3 4
# 1 "/usr/include/asm-generic/ioctls.h" 1 3 4
# 2 "/usr/include/x86_64-linux-gnu/asm/ioctls.h" 2 3 4
# 24 "/usr/include/x86_64-linux-gnu/bits/ioctls.h" 2 3 4
# 27 "/usr/include/x86_64-linux-gnu/sys/ioctl.h" 2 3 4
# 1 "/usr/include/x86_64-linux-gnu/bits/ioctl-types.h" 1 3 4
# 24 "/usr/include/x86_64-linux-gnu/bits/ioctl-types.h" 3 4
# 1 "/usr/include/x86_64-linux-gnu/asm/ioctls.h" 1 3 4
# 25 "/usr/include/x86_64-linux-gnu/bits/ioctl-types.h" 2 3 4
# 30 "/usr/include/x86_64-linux-gnu/sys/ioctl.h" 2 3 4
# 1 "/usr/include/x86_64-linux-gnu/sys/ttydefaults.h" 1 3 4
# 37 "/usr/include/x86_64-linux-gnu/sys/ioctl.h" 2 3 4
# 8 "dfs.c" 2
# 1 "/usr/include/x86_64-linux-gnu/sys/syscall.h" 1 3 4
# 24 "/usr/include/x86_64-linux-gnu/sys/syscall.h" 3 4
# 1 "/usr/include/x86_64-linux-gnu/asm/unistd.h" 1 3 4
# 20 "/usr/include/x86_64-linux-gnu/asm/unistd.h" 3 4
# 1 "/usr/include/x86_64-linux-gnu/asm/unistd_64.h" 1 3 4
# 21 "/usr/include/x86_64-linux-gnu/asm/unistd.h" 2 3 4
# 25 "/usr/include/x86_64-linux-gnu/sys/syscall.h" 2 3 4
# 1 "/usr/include/x86_64-linux-gnu/bits/syscall.h" 1 3 4
# 30 "/usr/include/x86_64-linux-gnu/sys/syscall.h" 2 3 4
# 9 "dfs.c" 2
# 1 "/usr/include/unistd.h" 1 3 4
# 202 "/usr/include/unistd.h" 3 4
# 1 "/usr/include/x86_64-linux-gnu/bits/posix_opt.h" 1 3 4
# 203 "/usr/include/unistd.h" 2 3 4
# 1 "/usr/include/x86_64-linux-gnu/bits/environments.h" 1 3 4
# 22 "/usr/include/x86_64-linux-gnu/bits/environments.h" 3 4
# 1 "/usr/include/x86_64-linux-gnu/bits/wordsize.h" 1 3 4
# 23 "/usr/include/x86_64-linux-gnu/bits/environments.h" 2 3 4
# 207 "/usr/include/unistd.h" 2 3 4
# 226 "/usr/include/unistd.h" 3 4
# 1 "/home/gabe/typedefextractor-target/lib/clang/14.0.0/include/stddef.h" 1 3 4
# 227 "/usr/include/unistd.h" 2 3 4
# 255 "/usr/include/unistd.h" 3 4
# 267 "/usr/include/unistd.h" 3 4
# 287 "/usr/include/unistd.h" 3 4
# 309 "/usr/include/unistd.h" 3 4
# 339 "/usr/include/unistd.h" 3 4
# 358 "/usr/include/unistd.h" 3 4
# 389 "/usr/include/unistd.h" 3 4
# 437 "/usr/include/unistd.h" 3 4
# 452 "/usr/include/unistd.h" 3 4
# 464 "/usr/include/unistd.h" 3 4
# 489 "/usr/include/unistd.h" 3 4
# 531 "/usr/include/unistd.h" 3 4
# 545 "/usr/include/unistd.h" 3 4
# 564 "/usr/include/unistd.h" 3 4
# 619 "/usr/include/unistd.h" 3 4
# 1 "/usr/include/x86_64-linux-gnu/bits/confname.h" 1 3 4
# 24 "/usr/include/x86_64-linux-gnu/bits/confname.h" 3 4


# 631 "/usr/include/unistd.h" 2 3 4
# 682 "/usr/include/unistd.h" 3 4
# 722 "/usr/include/unistd.h" 3 4
# 778 "/usr/include/unistd.h" 3 4
# 799 "/usr/include/unistd.h" 3 4
# 1 "/usr/include/x86_64-linux-gnu/bits/getopt_posix.h" 1 3 4
# 27 "/usr/include/x86_64-linux-gnu/bits/getopt_posix.h" 3 4
# 1 "/usr/include/x86_64-linux-gnu/bits/getopt_core.h" 1 3 4
# 36 "/usr/include/x86_64-linux-gnu/bits/getopt_core.h" 3 4
# 50 "/usr/include/x86_64-linux-gnu/bits/getopt_core.h" 3 4
# 91 "/usr/include/x86_64-linux-gnu/bits/getopt_core.h" 3 4
# 28 "/usr/include/x86_64-linux-gnu/bits/getopt_posix.h" 2 3 4
# 904 "/usr/include/unistd.h" 2 3 4
# 1002 "/usr/include/unistd.h" 3 4
# 1026 "/usr/include/unistd.h" 3 4
# 1049 "/usr/include/unistd.h" 3 4
# 1070 "/usr/include/unistd.h" 3 4
# 1091 "/usr/include/unistd.h" 3 4
extern long int syscall (long int __sysno, ...) __attribute__ ((__nothrow__ ));
# 1114 "/usr/include/unistd.h" 3 4
# 1150 "/usr/include/unistd.h" 3 4
# 1162 "/usr/include/unistd.h" 3 4
# 1201 "/usr/include/unistd.h" 3 4
# 1221 "/usr/include/unistd.h" 3 4
# 1 "/usr/include/x86_64-linux-gnu/bits/unistd_ext.h" 1 3 4
# 1222 "/usr/include/unistd.h" 2 3 4
# 11 "dfs.c" 2
# 1 "/home/gabe/typedefextractor-target/lib/clang/14.0.0/include/stdint.h" 1 3
# 52 "/home/gabe/typedefextractor-target/lib/clang/14.0.0/include/stdint.h" 3
# 1 "/usr/include/stdint.h" 1 3 4
# 26 "/usr/include/stdint.h" 3 4
# 1 "/usr/include/x86_64-linux-gnu/bits/libc-header-start.h" 1 3 4
# 27 "/usr/include/stdint.h" 2 3 4
# 1 "/usr/include/x86_64-linux-gnu/bits/wchar.h" 1 3 4
# 29 "/usr/include/stdint.h" 2 3 4
# 1 "/usr/include/x86_64-linux-gnu/bits/wordsize.h" 1 3 4
# 30 "/usr/include/stdint.h" 2 3 4
# 1 "/usr/include/x86_64-linux-gnu/bits/stdint-uintn.h" 1 3 4
# 24 "/usr/include/x86_64-linux-gnu/bits/stdint-uintn.h" 3 4
# 38 "/usr/include/stdint.h" 2 3 4
# 1 "/usr/include/x86_64-linux-gnu/bits/stdint-least.h" 1 3 4
# 25 "/usr/include/x86_64-linux-gnu/bits/stdint-least.h" 3 4
# 42 "/usr/include/stdint.h" 2 3 4
# 60 "/usr/include/stdint.h" 3 4
# 79 "/usr/include/stdint.h" 3 4
# 90 "/usr/include/stdint.h" 3 4
# 53 "/home/gabe/typedefextractor-target/lib/clang/14.0.0/include/stdint.h" 2 3
# 12 "dfs.c" 2
# 1 "/home/gabe/typedefextractor-target/lib/clang/14.0.0/include/inttypes.h" 1 3
# 21 "/home/gabe/typedefextractor-target/lib/clang/14.0.0/include/inttypes.h" 3
# 1 "/usr/include/inttypes.h" 1 3 4
# 34 "/usr/include/inttypes.h" 3 4
# 332 "/usr/include/inttypes.h" 3 4
# 351 "/usr/include/inttypes.h" 3 4
# 22 "/home/gabe/typedefextractor-target/lib/clang/14.0.0/include/inttypes.h" 2 3
# 13 "dfs.c" 2
 long perf_event_open(struct perf_event_attr *hw_event, pid_t pid,
                            int cpu, int group_fd, unsigned long flags)
{
    return syscall(298, hw_event, pid, cpu, group_fd, flags);
}
