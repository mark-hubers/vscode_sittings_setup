# Vision Settings - Quick Reference Card

One-page reference for customizing colors and highlighting.

---

## Settings File Location

**VSCode:**
`~/Library/Application Support/Code/User/settings.json`

**Cursor IDE:**
`~/Library/Application Support/Cursor/User/settings.json`

**How to open:**
1. Press `Cmd+,`
2. Click `{}` icon (top-right)
3. Edit settings.json

---

## What Controls What

| What You Want to Change | Setting Name | Current Value | Where to Find It |
|------------------------|--------------|---------------|-----------------|
| **Background color** | `editor.background` | `#000000` | `workbench.colorCustomizations` → `[Default Dark+]` |
| **Text color** | `editor.foreground` | `#ffffff` | Same section |
| **Find highlights** | `editor.findMatchBorder` | `#ffff00` | Same section |
| **Word highlights** | `editor.wordHighlightBorder` | `#00ff00` | Same section |
| **All borders** | `*.border` (15 settings) | `#ff79c6` | Global section |
| **Comments** | `comment` → `foreground` | `#8be9fd` | `editor.tokenColorCustomizations` |
| **Strings** | `string` → `foreground` | `#f1fa8c` | Same section |
| **Keywords** | `keyword` → `foreground` | `#ff79c6` | Same section |
| **Functions** | `entity.name.function` | `#50fa7b` | Same section |
| **Line numbers** | `editorLineNumber.foreground` | `#8be9fd` | `workbench.colorCustomizations` |

---

## Color Palette (Current)

```
Background:    #000000  (pure black)
Text:          #ffffff  (white)
Hot Pink:      #ff79c6  (borders, keywords)
Cyan:          #8be9fd  (comments, line numbers)
Green:         #50fa7b  (functions, active line)
Yellow:        #f1fa8c  (strings)
Purple:        #bd93f9  (numbers)
Search Border: #ffff00  (bright yellow)
Select Border: #00ff00  (bright green)
```

---

## Common Customizations

### Change Background Color

Find this section:
```json
"workbench.colorCustomizations": {
    "[Default Dark+]": {
        "editor.background": "#000000"  ← Change this hex code
    }
}
```

### Change Search Highlight Color

Find:
```json
"editor.findMatchBorder": "#ffff00"  ← Change to any color
"editor.findMatchBackground": "#ffaa0080"  ← Fill color (with transparency)
```

### Change All Borders at Once

Find all these and change to same color:
```json
"editorGroup.border": "#ff79c6",
"panel.border": "#ff79c6",
"sideBar.border": "#ff79c6",
// ... (12 more border settings)
```

### Change Comment Color

Find:
```json
"editor.tokenColorCustomizations": {
    "[Default Dark+]": {
        "textMateRules": [
            {
                "scope": "comment",
                "settings": {
                    "foreground": "#8be9fd"  ← Change this
                }
            }
        ]
    }
}
```

### Change Font Size

Find:
```json
"editor.fontSize": 14,  ← Change number (10-30 typical)
"editor.lineHeight": 22  ← Adjust spacing too
```

---

## Visual Indicators Reference

**What you see in the editor:**

| Visual | What It Is | Extension Responsible |
|--------|-----------|----------------------|
| Blue squiggly line | Spelling error | Code Spell Checker |
| Lightbulb 💡 | Fix suggestion | VSCode (or spell checker) |
| **Lightbulb + Star 💡⭐** | **AI suggestion** | **GitHub Copilot** |
| Gray ghost text | AI completion | GitHub Copilot |
| Red text at line end | Compiler error | Error Lens |
| Yellow border (Cmd+F) | Search match | VSCode (your settings) |
| Green border (click word) | Selected word | VSCode (your settings) |
| Hot pink borders | Panel boundaries | VSCode (your settings) |

---

## Must-Know Settings

### Disable Semantic Highlighting (for consistency):
```json
"editor.semanticHighlighting.enabled": false,
"[typescript]": { "editor.semanticHighlighting.enabled": false },
"[powershell]": { "editor.semanticHighlighting.enabled": false },
"[javascript]": { "editor.semanticHighlighting.enabled": false },
"[python]": { "editor.semanticHighlighting.enabled": false }
```

### Enable Rainbow Brackets:
```json
"editor.bracketPairColorization.enabled": true,
"editor.guides.bracketPairs": "active"
```

### Disable Minimap (more screen space):
```json
"editor.minimap.enabled": false
```

### Show Breadcrumbs (YAML path navigation):
```json
"breadcrumbs.enabled": true
```

### Show All Whitespace:
```json
"editor.renderWhitespace": "all"
```

---

## After Changing Settings

**Always restart the editor!**

1. Save settings (Cmd+S)
2. Quit completely (Cmd+Q)
3. Reopen editor
4. Test with files in `test-files/` directory

---

## Full Documentation

- **Detailed guide:** `docs/11-vision-settings-reference.md`
- **Copy-paste template:** `settings-templates/vision-optimized-settings.json`
- **Cursor compatibility:** `docs/12-cursor-ide-compatibility.md`

---

## Quick Copy-Paste

**Need to start fresh?**

1. Open: `settings-templates/vision-optimized-settings.json`
2. Copy entire file
3. Paste into your `settings.json`
4. Save and restart

**File has full comments explaining every setting!**

---

## Cursor IDE

**Works 100% the same!**

- Same settings format
- Same extensions
- Just different folder location
- See: `docs/12-cursor-ide-compatibility.md`

---

**Updated:** 2026-01-10
