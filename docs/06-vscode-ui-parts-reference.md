# VSCode UI Parts Reference Guide

Because who the heck can remember all these names?!

## Main UI Parts (from top to bottom, left to right)

```
┌─────────────────────────────────────────────────────────────┐
│ TITLE BAR - Shows file name, folder, window controls       │
├───┬─────────────────────────────────────────────────────────┤
│   │ TAB BAR - Open files as tabs                            │
│   ├─────────────────────────────────────────────────────────┤
│   │ BREADCRUMBS - File path & code navigation (← YAML path!)│
│ A ├─────────────────────────────────────────────────────────┤
│ C │                                                          │
│ T │                                                          │
│ I │              EDITOR - Where you write code              │
│ V │                                                          │
│ I │                                                          │
│ T ├─────────────────────────────────────────────────────────┤
│ Y │ PANEL - Terminal, Output, Problems, Debug Console       │
│   │                                                          │
│ B ├─────────────────────────────────────────────────────────┤
│ A │ STATUS BAR - Git branch, language, cursor position      │
│ R └─────────────────────────────────────────────────────────┘
│
└─ Left side icons for: Files, Search, Git, Debug, Extensions
```

## Detailed Breakdown

### 1. TITLE BAR (very top)
- Shows the current file name and folder
- Window controls (minimize, maximize, close)
- On Mac: might be combined with menu bar

### 2. ACTIVITY BAR (far left, vertical icons)
- File Explorer icon 📁
- Search icon 🔍
- Source Control (Git) icon
- Run & Debug icon
- Extensions icon
- **Your setting**: `activityBar.border: #ff79c6` (hot pink!)

### 3. SIDE BAR (left panel, toggleable)
- Shows content based on Activity Bar selection
- File explorer, search results, git changes, etc.
- **Your setting**: `sideBar.border: #ff79c6`
- Toggle: `Cmd+B`

### 4. TAB BAR (top of editor)
- Shows all open files as tabs
- Click to switch between files
- **Your setting**: `tab.activeBorder: #ff79c6`

### 5. BREADCRUMBS (below tabs, above editor) ⭐ THIS ONE!
- **Shows file path and code structure**
- For YAML: shows the nested path (e.g., `person > contact > email`)
- For JSON: shows object path
- For code files: shows class/function you're in
- **Toggle**: `breadcrumbs.enabled: true` (you have this on!)
- Click on any part to jump to that level

### 6. EDITOR (main central area)
- Where you actually write code
- Can split into multiple editor groups
- **Your settings**:
  - `editor.background: #000000` (pure black)
  - `editor.minimap.enabled: false` (you disabled the minimap)

### 7. MINIMAP (right side of editor - you disabled this!)
- Small code overview on the right
- You turned this off for more screen space
- **Your setting**: `editor.minimap.enabled: false`

### 8. PANEL (bottom section, toggleable)
- **Terminal** - Run bash/shell commands
- **Output** - Extension output, language server logs
- **Problems** - Errors and warnings from linters
- **Debug Console** - For debugging
- **Your setting**: `panel.border: #ff79c6`
- Toggle: `Cmd+J`

### 9. STATUS BAR (very bottom)
- Shows language mode, cursor position, line/column numbers
- Git branch name
- Errors/warnings count
- Some extensions add info here (YAML Path Extractor tried to use this)
- **Your setting**: `statusBar.border: #ff79c6`

## Editor-Specific Parts

### GUTTER (left of line numbers)
- Breakpoint indicators (red dots)
- Git change indicators (blue/green/red bars)

### LINE NUMBERS (left side of code)
- Shows line numbers
- **Your settings**:
  - `editorLineNumber.foreground: #8be9fd` (bright cyan)
  - `editorLineNumber.activeForeground: #50fa7b` (bright green for current line)

### INDENT GUIDES (vertical lines in code)
- Shows indentation levels
- **Your settings**:
  - `editorIndentGuide.background: #6272a4` (bright gray)
  - `editorIndentGuide.activeBackground: #ff79c6` (hot pink for active)

### EDITOR GROUPS (split editor)
- You can split the editor into multiple panes
- **Your setting**: `editorGroup.border: #ff79c6`

## Command Palette & Quick Access

### COMMAND PALETTE (`Cmd+Shift+P`)
- Search and run any VSCode command
- Examples:
  - "Reload Window"
  - "Change Language Mode"
  - "Install Extensions"

### QUICK OPEN (`Cmd+P`)
- Quickly open files by name
- Start with `>` to access Command Palette
- Start with `@` to jump to symbols in current file

## Common Keyboard Shortcuts

| Shortcut | Action |
|----------|--------|
| `Cmd+B` | Toggle Side Bar |
| `Cmd+J` | Toggle Panel (terminal area) |
| `Cmd+Shift+P` | Command Palette |
| `Cmd+P` | Quick Open (find files) |
| `Cmd+,` | Open Settings |
| `Cmd+K Cmd+S` | Keyboard Shortcuts |
| `Cmd+\` | Split Editor |
| `Cmd+W` | Close current tab |
| `Cmd+Shift+F` | Search across all files |
| `Cmd+F` | Find in current file |

## Settings Terminology

When you see settings like this in `settings.json`:

```json
"workbench.colorCustomizations": {
    "editor.background": "#000000",        // ← EDITOR background
    "panel.border": "#ff79c6",            // ← PANEL border (terminal area)
    "sideBar.border": "#ff79c6",          // ← SIDE BAR border (file explorer)
    "statusBar.border": "#ff79c6",        // ← STATUS BAR border (bottom)
    "activityBar.border": "#ff79c6",      // ← ACTIVITY BAR border (left icons)
    "editorGroup.border": "#ff79c6",      // ← EDITOR GROUP border (split editor)
    "tab.activeBorder": "#ff79c6",        // ← TAB BAR active tab indicator
}
```

Now you know exactly which part each one refers to!

## Why This Matters

- **YAML/JSON path**: Shows in BREADCRUMBS (not status bar!)
- **CSV column colors**: Rainbow CSV extension adds this automatically
- **Git branch**: Shows in STATUS BAR (bottom)
- **File explorer**: Lives in SIDE BAR (left)
- **Terminal**: Lives in PANEL (bottom)

## Pro Tips

1. **Hide/show everything**:
   - `Cmd+K Z` = Zen mode (just editor, no UI)
   - Press `Esc Esc` to exit

2. **Breadcrumbs are your friend**:
   - Click on any part to see dropdown menu
   - Navigate through code structure without scrolling

3. **Status bar is clickable**:
   - Click on language name to change it
   - Click on line/col to go to specific line
   - Click on errors/warnings to see Problems panel

4. **Customize colors for ANY of these parts**:
   - All part names can be found in VSCode docs
   - Format: `partName.property` (e.g., `statusBar.background`)
   - We used mostly `.border` properties to make everything hot pink!

---

**TL;DR**: The YAML path shows in the **BREADCRUMBS** (the bar right below your tabs, above the editor). Not in the status bar at the bottom!
