# Understanding Semantic Token Coloring in VSCode

## What Is It?

**Semantic Token Coloring** is VSCode's advanced syntax highlighting system where colors are influenced by multiple layers that blend together.

## The Color Layers

VSCode applies colors in these layers (from bottom to top):

### 1. Base Syntax Highlighting (TextMate Grammar)
This is what you customize with `editor.tokenColorCustomizations`:
```json
{
  "scope": "keyword",
  "settings": {
    "foreground": "#ff79c6"
  }
}
```

### 2. Semantic Token Coloring (Language Server)
The language server (like Python, JSON, TypeScript) adds **meaning-based** coloring:
- Understands if a variable is a parameter, local var, or constant
- Knows if a function is built-in vs user-defined
- Recognizes JSON keys vs values
- Distinguishes between different types of keywords

### 3. Your Highlight Colors
Search highlights, word selection, etc. that you set with `workbench.colorCustomizations`

### 4. Alpha Blending
All these layers use **transparency** (the last 2 digits in hex codes):
- `#ff79c6ff` = fully opaque (no blending)
- `#ff79c680` = 50% transparent (blends with layers below)
- `#ff79c650` = 75% transparent (more blending)

## Why Colors "Adapt"

When you see colors that aren't exactly what you specified, it's because:

1. **Opacity blending** - Your color is semi-transparent and mixes with the layer below
2. **Semantic tokens** - The language server overrides your base colors with semantic meaning
3. **Theme rules** - The theme (like Dracula Pro) has its own semantic token rules

### Example from Your Screenshot

**"role" vs "name" in JSON:**
- Both are JSON keys (same syntax)
- Semantic analyzer might treat "role" differently (property name vs field name)
- Your YELLOW find highlight (#ffff00) blends with the orange "role" color
- Result: Orange-tinted border instead of pure yellow

## How to Override Semantic Coloring

### Option 1: Disable It Completely (Not Recommended)
```json
{
  "editor.semanticHighlighting.enabled": false
}
```
**Downside:** Loses intelligent highlighting that helps you understand code

### Option 2: Make Your Colors More Opaque
Change transparency to reduce blending:
```json
{
  "editor.findMatchBorder": "#ffffff",  // Pure white, no transparency
  "editor.wordHighlightBorder": "#00ff00"  // Pure green, no transparency
}
```

### Option 3: Override Specific Semantic Token Colors
Target specific semantic token types:
```json
{
  "editor.semanticTokenColorCustomizations": {
    "[Dracula Pro]": {
      "enabled": true,
      "rules": {
        "property": "#50fa7b",           // All properties = bright green
        "variable": "#f8f8f2",           // All variables = white
        "function": "#50fa7b:bold",      // All functions = green + bold
        "parameter": "#ffb86c",          // Parameters = orange
        "class": "#8be9fd",              // Classes = cyan
        "enum": "#bd93f9",               // Enums = purple
        "interface": "#8be9fd",          // Interfaces = cyan
        "type": "#8be9fd",               // Types = cyan
        "namespace": "#f8f8f2",          // Namespaces = white
        "enumMember": "#bd93f9",         // Enum members = purple
        "macro": "#ff79c6",              // Macros = pink
        "comment": "#6272a4"             // Comments = gray
      }
    }
  }
}
```

### Option 4: Disable Semantic Tokens for Specific Languages
```json
{
  "editor.semanticTokenColorCustomizations": {
    "[Dracula Pro]": {
      "enabled": true,
      "rules": {
        "*.declaration": { "foreground": "#50fa7b" },
        "*.readonly": { "foreground": "#8be9fd" }
      }
    }
  },
  // Disable for JSON files only
  "[json]": {
    "editor.semanticHighlighting.enabled": false
  }
}
```

## Common Semantic Token Types

Here are the semantic token types you can customize:

| Token Type | Description | Example |
|------------|-------------|---------|
| `namespace` | Namespaces/modules | `import os` (os) |
| `class` | Class names | `class Person:` |
| `enum` | Enumerations | `enum Status` |
| `interface` | Interfaces (TS/Java) | `interface User` |
| `struct` | Struct types | `struct Point` |
| `typeParameter` | Generic type params | `<T>` |
| `type` | Type references | `: string` |
| `parameter` | Function parameters | `def foo(param):` |
| `variable` | Variables | `x = 5` |
| `property` | Object properties | `obj.property` |
| `function` | Functions | `def myFunc():` |
| `method` | Class methods | `obj.method()` |
| `macro` | Preprocessor macros | `#define` |
| `comment` | Comments | `# comment` |
| `string` | String literals | `"hello"` |
| `number` | Numbers | `42` |
| `regexp` | Regular expressions | `/pattern/` |
| `operator` | Operators | `+`, `-`, `*` |
| `decorator` | Decorators | `@decorator` |

## Token Modifiers

You can also style based on modifiers:

| Modifier | Description |
|----------|-------------|
| `declaration` | Where something is declared |
| `definition` | Where something is defined |
| `readonly` | Read-only/const variables |
| `static` | Static members |
| `deprecated` | Deprecated code |
| `abstract` | Abstract classes/methods |
| `async` | Async functions |
| `modification` | Where something is modified |
| `documentation` | Doc comments |
| `defaultLibrary` | Built-in library items |

### Example: Style Readonly Variables Differently
```json
{
  "editor.semanticTokenColorCustomizations": {
    "rules": {
      "variable.readonly": {
        "foreground": "#8be9fd",
        "fontStyle": "italic"
      }
    }
  }
}
```

## Debugging Colors

### Find What's Coloring Something

1. Place cursor on the text
2. Press **Cmd+Shift+P** → "Developer: Inspect Editor Tokens and Scopes"
3. Shows:
   - TextMate scope
   - Semantic token type
   - Foreground color being applied

### See All Semantic Tokens in File

1. Press **Cmd+Shift+P** → "Developer: Inspect Semantic Tokens"
2. Shows a list of all semantic tokens and their types

## Best Practices

1. **Start with base colors** - Set good defaults with `tokenColorCustomizations`
2. **Let semantic tokens enhance** - Don't fight them, they're usually helpful
3. **Use high opacity for important highlights** - Search, selection should be very visible
4. **Test across file types** - JSON, Python, JavaScript may behave differently
5. **Document your overrides** - You'll forget why you changed things!

## When to Override vs When to Accept

### Override When:
- Colors are too faded/dark for visibility
- Two different things look identical
- Your custom highlights aren't showing through

### Accept When:
- Colors are distinguishable and readable
- Semantic meaning helps you understand code
- Small variations help you identify different token types

---

## Your Current Setup

Based on your customizations:
- You've set bright base colors (keywords, strings, functions)
- Semantic tokens blend with these
- Highlights use transparency to allow some blending
- Result: Context-aware coloring that's still very readable

## If You Need More Control

If you find semantic coloring is making things too inconsistent, you can:
1. Increase opacity on your highlights (make them more solid)
2. Override specific semantic token types that are problematic
3. Disable semantic tokens for specific languages only
4. As a last resort, disable semantic highlighting entirely

---

**Remember:** The goal is readability, not perfection. If you can distinguish different elements and read comfortably, the system is working!
