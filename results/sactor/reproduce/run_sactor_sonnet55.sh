#!/usr/bin/env bash
# Run SACToR (Claude Sonnet 5.5 via the Anthropic API, bin mode = whole program incl. main, no tests,
# idiomatic code must be unsafe-free = SACToR default) on one prepared sactor-bench-oxivolve/<name>.
# Output: sactor-bench-oxivolve/<name>/result_sonnet55, log: sactor-bench-oxivolve/<name>/run_sonnet55.log
# Re-running resumes: items already in result_sonnet55 are skipped.
set -u
name=$1
W=/home/gabe/sactor_forklift/sactor-bench-oxivolve/$name
S=/home/gabe/sactor_forklift/sactor
source /home/gabe/sactor_forklift/bin/sactor-env.sh
# c2rust 0.20 writes a fixed $TMPDIR/compile_commands.json, so parallel runs race on it: one TMPDIR per program
export TMPDIR=/home/gabe/sactor_forklift/tmp/oxivolve_$name; mkdir -p "$TMPDIR"
cd "$W" || exit 2
echo "=== start $(date -Is) $name" >> "$W/run_sonnet55.log"
sactor translate "$name.c" test_cmd.json --type bin --link-args=-lm -r "$W/result_sonnet55" -c "$S/sactor.sonnet55.toml" >> "$W/run_sonnet55.log" 2>&1
rc=$?
echo "=== end $(date -Is) $name rc=$rc" >> "$W/run_sonnet55.log"
exit $rc
