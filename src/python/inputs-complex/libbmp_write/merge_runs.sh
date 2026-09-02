#!/bin/bash
# 合并 3 个 single-stage / resume 的部分产物到一个完整目录。
# 每个 stage 取最新版本(按目录时间戳);Stages 1-3 + baseline_c 从 opus_v1 补齐。
#
# 源映射(最新→最旧):
#   15-45-01: Stage_10 (latest, 带 File IO hint)
#   15-00-31: Stage_7, Stage_9, Stage_10 (resume 跑)
#   14-47-50: Stage_4 (noexc 首次跑)
#   opus_v1:  Stage_1, Stage_2, Stage_3, _baseline_c

set -e
cd "$(dirname "$0")"

DST=merged_opus_noexc_fileio
S14=individual-funcs_claude-opus-4-6_2026-06-08_14-47-50__complete
S15=individual-funcs_claude-opus-4-6_2026-06-08_15-00-31__complete
S15B=individual-funcs_claude-opus-4-6_2026-06-08_15-45-01__complete
OPUS=opus_v1

if [ -d "$DST" ]; then
  echo "目标目录已存在,先删除: $DST"
  rm -rf "$DST"
fi
mkdir -p "$DST"

# 1) 阶段产物 — 每个 stage 取最新源
echo "=== 拷贝 stage 产物 ==="
cp -r "$OPUS/_Stage.Stage_1" "$DST/"
cp -r "$OPUS/_Stage.Stage_2" "$DST/"
cp -r "$OPUS/_Stage.Stage_3" "$DST/"
cp -r "$S14/_Stage.Stage_4"   "$DST/"
cp -r "$S15/_Stage.Stage_7"   "$DST/"
cp -r "$S15/_Stage.Stage_9"   "$DST/"
cp -r "$S15B/_Stage.Stage_10" "$DST/"   # 最新 Stage_10 覆盖

# 2) baseline_c + 辅助文件 — 从 opus_v1 拿
echo "=== 拷贝 baseline + 辅助 ==="
cp -r "$OPUS/_baseline_c" "$DST/"
cp "$OPUS"/*.i "$DST/" 2>/dev/null || true
cp "$OPUS/file_order.txt" "$DST/" 2>/dev/null || true
cp "$OPUS/analysis.log" "$DST/" 2>/dev/null || true
cp "$OPUS/stagecheck_summary.txt" "$DST/" 2>/dev/null || true

# 3) 合并 performance_metrics.json — 每个 stage 取最新源
echo "=== 合并 performance_metrics.json ==="
python3 << 'PYEOF'
import json, os

dst = "merged_opus_noexc_fileio"
sources = {
    # stage_key -> source_dir (latest source for that key)
    "Stage_1":   "opus_v1",
    "Stage_2":   "opus_v1",
    "Stage_3":   "opus_v1",
    "Stage_4":   "individual-funcs_claude-opus-4-6_2026-06-08_14-47-50__complete",
    "Stage_7":   "individual-funcs_claude-opus-4-6_2026-06-08_15-00-31__complete",
    "Stage_9":   "individual-funcs_claude-opus-4-6_2026-06-08_15-00-31__complete",
    "Stage_10":  "individual-funcs_claude-opus-4-6_2026-06-08_15-45-01__complete",
    "baseline_c": "opus_v1",
}
merged = {}
for stage, src in sources.items():
    pm = json.load(open(f"{src}/performance_metrics.json"))
    if stage not in pm:
        print(f"  WARN {stage} not in {src}/performance_metrics.json — skipping")
        continue
    merged[stage] = pm[stage]
    print(f"  {stage:12} <- {src}")
with open(f"{dst}/performance_metrics.json", "w") as f:
    json.dump(merged, f, indent=2, sort_keys=True)
PYEOF

# 4) 合并 token_usage — 把每个源的 jsonl 追加(stage_4/7/9/10 来源各异)
echo "=== 合并 token_usage.jsonl ==="
> "$DST/token_usage.jsonl"
for src in "$OPUS" "$S14" "$S15" "$S15B"; do
  [ -f "$src/token_usage.jsonl" ] && cat "$src/token_usage.jsonl" >> "$DST/token_usage.jsonl"
done

# 5) 写一个 run_config 说明合并来源
echo "=== 写 run_config.json (合并标记) ==="
python3 << PYEOF
import json
cfg = json.load(open("$S15B/run_config.json"))
cfg["_merged_from"] = {
    "Stage_1_to_3_and_baseline_c": "opus_v1",
    "Stage_4": "$S14 (noexc, no EXCEPTION rule)",
    "Stage_7,9": "$S15 (resume from above Stage_4)",
    "Stage_10": "$S15B (latest, with File I/O hint)",
}
cfg["_merge_note"] = "Synthetic merge of 3 single-stage/resume runs after Stage_4 EXCEPTION removal + Stage_10 File I/O hint additions to prompts."
with open("$DST/run_config.json", "w") as f:
    json.dump(cfg, f, indent=2, sort_keys=True)
PYEOF

echo ""
echo "=== 合并完成 ==="
ls "$DST" | grep "_Stage\|baseline\|performance_metrics\|run_config" | sort
