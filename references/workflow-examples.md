# Workflow Examples

## Example 1: Screenshot replication (lazygit-like)
1. Describe detected panes (left repo tree, right diff panel, bottom status line).
2. Confirm intent with user (which pane should be wider, whether borders are rounded).
3. Create `designs/lazygit-like.tui` using `Box`, `Row`, `Column`, `List`, and `Text`.
4. If the user has provided a renderer command, preview `designs/lazygit-like.tui`; otherwise ask how they want to preview it.
5. Iterate only changed panel widths and colors until approved.

## Example 2: Existing file tweak
1. Open `designs/current.tui`.
2. Change right panel `props.width` by +10.
3. Re-render and confirm no unrelated node changed.
