---
name: designing-tuis
description: Design, replicate, or iterate terminal user interfaces from screenshots, descriptions, layout sketches, or existing .tui files.
---

# Designing TUIs

Use this skill to turn conversation, screenshots, or existing `.tui` files into practical terminal UI designs. Optimize for fast visual alignment first; export framework code only after the design is approved.

Trigger for welcome screens, dashboards, wizards, CLI launch screens, tool panels, lazygit/k9s/btop-style layouts, pane descriptions, or terminal UI visuals even when the user does not say “TUI”.

## Operating Modes

Identify the mode before acting:

- **Screenshot replication**: describe visible panes, hierarchy, density, borders, colors, and selection state before writing files.
- **Text-to-layout**: restate the intended structure, primary interaction, and target terminal size.
- **Existing `.tui` edit**: inspect the current tree and patch only the requested nodes.
- **Code export**: only after approval, and only when the user provides an exporter.

## Reference Loading

Load only what is needed:

- Read `references/components-cheatsheet.md` before creating or editing components. It is the field/default source of truth.
- Read `references/known-quirks.md` before debugging rendering problems or using edge-case layout behavior.
- Read `references/workflow-examples.md` when the task resembles screenshot replication or a focused file tweak.

This repository is documentation-only. Do not assume render or export tools ship with it.

## Workflow

1. **Align on intent**
   - For screenshots, describe the layout and wait for confirmation.
   - For text prompts, confirm the panes, emphasis, and interaction model.
2. **Draft the `.tui`**
   - Save to `designs/<name>.tui` unless the user gives another path.
   - Use `{ version: "1", meta, tree }`.
   - Prefer theme color names over hardcoded hex colors.
3. **Preview if available**
   - Use the renderer command supplied by the user or environment.
   - If no renderer is available, stop and ask how they want to preview.
4. **Iterate surgically**
   - Change only the nodes related to feedback.
   - Preserve unrelated structure, labels, and styling.
5. **Export only on request**
   - Export BubbleTea / Ink / Textual code only after approval and only with an available exporter.

## Output Contract

When delivering a design update, include:

- The `.tui` path created or changed
- A brief layout summary
- Preview status, including any missing renderer/exporter blocker
- Specific follow-up questions only when needed to continue

## Guardrails

Stop and re-check before any of these:

- Using `"fill"` on a non-main flex axis
- Guessing whether a field belongs in `props` or `layout`
- Using unavailable components: `Popover`, `Tooltip`, or `TextArea`
- Generating `.tui` directly from a screenshot without confirming intent
- Rewriting an entire existing design for a small requested edit
