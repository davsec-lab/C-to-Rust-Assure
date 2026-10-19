/* Unity build of VaultSync (CRUST-bench CBench/VaultSync): one translation unit so the
 * corpus is a single vaultsync.i. Order follows the original CMake glob. */
#include "src/cli/cli_main.c"
#include "src/cli/cli_vm.c"
#include "src/crypto/hashing.c"
#include "src/logging/logger.c"
#include "src/main.c"
#include "src/vm/commit.c"
#include "src/vm/common.c"
#include "src/vm/file.c"
#include "src/vm/hashmap.c"
#include "src/vm/repository.c"
