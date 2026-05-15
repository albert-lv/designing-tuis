#!/usr/bin/env bash
set -euo pipefail

if [ "$#" -lt 1 ]; then
  echo "Usage: $0 <design.tui> [width] [height]" >&2
  exit 1
fi

INPUT_FILE="$1"
WIDTH="${2:-80}"
HEIGHT="${3:-24}"

if [ ! -f "$INPUT_FILE" ]; then
  echo "Error: input file not found: $INPUT_FILE" >&2
  exit 1
fi

TUI_STUDIO_DIR="${TUI_STUDIO_DIR:-$HOME/arena/tui-studio}"
RENDER_WRAPPER_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
RENDER_TS="$RENDER_WRAPPER_DIR/scripts/render.ts"

if [ ! -d "$TUI_STUDIO_DIR" ]; then
  echo "Error: tui-studio directory not found: $TUI_STUDIO_DIR" >&2
  echo "Set TUI_STUDIO_DIR to your local tui-studio clone." >&2
  exit 1
fi

if [ ! -f "$RENDER_TS" ]; then
  echo "Error: renderer wrapper not found: $RENDER_TS" >&2
  exit 1
fi

npx --yes tsx "$RENDER_TS" "$INPUT_FILE" "$WIDTH" "$HEIGHT"
