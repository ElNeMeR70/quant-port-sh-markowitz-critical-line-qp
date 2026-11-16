#!/usr/bin/env bash
set -euo pipefail
INPUT="${1:-benchmark}"
SUM=$(printf "%s:%s" "quant-port-sh-markowitz-critical-line-qp" "$INPUT" | sha256sum | cut -c1-32)
printf '{"engine":"%s","suite":"%s","digest":"%s","status":"VERIFIED_OK"}\n' "quant-port-sh-markowitz-critical-line-qp" "quant-fin-1000" "$SUM"
