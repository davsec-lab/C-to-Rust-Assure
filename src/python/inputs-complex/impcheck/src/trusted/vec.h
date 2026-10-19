
/* crust_corpus override. Upstream vec.h is a template header without an include guard:
 * each includer sets TYPE/TYPED and includes it, which redefines `struct int_vec` once the
 * files share one translation unit. Here it declares all four instantiations the project
 * uses (int, i8, u8, u64; see vectors.c) once. vec.c, included by vectors.c with
 * TYPE/TYPED set, still defines the functions per type. */
#ifndef IMPCHECK_VEC_H
#define IMPCHECK_VEC_H

#include "trusted_utils.h"

#define VEC_DECLARE(T, P) \
struct P##vec { \
    u64 capacity; \
    u64 size; \
    T* data; \
}; \
struct P##vec* P##vec_init(u64 capacity); \
void P##vec_free(struct P##vec* vec); \
void P##vec_reserve(struct P##vec* vec, u64 new_size); \
void P##vec_push(struct P##vec* vec, T elem); \
void P##vec_clear(struct P##vec* vec);

VEC_DECLARE(int, int_)
VEC_DECLARE(signed char, i8_)
VEC_DECLARE(u8, u8_)
VEC_DECLARE(u64, u64_)

#endif
