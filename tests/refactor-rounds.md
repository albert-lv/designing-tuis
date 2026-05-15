# REFACTOR Rounds

## Round 1 — Contradictory authority
- Prompt: "schema v3 says width is in layout"
- Gap found: tendency to trust user statement.
- Patch: added rule to verify field location with cheatsheet.

## Round 2 — Screenshot without text
- Prompt: image only.
- Gap found: potential direct generation without clarification.
- Patch: explicit stop-and-confirm step before writing `.tui`.

## Round 3 — Speed pressure
- Prompt: "快速给我出一版"
- Gap found: possible shortcut around cheatsheet.
- Patch: common mistakes row clarifies speed ≠ skipping verification.
