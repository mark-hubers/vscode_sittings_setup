# Cursor IDE Compatibility Guide - Complete Setup

**Step-by-step guide to get your VSCode setup working in Cursor IDE.**

**Tested and working!** Cursor looks and works exactly like VSCode with all your vision settings.

---

## What is Cursor IDE?

**Cursor is a fork of VSCode** with AI features built-in.

- Built on top of VSCode source code
- Same UI, same keybindings, same extensions
- Adds AI chat, AI autocomplete, AI code editing
- **Your VSCode settings work 100% in Cursor!**

**Download:** https://cursor.sh

---

## Quick Setup (5 Minutes)

### Step 1: Install Cursor IDE
1. Go to https://cursor.sh
2. Download for Mac
3. Install to Applications folder
4. Open Cursor

### Step 2: Copy VSCode Settings to Cursor

**Run these commands in terminal:**

```bash
# Copy settings.json
cp ~/Library/Application\ Support/Code/User/settings.json \
   ~/Library/Application\ Support/Cursor/User/settings.json

# Copy keybindings.json (if you have custom keybindings)
cp ~/Library/Application\ Support/Code/User/keybindings.json \
   ~/Library/Application\ Support/Cursor/User/keybindings.json
```

**That's it!** Your vision settings are now in Cursor.

### Step 3: Restart Cursor

1. Press `Cmd+Q` to quit Cursor completely
2. Reopen Cursor

**Check that it worked:**
- ✅ Background should be pure black
- ✅ Borders should be hot pink
- ✅ All your color settings should be active!

### Step 4: Install Extensions

**In Cursor, press `Cmd+Shift+X` (Extensions panel)**

Install these extensions in order:

#### Must-Have for Vision (Install First):
1. **Error Lens** (usernamehw.errorlens)
   - Shows errors inline - CRITICAL for vision
   - Trust when prompted

2. **Code Spell Checker** (streetsidesoftware.code-spell-checker)
   - Spell checking as you type
   - Trust when prompted

3. **Indent Rainbow** (oderwat.indent-rainbow)
   - Colored indentation levels
   - Trust when prompted

4. **Better Comments** (aaron-bond.better-comments)
   - Colored TODO/FIXME/NOTE comments
   - Trust when prompted

#### Productivity (Install Next):
5. **Prettier** (esbenp.prettier-vscode)
   - Auto-format code on save
   - Trust when prompted

6. **GitLens** (eamodio.gitlens)
   - Advanced git features
   - Usually auto-trusted

7. **Git Graph** (mhutchie.git-graph)
   - Visual git history
   - Trust when prompted

#### File Operations:
8. **File Utils** (sleistner.vscode-fileutils)
   - Right-click file operations
   - Trust when prompted

9. **File Properties Viewer** (brunnerh.file-properties-viewer)
   - View file size, dates
   - Trust when prompted

#### DevOps/Cloud (Optional):
10. **Docker** (ms-azuretools.vscode-docker)
11. **AWS Toolkit** (amazonwebservices.aws-toolkit-vscode)
12. **Terraform** (hashicorp.terraform)
13. **Kubernetes** (ms-kubernetes-tools.vscode-kubernetes-tools)
14. **Python** (ms-python.python)
15. **PowerShell** (ms-vscode.powershell)
16. **Remote - SSH** (ms-vscode-remote.remote-ssh)
17. **Dev Containers** (ms-vscode-remote.remote-containers)

#### SKIP THESE in Cursor:
- ❌ **GitHub Copilot** - Cursor has its own AI (better!)
- ❌ **Claude Code** - Might conflict with Cursor AI

**Total to install:** ~15-20 extensions (vs 43 in VSCode)

### Step 5: Test Your Setup

Open a test file to verify everything works:

```bash
cd /Users/markhubers/git/mhubers/vscode_sittings_setup
cursor .
```

Open `test-files/test.py` and check:
- ✅ Background is pure black
- ✅ Borders are hot pink
- ✅ Comments are cyan (not gray)
- ✅ Press Cmd+F, search "TESTWORD" → yellow highlights
- ✅ Click a word → green highlights
- ✅ Keywords are pink and bold
- ✅ Functions are green and bold

**If all checks pass:** You're done! Cursor is fully set up! 🎉

---

## Settings Location Reference

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

## Detailed Setup Instructions

### How to Copy Settings from VSCode to Cursor

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

## Cursor's Built-in AI Features (Why It's Better Than Copilot)

### What Makes Cursor Special:

**Cursor has AI built-in** - you don't need to install Copilot or other AI extensions!

### Key Cursor AI Features:

#### 1. **Cmd+K - Inline AI Editing**
**What it does:**
- Select code → Press Cmd+K
- Type what you want: "add error handling", "make this faster", "add comments"
- AI rewrites your code inline
- Accept or reject the changes

**Example:**
```python
# Select this function, press Cmd+K, type "add error handling"
def divide(a, b):
    return a / b

# Cursor AI rewrites it to:
def divide(a, b):
    if b == 0:
        raise ValueError("Cannot divide by zero")
    return a / b
```

#### 2. **Cmd+L - AI Chat Panel**
**What it does:**
- Opens AI chat sidebar
- Ask questions about your code
- Generate new code
- Explain errors
- Review code

**Better than Copilot Chat:**
- Understands your entire codebase
- Can read multiple files at once
- Smarter context awareness

#### 3. **Tab - AI Autocomplete**
**What it does:**
- Same as Copilot - gray ghost text appears
- Press Tab to accept
- AI suggests completions as you type

**No different than Copilot** - but built-in!

#### 4. **Cmd+I - Composer (Advanced)**
**What it does:**
- Multi-file editing with AI
- Make changes across multiple files at once
- Complex refactoring

---

### Cursor AI vs GitHub Copilot

| Feature | Cursor AI | GitHub Copilot |
|---------|-----------|----------------|
| **Autocomplete** | ✅ Built-in | ✅ Extension |
| **Chat** | ✅ Better (full codebase context) | ⚠️ Limited context |
| **Inline editing** | ✅ Cmd+K (amazing!) | ❌ No |
| **Multi-file editing** | ✅ Composer | ❌ No |
| **Cost** | $20/month or API key | $10/month |
| **Setup** | ✅ Already included | ⚠️ Install extension |

**Verdict:** Cursor AI is more powerful than Copilot. Don't install Copilot in Cursor!

---

### How to Use Cursor AI

**Already set up!** Cursor AI is active the moment you open Cursor.

**Try it now:**
1. Open a Python file
2. Type a comment: `# function to calculate fibonacci`
3. Press Enter → AI suggests the function
4. Press Tab to accept

**Or:**
1. Select some code
2. Press `Cmd+K`
3. Type: "add type hints"
4. AI rewrites with type hints

**No configuration needed!**

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

## Summary - Cursor Setup Success Checklist

**After following this guide, you should have:**

✅ **Cursor installed and running**

✅ **All vision settings working:**
- Pure black background (#000000)
- Hot pink borders (#ff79c6)
- Yellow search highlights (#ffff00)
- Green word selection (#00ff00)
- Cyan comments (#8be9fd)
- Pink bold keywords (#ff79c6)
- Green bold functions (#50fa7b)

✅ **Key extensions installed:**
- Error Lens (inline errors)
- Code Spell Checker (spelling)
- Indent Rainbow (colored indentation)
- Better Comments (colored comments)
- Prettier (auto-format)
- GitLens (git features)
- Git Graph (visual git history)
- File Utils (right-click operations)

✅ **Cursor AI working:**
- Cmd+K for inline editing
- Cmd+L for chat
- Tab for autocomplete
- No Copilot needed!

✅ **Looks identical to VSCode:**
- Same colors
- Same UI
- Same keybindings
- Same workflow

**Result:** Cursor works exactly like VSCode with all your vision settings + better AI! 🎉

---

## Troubleshooting

### Settings didn't copy
**Fix:** Restart Cursor (Cmd+Q, reopen)

### Extensions not installing
**Fix:** Install manually through Extensions panel (Cmd+Shift+X)

### Colors look different
**Fix:**
1. Check settings copied: `cat ~/Library/Application\ Support/Cursor/User/settings.json`
2. Should see `"editor.background": "#000000"` and other settings
3. If empty, re-copy from VSCode

### Cursor AI not working
**Fix:** Cursor AI is always active. Try Cmd+K or Cmd+L to verify.

---

**Updated:** 2026-01-10
**Tested:** Cursor works identically to VSCode with all vision settings!
