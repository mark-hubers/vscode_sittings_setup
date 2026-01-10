# VSCode Setup Sync - Extension & Theme Management

A structured approach to managing VSCode extensions, themes, and settings across multiple machines.

## The Problem

Managing 50+ VSCode extensions across multiple machines (work Mac, personal Mac, Linux systems) is painful:
- Can't remember which extensions you actually use
- Don't know what each extension does after installing many
- Hard to see code clearly (need high contrast, bright colors, NO fading)
- Want different setups for different purposes (work, personal, AI-assisted)

## The Solution

This repository provides:
1. ✅ **Test files** for all your languages to test themes and visibility
2. ✅ **Organized extension lists** by category with explanations
3. ✅ **Installation scripts** to quickly setup extensions by category
4. ✅ **Theme testing guide** with customization instructions
5. ✅ **Profile setup guide** for managing different extension sets
6. ✅ **Plain text styling** for that retro terminal look!

---

## Quick Start

### 1. Test Your Current Setup

Open all test files and see how they look:

```bash
cd test-files
code test.py test.yaml test.md test.js test.sh test.groovy test.ps1 Jenkinsfile test.txt
```

Press `Cmd+K Cmd+T` to quickly switch between themes and see what's readable.

### 2. Create a Clean Profile

1. Click the **gear icon** (⚙️) bottom left in VSCode
2. **Profiles → Create Profile**
3. Name it: `Testing-Visibility`
4. **Uncheck** "Copy from current profile"
5. Click **Create**

See `docs/01-profile-setup-guide.md` for detailed instructions.

### 3. Install Extensions

Start with visual enhancements to improve visibility:

```bash
./scripts/install-visual-extensions.sh
```

Or install all essential extensions at once:

```bash
./scripts/install-all-essential.sh
```

### 4. Test Themes

Follow the guide: `docs/03-theme-testing-guide.md`

Try these recommended high-contrast themes:
- One Dark Pro
- GitHub Dark High Contrast
- Dracula Pro

### 5. Customize

- **Text files**: Want bright green or yellow text like old terminals? See `docs/04-text-file-styling.md`
- **Theme colors**: Customize any theme with the examples in `docs/03-theme-testing-guide.md`

---

## Repository Structure

```
vscode_sittings_setup/
├── README.md                          # This file
├── test-files/                        # Test files for theme visibility
│   ├── test.py                        # Python
│   ├── test.sh                        # Bash
│   ├── test.ps1                       # PowerShell
│   ├── test.groovy                    # Groovy
│   ├── test.js                        # JavaScript
│   ├── test.ts                        # TypeScript
│   ├── test.yaml                      # YAML
│   ├── test.json                      # JSON
│   ├── test.md                        # Markdown
│   ├── test.txt                       # Plain text
│   └── Jenkinsfile                    # Jenkins Pipeline
├── docs/                              # Documentation guides
│   ├── 01-profile-setup-guide.md      # How to create/manage profiles
│   ├── 02-essential-extensions.md     # Categorized extension list
│   ├── 03-theme-testing-guide.md      # Theme testing & customization
│   └── 04-text-file-styling.md        # Retro text file styling
└── scripts/                           # Installation scripts
    ├── install-visual-extensions.sh   # Visibility & color extensions
    ├── install-ide-enhancements.sh    # Right-click, navigation tools
    ├── install-language-support.sh    # Python, Bash, Groovy, etc.
    ├── install-devops-tools.sh        # AWS, Docker, K8s, Jenkins
    ├── install-git-tools.sh           # GitLens, Git History, GitHub
    ├── install-ai-tools.sh            # Copilot, Amazon Q
    ├── install-themes.sh              # High-contrast themes
    └── install-all-essential.sh       # All of the above (except AI)
```

---

## Installation Scripts

Each script is standalone and can be run independently:

### Visual Enhancement (START HERE!)
```bash
./scripts/install-visual-extensions.sh
```
**What it installs:**
- JSON/YAML path indicators (breadcrumb navigation)
- Color highlighting for config files
- Rainbow CSV (color columns)
- Text marker (highlight text)

### IDE Enhancements
```bash
./scripts/install-ide-enhancements.sh
```
**What it installs:**
- Right-click menu options (copy file name, git operations)
- Project manager (switch between projects)
- Bookmarks (bookmark lines in code)
- Git graph (visual git history)
- Clipboard history, file size display, local history

### Language Support
```bash
./scripts/install-language-support.sh
```
**What it installs:**
- Python (Pylance, debugger, auto-docstring)
- Bash (IDE features, debugger, beautifier)
- PowerShell
- Groovy
- Markdown (preview enhancements)
- YAML/JSON

### DevOps Tools
```bash
./scripts/install-devops-tools.sh
```
**What it installs:**
- AWS Toolkit
- Docker & Kubernetes tools
- Jenkins/Groovy support

### Git Tools
```bash
./scripts/install-git-tools.sh
```
**What it installs:**
- GitLens (still better than built-in Git!)
- Git History
- GitHub PR integration

### AI Tools (Optional)
```bash
./scripts/install-ai-tools.sh
```
**What it installs:**
- GitHub Copilot
- Amazon Q

### Themes
```bash
./scripts/install-themes.sh
```
**What it installs:**
- One Dark Pro
- GitHub Dark High Contrast
- Dracula Pro

### Everything Essential
```bash
./scripts/install-all-essential.sh
```
Installs all of the above except AI tools.

---

## Recommended Workflow

### Phase 1: Visual Foundation (Day 1)
1. Create a new profile: `Testing-Visibility`
2. Install visual extensions: `./scripts/install-visual-extensions.sh`
3. Install and test themes: `./scripts/install-themes.sh`
4. Open test files and find your perfect theme
5. Document what works in `my-theme-notes.md` (create this file)

### Phase 2: Core Functionality (Day 2)
1. Install IDE enhancements: `./scripts/install-ide-enhancements.sh`
2. Test right-click options on files
3. Test bookmarks, git graph, project manager
4. Keep what you use, note what you don't

### Phase 3: Language Support (Day 3)
1. Install language support: `./scripts/install-language-support.sh`
2. Open each test file and verify syntax highlighting
3. Test language-specific features (debugging, linting)

### Phase 4: Workflow Tools (Day 4+)
1. Install DevOps tools: `./scripts/install-devops-tools.sh`
2. Install Git tools: `./scripts/install-git-tools.sh`
3. Optional: AI tools if needed

### Phase 5: Refine and Document
1. Create additional profiles for different workflows
2. Export your profiles for backup
3. Commit your custom settings to this repo

---

## Profile Strategy

Create multiple profiles for different use cases:

### Profile 1: "Essential-Visibility" (BASE)
**Purpose:** Foundation for all other profiles
**Contains:**
- Visual enhancements
- IDE enhancements
- Basic language support
- Your chosen theme
- Git tools

### Profile 2: "Work-DevOps"
**Purpose:** Professional development work
**Inherits:** Essential-Visibility
**Adds:**
- AWS Toolkit
- Docker/Kubernetes
- Jenkins/Groovy
- Remote development tools

### Profile 3: "AI-Coding"
**Purpose:** AI-assisted development
**Inherits:** Essential-Visibility
**Adds:**
- GitHub Copilot
- Amazon Q

### Profile 4: "Testing"
**Purpose:** Try new extensions without polluting main profiles
**Inherits:** Nothing
**Contains:** Whatever you're testing

---

## Visual Requirements Checklist

Your specific needs for visibility:

- [x] Dark theme with bright letters
- [x] Great highlighting/syntax colors
- [x] NO fading of any elements
- [x] Bright border lines
- [x] High contrast (not "overdone" like accessibility modes)
- [x] YAML/JSON path indicators (breadcrumb navigation)
- [x] Right-click enhancements for files and tabs
- [x] Retro terminal look for plain text files (bright green/yellow)

All of these are addressed in this repo!

---

## Using This Across Machines

### Option 1: Git Clone (Best for tracking changes)
```bash
# On each machine:
git clone <your-repo-url> ~/vscode_settings_setup
cd ~/vscode_settings_setup
./scripts/install-all-essential.sh
```

### Option 2: VSCode Settings Sync
1. Turn on Settings Sync in VSCode
2. Sign in with GitHub/Microsoft
3. Your current profile syncs automatically
4. On new machine: Sign in and sync

### Option 3: Export/Import Profiles
1. In VSCode: **Gear → Profiles → Export Profile**
2. Save the `.code-profile` file to this repo
3. On new machine: **Import Profile** → Select the file

---

## Tips

- **Start minimal**: Install only what you need, add more later
- **Test in "Testing" profile first**: Don't pollute your main profiles
- **Document what works**: Keep notes in this repo
- **Clean up regularly**: Remove extensions you're not using
- **One task at a time**: Visual → IDE → Languages → Workflow
- **Use test files**: They show you exactly what each theme/extension does
- **Avoid faded colors**: They're terrible for readability!

---

## Customization Examples

### Bright Green Text Files (Retro Terminal)
See `docs/04-text-file-styling.md` for full guide.

Quick snippet:
```json
{
  "editor.tokenColorCustomizations": {
    "textMateRules": [
      { "scope": "text", "settings": { "foreground": "#00ff00" } }
    ]
  }
}
```

### Custom Theme Colors
See `docs/03-theme-testing-guide.md` for full guide.

Quick snippet:
```json
{
  "workbench.colorCustomizations": {
    "editor.lineNumberForeground": "#c6c6c6",
    "editorIndentGuide.background": "#404040",
    "editorIndentGuide.activeBackground": "#707070"
  }
}
```

---

## Troubleshooting

### Extensions not showing up?
- Check you're in the right profile (bottom left corner)
- Restart VSCode after installing

### Theme looks washed out?
- Check monitor color profile
- Use `workbench.colorCustomizations` to brighten colors
- Try a different theme

### Can't see indent guides?
```json
{
  "editor.guides.indentation": true,
  "editorIndentGuide.background": "#404040"
}
```

### Plain text files are white?
Follow the guide in `docs/04-text-file-styling.md`

---

## Contributing

This is your personal repo, but feel free to:
- Add notes about what works/doesn't work
- Create additional test files
- Add new installation scripts for other tools
- Document your custom settings
- Track your theme customizations

---

## Next Steps

1. **Right now**: Run `./scripts/install-visual-extensions.sh`
2. **Then**: Open test files and start testing themes
3. **Then**: Follow `docs/03-theme-testing-guide.md`
4. **Then**: Install other extensions as needed
5. **Then**: Set up additional profiles for different workflows

---

## Your Original Extension List

Your work Mac has these extensions installed:
- See your original web conversation for the full list
- Many are redundant or unused
- This repo helps you identify what you actually need
- Start fresh and add only what improves your workflow

---

## Questions?

Refer to the guides in `docs/`:
1. Profile Setup - `01-profile-setup-guide.md`
2. Extension List - `02-essential-extensions.md`
3. Theme Testing - `03-theme-testing-guide.md`
4. Text File Styling - `04-text-file-styling.md`

---

**Happy coding with clear, visible, beautiful themes!** 🎨✨

_No more faded fonts!_
