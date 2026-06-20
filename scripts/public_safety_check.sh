#!/usr/bin/env bash
set -euo pipefail

root="${1:-.}"

patterns=(
  'sk-[A-Za-z0-9_-]{20,}'
  'AKIA[0-9A-Z]{16}'
  'BEGIN (RSA |OPENSSH |EC |DSA )?PRIVATE KEY'
  'xox[baprs]-[A-Za-z0-9-]+'
  'ghp_[A-Za-z0-9_]{30,}'
  'github_pat_[A-Za-z0-9_]{30,}'
)

blocked_words=(
  'we guarantee ranking'
  'we guarantee indexing'
  'we guarantee revenue'
  'we guarantee conversion'
  'guaranteed #1 ranking'
  'guaranteed 30-day ranking'
  'guaranteed 30-day indexing'
)

status=0

for pattern in "${patterns[@]}"; do
  if grep -REn --exclude-dir=.git --exclude='public_safety_check.sh' "$pattern" "$root" >/tmp/ai_ready_public_safety_hits.txt 2>/dev/null; then
    echo "Potential secret pattern found: $pattern"
    cat /tmp/ai_ready_public_safety_hits.txt
    status=1
  fi
done

for word in "${blocked_words[@]}"; do
  if grep -RFin --exclude-dir=.git "$word" "$root" >/tmp/ai_ready_public_safety_hits.txt 2>/dev/null; then
    echo "Blocked claim found: $word"
    cat /tmp/ai_ready_public_safety_hits.txt
    status=1
  fi
done

if [ "$status" -eq 0 ]; then
  echo "PUBLIC_SAFETY_CHECK=PASS"
fi

exit "$status"
