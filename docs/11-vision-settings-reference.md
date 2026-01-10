# Vision Settings Reference - High Visibility Configuration

Complete guide to all color and highlighting settings for vision accessibility.

**Works in:** VSCode, Cursor IDE, any VSCode-based editor

---

## Settings File Locations

### VSCode Settings:
```
Mac: ~/Library/Application Support/Code/User/settings.json
```

### Cursor IDE Settings:
```
Mac: ~/Library/Application Support/Cursor/User/settings.json
```

**They use the same format!** You can copy settings between them.

---

## Quick Reference - What Controls What

| What You See | Setting Name | Current Value |
|-------------|--------------|---------------|
| **Background color** | `editor.background` | `#000000` (pure black) |
| **Text color** | `editor.foreground` | `#ffffff` (white) |
| **Line numbers** | `editorLineNumber.foreground` | `#8be9fd` (cyan) |
| **Active line number** | `editorLineNumber.activeForeground` | `#50fa7b` (green) |
| **Find/search highlights** | `editor.findMatchBorder` | `#ffff00` (yellow border) |
| **Word selection highlights** | `editor.wordHighlightBorder` | `#00ff00` (green border) |
| **All borders (panels, tabs, etc.)** | Multiple `*.border` settings | `#ff79c6` (hot pink) |
| **Comments** | `tokenColorCustomizations` → `comment` | `#8be9fd` (cyan) |
| **Strings** | `tokenColorCustomizations` → `string` | `#f1fa8c` (yellow) |
| **Keywords** | `tokenColorCustomizations` → `keyword` | `#ff79c6` (pink, bold) |
| **Functions** | `tokenColorCustomizations` → `entity.name.function` | `#50fa7b` (green, bold) |

---

## Core Background & Text Colors

### Pure Black Background (Reduces Eye Strain)
```json
"workbench.colorCustomizations": {
    "[Default Dark+]": {
        // Main editor background - PURE BLACK (not gray)
        "editor.background": "#000000",

        // Main text color - WHITE for maximum contrast
        "editor.foreground": "#ffffff"
    }
}
```

**Why:** Pure black (`#000000`) is easier on eyes than dark gray. Maximum contrast with white text.

---

## Line Numbers (Navigation Aid)

```json
"workbench.colorCustomizations": {
    "[Default Dark+]": {
        // Regular line numbers - BRIGHT CYAN so you can see them
        "editorLineNumber.foreground": "#8be9fd",

        // Current/active line number - BRIGHT GREEN to show where you are
        "editorLineNumber.activeForeground": "#50fa7b"
    }
}
```

**Why:**
- Cyan stands out against black background
- Green for active line = clear "you are here" indicator
- Easy to track which line you're on

---

## Find/Search Highlighting (Yellow = Search Results)

```json
"workbench.colorCustomizations": {
    // Current search match - BRIGHT YELLOW BORDER
    "editor.findMatchBorder": "#ffff00",
    "editor.findMatchBackground": "#ffaa0080",  // Semi-transparent yellow fill

    // Other search matches - LIGHTER YELLOW
    "editor.findMatchHighlightBackground": "#ffaa0050",

    // White text for search results (readable on yellow)
    "editor.findMatchForeground": "#ffffff"
}
```

**Why:**
- Yellow is highly visible against black
- Border ensures you see the match even if just one character
- White text stays readable on yellow background

**What it looks like:**
- Press Cmd+F to search
- Current match = bright yellow border
- All other matches = lighter yellow highlight

---

## Word Selection Highlighting (Green = Selected Word)

```json
"workbench.colorCustomizations": {
    // When you click a word - GREEN BORDER around all occurrences
    "editor.wordHighlightBorder": "#00ff00",
    "editor.wordHighlightBackground": "#00ff6650",  // Semi-transparent green

    // Strong highlight (write access) - BRIGHTER GREEN
    "editor.wordHighlightStrongBorder": "#00ff00",
    "editor.wordHighlightStrongBackground": "#00ff6670",

    // Also applies to symbol highlights (TypeScript, PowerShell)
    "editor.symbolHighlightBorder": "#00ff00",
    "editor.symbolHighlightBackground": "#00ff6650"
}
```

**Why:**
- Green = different from yellow (search) so you know what's happening
- Border ensures visibility even for single characters
- Works across all file types

**What it looks like:**
- Click any variable name → all uses get green border
- Easy to see where a variable is used throughout file

---

## All Borders - Hot Pink for High Visibility

Every panel, tab, sidebar border = same bright color so you can see boundaries.

```json
"workbench.colorCustomizations": {
    // ALL BORDERS = HOT PINK (#ff79c6)

    // Editor splits/groups
    "editorGroup.border": "#ff79c6",
    "editorGroupHeader.tabsBorder": "#ff79c6",

    // Panels (terminal, output, etc.)
    "panel.border": "#ff79c6",

    // Sidebar (file explorer)
    "sideBar.border": "#ff79c6",
    "sideBarSectionHeader.border": "#ff79c6",

    // Tabs
    "tab.activeBorder": "#ff79c6",
    "tab.activeBorderTop": "#ff79c6",

    // Status bar & title bar
    "statusBar.border": "#ff79c6",
    "titleBar.border": "#ff79c6",

    // Activity bar (left sidebar icons)
    "activityBar.border": "#ff79c6",
    "activityBarBadge.border": "#ff79c6",

    // Widgets (autocomplete, hover boxes)
    "editorWidget.border": "#ff79c6",
    "widget.border": "#ff79c6",

    // Input fields and dropdowns
    "input.border": "#ff79c6",
    "dropdown.border": "#ff79c6"
}
```

**Why:**
- Hot pink stands out massively against black background
- See exactly where each panel starts/ends
- No more guessing which window is which

**Total borders unified:** 15 different border types, all hot pink

---

## Bracket Matching - Hot Pink + Transparent Fill

```json
"workbench.colorCustomizations": {
    "[Default Dark+]": {
        // Matching brackets - HOT PINK BORDER
        "editorBracketMatch.border": "#ff79c6",

        // Matching brackets - SEMI-TRANSPARENT PINK FILL
        "editorBracketMatch.background": "#ff79c633"
    }
}
```

**Why:**
- Click a `{` → matching `}` gets pink border
- Easy to see matching pairs
- Helps with nested code

---

## Syntax Colors (Code Highlighting)

### Comments - Bright Cyan
```json
"editor.tokenColorCustomizations": {
    "[Default Dark+]": {
        "textMateRules": [
            {
                "scope": "comment",
                "settings": {
                    // Comments = BRIGHT CYAN (not gray!)
                    "foreground": "#8be9fd",
                    "fontStyle": ""  // Not italic
                }
            }
        ]
    }
}
```

**Why:** Default gray comments are invisible. Cyan comments are readable!

---

### Strings - Yellow
```json
{
    "scope": "string",
    "settings": {
        // Strings = YELLOW (like "hello world")
        "foreground": "#f1fa8c"
    }
}
```

**Why:** Yellow strings stand out, easy to spot text values.

---

### Keywords - Hot Pink + Bold
```json
{
    "scope": "keyword",
    "settings": {
        // Keywords = HOT PINK + BOLD (if, for, return, def, etc.)
        "foreground": "#ff79c6",
        "fontStyle": "bold"
    }
}
```

**Why:** Important syntax words are bold pink = impossible to miss.

---

### Functions - Bright Green + Bold
```json
{
    "scope": ["entity.name.function", "support.function"],
    "settings": {
        // Functions = BRIGHT GREEN + BOLD
        "foreground": "#50fa7b",
        "fontStyle": "bold"
    }
}
```

**Why:** Functions are green and bold = easy to spot where code is called.

---

### Variables - White
```json
{
    "scope": "variable",
    "settings": {
        // Variables = WHITE (default text color)
        "foreground": "#ffffff"
    }
}
```

**Why:** Most common thing in code = default readable white.

---

### Numbers - Purple
```json
{
    "scope": "constant.numeric",
    "settings": {
        // Numbers = PURPLE
        "foreground": "#bd93f9"
    }
}
```

**Why:** Purple numbers stand out from white variables.

---

## Disable Semantic Highlighting (Consistency)

VSCode has multiple color layers that can override your settings. Turn off semantic highlighting for consistency.

```json
// Global setting - disable semantic highlighting
"editor.semanticHighlighting.enabled": false,

// Per-language overrides (make sure it's off everywhere)
"[typescript]": {
    "editor.semanticHighlighting.enabled": false
},
"[powershell]": {
    "editor.semanticHighlighting.enabled": false
},
"[javascript]": {
    "editor.semanticHighlighting.enabled": false
},
"[python]": {
    "editor.semanticHighlighting.enabled": false
}
```

**Why:** Semantic highlighting changes colors based on context, which can make things inconsistent. Better to have consistent colors you can rely on.

---

## Bracket Pair Colorization (Built-in Rainbow Brackets)

```json
// Enable built-in rainbow brackets
"editor.bracketPairColorization.enabled": true,
"editor.bracketPairColorization.independentColorPoolPerBracketType": true,
"editor.guides.bracketPairs": "active",

// Custom bracket colors - BRIGHT
"workbench.colorCustomizations": {
    "[Default Dark+]": {
        "editorBracketHighlight.foreground1": "#50fa7b",  // Green
        "editorBracketHighlight.foreground2": "#f1fa8c",  // Yellow
        "editorBracketHighlight.foreground3": "#bd93f9"   // Purple
    }
}
```

**Why:**
- Nested brackets get different colors
- Easy to see which `}` matches which `{`
- VSCode has this built-in now (don't need extension)

---

## Indentation Guides - Visible Structure

```json
"workbench.colorCustomizations": {
    "[Default Dark+]": {
        // Regular indent guides - GRAY (subtle)
        "editorIndentGuide.background": "#6272a4",

        // ACTIVE indent guide - HOT PINK (shows current block)
        "editorIndentGuide.activeBackground": "#ff79c6"
    }
}

// Show indent guides
"editor.guides.indentation": true,

// Show all whitespace (spaces, tabs)
"editor.renderWhitespace": "all",

// Color for whitespace characters
"editorWhitespace.foreground": "#6272a4"
```

**Why:**
- See code structure at a glance
- Active indent guide = pink = know what block you're in
- Whitespace visible = no confusion about tabs vs spaces

---

## Minimap - Disabled for More Screen Space

```json
// Turn off minimap (more space for code)
"editor.minimap.enabled": false
```

**Why:** Minimap is hard to see with vision issues. Better to use more screen space for actual code.

---

## Breadcrumbs - File Path Navigation

```json
// Show breadcrumbs (file path + code structure at top)
"breadcrumbs.enabled": true
```

**Why:** See where you are in the file structure. YAML files show path like `person › contact › email`.

---

## Font Settings

```json
// Font size - 14pt (adjust as needed)
"editor.fontSize": 14,

// Line height - 22 (more space between lines)
"editor.lineHeight": 22,

// Cursor - solid, not blinking
"editor.cursorBlinking": "solid",

// Cursor width - 2px (visible but not huge)
"editor.cursorWidth": 2
```

**Why:**
- Larger font = easier to read
- More line spacing = less crowded
- Solid cursor = don't lose it when it blinks

---

## Complete Settings Template

See: `settings-templates/vision-optimized-settings.json` for a complete, commented, copy-paste ready settings file.

---

## How to Apply These Settings

### For VSCode:
1. Press `Cmd+,` to open Settings
2. Click the **{}** icon (top-right) to open `settings.json`
3. Copy the settings you want
4. Paste into your settings.json
5. Save (Cmd+S)
6. **Restart VSCode** (Cmd+Q, then reopen)

### For Cursor IDE:
1. Open Cursor
2. Press `Cmd+,` to open Settings
3. Click **{}** icon to open settings.json
4. Copy your VSCode settings
5. Paste into Cursor settings.json
6. Save and restart Cursor

**They use the exact same format!**

---

## Testing Your Settings

After applying settings, test with these files:
- `test-files/test.yaml` - Test YAML highlighting + breadcrumbs
- `test-files/test.py` - Test Python syntax colors
- `test-files/test.sh` - Test shell script colors

**What to check:**
- Background is pure black ✓
- All borders are hot pink ✓
- Press Cmd+F and search "TESTWORD" → yellow highlights ✓
- Click a variable → green highlights on all uses ✓
- Comments are cyan (not gray) ✓
- Keywords are pink and bold ✓

---

## Color Palette Reference

Your current color scheme (Dracula-inspired):

| Color Name | Hex Code | Used For |
|-----------|----------|----------|
| **Pure Black** | `#000000` | Background |
| **White** | `#ffffff` | Text, variables |
| **Hot Pink** | `#ff79c6` | Borders, keywords |
| **Bright Cyan** | `#8be9fd` | Comments, line numbers |
| **Bright Green** | `#50fa7b` | Functions, active line number |
| **Yellow** | `#f1fa8c` | Strings |
| **Purple** | `#bd93f9` | Numbers |
| **Bright Yellow** | `#ffff00` | Search borders |
| **Bright Green** | `#00ff00` | Word selection borders |

---

## Cursor IDE Compatibility

**100% Compatible!** Cursor is a fork of VSCode, so:

✅ All color settings work
✅ All extensions work (you can install the same extensions)
✅ Same settings.json format
✅ Same keybindings
✅ Same UI structure

**Differences:**
- Cursor has additional AI features built-in
- Cursor settings stored in different folder (`~/Library/Application Support/Cursor/User/`)
- But all VSCode settings transfer directly!

**To copy settings to Cursor:**
1. Copy your VSCode `settings.json`
2. Open Cursor settings (Cmd+,)
3. Paste VSCode settings into Cursor settings.json
4. Restart Cursor
5. Install the same extensions in Cursor

---

## Troubleshooting

### Colors don't change after editing settings.json
- **Fix:** Restart VSCode/Cursor completely (Cmd+Q, then reopen)
- Window reload (Cmd+R) sometimes isn't enough

### Some files still have weird colors
- **Fix:** Check if semantic highlighting is disabled for that language
- Add language-specific override (see "Disable Semantic Highlighting" section)

### Borders not showing
- **Fix:** Make sure you're editing the correct theme in `workbench.colorCustomizations`
- Should be `"[Default Dark+]": { ... }`

### Find highlights are wrong color
- **Fix:** Some global settings can override theme-specific ones
- Make sure both global AND theme-specific settings match

---

## Next Steps

1. ✅ Read this guide to understand what each setting does
2. ✅ Copy the commented template from `settings-templates/vision-optimized-settings.json`
3. ✅ Paste into VSCode settings.json
4. ✅ Restart VSCode
5. ✅ Test with the test files
6. ✅ Copy same settings to Cursor IDE if you use it

---

**Updated:** 2026-01-10
**For:** Vision accessibility, high contrast, high visibility
**Compatible with:** VSCode, Cursor IDE, VSCodium, any VSCode fork
