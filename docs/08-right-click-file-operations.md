# Right-Click File Operations Guide

These extensions add useful options to your right-click context menus for files, tabs, and the editor.

## Installed Extensions

### 1. **File Utils** (sleistner.vscode-fileutils)
**What it does:** Adds a ton of file operations to right-click menu

**Right-click on a file in Explorer to:**
- 📝 Rename file
- 📄 Duplicate file
- 🗑️ Delete file
- 📁 Move file to different folder
- 📋 Copy file name
- 📋 Copy file path (absolute)
- 📋 Copy file path (relative)
- ➕ Create new file in same directory
- ➕ Create new folder

**How to use:**
1. Right-click any file in the Explorer (left sidebar)
2. Look for **"File Utils"** submenu or individual options
3. Click what you want to do

### 2. **Copy Relative Path** (alexdima.copy-relative-path)
**What it does:** Adds quick copy options for file paths

**Right-click on a file to:**
- 📋 Copy Relative Path
- 📋 Copy Full Path
- 📋 Copy Path as URI

**How to use:**
1. Right-click any file or tab
2. Select "Copy Relative Path" or "Copy Path"
3. Paste wherever you need it

**Example outputs:**
- Relative: `test-files/test.yaml`
- Full: `/Users/markhubers/git/mhubers/vscode_sittings_setup/test-files/test.yaml`
- URI: `file:///Users/markhubers/git/mhubers/vscode_sittings_setup/test-files/test.yaml`

### 3. **File Properties Viewer** (brunnerh.file-properties-viewer)
**What it does:** Shows file size, dates, and properties

**Right-click on a file to:**
- 📊 View File Properties
  - File size (bytes, KB, MB)
  - Created date
  - Modified date
  - Accessed date
  - File permissions
  - File type/extension

**How to use:**
1. Right-click any file in Explorer
2. Select **"View File Properties"**
3. A panel opens showing all file details

**What you'll see:**
```
File: test.yaml
Size: 4.2 KB (4,321 bytes)
Created: Jan 10, 2026 10:30 AM
Modified: Jan 10, 2026 2:45 PM
Accessed: Jan 10, 2026 3:15 PM
Type: YAML Document
```

### 4. **Commands** (usernamehw.commands)
**What it does:** Lets you create custom commands and add them to context menus

**Advanced usage (optional):**
You can customize this extension to add your own commands to right-click menus.

**Example custom commands you could add:**
- Open file in Finder
- Open terminal at this location
- Run custom scripts
- Compare files

**To configure:**
- Press `Cmd+,` (settings)
- Search for "commands"
- Add custom commands in settings.json

*(This is advanced - we can set this up later if you want)*

---

## Built-in VSCode Right-Click Options

VSCode already has some useful built-in options when you right-click:

### On Files in Explorer:
- **Reveal in Finder** - Opens Finder to this file
- **Open in Terminal** - Opens terminal at this location
- **Copy Path** - Copies full file path
- **Copy Relative Path** - Copies path from workspace root

### On Tabs:
- **Copy Path** - Copy full file path
- **Copy Relative Path** - Copy workspace-relative path
- **Reveal in Side Bar** - Highlights file in Explorer
- **Close Tab** / **Close Others** / **Close All**
- **Split Right/Down** - Opens file in split view

### In Editor (right-click on code):
- **Go to Definition** - Jump to where something is defined
- **Peek Definition** - Preview definition in popup
- **Find All References** - See everywhere this is used
- **Rename Symbol** - Rename variable/function everywhere
- **Format Document** - Auto-format the code

---

## Most Useful Right-Click Actions

Based on what you asked for, here are the most useful ones:

### Copy File Name Only:
1. Right-click file in Explorer
2. **File Utils → Copy Name** (just the filename, no path)

### Copy Full Path:
1. Right-click file
2. **Copy Path** (built-in) or **Copy Relative Path** (extension)

### See File Size & Date:
1. Right-click file
2. **View File Properties** (File Properties Viewer extension)
3. Shows size, created date, modified date, etc.

### Copy File Name from Tab:
1. Right-click the tab at the top
2. **Copy Path** (copies full path)
3. Or use File Utils to copy just the name

### Duplicate a File:
1. Right-click file in Explorer
2. **File Utils → Duplicate**
3. Enter new name

### Move/Rename File:
1. Right-click file
2. **File Utils → Move** or **Rename**
3. Enter new location/name

---

## Testing It Out

**Try this now:**

1. **Right-click on `test.yaml` in the Explorer** (left sidebar)
   - Look for new options like "File Utils", "Copy Relative Path", "View File Properties"

2. **Right-click on a tab** (the file tabs at the top)
   - Try "Copy Path" to copy the full path
   - Try "Copy Relative Path" to copy just from the workspace

3. **Right-click in the editor** (on actual code)
   - Try "Format Document" to auto-format
   - Try clicking on a variable and "Find All References"

---

## Keyboard Shortcuts (No Right-Click Needed!)

Some useful file operations have shortcuts:

| Action | Shortcut |
|--------|----------|
| Copy Path | `Cmd+K P` |
| Copy Relative Path | `Cmd+K Cmd+Shift+P` |
| Reveal in Finder | `Cmd+K R` |
| Open in Terminal | `Cmd+K T` (might need setup) |
| Rename File | `F2` (while file selected) |

---

## Want More?

If you want specific actions added to your right-click menu, we can:

1. Configure the **Commands** extension to add custom items
2. Install more specialized extensions
3. Create custom scripts that appear in the menu

Let me know what specific actions you use most and we can optimize your setup!

---

## Summary

**You now have:**
- ✅ File Utils - Advanced file operations
- ✅ Copy Relative Path - Quick path copying
- ✅ File Properties Viewer - See size, dates, permissions
- ✅ Commands - Customize menu (advanced)
- ✅ All built-in VSCode context menu options

**Try right-clicking on files now to see all the new options!**
