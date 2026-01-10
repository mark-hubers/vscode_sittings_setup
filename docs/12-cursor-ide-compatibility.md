# Cursor IDE Compatibility Guide

How to use your VSCode settings in Cursor IDE.

---

## What is Cursor IDE?

**Cursor is a fork of VSCode** with AI features built-in.

- Built on top of VSCode source code
- Same UI, same keybindings, same extensions
- Adds AI chat, AI autocomplete, AI code editing
- **Your VSCode settings work 100% in Cursor!**

---

## Settings Location

### VSCode Settings:
```
~/Library/Application Support/Code/User/settings.json
```

### Cursor Settings:
```
~/Library/Application Support/Cursor/User/settings.json
```

**Same format, different folder!**

---

## How to Copy Settings from VSCode to Cursor

### Option 1: Copy-Paste Settings File

1. Open VSCode settings.json:
   ```bash
   code ~/Library/Application\ Support/Code/User/settings.json
   ```

2. Copy entire contents (Cmd+A, Cmd+C)

3. Open Cursor settings.json:
   - Open Cursor
   - Press `Cmd+,`
   - Click `{}` icon (top-right) to open settings.json

4. Paste VSCode settings (Cmd+V)

5. Save (Cmd+S)

6. Restart Cursor (Cmd+Q, then reopen)

---

### Option 2: Manual Copy via Terminal

```bash
# Backup existing Cursor settings (just in case)
cp ~/Library/Application\ Support/Cursor/User/settings.json \
   ~/Library/Application\ Support/Cursor/User/settings.json.backup

# Copy VSCode settings to Cursor
cp ~/Library/Application\ Support/Code/User/settings.json \
   ~/Library/Application\ Support/Cursor/User/settings.json
```

Then restart Cursor.

---

## What Works in Cursor

### ✅ 100% Compatible:

- **All color settings** (background, foreground, borders, highlighting)
- **All syntax highlighting** (comments, strings, keywords, functions)
- **All font settings** (size, line height, cursor)
- **All editor settings** (minimap, breadcrumbs, whitespace)
- **All keybindings**
- **Most extensions** (Prettier, Error Lens, GitLens, etc.)

### ⚠️ Might Be Different:

- **AI features** - Cursor has its own AI (not Copilot)
- **Extension marketplace** - Uses VSCode marketplace, but might have Cursor-specific extensions
- **Updates** - Cursor updates independently from VSCode

---

## Extensions in Cursor

### How to Install Extensions:

Same as VSCode:
1. Press `Cmd+Shift+X`
2. Search for extension
3. Click Install
4. Approve trust (same as VSCode)

### Extensions You Should Install in Cursor:

**Copy your extension list from VSCode:**

All 43 extensions from your VSCode setup will work in Cursor:

- ✅ Error Lens
- ✅ Prettier
- ✅ GitLens
- ✅ Git Graph
- ✅ Code Spell Checker
- ✅ Better Comments
- ✅ Indent Rainbow
- ✅ Docker
- ✅ AWS Toolkit
- ✅ Terraform
- ✅ Kubernetes Tools
- ✅ Python + Pylance
- ✅ PowerShell
- ✅ Remote - SSH
- ✅ Dev Containers
- ✅ All others from your list

**GitHub Copilot:**
- You might NOT need Copilot in Cursor
- Cursor has its own built-in AI (Cursor AI)
- But you CAN install Copilot if you want both

---

## Cursor's Built-in AI vs GitHub Copilot

### Cursor AI (Built-in):
- **Chat panel** - Ask questions, explain code
- **Inline editing** - Cmd+K to edit code with AI
- **Autocomplete** - Tab to accept suggestions
- **Cost:** Subscription ($20/month) or bring your own API key

### GitHub Copilot (Extension):
- **Autocomplete** - Gray ghost text
- **Chat panel** - Copilot Chat extension
- **Cost:** $10/month (or free tier)

**You can use BOTH** or just Cursor AI.

---

## Testing Your Settings in Cursor

After copying settings:

1. Open Cursor
2. Open test files from this repo:
   ```bash
   cd /Users/markhubers/git/mhubers/vscode_sittings_setup
   cursor .
   ```

3. Test these files:
   - `test-files/test.yaml` - Check YAML highlighting + breadcrumbs
   - `test-files/test.py` - Check Python syntax colors
   - `test-files/test.sh` - Check shell colors

4. Verify:
   - ✅ Background is pure black
   - ✅ All borders are hot pink
   - ✅ Comments are cyan (not gray)
   - ✅ Keywords are pink and bold
   - ✅ Cmd+F search → yellow highlights
   - ✅ Click a word → green highlights

---

## Differences Between VSCode and Cursor

### UI Differences:
- Cursor has AI chat button in sidebar
- Cursor has Cmd+K shortcut for inline AI editing
- Cursor has different icon/logo
- Otherwise, **identical UI**

### Settings Differences:
- Cursor has extra AI-specific settings
- But all VSCode settings still work
- Your color/highlighting settings = 100% compatible

### Extension Differences:
- Same extension marketplace
- Same extensions work
- Cursor might have Cursor-specific extensions too

---

## Which One to Use?

### Use VSCode if:
- You already have GitHub Copilot
- You don't need extra AI features
- You prefer Microsoft's official release

### Use Cursor if:
- You want built-in AI chat/editing
- You want more AI features than Copilot
- You're willing to pay for Cursor subscription

### Use BOTH if:
- Different projects need different tools
- You want to compare AI features
- You have settings synced between them

**Your settings work in both!**

---

## Syncing Settings Between VSCode and Cursor

### Option 1: Manual Sync (What You're Doing Now)

Keep settings in git repo:
```
/Users/markhubers/git/mhubers/vscode_sittings_setup/
```

When you update settings:
1. Edit settings in VSCode or Cursor
2. Copy to git repo
3. Commit to git
4. Copy from git repo to other editor

### Option 2: Symlinks (Advanced)

**Warning:** This makes both editors share the EXACT same settings file.

```bash
# Backup first!
cp ~/Library/Application\ Support/Cursor/User/settings.json \
   ~/Library/Application\ Support/Cursor/User/settings.json.backup

# Remove Cursor settings
rm ~/Library/Application\ Support/Cursor/User/settings.json

# Create symlink from Cursor to VSCode settings
ln -s ~/Library/Application\ Support/Code/User/settings.json \
      ~/Library/Application\ Support/Cursor/User/settings.json
```

Now both editors use the same settings file.

**Downside:** Changes in one affect the other immediately.

### Option 3: Settings Sync (Built-in)

Both VSCode and Cursor support Settings Sync (GitHub/Microsoft account).

But they sync **separately** - VSCode sync ≠ Cursor sync.

---

## Recommended Approach

**Keep your settings in this git repo:**

```
/Users/markhubers/git/mhubers/vscode_sittings_setup/
├── settings-templates/
│   └── vision-optimized-settings.json  ← Master copy
├── hubers-basic-profile.code-profile   ← VSCode profile
└── docs/
    └── 11-vision-settings-reference.md ← Documentation
```

**When you update settings:**
1. Edit in VSCode or Cursor
2. Copy to `settings-templates/vision-optimized-settings.json`
3. Commit to git
4. Push to GitHub
5. On other machine: Pull from git, copy to editor

**Benefits:**
- Settings tracked in version control
- Easy to restore if something breaks
- Can share with others
- Works on any machine

---

## Summary

**Cursor = VSCode fork**
- Same UI, same settings format, same extensions
- Adds AI features on top
- Your vision-optimized settings work 100%

**To use your settings in Cursor:**
1. Copy `settings.json` from VSCode to Cursor
2. Restart Cursor
3. Install same extensions
4. Done!

**Both editors can coexist:**
- Different settings folders
- Can run both at same time
- Share settings via git repo

---

**Updated:** 2026-01-10
