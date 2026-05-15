# Components Cheatsheet

Source of truth: tui-studio component defaults (snapshot for skill usage).

## Layout

### Box
- Category: layout
- Props default: `{ width: "auto", height: "auto" }`
- Layout default: `{ type: "flexbox", direction: "column", padding: 1, gap: 1 }`
- Style default: `{ color: "white", border: true, borderStyle: "single", borderColor: "white" }`

### Grid
- Category: layout
- Props default: `{ width: "fill", height: "fill", columns: 2 }`
- Layout default: `{ type: "grid", gapX: 1, gapY: 0 }`
- Style default: `{ color: "white" }`

## Display

### Text
- Category: display
- Props default: `{ content: "", wrap: true, align: "left" }`
- Layout default: `{ width: "auto", height: "auto" }`
- Style default: `{ color: "white", bold: false, dim: false }`

### Heading
- Category: display
- Props default: `{ level: 1, content: "Heading" }`
- Layout default: `{ width: "auto", height: "auto" }`
- Style default: `{ color: "cyan", bold: true }`

### Paragraph
- Category: display
- Props default: `{ content: "", wrap: true }`
- Layout default: `{ width: "fill", height: "auto" }`
- Style default: `{ color: "white" }`

### Divider
- Category: display
- Props default: `{ orientation: "horizontal", char: "─" }`
- Layout default: `{ width: "fill", height: 1 }`
- Style default: `{ color: "gray" }`

## Input

### Input
- Category: input
- Props default: `{ value: "", placeholder: "", disabled: false }`
- Layout default: `{ width: 24, height: 1 }`
- Style default: `{ color: "white", border: true, borderColor: "white" }`

### PasswordInput
- Category: input
- Props default: `{ value: "", mask: "*" }`
- Layout default: `{ width: 24, height: 1 }`
- Style default: `{ color: "white", border: true, borderColor: "white" }`

### Select
- Category: input
- Props default: `{ options: [], selectedIndex: 0 }`
- Layout default: `{ width: 24, height: 5 }`
- Style default: `{ color: "white", border: true, borderColor: "white" }`

### Checkbox
- Category: input
- Props default: `{ label: "", checked: false }`
- Layout default: `{ width: "auto", height: 1 }`
- Style default: `{ color: "white" }`

### RadioGroup
- Category: input
- Props default: `{ options: [], selectedIndex: 0 }`
- Layout default: `{ width: "auto", height: "auto" }`
- Style default: `{ color: "white" }`

### Slider
- Category: input
- Props default: `{ min: 0, max: 100, value: 50, step: 1 }`
- Layout default: `{ width: 24, height: 1 }`
- Style default: `{ color: "green" }`

## Data

### Table
- Category: data
- Props default: `{ columns: [], rows: [], selectedRow: 0 }`
- Layout default: `{ width: "fill", height: 10 }`
- Style default: `{ color: "white", border: true, borderColor: "white" }`

### List
- Category: data
- Props default: `{ items: [], selectedIndex: 0 }`
- Layout default: `{ width: "fill", height: 8 }`
- Style default: `{ color: "white", border: true, borderColor: "white" }`

### Tree
- Category: data
- Props default: `{ nodes: [], selectedPath: [] }`
- Layout default: `{ width: "fill", height: 10 }`
- Style default: `{ color: "white", border: true, borderColor: "white" }`

### ProgressBar
- Category: data
- Props default: `{ value: 0, max: 100, showLabel: true }`
- Layout default: `{ width: "fill", height: 1 }`
- Style default: `{ color: "green", trackColor: "gray" }`

## Navigation

### Tabs
- Category: navigation
- Props default: `{ tabs: [], activeIndex: 0 }`
- Layout default: `{ width: "fill", height: 3 }`
- Style default: `{ color: "white", activeColor: "cyan" }`

### Breadcrumb
- Category: navigation
- Props default: `{ items: [] }`
- Layout default: `{ width: "fill", height: 1 }`
- Style default: `{ color: "gray", separator: "/" }`

## Overlay

### Modal
- Category: overlay
- Props default: `{ open: true, title: "", closable: true }`
- Layout default: `{ width: 50, height: 12 }`
- Style default: `{ color: "white", border: true, borderColor: "cyan" }`

### Toast
- Category: overlay
- Props default: `{ message: "", variant: "info", durationMs: 2500 }`
- Layout default: `{ width: "auto", height: 1 }`
- Style default: `{ color: "white", bgColor: "blue" }`
