# VSCode Profile Setup Guide

This guide will help you set up VSCode profiles to manage your extensions and settings across different machines.

## What are VSCode Profiles?

Profiles let you have different sets of extensions, settings, and keybindings for different purposes. Perfect for managing 50+ extensions without having them all active at once!

## Step 1: Create Your First Profile

1. **Open VSCode**
2. **Click the gear icon** (⚙️) in the bottom left corner
3. **Select "Profiles" → "Create Profile"**
4. **Name it**: `Testing-Visibility` (or whatever you prefer)
5. **Uncheck "Copy from current profile"** to start clean
6. **Click "Create"**

You now have a blank profile with no extensions!

## Step 2: Switch Between Profiles

- **Click the gear icon** → **"Profiles"** → Select the profile you want
- Or use the **Command Palette** (Cmd+Shift+P) → Type "Profile" → "Preferences: Switch Profile"

## Step 3: Profile Strategy

Based on your needs, here's the recommended profile structure:

### Profile 1: **"Essential-Visibility"** (BASE)
Your foundation - everything you need for visibility and basic functionality:
- High contrast theme
- Visual enhancement extensions (path indicators, color highlighting)
- Right-click menu enhancements
- Basic language support
- Git tools

### Profile 2: **"Work-DevOps"** (WORK)
Inherits from Essential-Visibility + adds:
- AWS Toolkit
- Kubernetes/Docker tools
- Jenkins/Groovy extensions
- Remote development tools

### Profile 3: **"AI-Coding"** (AI TOOLS)
Inherits from Essential-Visibility + adds:
- GitHub Copilot
- Amazon Q
- Tabnine

### Profile 4: **"Testing"** (SANDBOX)
For trying new extensions before adding them to your main profiles

## Step 4: Installing Extensions to a Profile

When you're in a specific profile, any extension you install only gets added to THAT profile!

### Via GUI:
1. Make sure you're in the right profile (check bottom left)
2. Go to Extensions (Cmd+Shift+X)
3. Search and install

### Via Command Line:
```bash
# First, switch to the profile you want in VSCode
# Then run:
code --install-extension <extension-id>
```

## Step 5: Exporting/Importing Profiles

VSCode can export profiles to share across machines:

1. **Gear icon** → **"Profiles"** → **"Export Profile"**
2. Save the `.code-profile` file
3. On another machine: **"Import Profile"** → Select the file

## Step 6: Settings Sync (Optional)

If you want automatic syncing across machines:

1. **Gear icon** → **"Turn on Settings Sync"**
2. Sign in with GitHub or Microsoft account
3. **Choose what to sync** (Settings, Extensions, Keybindings, etc.)
4. **Important**: Settings Sync will sync your CURRENT profile

You can enable/disable sync per profile!

## Tips

- **Start minimal**: Install only what you need, add more later
- **Test in "Testing" profile first**: Don't pollute your main profiles
- **Document what works**: Keep notes on which extensions help your visibility
- **Clean up regularly**: Remove extensions you're not using

## Troubleshooting

### Extensions not showing up?
- Make sure you're in the right profile (check bottom left corner)
- Extensions are profile-specific!

### Want to copy extensions from one profile to another?
1. Export a list from the source profile: `code --list-extensions > extensions.txt`
2. Switch to the target profile
3. Install from the list: `cat extensions.txt | xargs -L 1 code --install-extension`

### Reset a profile?
- **Gear icon** → **"Profiles"** → Right-click the profile → **"Delete Profile"**
- Then recreate it fresh

## Next Steps

1. Follow the **Theme Testing Guide** to find the best visibility settings
2. Review the **Essential Extensions List** to know what to install
3. Use the provided installation scripts for quick setup
