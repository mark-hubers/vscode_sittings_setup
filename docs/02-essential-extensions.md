# Essential Extensions by Category

This is a curated list based on your workflow and visibility needs.

## 🎨 Visual Enhancement (CRITICAL for Visibility)

These extensions help you SEE your code better:

### Path Indicators (YAML/JSON breadcrumbs)
```
richie5um2.vscode-statusbar-json-path
jtcontreras90.yaml-path-extractor
```
Shows the path to the current item in JSON/YAML files (e.g., `/foo/bar[2]/name`)

### Color Highlighting
```
kamikillerto.vscode-colorize
mechatroner.rainbow-csv
```
- `colorize`: Highlights color codes in CSS/config files
- `rainbow-csv`: Makes CSV columns different colors (VERY helpful)

### Text Markers
```
ryu1kn.text-marker
```
Lets you highlight/mark text with custom colors for visibility

---

## 🔧 IDE Enhancement (Right-click & Navigation)

Extensions that add useful context menu options and navigation:

### Context Menu Enhancements
```
ouweiya.copy-file-name
everspace.rightclick-git
codyschrank.rightclickfix
```
Adds right-click options for copying file paths, git operations, etc.

### File/Project Navigation
```
alefragnani.project-manager
alefragnani.bookmarks
alefragnani.numbered-bookmarks
mhutchie.git-graph
```
- `project-manager`: Switch between projects easily
- `bookmarks`: Bookmark lines in code
- `git-graph`: Visual git history

### Quality of Life
```
anjali.clipboard-history
mkxml.vscode-filesize
xyz.local-history
```
- `clipboard-history`: Clipboard manager inside VSCode
- `vscode-filesize`: Shows file size in status bar
- `local-history`: Local backup of file changes

---

## 🐍 Python Development

```
ms-python.python
ms-python.vscode-pylance
ms-python.debugpy
kevinrose.vsc-python-indent
njpwerner.autodocstring
donjayamanne.python-environment-manager
```
Core Python support + helpful utilities

---

## 🔨 Shell Scripting (Bash/PowerShell)

```
mads-hartmann.bash-ide-vscode
rogalmic.bash-debug
shakram02.bash-beautify
ms-vscode.powershell
```

---

## ☁️ AWS & Cloud

```
amazonwebservices.aws-toolkit-vscode
mark-tucker.aws-cli-configure
```
Essential for AWS work

---

## 🐳 Docker & Kubernetes

```
ms-azuretools.vscode-docker
ms-kubernetes-tools.vscode-kubernetes-tools
```
Core container/orchestration tools

---

## 🏗️ Jenkins & Groovy

```
secanis.jenkinsfile-support
ivory-lab.jenkinsfile-support
janjoerke.jenkins-pipeline-linter-connector
argylewolflabs.vscode-groovy
marlon407.code-groovy
```
Jenkins pipeline development

---

## 📝 Markdown & Documentation

```
yzhang.markdown-all-in-one
mdickin.markdown-shortcuts
```

**What these do:**
- `markdown-all-in-one`: TOC generation, shortcuts, list editing, preview enhancements
- `markdown-shortcuts`: Quick formatting with keybindings

**Built-in Markdown features (no extension needed!):**
- Preview: `Cmd+Shift+V` (single view) or `Cmd+K V` (side-by-side)
- This is your "WYSIWYG" - edit in source, see preview instantly
- Scroll sync between source and preview
- Click links in preview to navigate

---

## 🌐 Git Tools

```
eamodio.gitlens
donjayamanne.githistory
github.vscode-pull-request-github
github.github-vscode-theme
```
GitLens is still worth it over built-in Git:
- Inline blame annotations
- File/line history
- Branch comparison
- Better commit graph

---

## 📦 YAML/JSON Tools

```
redhat.vscode-yaml
zainchen.json
```
Better language support for config files

---

## 🔌 Remote Development (if needed)

```
ms-vscode-remote.remote-ssh
ms-vscode-remote.remote-containers
ms-vscode-remote.vscode-remote-extensionpack
```
For working on remote machines/containers

---

## 🎨 Themes to Test (Pick 1-2!)

You have many themes installed. Test these systematically:

```
74th.monokai-charcoal-high-contrast
databyne.theme-monokai-hc
gerane.theme-monokai-highfructose
gyunbie.high-contrast-yellow-theme
beardedbear.beardedtheme
dracula-theme-pro.theme-dracula-pro
github.github-vscode-theme
```

**Testing strategy:**
1. Open a complex file (YAML, Python, Jenkinsfile)
2. Switch themes rapidly (Cmd+K Cmd+T)
3. Check for: bright colors, good contrast, NO fading, visible borders
4. Delete themes that don't work
5. Keep only your top 1-2

---

## 🤖 AI Tools (Optional)

```
github.copilot
github.copilot-chat
amazonwebservices.amazon-q-vscode
```

---

## ❌ Extensions You Probably DON'T Need

Based on your list, these might be redundant or unused:

- **Java extensions** - Unless you code Java?
- **C++ extensions** - Unless you code C++?
- **Multiple Docker extensions** - Just use `ms-azuretools.vscode-docker`
- **Stream Deck extension** - Do you use a Stream Deck?
- **boto3typed.boto3-ide** - AWS Toolkit covers most of this
- **vscode-sshfs** - Remote-SSH covers this
- **Multiple theme variants** - Pick 1-2 and delete the rest

---

## Installation Order

1. **Start with Visual Enhancement** - Get your visibility right first
2. **Add IDE Enhancement** - Make the interface work for you
3. **Add Language Support** - One language at a time
4. **Add Workflow Tools** - AWS, Docker, Jenkins, etc. as needed
5. **Test AI Tools** - Only if you want them

---

## Next Steps

1. Use the installation scripts in `/scripts` to install by category
2. Test themes using the test files in `/test-files`
3. Document which extensions help your visibility in your notes
