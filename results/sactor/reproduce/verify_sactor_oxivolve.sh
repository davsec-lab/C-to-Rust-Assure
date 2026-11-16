#!/bin/bash
# Output check for the SACToR + Sonnet 5.5 Oxivolve results in C-to-Rust-Assure/results/sactor:
# build each benchmark's C input (clang -O3 -lm) and SACToR's idiomatic combined.rs (cargo --release,
# rustc 1.86 / libc 0.2.159 as SACToR uses), run both on the small inputs that results/rustassure used,
# and diff stdout with the timing lines removed. libbmp_write: also compare the BMP it writes.
# If <work>/<bench>/c/inst.c and <work>/<bench>/rs/inst.rs exist (copies that print a checksum of the
# result), they are built and compared instead.
# Usage: verify_sactor_oxivolve.sh <bench>...   Work dir: /home/gabe/sactor_forklift/tmp/verify_sactor
R=${RESULTS:-/home/gabe/C-to-Rust-Assure/results/sactor}
V=/home/gabe/sactor_forklift/tmp/verify_sactor
source /home/gabe/sactor_forklift/bin/sactor-env.sh >/dev/null 2>&1
mkdir -p $V/data
[ -f $V/data/small.csv ] || head -c 20000000 /home/gabe/libcsv_forklift_result/.kaggle_data/metadata.csv | head -n -1 > $V/data/small.csv
[ -f $V/data/small_graph.txt ] || head -n 300000 /home/gabe/page_rank/com-lj.ungraph.txt > $V/data/small_graph.txt

declare -A ARGS=(
  [libcsv]="$V/data/small.csv"
  [pagerank]="$V/data/small_graph.txt"
  [cjson_parse]="/home/gabe/cjson_forklift_result/cjson_parse/pokedex.json"
  [libbmp]="/home/gabe/libbmp_result/test_bmps"
  [libbmp_write]="300 200"
  [rfft]=""
  [kmeans]="100000 10"
  [quicksort]="1000000"
  [matrix_mult]="300"
  [sssp]="3000"
)
strip_timing() { grep -v -i -E "time|elapsed|seconds" ; }

for b in "$@"; do
  w=$V/$b
  csrc=$R/$b/input/$b.c; rsrc=$R/$b/run/translated_code_idiomatic/combined.rs
  [ -f $w/c/inst.c ] && csrc=$w/c/inst.c
  [ -f $w/rs/inst.rs ] && rsrc=$w/rs/inst.rs
  [ -f "$rsrc" ] || { echo "$b: no idiomatic combined.rs"; continue; }
  rm -rf $w/c/run $w/c/bin $w/c/out.txt $w/c/file $w/rs/run $w/rs/proj $w/rs/out.txt $w/rs/file $w/diff.txt
  mkdir -p $w/c/run $w/rs/run $w/rs/proj/src $w/c/file $w/rs/file  # libbmp_write writes ../file/test.bmp
  clang -O3 -w -o $w/c/bin $csrc -lm 2> $w/c/build.err || { echo "$b: C build failed"; continue; }
  cp $rsrc $w/rs/proj/src/main.rs
  printf '[package]\nname = "%s_rs"\nversion = "0.1.0"\nedition = "2021"\n\n[dependencies]\nlibc = "0.2.159"\n\n[profile.release]\nopt-level = 3\n' "$b" > $w/rs/proj/Cargo.toml
  (cd $w/rs/proj && cargo build --release -q 2> ../build.err) || { echo "$b: Rust build failed: $(grep -m1 '^error' $w/rs/build.err)"; continue; }
  (cd $w/c/run && timeout 600 ../bin ${ARGS[$b]} > ../out.txt 2> ../err.txt; echo $? > ../rc)
  (cd $w/rs/run && timeout 600 ../proj/target/release/${b}_rs ${ARGS[$b]} > ../out.txt 2> ../err.txt; echo $? > ../rc)
  crc=$(cat $w/c/rc); rrc=$(cat $w/rs/rc)
  if diff <(strip_timing < $w/c/out.txt) <(strip_timing < $w/rs/out.txt) > $w/diff.txt; then same=same; else same="DIFF ($(wc -l < $w/diff.txt) lines)"; fi
  extra=""
  if [ "$b" = libbmp_write ]; then
    cf=$(find $w/c/file -name '*.bmp' | head -1); rf=$(find $w/rs/file -name '*.bmp' | head -1)
    if [ -n "$cf" ] && [ -n "$rf" ] && cmp -s "$cf" "$rf"; then extra=" bmp=identical"; else extra=" bmp=DIFFERENT ($cf | $rf)"; fi
  fi
  echo "$b: exit C=$crc Rust=$rrc  output(non-timing, $(strip_timing < $w/c/out.txt | wc -l) lines)=$same$extra"
done
