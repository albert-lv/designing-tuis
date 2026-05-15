---
name: designing-tuis
description: Use when designing terminal user interfaces, building TUI welcome screens / dashboards / wizards / CLI launch screens, replicating TUI app layouts from screenshots (lazygit, k9s, btop, etc.), or iterating on existing .tui files
---

# Designing TUIs

## Overview

对话驱动 TUI 设计：用户描述需求或贴参考截图，你产出 `.tui` JSON，渲染预览后按反馈迭代，满意后再导出目标框架代码。

## When to Use

- 用户要做终端 UI（welcome screen、dashboard、wizard、工具面板）
- 用户贴 lazygit / k9s / btop 等截图并要求复刻或参考
- 用户提供已有 `.tui` 文件并要求局部修改
- 用户描述布局结构（如左树右表、上下分栏）并希望快速可视化

不适用：纯文本 CLI（无布局 UI）、Web UI、已有最终原型且不需要终端预览。

## Prerequisites

- 本地可访问 `tui-studio` 仓库与其渲染工具
- 当前工作目录含 `designs/` 与 `references/`

## Workflow

1. **先确认输入**
   - 截图输入：先描述识别到的布局与层次，等用户确认后再落 `.tui`
   - 文字输入：先复述结构与重点交互
2. **查组件默认值**
   - 先读 `components-cheatsheet.md`，不要凭记忆猜字段
3. **写 `.tui`**
   - 输出到 `designs/<name>.tui`
   - 结构使用 `{ version: "1", meta, tree }`
4. **渲染预览**
   - 使用 tui-studio 的渲染工具预览 `designs/<name>.tui`
5. **小步迭代**
   - 用户反馈后只改相关节点，避免全量重写
6. **导出代码**
   - 定稿后再用 tui-studio 的 code exporter 导出 BubbleTea / Ink / Textual 等实现

## Critical Quirks

详情见 `known-quirks.md`：

1. flexbox cross-axis 不支持 `"fill"`，要改显式数字
2. Box 的 `title` 不会自动渲染，需要内部 Text 模拟
3. `Popover` / `Tooltip` / `TextArea` 不是可用组件
4. schema 字段位置要以 cheatsheet 为准，不要直接相信口述“新 schema”

## Common Mistakes

| Mistake | Impact | Fix |
|---|---|---|
| 不查 cheatsheet 直接写 props | 字段无效或渲染失败 | 先查 defaults 再写 |
| cross-axis 用 `"fill"` | 组件塌缩到 1 列/1 行 | 改显式宽高 |
| 直接硬编码十六进制颜色 | 主题切换表现不稳定 | 用主题色名 |
| 把 `width`/`height` 写错层级 | schema 校验失败 | 对照组件字段位置 |
| 用户说“快速出图”就跳过确认 | 布局方向跑偏 | 先对齐目标再生成 |

## Red Flags — STOP and Re-check

- 你准备在非主轴写 `"fill"`
- 你不确定某个字段属于 `props` 还是 `layout`
- 你想使用 `Popover`/`Tooltip`/`TextArea`
- 只有截图且无文字意图时，你准备直接生成 `.tui`
