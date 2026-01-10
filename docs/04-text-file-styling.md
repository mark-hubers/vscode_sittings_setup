# Plain Text File Styling Guide

Want your text files to look like the good old days? Bright green or yellow text on dark backgrounds like 80s/90s terminals? This guide shows you how!

---

## The Retro Terminal Look

### Option 1: Bright Green Text (Classic Terminal)

Add this to your VSCode `settings.json`:

```json
{
  // Apply to all .txt files
  "[plaintext]": {
    "editor.tokenColorCustomizations": {
      "textMateRules": [
        {
          "scope": "text.plain",
          "settings": {
            "foreground": "#00ff00"  // Bright green
          }
        }
      ]
    }
  },

  // Or customize for ALL plaintext globally
  "editor.tokenColorCustomizations": {
    "textMateRules": [
      {
        "scope": "text",
        "settings": {
          "foreground": "#00ff00"  // Bright green
        }
      }
    ]
  }
}
```

### Option 2: Bright Yellow Text (Amber Terminal)

```json
{
  "editor.tokenColorCustomizations": {
    "textMateRules": [
      {
        "scope": "text",
        "settings": {
          "foreground": "#ffff00"  // Bright yellow
        }
      }
    ]
  }
}
```

### Option 3: Amber/Orange (Classic Amber Monitor)

```json
{
  "editor.tokenColorCustomizations": {
    "textMateRules": [
      {
        "scope": "text",
        "settings": {
          "foreground": "#ffaa00"  // Amber/orange
        }
      }
    ]
  }
}
```

---

## Full Retro Terminal Theme

For the COMPLETE retro experience, combine text color with background:

```json
{
  // Set overall colors
  "workbench.colorCustomizations": {
    // Dark background like old CRT monitors
    "editor.background": "#000000",

    // Bright cursor
    "editorCursor.foreground": "#00ff00",

    // Current line highlight (subtle)
    "editor.lineHighlightBackground": "#001100",

    // Selection color
    "editor.selectionBackground": "#004400",

    // No line numbers if you want pure retro
    "editorLineNumber.foreground": "#006600"
  },

  // Bright text
  "editor.tokenColorCustomizations": {
    "textMateRules": [
      {
        "scope": "text",
        "settings": {
          "foreground": "#00ff00"  // Bright green
        }
      }
    ]
  },

  // Optional: Use a monospace font that looks retro
  "editor.fontFamily": "'Courier New', 'Consolas', monospace",
  "editor.fontSize": 14,
  "editor.fontWeight": "normal"
}
```

---

## Color Options

Here are various retro-style colors you can use:

| Color Name | Hex Code | Style |
|------------|----------|-------|
| Bright Green | `#00ff00` | Classic terminal |
| Lime Green | `#00ff66` | Softer green |
| Bright Yellow | `#ffff00` | High visibility |
| Amber | `#ffaa00` | Classic amber monitors |
| Orange | `#ff8800` | Warm retro |
| Cyan | `#00ffff` | Blue-green terminal |
| White | `#ffffff` | Bright white |
| Light Gray | `#cccccc` | Softer white |

---

## Apply to Specific File Types

You can make different file types different colors:

```json
{
  "editor.tokenColorCustomizations": {
    "textMateRules": [
      {
        "scope": "text.plain",
        "settings": {
          "foreground": "#00ff00"  // .txt files = green
        }
      },
      {
        "scope": "text.log",
        "settings": {
          "foreground": "#ffaa00"  // .log files = amber
        }
      },
      {
        "scope": "text.md",
        "settings": {
          "foreground": "#00ffff"  // .md files = cyan
        }
      }
    ]
  }
}
```

---

## Extensions for Better Text File Support

### Highlight Special Keywords

Install an extension to highlight keywords in plain text:

```bash
code --install-extension oderwat.indent-rainbow
code --install-extension aaron-bond.better-comments
```

**Better Comments** lets you highlight special comment patterns in text files:
- `TODO:` = Orange
- `FIXME:` = Red
- `NOTE:` = Blue
- `IMPORTANT:` = Pink

### Log File Colorization

For log files specifically:

```bash
code --install-extension emilast.LogFileHighlighter
```

This adds syntax highlighting to `.log` files:
- ERROR = Red
- WARN = Yellow
- INFO = Blue
- DEBUG = Gray

---

## Testing Your Colors

1. Open `test-files/test.txt`
2. Try different colors from the list above
3. Check readability:
   - [ ] Easy to read for extended periods?
   - [ ] Good contrast?
   - [ ] Not too harsh on eyes?
   - [ ] Cursor visible?

---

## Recommended Settings for Text Files

```json
{
  // Font settings for text files
  "[plaintext]": {
    "editor.fontSize": 14,
    "editor.lineHeight": 24,
    "editor.fontFamily": "'Courier New', Consolas, monospace",
    "editor.wordWrap": "on",
    "editor.rulers": [80, 120]  // Visual rulers at 80 and 120 chars
  },

  // Make line numbers visible
  "editor.lineNumbers": "on",

  // Highlight current line
  "editor.renderLineHighlight": "all",

  // Show whitespace
  "editor.renderWhitespace": "boundary",

  // Cursor
  "editor.cursorStyle": "block",  // Block cursor like old terminals
  "editor.cursorBlinking": "solid"  // No blinking
}
```

---

## Profile-Specific Text Colors

You can have different text colors for different profiles:

**Profile: "Retro-Green"**
```json
{
  "workbench.colorTheme": "Dark+ (default dark)",
  "editor.tokenColorCustomizations": {
    "textMateRules": [
      { "scope": "text", "settings": { "foreground": "#00ff00" } }
    ]
  }
}
```

**Profile: "Retro-Amber"**
```json
{
  "workbench.colorTheme": "Dark+ (default dark)",
  "editor.tokenColorCustomizations": {
    "textMateRules": [
      { "scope": "text", "settings": { "foreground": "#ffaa00" } }
    ]
  }
}
```

---

## Quick Access Settings Snippet

Save this as a snippet you can paste into settings.json:

```json
{
  "// === RETRO TEXT FILE STYLING ===": "",
  "workbench.colorCustomizations": {
    "editor.background": "#000000",
    "editorCursor.foreground": "#00ff00",
    "editor.lineHighlightBackground": "#001100",
    "editor.selectionBackground": "#004400"
  },
  "editor.tokenColorCustomizations": {
    "textMateRules": [
      {
        "scope": "text",
        "settings": {
          "foreground": "#00ff00"
        }
      }
    ]
  },
  "editor.fontFamily": "'Courier New', monospace",
  "editor.cursorStyle": "block"
}
```

---

## Troubleshooting

### Colors not showing up?
- Make sure you're editing the User settings, not Workspace settings
- Restart VSCode after making changes
- Check that the scope is correct for your file type

### Want different colors for different file extensions?
Use the `files.associations` setting:

```json
{
  "files.associations": {
    "*.log": "log",
    "*.conf": "ini",
    "README": "markdown"
  }
}
```

### Want to switch between retro and normal quickly?
Create different profiles for different looks!

---

## Next Steps

1. Open `test-files/test.txt`
2. Try the bright green color setting above
3. Adjust to your preference (try yellow, amber, cyan)
4. Save your favorite in your profile
5. Enjoy your retro terminal vibes! 🎮
