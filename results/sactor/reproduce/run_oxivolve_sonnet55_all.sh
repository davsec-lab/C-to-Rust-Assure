#!/usr/bin/env bash
# Run bin/run_sactor_sonnet55.sh on every sactor-bench-oxivolve program, 3 at a time; prints one rc line per program.
# Usage: run_oxivolve_sonnet55_all.sh [name...]   (default: all 10)
names=("$@"); [ ${#names[@]} -eq 0 ] && names=(libcsv pagerank cjson_parse libbmp_parse libbmp_write rfft kmeans quicksort matrix_mult sssp)
printf '%s\n' "${names[@]}" | xargs -P 3 -I{} sh -c '/home/gabe/sactor_forklift/bin/run_sactor_sonnet55.sh {}; echo "{} rc=$?"'
