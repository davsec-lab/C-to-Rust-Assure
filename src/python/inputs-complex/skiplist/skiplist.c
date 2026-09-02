/* jrsl - v1.0 - public domain skip list implementation
 *                                    no warranty implied; use at your own risk
 *
 * A C/C++ implementation of William Pugh's Skip Lists with width
 *
 * "Skip lists are a data structure that can be used in place of balanced trees.
 * Skip lists use probabilistic balancing rather than strictly enforced
 * balancing and as a result the algorithms for insertion and deletion in skip
 * lists are much simpler and significantly faster than equivalent algorithms
 * for balanced trees."
 *
 * ============================== RESEARCH PAPER ==============================
 * https: *www.epaperpress.com/sortsearch/download/skiplist.pdf
 *
 * =============================== CONTRIBUTORS ===============================
 * Jack Royer (base file)
 *
 * ================================= LICENSE ==================================
 * Public Domain.
 * See end of file for additional license information.
 */

#define _GNU_SOURCE

#include <assert.h>
#include <math.h>
#include <stdio.h>
#include <stdlib.h>
#include <stdint.h>
#include <string.h>
#include <time.h>

/* ===== JRSL: Skip List Library ===== */

#ifdef __cplusplus
extern "C" {
#endif

typedef char (*comparator_t)(void *key1, void *key2);
typedef void (*key_destructor_t)(void *key);
typedef void (*node_visitor_t)(void *key, void *data);
typedef void (*label_printer_t)(void *key, void *data);

struct skip_node_t;
struct link {
  size_t width;
  struct skip_node_t *node;
};

typedef struct skip_node_t {
  struct link *forward;

  void *key;
  void *data;
} skip_node_t;

typedef struct skip_list_t {
  /* Maximum level for this skip list */
  unsigned short max_level;
  /* The probabilty to add a new level.
   * p is probability so we must have 0<= p <= 1 */
  float p;

  /* Maximum length of a `forward` array */
  unsigned short level;
  size_t width;

  skip_node_t *head;

  comparator_t comparator;
  key_destructor_t key_destructor;
} skip_list_t;

void jrsl_initialize(skip_list_t *skip_list, comparator_t comparator,
                     key_destructor_t key_destructor, float p,
                     unsigned short max_level);
void jrsl_destroy(skip_list_t *skip_list, node_visitor_t node_visitor);

void *jrsl_search(skip_list_t *skip_list, void *key);
void *jrsl_insert(skip_list_t *skip_list, void *key, void *data);
void *jrsl_remove(skip_list_t *skip_list, void *key);

void jrsl_display_list(skip_list_t *skip_list, label_printer_t label_printor);

unsigned short jrsl_max_level(size_t max_n /* Maximum number of elements */,
                              float p);

static unsigned short jrsl_random_level(skip_list_t *skip_list);
static void jrsl_center_string(char *str, size_t new_length);
static void jrsl_init_head(skip_list_t *skip_list);

static skip_node_t *jrsl_node_at(skip_list_t *skip_list, size_t index);
void *jrsl_data_at(skip_list_t *skip_list, size_t index);
void *jrsl_key_at(skip_list_t *skip_list, size_t index);

#ifdef __cplusplus
}
#endif

/* ===== JRSL Implementation ===== */

/* Initializes the head of the skip list. Helper function used in
 * `jrsl_initialize`.*/
static void jrsl_init_head(skip_list_t *skip_list) {
  skip_node_t *head = (skip_node_t *)malloc(sizeof(skip_node_t));
  if (!head) {
    /* Malloc failure */
    exit(EXIT_FAILURE);
  }

  head->data = NULL;
  head->key = NULL;
  head->forward =
      (struct link *)malloc(skip_list->max_level * sizeof(struct link));
  if (!head->forward) {
    /* Malloc failure */
    exit(EXIT_FAILURE);
  }

  head->forward[0].node = NULL;
  head->forward[0].width = 0;

  skip_list->head = head;
}

/* Initializes a skip list. */
void jrsl_initialize(skip_list_t *skip_list, comparator_t comparator,
                     key_destructor_t key_destructor, float p,
                     unsigned short max_level) {
  skip_list->level = 1U;
  skip_list->width = 0;
  skip_list->max_level = max_level;
  skip_list->p = p;
  skip_list->comparator = comparator;
  skip_list->key_destructor = key_destructor;

  srand(42);

  jrsl_init_head(skip_list);
}

/* Destroys a skip list. Node visitor is applied to every node before the node
 * is freed.*/
void jrsl_destroy(skip_list_t *skip_list, node_visitor_t node_visitor) {
  skip_node_t *node = skip_list->head;
  while (node) {
    skip_node_t *next_node = node->forward[0].node;

    node_visitor(node->key, node->data);
    free(node->forward);
    free(node);
    node = next_node;
  }
}

/* Returns the node with index `index`. If `index` is greater than the width of
 * the skip list, returns NULL. This is a helper function used in `jrsl_key_at`
 * and `jrsl_data_at`.*/
static skip_node_t *jrsl_node_at(skip_list_t *skip_list, size_t index) {
  size_t i, w;
  skip_node_t *x; /* skip node traveler */

  if (index >= skip_list->width)
    return NULL;

  /* The remaining width to travel. `index` is incremented by 1 because of the
   * presence of a head in the skip list. */
  w = index + 1;

  x = skip_list->head;

  for (i = skip_list->level - 1; i >= 0; i--) {
    while (x->forward[i].node && x->forward[i].width <= w) {
      w -= x->forward[i].width;
      x = x->forward[i].node;
      if (w == 0)
        return x;
    }
  }
  /* This should never be called beacuse of the initial check.*/
  return NULL;
}

/* Returns the key of the `index`th element of the skip list.*/
void *jrsl_key_at(skip_list_t *skip_list, size_t index) {
  skip_node_t *node = jrsl_node_at(skip_list, index);
  if (node)
    return node->key;
  return NULL;
}

/* Returns the data of the `index`th element of the skip list.*/
void *jrsl_data_at(skip_list_t *skip_list, size_t index) {
  skip_node_t *node = jrsl_node_at(skip_list, index);
  if (node)
    return node->data;
  return NULL;
}

/* Returns the data of the node with the key `key`. If `key` is not in
 * the skip list returns NULL.
 */
void *jrsl_search(skip_list_t *skip_list, void *key) {
  size_t i;
  skip_node_t *x;
  x = skip_list->head;

  for (i = skip_list->level; i > 0; --i) {
    while (x->forward[i - 1].node != NULL &&
           skip_list->comparator(x->forward[i - 1].node->key, key) < 0) {
      x = x->forward[i - 1].node;
    }

    if (x->forward[i - 1].node != NULL &&
        skip_list->comparator(x->forward[i - 1].node->key, key) == 0) {
      return x->forward[i - 1].node->data;
    }
  }

  return NULL;
}

/* Inserts a new element in the skip list and returns NULL. If an element with
 * that key is already in the list, updates that element and returns the
 * previous data. */
void *jrsl_insert(skip_list_t *skip_list, void *key, void *data) {
  size_t i;              /* used in for loops */
  skip_node_t *x;        /* skip node traveler */
  unsigned short level;  /* the level of the new node */
  skip_node_t *new_node; /* the new node */

  /* Helper array of pointers to elements that will need updating. */
  skip_node_t **update =
      (skip_node_t **)malloc(skip_list->max_level * sizeof(skip_node_t *));

  /* Helper array to update widths. */
  size_t *update_width =
      (size_t *)malloc(skip_list->max_level * sizeof(size_t));

  if (!update || !update_width) {
    /* Malloc Failure */
    exit(EXIT_FAILURE);
  }

  /* Finds the correct spot for the key in the skip list. */
  x = skip_list->head;
  for (i = skip_list->level; i > 0; --i) {
    /* The sum of traveled widths. */
    size_t width_sum = 0;

    while (x->forward[i - 1].node != NULL &&
           skip_list->comparator(x->forward[i - 1].node->key, key) < 0) {
      width_sum += x->forward[i - 1].width;
      x = x->forward[i - 1].node;
    }

    update[i - 1] = x;
    update_width[i - 1] = width_sum;
  }

  /* If the node is already in the list, retuns the already existing node. */
  if (x->forward[0].node) {
    if (skip_list->comparator(x->forward[0].node->key, key) == 0) {
      void *old = x->forward[0].node->data;
      x->forward[0].node->data = data;

      free(update);
      free(update_width);
      return old;
    }
  }

  /* The level for the new node. */
  level = jrsl_random_level(skip_list);

  /* sanity check */
  assert(level < skip_list->max_level);

  /*  Completes the helper arrays if the new node is the first node on a (new)
   * level.*/
  if (level > skip_list->level) {
    size_t i;
    for (i = skip_list->level; i < level; ++i) {
      update[i] = skip_list->head;
      update_width[i] = 0;

      /* The width to NULL is always 0 */
      skip_list->head->forward[i].node = NULL;
      skip_list->head->forward[i].width = 0;
    }
    skip_list->level = level;
  }

  new_node = (skip_node_t *)malloc(sizeof(skip_node_t));

  if (!new_node) {
    /* Malloc Failure */
    exit(EXIT_FAILURE);
  }

  new_node->data = data;
  new_node->key = key;
  new_node->forward = (struct link *)malloc(level * sizeof(struct link));

  if (!new_node->forward) {
    /* Malloc Failure */
    exit(EXIT_FAILURE);
  }

  /* Inserts the new node in the list. */
  for (i = 0; i < level; ++i) {
    /* Update the linked nodes. */
    new_node->forward[i].node = update[i]->forward[i].node;
    update[i]->forward[i].node = new_node;

    /* Updates the widths of the links. */
    if (i > 0) {
      size_t width_before =
          update_width[i - 1] + update[i - 1]->forward[i - 1].width;

      if (update[i]->forward[i].width > 0)
        /* The width is the width of the previous connection, + 1 ( because we
         * are inserting a node ) - whatever is before the new node.
         */
        new_node->forward[i].width =
            update[i]->forward[i].width + 1 - width_before;
      else
        /* The width to NULL is always 0. */
        new_node->forward[i].width = 0;

      update[i]->forward[i].width = width_before;
    } else { /* i == 0 */
      new_node->forward[i].width = update[i]->forward[i].width;
      update[i]->forward[i].width = 1;
    }
  }

  /* Updates the widths of the links above the newly created node. */
  for (i = level; i < skip_list->level; ++i) {
    if (update[i]->forward[i].node)
      ++update[i]->forward[i].width;
    else
      /* The width to NULL is always 0 and does not need updating. All links
       * above a link pointing to NULL will point to NULL. */
      break;
  }

  skip_list->width++;

  free(update);
  free(update_width);
  return NULL;
}

/* Removes an element from the skip list and returns its data. If it's not
 * in the list returns NULL. */
void *jrsl_remove(skip_list_t *skip_list, void *key) {
  size_t i;       /*used  in for loops */
  skip_node_t *x; /* A skip node traveler */
  void *old;      /* A pointer to the node we will remove */
  /* Helper array of pointers to elements that will need updating. */
  skip_node_t **update =
      (skip_node_t **)malloc(skip_list->level * sizeof(skip_node_t *));

  if (!update) {
    /* Malloc Failure */
    exit(EXIT_FAILURE);
  }

  /* Finds the theoretical location of the key. */
  x = skip_list->head;
  for (i = skip_list->level; i > 0; --i) {
    while (x->forward[i - 1].node != NULL &&
           skip_list->comparator(x->forward[i - 1].node->key, key) < 0) {
      x = x->forward[i - 1].node;
    }
    update[i - 1] = x;
  }
  x = x->forward[0].node;

  /* Could not find the key in the skip list. */
  if (x == NULL || skip_list->comparator(x->key, key) != 0) {
    free(update);
    return NULL;
  }

  /* TODO */
  /* Updates the list and removes the node */
  for (i = 0; i < skip_list->level; ++i) {
    if (update[i]->forward[i].node) {
      if (skip_list->comparator(update[i]->forward[i].node->key, key) == 0) {
        update[i]->forward[i].node = x->forward[i].node;

        if (x->forward[i].width > 0)
          update[i]->forward[i].width += x->forward[i].width - 1;
        else
          update[i]->forward[i].width = 0;
        continue;
      } else {
        --update[i]->forward[i].width;
      }
    }
  }

  free(update);

  old = x->data;
  free(x->forward);
  free(x);

  /* Updates the list's max level */
  while (skip_list->level > 1 &&
         !skip_list->head->forward[skip_list->level - 1].node)
    --skip_list->level;
  skip_list->width--;
  return old;
}

static unsigned short jrsl_random_level(skip_list_t *skip_list) {
  /* We don't actually care about initialization */
  float rnd = (float)rand() / (float)RAND_MAX;
  size_t level = 1;
  while (rnd < skip_list->p && level < skip_list->max_level - 1) {
    level++;
    rnd = (float)rand() / (float)RAND_MAX;
  }
  return level;
}

/* Returns the optimal max level based on the probability `p` to add a new
 * level and the estimated maximum number of elements `N`.
 * If `p` is invalid (p > 1 || p < 0) returns 0 */
unsigned short jrsl_max_level(size_t max_n, float p) {
  if (!(p >= 0 && p <= 1))
    return 0;
  return (size_t)(log(max_n) / log(1 / p));
}

/* Centers a string by padding it left and right with spaces.
 */
static void jrsl_center_string(char *str, size_t new_length) {
  size_t pad_l = (new_length - strlen(str)) / 2;
  size_t pad_r = new_length - pad_l;
  printf("%*s%s%*s", pad_l, "", str, pad_r, "");
}

/* Draws a visual representation of the skip list.
 * A link to a node is represented by an arrow (`o-->`) and final elements of
 * a level, that point to a null pointer, are represented by an `x`.
 */
void jrsl_display_list(skip_list_t *skip_list, label_printer_t label_printer) {
  size_t i;
  for (i = skip_list->level; i > 0; --i) {
    skip_node_t *node = skip_list->head;
    while (node) {
      if (node->forward[i - 1].width > 0) {
        char str[10];
        /* TODO insecure */
        sprintf(str, "%d", node->forward[i - 1].width);
        jrsl_center_string(str, node->forward[i - 1].width * 6 - 1);
      }
      node = node->forward[i - 1].node;
    }
    printf("\n");

    /* Draws the arrows */
    node = skip_list->head;
    while (node) {
      if (node->forward[i - 1].width > 0) {
        printf("o%.*s> ", node->forward[i - 1].width * 6 - 3,
               "---------------------------------------------------------------"
               "--------------------------------------------------------------"
               "-");
      } else {
        printf("x ");
      }
      node = node->forward[i - 1].node;
    }
    printf(" Level %i \n", i - 1);
  }

  /* draws the labels */
  if (label_printer) {
    skip_node_t *node = skip_list->head->forward[0].node;
    printf("      ");
    while (node) {
      label_printer(node->key, node->data);
      node = node->forward[0].node;
    }
  }
}

/* ===== comparator ===== */
static int intcmp(const void *a, const void *b) {
    int ia = *(const int*)a, ib = *(const int*)b;
    return (ia > ib) - (ia < ib);
}

/* ===== timing helper ===== */
static long long elapsed_ms_since(const struct timespec *t0, const struct timespec *t1) {
    long long s  = (long long)(t1->tv_sec - t0->tv_sec);
    long long ns = (long long)(t1->tv_nsec - t0->tv_nsec);
    return s * 1000LL + ns / 1000000LL;
}

/* ===== MAIN ===== */
int main(int argc, char **argv) {
    if (argc < 2) {
        fprintf(stderr, "Usage: %s <data.bin>\n", argv[0]);
        return 1;
    }

    FILE *fp = fopen(argv[1], "rb");
    if (!fp) {
        fprintf(stderr, "Error: cannot open '%s'\n", argv[1]);
        return 1;
    }

    /* Header: 4 x uint64_t little-endian (N, UPDATES, REMOVES, SEARCHES). */
    uint64_t header[4];
    if (fread(header, sizeof(uint64_t), 4, fp) != 4) {
        fprintf(stderr, "Error: short read on header\n");
        fclose(fp);
        return 1;
    }
    const size_t N        = (size_t)header[0];
    const size_t UPDATES  = (size_t)header[1];
    const size_t REMOVES  = (size_t)header[2];
    const size_t SEARCHES = (size_t)header[3];

    int  *insert_keys = (int  *)malloc(N        * sizeof(int));
    char *insert_data = (char *)malloc(N        * sizeof(char));
    int  *update_keys = (int  *)malloc(UPDATES  * sizeof(int));
    char *update_data = (char *)malloc(UPDATES  * sizeof(char));
    int  *remove_keys = (int  *)malloc(REMOVES  * sizeof(int));
    int  *search_keys = (int  *)malloc(SEARCHES * sizeof(int));
    if (!insert_keys || !insert_data || !update_keys || !update_data ||
        !remove_keys || !search_keys) {
        fprintf(stderr, "Allocation failed\n");
        fclose(fp);
        return 1;
    }

    if (fread(insert_keys, sizeof(int),  N,        fp) != N        ||
        fread(insert_data, sizeof(char), N,        fp) != N        ||
        fread(update_keys, sizeof(int),  UPDATES,  fp) != UPDATES  ||
        fread(update_data, sizeof(char), UPDATES,  fp) != UPDATES  ||
        fread(remove_keys, sizeof(int),  REMOVES,  fp) != REMOVES  ||
        fread(search_keys, sizeof(int),  SEARCHES, fp) != SEARCHES) {
        fprintf(stderr, "Error: short read on body\n");
        fclose(fp);
        return 1;
    }
    fclose(fp);

    /* JRSL setup */
    skip_list_t sl;
    int max_level = jrsl_max_level(N, 0.5f);
    jrsl_initialize(&sl, (comparator_t)intcmp, /*destructor*/NULL, 0.5f, max_level);

    struct timespec t0, t1;
    clock_gettime(CLOCK_MONOTONIC, &t0);

    /* ================== INSERTS ================== */
    for (size_t i = 0; i < N; ++i) {
        (void)jrsl_insert(&sl, (void*)&insert_keys[i], (void*)&insert_data[i]);
    }

    /* ================== UPDATES ================== */
    for (size_t i = 0; i < UPDATES; ++i) {
        (void)jrsl_insert(&sl, (void*)&update_keys[i], (void*)&update_data[i]);
    }

    /* ================== REMOVALS ================== */
    size_t remove_hits = 0, remove_misses = 0;
    for (size_t i = 0; i < REMOVES; ++i) {
        void *removed = jrsl_remove(&sl, (void*)&remove_keys[i]);
        if (removed) remove_hits++;
        else         remove_misses++;
    }

    /* ================== SEARCHES ================== */
    size_t search_hits = 0, search_misses = 0;
    for (size_t i = 0; i < SEARCHES; ++i) {
        void *found = jrsl_search(&sl, (void*)&search_keys[i]);
        if (found) search_hits++;
        else       search_misses++;
    }

    clock_gettime(CLOCK_MONOTONIC, &t1);

    /* ================== RESULTS ================== */
    printf("=== SkipList Benchmark Results ===\n");
    printf("Operations completed:\n");
    printf("  Inserts:  %zu\n", N);
    printf("  Updates:  %zu\n", UPDATES);
    printf("  Removes:  %zu (hits: %zu, misses: %zu)\n", REMOVES, remove_hits, remove_misses);
    printf("  Searches: %zu (hits: %zu, misses: %zu)\n", SEARCHES, search_hits, search_misses);
    printf("Final skiplist length: %zu\n", sl.width);
    printf("Checksum: %zu\n", remove_hits + search_hits + sl.width);
    printf("elapsed_ms: %lld\n", elapsed_ms_since(&t0, &t1));

    free(insert_keys);
    free(insert_data);
    free(update_keys);
    free(update_data);
    free(remove_keys);
    free(search_keys);
    return 0;
}

/* ============================================================================
 * This software is available under 2 licenses-- choose whichever you prefer
 * ============================================================================
 * ALTERNATIVE A - MIT License
 *
 * Copyright(c) 2021 Jack Royer
 * Permission is hereby granted, free of charge, to any person obtaining a
 * copy of this software and associated documentation files(the "Software"), to
 * deal in the Software without restriction, including without limitation the
 * rights to use, copy, modify, merge, publish, distribute, sublicense, and /
 * or sell copies of the Software, and to permit persons to whom the Software
 * is furnished to do so, subject to the following conditions: The above
 * copyright notice and this permission notice shall be included in all copies
 * or substantial portions of the Software.
 *
 * THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
 * IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
 * FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT.IN NO EVENT SHALL THE
 * AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
 * LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING
 * FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS
 * IN THE SOFTWARE.
 *
 ============================================================================
 *  ALTERNATIVE B - Public Domain(www.unlicense.org)
 * This is free and unencumbered software released into the public domain.
 * Anyone is free to copy, modify, publish, use, compile, sell, or distribute
 * this software, either in source code form or as a compiled binary, for any
 * purpose, commercial or non-commercial, and by any means. In jurisdictions
 * that recognize copyright laws, the author or authors of this software
 * dedicate any and all copyright interest in the software to the public
 * domain. We make this dedication for the benefit of the public at large and
 * to the detriment of our heirs and successors. We intend this dedication to
 * be an overt act of relinquishment in perpetuity of all present and future
 * rights to this software under copyright law.
 *
 * THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
 * IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
 * FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT.IN NO EVENT SHALL THE
 * AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
 * LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING
 * FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS
 * IN THE SOFTWARE.
 * ============================================================================
 */
