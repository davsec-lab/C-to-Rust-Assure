# vaultsync corpus

VaultSync, a small git-like version tracker in C (https://github.com/elhalili/VaultSync,
upstream commit 2966335 "Update setup.sh"), taken from the CRUST-bench dataset
(`datasets/CBench/VaultSync`; Khatry et al. 2025, https://github.com/anirudhkhatry/CRUST-bench)
as one corpus: the whole library plus its CLI, as a single translation unit.

- `src/` and `include/` are the 10 .c + 10 .h files of the upstream project (CMake targets
  `vaultsync_lib` and the `vaultsync` executable). The Unity test harness under `test/` is not
  part of the corpus. One source change: `src/logging/logger.c` has `break;` added under the
  empty trailing `default:` label, a C23 construct that the LLVM 14 clang rejects.
- `stubs/openssl/{sha.h,rand.h}`: minimal stand-ins for the OpenSSL headers, declaring only
  what VaultSync uses (SHA256_DIGEST_LENGTH, SHA256_CTX with OpenSSL's field layout,
  SHA256_Init/Update/Final, RAND_bytes). The real headers pull 322 OpenSSL `static inline`
  helpers into the .i, which the extractor would treat as corpus functions. A native binary
  still links against the real library: `clang -I include -I stubs vaultsync.c -lcrypto`.
- `vaultsync.c`: unity build that #includes the ten .c files, so the corpus is one .i. The
  files have no static-symbol or global-name clashes (checked on per-file .ll output).
- `vaultsync.i`: `clang -I include -I stubs -E -P vaultsync.c` with the LLVM 14 clang from
  typedefextractor-target; `vaultsync.ll`: the same with `-S -emit-llvm -O0`.
- No performance_information.json: this corpus is not performance-tested; the pipeline
  treats the file as optional.
- 47 function definitions in vaultsync.i: 40 project functions, `main` (skipped
  unconditionally) and the six glibc inline helpers (on the skip list). `generate_hash` and
  `generate_random_data` call SHA256_* / RAND_bytes, which have no definition in the corpus
  or in the KLEE libc model, so they and their callers cannot be executed symbolically.
- Licence: the upstream repository ships no LICENSE file; CRUST-bench redistributes the
  project as part of its GPL-licensed dataset.
