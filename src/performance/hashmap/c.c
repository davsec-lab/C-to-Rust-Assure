#include "uthash.h"
#include <stdint.h>
#include <stdio.h>
#include <time.h>


//clang -O3 c.c -I include -o c

typedef struct {
    uint64_t key;
    uint64_t value;
    UT_hash_handle hh;
} entry_t;

int main(void) {
    const uint64_t N = 9000000;
    entry_t *table = NULL;

    // 1. Insert
    for (uint64_t i = 0; i < N; ++i) {
        uint64_t key = i * 2 + 1;
        entry_t *e = malloc(sizeof(entry_t));
        e->key = key;
        e->value = i;
        HASH_ADD(hh, table, key, sizeof(uint64_t), e);
    }

    // 2. Lookup (hit)
    uint64_t sum = 0;
    for (uint64_t i = 0; i < N; ++i) {
        uint64_t key = i * 2 + 1;
        entry_t *e;
        HASH_FIND(hh, table, &key, sizeof(uint64_t), e);
        sum += e->value;
    }

    // 3. Erase half
    for (uint64_t i = 0; i < N; i += 2) {
        uint64_t key = i * 2 + 1;
        entry_t *e;
        HASH_FIND(hh, table, &key, sizeof(uint64_t), e);
        if (e) {
            HASH_DEL(table, e);
            free(e);
        }
    }

    // 4. Lookup (mixed hit/miss)
    uint64_t sum2 = 0;
    for (uint64_t i = 0; i < N; ++i) {
        uint64_t key = i * 2 + 1;
        entry_t *e;
        HASH_FIND(hh, table, &key, sizeof(uint64_t), e);
        if (e) sum2 += e->value;
    }

    printf("sum = %llu, sum2 = %llu\n",
           (unsigned long long)sum, (unsigned long long)sum2);

    // cleanup remaining entries
    entry_t *cur, *tmp;
    HASH_ITER(hh, table, cur, tmp) {
        HASH_DEL(table, cur);
        free(cur);
    }

    return 0;
}
