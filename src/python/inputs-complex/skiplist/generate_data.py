#!/usr/bin/env python3
"""Generate benchmark data for the C SkipList benchmark.

Writes a little-endian binary file with this layout:

    [header]   4 x uint64   N, UPDATES, REMOVES, SEARCHES
    [arrays]
        int32_t  INSERT_KEYS[N]
        char     INSERT_DATA[N]
        int32_t  UPDATE_KEYS[UPDATES]
        char     UPDATE_DATA[UPDATES]
        int32_t  REMOVE_KEYS[REMOVES]
        int32_t  SEARCH_KEYS[SEARCHES]

The RNG is xorshift64* seeded with 0xDEADBEEFCAFEBABE so the file is
byte-reproducible given N. ``skiplist.c`` reads this file at runtime.

Usage:
    python3 generate_data.py <N> [output_path]

Defaults:
    output_path = data.bin
    N must be in [1000, 10000000].
"""

import argparse
import struct
import sys
from array import array


SEED = 0xDEADBEEFCAFEBABE
DEFAULT_OUTPUT = "data.bin"
MASK64 = 0xFFFFFFFFFFFFFFFF


class XorShift64Star:
    def __init__(self, seed):
        self.state = seed if seed != 0 else 1

    def next_u64(self):
        x = self.state
        x ^= (x >> 12) & MASK64
        x ^= (x << 25) & MASK64
        x ^= (x >> 27) & MASK64
        self.state = x & MASK64
        return (self.state * 0x2545F4914F6CDD1D) & MASK64

    def shuffle_int(self, arr):
        n = len(arr)
        if n < 2:
            return
        for i in range(n - 1, 0, -1):
            j = self.next_u64() % (i + 1)
            arr[i], arr[j] = arr[j], arr[i]

    def rand_char_byte(self):
        return ord('a') + (self.next_u64() % 26)


def parse_args():
    p = argparse.ArgumentParser(description="Generate skiplist benchmark data")
    p.add_argument("N", type=int, help="Number of elements (1000..10000000)")
    p.add_argument("output", nargs="?", default=DEFAULT_OUTPUT,
                   help=f"Output binary file (default: {DEFAULT_OUTPUT})")
    a = p.parse_args()
    if a.N < 1000 or a.N > 10_000_000:
        p.error("N must be in [1000, 10000000]")
    return a


def generate(N):
    UPDATES = N // 2
    REMOVES = N // 2
    SEARCHES = N
    REMOVE_HITS = REMOVES // 2
    REMOVE_MISSES = REMOVES - REMOVE_HITS
    SEARCH_HITS = SEARCHES // 2
    SEARCH_MISSES = SEARCHES - SEARCH_HITS

    rng = XorShift64Star(SEED)

    # insert_keys: shuffled permutation of [0, N).
    insert_keys = array('i', range(N))
    rng.shuffle_int(insert_keys)

    # insert_data: N random chars in [a, z].
    insert_data = bytearray(rng.rand_char_byte() for _ in range(N))

    # update_keys: first UPDATES of a shuffled [0, N).
    order = array('i', range(N))
    rng.shuffle_int(order)
    update_keys = array('i', order[:UPDATES])
    update_data = bytearray(rng.rand_char_byte() for _ in range(UPDATES))

    # remove_keys: half real keys (hits), half synthetic (misses, >= N), shuffled.
    rng.shuffle_int(order)
    remove_keys = array('i', list(order[:REMOVE_HITS])
                              + [N + i for i in range(REMOVE_MISSES)])
    rng.shuffle_int(remove_keys)

    # search_keys: same hit/miss split, independently shuffled.
    rng.shuffle_int(order)
    search_keys = array('i', list(order[:SEARCH_HITS])
                              + [N + i for i in range(SEARCH_MISSES)])
    rng.shuffle_int(search_keys)

    return {
        "N": N, "UPDATES": UPDATES, "REMOVES": REMOVES, "SEARCHES": SEARCHES,
        "insert_keys": insert_keys, "insert_data": insert_data,
        "update_keys": update_keys, "update_data": update_data,
        "remove_keys": remove_keys, "search_keys": search_keys,
    }


def write_binary(d, path):
    if sys.byteorder != "little":
        d["insert_keys"].byteswap()
        d["update_keys"].byteswap()
        d["remove_keys"].byteswap()
        d["search_keys"].byteswap()

    with open(path, "wb") as f:
        f.write(struct.pack("<4Q", d["N"], d["UPDATES"], d["REMOVES"], d["SEARCHES"]))
        d["insert_keys"].tofile(f)
        f.write(d["insert_data"])
        d["update_keys"].tofile(f)
        f.write(d["update_data"])
        d["remove_keys"].tofile(f)
        d["search_keys"].tofile(f)


def main():
    args = parse_args()
    print(f"Generating N={args.N:,} -> {args.output}")
    data = generate(args.N)
    write_binary(data, args.output)
    print("Done.")
    print(f"  N        = {data['N']}")
    print(f"  UPDATES  = {data['UPDATES']}")
    print(f"  REMOVES  = {data['REMOVES']}")
    print(f"  SEARCHES = {data['SEARCHES']}")


if __name__ == "__main__":
    main()
