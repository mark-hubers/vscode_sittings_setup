# Recommended Extensions - Manual Installation Guide

Install these extensions manually through the VSCode Extensions panel to ensure proper trust/activation.

**Current total installed: 12 extensions**
**Target: ~20 extensions**

---

## How to Install Manually

1. **Click Extensions icon** (left sidebar, 4 squares icon) or press `Cmd+Shift+X`
2. **Search for the extension name** in the search box
3. **Click "Install"** button
4. **Approve any trust/enable prompts** that appear
5. **Restart VSCode** if prompted

---

## Essential Extensions (Install These)

### 1. ✅ File Utils (sleistner.vscode-fileutils)
**What it does:** Adds file operations to right-click menu

**Install:**
- Search: `file utils`
- Publisher: sleistner
- **REQUIRES MANUAL TRUST** ⚠️

**Right-click options added:**
- Copy Name (just filename, no path)
- Copy Relative Path
- Duplicate file
- Move file
- Rename file
- Delete file

**Status:** Install manually, approve trust prompt

---

### 2. ✅ File Properties Viewer (brunnerh.file-properties-viewer)
**What it does:** Shows file size, dates, permissions

**Install:**
- Search: `file properties viewer`
- Publisher: brunnerh

**Right-click options added:**
- View File Properties → Shows size, created date, modified date, etc.

**Status:** ✅ Installed manually, approved trust
**REQUIRES MANUAL TRUST** ⚠️

---

## Already Installed (Keep These)

### Visual Enhancements
- ✅ **Rainbow CSV** (mechatroner.rainbow-csv) - Colors CSV columns
- ✅ **Colorize** (kamikillerto.vscode-colorize) - Highlights color codes
- ✅ **Text Marker** (ryu1kn.text-marker) - Highlight text

### Language Support
- ✅ **Red Hat YAML** (redhat.vscode-yaml) - YAML support + breadcrumbs path
- ✅ **PowerShell** (ms-vscode.powershell) - PowerShell language support

### DevOps/Cloud
- ✅ **Kubernetes Tools** (ms-kubernetes-tools.vscode-kubernetes-tools) - K8s YAML help

### Git
- ✅ **GitLens** (eamodio.gitlens) - Advanced git features

### Themes (Keep for Options)
- ✅ **Dracula Pro** (hasibx2000.dracula-pro) - Backup theme
- ✅ **OneDark** (akamud.vscode-theme-onedark) - Backup theme
- ✅ **GitHub Dark High Contrast** - Backup theme

### Other
- ⚠️ **YAML Path Extractor** (jtcontreras90.yaml-path-extractor) - Can remove (Red Hat YAML does this better)
- ⚠️ **Package JSON Upgrade** (codeandstuff.package-json-upgrade) - Not sure why this got installed, might remove

---

## Potentially Remove (Not Essential)

### Candidates for Removal:
1. **YAML Path Extractor** - Redundant (Red Hat YAML does this)
2. **Package JSON Upgrade** - Only useful for Node.js projects
3. **Extra themes** - Keep only 1-2 backup themes, remove others

**After cleanup: ~10-15 essential extensions**

---

## Extensions to Consider Adding (Optional)

### Code Quality
- **ESLint** (dbaeumer.vscode-eslint) - JavaScript/TypeScript linting
- **Prettier** (esbenp.prettier-vscode) - Code formatter
- **markdownlint** (DavidAnson.vscode-markdownlint) - Markdown linting

### Productivity
- **Path Intellisense** (christian-kohler.path-intellisense) - Autocomplete file paths
- **Bracket Pair Colorizer 2** - Wait, VSCode has this built-in now! Don't need it.
- **indent-rainbow** (oderwat.indent-rainbow) - Colors indentation levels

### Git Enhancements
- **Git Graph** (mhutchie.git-graph) - Visual git history
- **GitHub Pull Requests** (GitHub.vscode-pull-request-github) - Manage PRs in VSCode

### Terminal Enhancements
- **Terminal Tabs** - Better terminal management

---

## Manual Installation Checklist

Use this when setting up a new machine:

### Step 1: Import Profile
- ✅ Import `hubers-basic-profile.code-profile`
- ✅ Most extensions install automatically

### Step 2: Trust Workspace
- ✅ Open project folder
- ✅ Click "Yes, I trust the authors" when prompted
- ✅ Most extensions activate automatically

### Step 3: Manually Reinstall These (They Need Trust Approval)
- ✅ File Utils (sleistner.vscode-fileutils) - **REQUIRES MANUAL TRUST** ⚠️
- ✅ File Properties Viewer (brunnerh.file-properties-viewer) - **REQUIRES MANUAL TRUST** ⚠️
- ⬜ (Add others here as we discover them)

### Step 4: Restart VSCode
- ✅ Cmd+Q to quit
- ✅ Reopen VSCode
- ✅ Test right-click menus to verify extensions work

---

## Current Extension Count

**Installed:** 12 (+3 pending manual install = 15 total)
**Target:** ~20 max

**Room for:** 5 more extensions if needed

---

## Notes

- **Extensions that require manual trust:** Document them here as we find them
- **Command-line installed extensions:** Often skip trust prompts, install manually instead
- **Profile export:** Re-export profile after installing extensions manually
- **Trust is per-workspace:** New machines will ask to trust even if extensions are in profile

---

## Next Steps

1. ⏳ Install Copy File Name manually
2. ⏳ Install File Properties Viewer manually
3. ⏳ Test all right-click menus
4. ⏳ Export updated profile
5. ⏳ Commit to git
6. ⏳ Clean up unnecessary extensions (YAML Path Extractor, Package JSON Upgrade)

---

**Updated:** 2026-01-10
