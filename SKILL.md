---
name: designing-tuis
description: Use when designing terminal user interfaces, building TUI welcome screens / dashboards / wizards / CLI launch screens, replicating TUI app layouts from screenshots (lazygit, k9s, btop, etc.), or iterating on existing .tui files
---

# Designing TUIs

## Overview

Dialogue-driven TUI design: turn user needs or screenshots into `.tui` JSON, preview when a renderer is available, iterate from feedback, then optionally export framework code.

## When to Use

- Terminal UI: welcome screen, dashboard, wizard, or tool panel
- lazygit / k9s / btop screenshot replication or reference
- Focused edit to an existing `.tui` file
- Layout sketch, such as left tree plus right table

Do not use for plain CLI output, Web UI, or final prototypes.

## Prerequisites

- Working directory has `designs/` and `references/`
- For preview/export, user provides the renderer/exporter; this repo bundles no tools

## Workflow

1. **Confirm the input first**
   - Screenshot: describe layout/hierarchy, then wait before writing `.tui`
   - Text: restate structure and key interactions
2. **Check component defaults**
   - Read `components-cheatsheet.md`; do not guess fields
3. **Write `.tui`**
   - Save to `designs/<name>.tui`
   - Use `{ version: "1", meta, tree }`
4. **Preview if possible**
   - If a renderer is provided, preview it; otherwise ask how
5. **Iterate in small steps**
   - Change only relevant nodes; avoid full rewrites
6. **Export code only on request**
   - If requested and available, export BubbleTea / Ink / Textual code

## Critical Quirks

See `known-quirks.md` for details:

1. Cross-axis `"fill"` is unsupported; use explicit numbers
2. `Box.title` is not rendered; simulate with inner `Text`
3. `Popover` / `Tooltip` / `TextArea` are unavailable
4. Verify field locations against the cheatsheet

## Common Mistakes

| Mistake | Impact | Fix |
|---|---|---|
| Skipping cheatsheet | Invalid fields | Check defaults |
| Cross-axis `"fill"` | 1 column/row collapse | Use numbers |
| Hex colors | Poor theme behavior | Use theme names |
| Wrong `width`/`height` level | Validation/render failure | Check location |
| “Quick” skips confirmation | Layout drifts | Align intent |

## Red Flags — STOP and Re-check

- You are using `"fill"` on a non-main axis
- You are unsure whether a field is in `props` or `layout`
- You want to use `Popover` / `Tooltip` / `TextArea`
- You only have a screenshot and no stated intent, but are about to generate `.tui`
