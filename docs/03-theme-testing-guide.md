# Theme Testing Guide for Visibility

This guide will help you find the best theme for your visibility needs and customize it.

## Your Requirements

Based on your needs:
- ✅ Dark theme with bright letters
- ✅ Great highlighting/syntax colors
- ✅ NO fading of any elements
- ✅ Bright border lines
- ✅ High contrast (but not "overdone" like accessibility modes)

---

## Step 1: Test Themes Systematically

### Setup for Testing

1. **Open all test files** in VSCode tabs:
   - `test-files/test.py`
   - `test-files/test.yaml`
   - `test-files/test.md` (and preview it!)
   - `test-files/Jenkinsfile`
   - `test-files/test.sh`
   - `test-files/test.groovy`

2. **Open the Command Palette**: `Cmd+K Cmd+T`
3. **Browse themes** using arrow keys - preview instantly!

### Markdown Preview (IMPORTANT!)

VSCode has built-in Markdown preview - this is your "WYSIWYG" view:

1. **Open** `test-files/test.md`
2. **Click the preview icon** (top right corner) OR press `Cmd+Shift+V`
3. **Or use side-by-side**: `Cmd+K V` to see source + preview together

The preview shows how your markdown will actually look!

### What to Look For

While switching themes, check these elements:

#### In Python file (test.py):
- [ ] **Functions/classes** - Are they bright and visible?
- [ ] **Strings** - Different color from code?
- [ ] **Comments** - Visible but distinguishable? (NOT faded gray!)
- [ ] **Keywords** (def, if, for, return) - Stand out?
- [ ] **Variables** - Different from keywords?
- [ ] **Numbers** - Distinguishable?

#### In YAML file (test.yaml):
- [ ] **Keys vs values** - Clearly different colors?
- [ ] **Nested indentation** - Can you see the structure?
- [ ] **Strings in quotes** - Different from unquoted?
- [ ] **Comments** - Visible?

#### In Jenkinsfile:
- [ ] **Stage names** - Stand out?
- [ ] **String blocks** - Visible?
- [ ] **Groovy code** - Good syntax highlighting?

#### In Markdown file (test.md):
- [ ] **Headings** - Clear hierarchy? Different sizes?
- [ ] **Bold/italic** - Distinguishable?
- [ ] **Links** - Stand out from text?
- [ ] **Code blocks** - Separated from text?
- [ ] **Code syntax highlighting** - Works in code blocks?
- [ ] **Preview mode** (`Cmd+Shift+V`) - Readable and clean?
- [ ] **Blockquotes** - Visible formatting?
- [ ] **Tables** - Clear borders in preview?

#### UI Elements:
- [ ] **Line numbers** - Bright enough?
- [ ] **Current line highlight** - Visible but not overwhelming?
- [ ] **Brackets/braces** - Can you match them easily?
- [ ] **Indent guides** - Visible vertical lines?
- [ ] **Selection highlight** - Clear when text is selected?
- [ ] **Search highlights** - Stands out?

---

## Step 2: Recommended Themes to Try

Based on your high-contrast needs, try these in order:

### 1. **One Dark Pro**
```
zhuangtongfa.Material-theme
```
- Very popular, highly customizable
- Bright colors, good contrast
- Easy to tweak

### 2. **GitHub Dark High Contrast**
```
github.github-vscode-theme
```
- Built for visibility
- Very bright, clear borders
- Try "GitHub Dark High Contrast" variant

### 3. **Monokai Pro** (you have variants)
```
gerane.theme-monokai-highfructose
databyne.theme-monokai-hc
74th.monokai-charcoal-high-contrast
```
- Classic high-contrast theme
- Try each variant

### 4. **Dracula Pro**
```
dracula-theme-pro.theme-dracula-pro
```
- Popular, bright colors
- Good contrast

### 5. **High Contrast Yellow**
```
gyunbie.high-contrast-yellow-theme
```
- Very bright
- Good for low vision

---

## Step 3: Customize the Theme

Once you find a theme you like (let's say "One Dark Pro"), you can customize colors!

### Open Settings JSON

1. `Cmd+Shift+P` → Type "Open User Settings (JSON)"
2. Add a `workbench.colorCustomizations` section

### Example Customizations

```json
{
  "workbench.colorTheme": "One Dark Pro",

  "workbench.colorCustomizations": {
    // Make the editor background slightly lighter for contrast
    "editor.background": "#1e1e1e",

    // Make line numbers brighter
    "editorLineNumber.foreground": "#858585",
    "editorLineNumber.activeForeground": "#c6c6c6",

    // Make indent guides VERY visible
    "editorIndentGuide.background": "#404040",
    "editorIndentGuide.activeBackground": "#707070",

    // Bright current line highlight
    "editor.lineHighlightBackground": "#2a2a2a",
    "editor.lineHighlightBorder": "#444444",

    // Selection highlight
    "editor.selectionBackground": "#264f78",
    "editor.selectionHighlightBackground": "#264f7844",

    // Bracket matching
    "editorBracketMatch.background": "#0064001a",
    "editorBracketMatch.border": "#00ff00",

    // Find/search highlighting
    "editor.findMatchBackground": "#515c6a",
    "editor.findMatchHighlightBackground": "#515c6a66",

    // Brighter borders everywhere
    "editorGroup.border": "#444444",
    "panel.border": "#444444",
    "sideBar.border": "#444444"
  },

  "editor.tokenColorCustomizations": {
    "textMateRules": [
      {
        "scope": "comment",
        "settings": {
          "foreground": "#7f8c8d",
          "fontStyle": ""  // Remove italic if it's hard to read
        }
      },
      {
        "scope": "string",
        "settings": {
          "foreground": "#98c379"  // Bright green
        }
      },
      {
        "scope": "keyword",
        "settings": {
          "foreground": "#c678dd",  // Bright purple
          "fontStyle": "bold"  // Make keywords bold
        }
      },
      {
        "scope": "variable",
        "settings": {
          "foreground": "#e06c75"  // Bright red
        }
      }
    ]
  }
}
```

---

## Step 4: Important Editor Settings

Add these to your settings for better visibility:

```json
{
  // Font settings
  "editor.fontSize": 14,  // Adjust to your preference
  "editor.fontWeight": "500",  // Slightly bold (400 is normal, 700 is bold)
  "editor.lineHeight": 22,  // More space between lines

  // Bracket pair colorization (built-in!)
  "editor.bracketPairColorization.enabled": true,
  "editor.guides.bracketPairs": "active",

  // Show whitespace
  "editor.renderWhitespace": "boundary",

  // Minimap (useful for navigation)
  "editor.minimap.enabled": true,
  "editor.minimap.renderCharacters": false,  // Blocks instead of text

  // Breadcrumbs (shows file path)
  "breadcrumbs.enabled": true,

  // Cursor
  "editor.cursorBlinking": "solid",  // No blinking
  "editor.cursorWidth": 2,  // Thicker cursor

  // Smoother scrolling
  "editor.smoothScrolling": true,

  // Highlight modified tabs
  "workbench.editor.highlightModifiedTabs": true
}
```

---

## Step 5: Testing Process

### For Each Theme:

1. **Switch to theme**: `Cmd+K Cmd+T`
2. **Open test.py**: Check syntax highlighting
3. **Open test.yaml**: Check path visibility at bottom (if extension installed)
4. **Open Jenkinsfile**: Check Groovy syntax
5. **Try selecting text**: Is selection visible?
6. **Try finding text** (`Cmd+F`): Is highlighting visible?
7. **Check indent guides**: Can you see vertical lines?

### Decision Time:

- ✅ **Keep**: If everything is bright and clear
- ❌ **Delete**: If anything is faded or hard to see
- 🔧 **Customize**: If close but needs tweaking

---

## Step 6: Document Your Choice

Create a file in this repo with your findings:

```bash
# Create a notes file
touch my-theme-notes.md
```

Document:
- Which theme you chose
- What customizations you made
- Which colors work best for you
- Any extensions that help with visibility

---

## Quick Reference: Color Scopes

If you want to customize specific syntax elements, here are common scopes:

| Element | Scope |
|---------|-------|
| Comments | `comment` |
| Strings | `string` |
| Keywords (if, for, def) | `keyword` |
| Functions | `entity.name.function` |
| Classes | `entity.name.type` |
| Variables | `variable` |
| Constants | `constant` |
| Numbers | `constant.numeric` |
| Operators | `keyword.operator` |
| Punctuation | `punctuation` |

To find the scope of any text:
1. Place cursor on the text
2. `Cmd+Shift+P` → "Developer: Inspect Editor Tokens and Scopes"

---

## Troubleshooting

### Everything looks washed out
- Check your terminal/monitor color profile
- Try increasing contrast in theme settings
- Use `workbench.colorCustomizations` to brighten colors

### Can't see indent guides
```json
"editor.guides.indentation": true,
"editorIndentGuide.background": "#ffffff30",
"editorIndentGuide.activeBackground": "#ffffff60"
```

### Comments are too faded
```json
"editor.tokenColorCustomizations": {
  "textMateRules": [
    {
      "scope": "comment",
      "settings": {
        "foreground": "#999999"  // Brighter gray
      }
    }
  ]
}
```

---

## Next Steps

1. Test themes using your test files
2. Pick your favorite (or top 2)
3. Customize if needed
4. Delete all other themes
5. Document your choice in `my-theme-notes.md`
6. Move on to testing extensions!
