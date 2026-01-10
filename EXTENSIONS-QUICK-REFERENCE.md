# Extensions Quick Reference

Quick summary of all installed extensions and what they do.

**Total Installed:** 43 extensions
**Last Updated:** 2026-01-10

---

## Visual Enhancements (High Visibility)

### ✅ Rainbow CSV (mechatroner.rainbow-csv)
**What it does:** Colors each CSV column differently - makes CSV files readable
**Trusted:** Auto-trusted (Microsoft verified)

### ✅ Colorize (kamikillerto.vscode-colorize)
**What it does:** Shows color preview for hex codes like #ff79c6
**Trusted:** Auto-trusted

### ✅ Text Marker (ryu1kn.text-marker)
**What it does:** Highlight/mark text with custom colors
**Trusted:** Auto-trusted

### ✅ Error Lens (usernamehw.errorlens)
**What it does:** Shows errors/warnings INLINE next to code in bright colors - no more tiny squiggly lines!
**Trusted:** ⚠️ Requires manual trust

### ✅ Indent Rainbow (oderwat.indent-rainbow)
**What it does:** Colors each indentation level differently - see code structure instantly
**Trusted:** ⚠️ Requires manual trust

### ✅ Better Comments (aaron-bond.better-comments)
**What it does:** Colors comment types - TODO = orange, FIXME = red, NOTE = blue, ! = alert red
**Trusted:** ⚠️ Requires manual trust

---

## File Operations & Context Menus

### ✅ File Utils (sleistner.vscode-fileutils)
**What it does:** Adds right-click menu options - Copy Name, Duplicate, Move, Rename files
**Trusted:** ⚠️ Requires manual trust

### ✅ File Properties Viewer (brunnerh.file-properties-viewer)
**What it does:** Right-click to view file size, created date, modified date
**Trusted:** ⚠️ Requires manual trust

---

## Code Quality & Formatting

### ✅ Prettier - Code formatter (esbenp.prettier-vscode)
**What it does:** Auto-formats code on save - JavaScript, TypeScript, JSON, YAML, Markdown, CSS
**Trusted:** ⚠️ Requires manual trust

### ✅ Code Spell Checker (streetsidesoftware.code-spell-checker)
**What it does:** Spell checks everything - code, comments, strings, variable names - underlines misspelled words with suggestions
**Trusted:** ⚠️ Requires manual trust
**User note:** CRITICAL for vision issues - catches typos as you type

---

## Language Support

### ✅ Red Hat YAML (redhat.vscode-yaml)
**What it does:** YAML language support + breadcrumbs path (shows `person › contact › email`)
**Trusted:** Auto-trusted (Microsoft verified)

### ✅ PowerShell (ms-vscode.powershell)
**What it does:** PowerShell language support and debugging
**Trusted:** Auto-trusted (Microsoft official)

### ✅ Python (ms-python.python)
**What it does:** Python language support, debugging, linting, IntelliSense - CRITICAL for DevOps automation scripts
**Trusted:** Auto-trusted (Microsoft official)
**User note:** Essential for infrastructure automation and AWS Lambda development

### ✅ Pylance (ms-python.vscode-pylance)
**What it does:** Fast Python language server - type checking, auto-imports, IntelliSense performance boost
**Trusted:** Auto-trusted (Microsoft official)
**User note:** Auto-installed with Python extension - provides the smart autocomplete

### ✅ Python Debugger (ms-python.debugpy)
**What it does:** Python debugging support - breakpoints, variable inspection, step-through debugging
**Trusted:** Auto-trusted (Microsoft official)
**User note:** Auto-installed with Python extension

### ✅ Python Environments (ms-python.vscode-python-envs)
**What it does:** Manage Python virtual environments, conda, venv - switch between Python versions/environments
**Trusted:** Auto-trusted (Microsoft official)
**User note:** Auto-installed with Python extension

---

## DevOps & Cloud

### ✅ Kubernetes Tools (ms-kubernetes-tools.vscode-kubernetes-tools)
**What it does:** Kubernetes YAML support, cluster management
**Trusted:** Auto-trusted (Microsoft official)

### ✅ Docker (ms-azuretools.vscode-docker)
**What it does:** Manage Docker containers, images, volumes - view running containers, start/stop, Dockerfile editing
**Trusted:** Auto-trusted (Microsoft official)

### ✅ Container Tools (ms-azuretools.vscode-containers)
**What it does:** Additional container management features - works alongside Docker extension
**Trusted:** Auto-trusted (Microsoft official)
**User note:** Complements Docker extension with extra container operations

### ✅ AWS Toolkit (amazonwebservices.aws-toolkit-vscode)
**What it does:** AWS resource management, Lambda deployment, CloudWatch logs, S3 browsing
**Trusted:** ⚠️ Requires manual trust (Amazon, not Microsoft)

### ✅ Terraform (hashicorp.terraform)
**What it does:** IaC syntax highlighting, auto-completion, validation for .tf files
**Trusted:** ⚠️ Requires manual trust (HashiCorp)

### ✅ Helm Intellisense (tim-koehler.helm-intellisense)
**What it does:** Helm chart syntax highlighting, auto-completion, validation
**Trusted:** ⚠️ Requires manual trust (probably)
**User note:** Added by user for K8s/Helm work

### ✅ Remote - SSH (ms-vscode-remote.remote-ssh)
**What it does:** SSH into servers and edit files directly in VSCode like they're local - HUGE for DevOps!
**Trusted:** Auto-trusted (Microsoft official)

### ✅ Dev Containers (ms-vscode-remote.remote-containers)
**What it does:** Develop inside Docker containers - edit files, run code, debug inside containers like they're local
**Trusted:** Auto-trusted (Microsoft official)
**User note:** Works with Docker Desktop, Podman, OrbStack, or macOS 26 Tahoe native Container framework
**Complements:** Remote - SSH and Docker extensions

### ✅ Remote Explorer (ms-vscode.remote-explorer)
**What it does:** Browse and manage remote connections - shows all SSH targets, containers, WSL instances in sidebar
**Trusted:** Auto-trusted (Microsoft official)
**User note:** Auto-installed with Remote extensions - provides the Remote Explorer sidebar view

### ✅ Remote - SSH: Editing Configuration Files (ms-vscode-remote.remote-ssh-edit)
**What it does:** Edit SSH config files directly in VSCode - manage SSH hosts and settings
**Trusted:** Auto-trusted (Microsoft official)
**User note:** Auto-installed with Remote - SSH extension

---

## Git Tools

### ✅ GitLens (eamodio.gitlens)
**What it does:** Advanced git features - blame, history, comparisons
**Trusted:** Auto-trusted (popular extension)

### ✅ Git Graph (mhutchie.git-graph)
**What it does:** Visual git history with branches and merges - SEE your git history instead of reading text!
**Trusted:** ⚠️ Requires manual trust
**User feedback:** ⭐ Really likes this one!

### ✅ GitHub Repositories (github.remotehub)
**What it does:** Browse and edit GitHub repositories without cloning - open any GitHub repo remotely in VSCode
**Trusted:** Auto-trusted (Microsoft/GitHub official)
**User note:** Quickly view code on GitHub repos without downloading them locally

### ✅ Remote Repositories (ms-vscode.remote-repositories)
**What it does:** Work with remote repositories (GitHub, Azure Repos) without cloning - edit files directly on remote
**Trusted:** Auto-trusted (Microsoft official)
**User note:** Pairs with GitHub Repositories extension

### ✅ Azure Repos (ms-vscode.azure-repos)
**What it does:** Azure DevOps Repos integration - connect to Azure Repos, manage work items, pull requests
**Trusted:** Auto-trusted (Microsoft official)
**User note:** For teams using Azure DevOps instead of GitHub

---

## AI Assistants

### ✅ GitHub Copilot (github.copilot)
**What it does:** AI code completions as you type - shows gray ghost text suggestions, context-aware code writing
**Trusted:** Auto-trusted (Microsoft official)
**User note:** **Look for the STAR icon ⭐ next to lightbulb** - that means Copilot AI is active (not just spell checker)
**Visual indicators:**
- Gray ghost text = AI suggestion (press Tab to accept)
- Lightbulb + Star 💡⭐ = AI fix available when you select a line
- Copilot icon in status bar (bottom-right) = shows Copilot status

### ✅ GitHub Copilot Chat (github.copilot-chat)
**What it does:** AI chat panel in VSCode - ask questions, explain code, generate tests, debug issues
**Trusted:** Auto-trusted (Microsoft official)
**User note:** Pairs with GitHub Copilot - chat interface for longer AI conversations

### ✅ Claude Code for VS Code (anthropic.claude-code)
**What it does:** Official Anthropic extension - brings Claude Code chat panel into VSCode, edit files with Claude without leaving IDE
**Trusted:** Auto-trusted (Anthropic official)
**User note:** ON-DEMAND ONLY - only runs when you open chat panel, NO background file reading, NO auto-cost
**Cost control:** Close the panel = zero API usage

---

## CI/CD & Build Tools

### ✅ Jenkins (JenkinsFile Support)
**What it does:** Jenkinsfile syntax highlighting, autocomplete for pipeline steps, validation
**Trusted:** ⚠️ Requires manual trust
**User note:** Essential for SCM/build engineering work

### ✅ GitHub Actions (github.vscode-github-actions)
**What it does:** GitHub Actions workflow syntax, `.github/workflows/` file editing, pipeline validation
**Trusted:** ⚠️ Requires manual trust
**User note:** CI/CD workflow automation

### ✅ GitHub Pull Requests (github.vscode-pull-request-github)
**What it does:** Manage GitHub pull requests directly in VSCode - review, comment, merge, create PRs without leaving editor
**Trusted:** Auto-trusted (Microsoft/GitHub official)
**User note:** Essential for GitHub workflows

### ✅ Bash Debug (rogalmic.bash-debug)
**What it does:** Debug bash/shell scripts with breakpoints - step through scripts line by line, inspect variables
**Trusted:** ⚠️ Requires manual trust
**User note:** Critical for debugging automation scripts

---

## API Testing Tools

### ✅ REST Client (humao.rest-client)
**What it does:** Test APIs in .http files - text-based, uses your bright colors
**Trusted:** ⚠️ Requires manual trust
**User note:** Installed both to try them out!

### ✅ Thunder Client (rangav.vscode-thunder-client)
**What it does:** GUI-based API testing like Postman - collections, environments
**Trusted:** ⚠️ Requires manual trust (probably)
**User note:** Installed both to try them out!

---

## Themes (Backups)

### ✅ Dracula Pro (hasibx2000.dracula-pro)
**What it does:** Dracula Pro theme (backup option)
**Current theme:** Default Dark+ (customized)

### ✅ OneDark (akamud.vscode-theme-onedark)
**What it does:** OneDark theme (backup option)

### ✅ GitHub Dark High Contrast (hipstersmoothie-public.github-dark-high-contrast)
**What it does:** High contrast theme (backup option)

### ✅ GitHub Theme (github.github-vscode-theme)
**What it does:** Official GitHub theme pack - multiple GitHub-style color themes
**Trusted:** Auto-trusted (Microsoft/GitHub official)

---

## Other Extensions (Keeping These)

### ✅ YAML Path Extractor (jtcontreras90.yaml-path-extractor)
**What it does:** Shows YAML path in status bar
**Trusted:** Auto-trusted
**User note:** Kept alongside Red Hat YAML - provides status bar path in addition to breadcrumbs

### ✅ Package JSON Upgrade (codeandstuff.package-json-upgrade)
**What it does:** Upgrade package.json dependencies - click to update outdated packages
**Trusted:** Auto-trusted
**User note:** Essential for Node.js development work

---

## To Be Installed (Pending)

**None at this time** - You have **43 extensions** installed
**Status:** Well above target, but all extensions are useful for your workflow (DevOps, Cloud, SCM, Node.js development)

---

## Legend

- ✅ = Installed and working
- ⏳ = Pending installation
- ⚠️ = Needs manual trust (install through Extensions panel UI only)
- 🗑️ = Recommended to remove

---

## Quick Tips

**Visual Indicators - What's What:**
- **Blue squiggly line** = Code Spell Checker (typo)
- **Lightbulb 💡** = Basic fix suggestions (spelling)
- **Lightbulb + Star 💡⭐** = **GitHub Copilot AI** (smart context-aware help)
- **Gray ghost text** = GitHub Copilot AI suggestion (press Tab to accept)
- **Red text at end of line** = Error Lens (compiler/syntax errors)

**Extensions that REQUIRE manual trust:**
- File Utils
- File Properties Viewer
- Error Lens
- Prettier
- Code Spell Checker
- Indent Rainbow
- Better Comments
- Git Graph
- AWS Toolkit
- Terraform
- Helm Intellisense
- REST Client
- Thunder Client
- Jenkins
- GitHub Actions
- Bash Debug
- Continue

**Installing extensions:**
1. Open Extensions panel (Cmd+Shift+X)
2. Search for extension name
3. Click Install
4. Approve trust prompt when asked
5. Extension activates immediately

**DO NOT install via command line** - they won't activate without trust!

---

**Next steps:**
- Re-export VSCode profile to capture all 43 extensions
- Commit updated documentation to git
- All extensions are being kept (useful for DevOps, Cloud, SCM, and Node.js work)

**Extension breakdown:**
- Visual Enhancements: 6
- File Operations: 2
- Code Quality: 2
- Language Support: 7 (including Python suite)
- DevOps & Cloud: 10
- Git & Source Control: 6
- AI Assistants: 3 (Copilot, Copilot Chat, Claude Code)
- CI/CD: 4
- API Testing: 2
- Themes: 5
- Other: 2
**Total: 43 extensions**
