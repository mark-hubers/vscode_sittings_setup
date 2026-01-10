# Creating a VSCode Profile - Save Your Perfect Setup

A VSCode Profile saves ALL your customizations in one package:
- ✅ All settings (colors, borders, highlights, etc.)
- ✅ All installed extensions
- ✅ Keyboard shortcuts
- ✅ UI state (sidebar visibility, etc.)

## Why You Want This

You can export your profile as a file and import it on:
- Your work Mac
- Your personal Mac
- Any Linux machine
- Any new VSCode installation

**One click = instant setup everywhere!**

---

## Step 1: Create Your Profile

### Option A: Via Command Palette (Recommended)

1. Press `Cmd+Shift+P` to open Command Palette
2. Type: `Profiles: Create Profile`
3. Choose: **"Create from Current Profile"**
4. Name it: `High Visibility Setup` (or whatever you want)
5. Check all the boxes:
   - ✅ Settings
   - ✅ Keyboard Shortcuts
   - ✅ User Snippets
   - ✅ User Tasks
   - ✅ Extensions
6. Click **"Create"**

### Option B: Via UI (Click Method)

1. Look at the bottom left corner of VSCode
2. Click the **⚙️ gear icon** (or your profile icon)
3. Select **"Profiles" → "Create Profile..."**
4. Follow the same steps as above

---

## Step 2: Export Your Profile

Once created, export it to a file you can share/backup:

1. Press `Cmd+Shift+P`
2. Type: `Profiles: Export Profile`
3. Choose your profile name
4. Select: **"Export to a file"**
5. Save it as: `high-visibility-vscode-profile.code-profile`
6. Store it in this git repo: `/Users/markhubers/git/mhubers/vscode_sittings_setup/`

**This file is your complete VSCode setup in one portable package!**

---

## Step 3: Use Your Profile on Other Machines

### To Import on a New Machine:

1. Copy the `.code-profile` file to the new machine
2. Open VSCode
3. Press `Cmd+Shift+P`
4. Type: `Profiles: Import Profile`
5. Select your `.code-profile` file
6. **BOOM!** Instant perfect setup.

### Alternative: Share via GitHub/URL

VSCode can also export profiles as:
- GitHub Gist (secret link)
- File you can commit to this repo

---

## What Gets Saved in the Profile?

### ✅ Your Settings
```json
{
    "workbench.colorTheme": "Default Dark+",
    "editor.background": "#000000",
    "editor.findMatchBorder": "#ffff00",
    "editor.wordHighlightBorder": "#00ff00",
    "activityBar.border": "#ff79c6",
    // ... all your hot pink borders, bright colors, etc.
}
```

### ✅ Your Extensions
- Red Hat YAML
- Kubernetes Tools
- Rainbow CSV
- Colorize
- Text Marker
- GitLens
- PowerShell
- Dracula Pro theme
- All your other extensions

### ✅ UI State
- Minimap disabled
- Breadcrumbs enabled
- Sidebar visibility preferences

---

## Managing Multiple Profiles

You can have different profiles for different purposes:

### Example Profiles You Might Create:

1. **"High Visibility Setup"** (your current setup)
   - Bright colors, hot pink borders
   - All visual enhancement extensions
   - For your daily work

2. **"Minimal Setup"** (lightweight)
   - Just essential extensions
   - For quick edits or low-resource machines

3. **"AI-Assisted Coding"**
   - GitHub Copilot, Claude Code
   - AI-focused extensions
   - For when you're coding with AI help

### Switching Between Profiles:

1. Click the **⚙️ gear icon** (bottom left)
2. Select **"Profiles"**
3. Choose the profile you want
4. VSCode reloads with that profile's settings

---

## Profile File Location

VSCode stores profiles at:
```
~/Library/Application Support/Code/User/profiles/
```

But you don't need to mess with this folder - just use the export/import commands!

---

## Backup Strategy

### Recommended Workflow:

1. **Create profile** → Export to file
2. **Commit to git** → `high-visibility-vscode-profile.code-profile`
3. **Push to GitHub** → Now it's backed up in the cloud
4. **Clone repo on new machine** → Import the profile

### Or Use VSCode's Built-in Sharing:

1. Export as GitHub Gist (secret link)
2. Save the link somewhere safe
3. Import via the link on any machine

---

## Troubleshooting

### "Some extensions didn't install"

This can happen if extensions aren't available on all platforms (Mac vs Linux).
- VSCode will skip incompatible extensions
- Check the output to see what was skipped

### "Settings didn't apply correctly"

- Make sure you selected "Settings" when creating the profile
- Try exporting again and re-importing

### "I want to modify my profile"

1. Switch to the profile you want to edit
2. Change settings as normal
3. Export again to save the updated version

---

## Current Status

**Your profile should include:**

✅ Default Dark+ theme with custom colors
✅ Pure black background (#000000)
✅ All hot pink borders (#ff79c6)
✅ Yellow find borders (#ffff00)
✅ Green word highlight borders (#00ff00)
✅ Bright cyan line numbers (#8be9fd)
✅ Bright green active line number (#50fa7b)
✅ Minimap disabled
✅ Breadcrumbs enabled (for YAML paths!)
✅ All visual enhancement extensions
✅ Semantic highlighting disabled

---

## Next Steps

After creating your profile:

1. ✅ Export it to a `.code-profile` file
2. ✅ Save it in this git repo
3. ✅ Commit to git
4. ✅ Test it by importing on another VSCode window (or another machine if available)

Then you're ready to install more extensions (like right-click menu enhancements)!

---

**TL;DR**: Press `Cmd+Shift+P` → "Create Profile" → Name it → Export to file → Commit to git → You're done!
