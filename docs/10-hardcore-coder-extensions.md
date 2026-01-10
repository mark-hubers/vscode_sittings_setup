# Must-Have Extensions for Hardcore Coder + High Visibility

Based on your profile: Cloud architect, AI enthusiast, vision needs, uses Claude heavily.

---

## 🔥 HOT MUST-HAVE Extensions

### 1. **Error Lens** (usernamehw.errorlens)
**Why you NEED this for vision:**
- Shows errors/warnings INLINE next to the code (not just squiggly lines!)
- Bright, colorful error messages you can't miss
- No more hunting for tiny red underlines

**What it looks like:**
```
const x = "hello"
x = 5;  ❌ Cannot assign to 'x' because it is a constant. [BRIGHT RED TEXT HERE]
```

**Install:** Search "Error Lens"
**May need manual trust:** Unknown, install manually to be safe

---

### 2. **Prettier - Code formatter** (esbenp.prettier-vscode)
**What it does:**
- Auto-formats your code on save (no more manual formatting!)
- Makes code consistent across your team
- Supports: JavaScript, TypeScript, JSON, YAML, Markdown, CSS, and more

**How to use:**
1. Install extension
2. Add to settings.json:
```json
"editor.formatOnSave": true,
"editor.defaultFormatter": "esbenp.prettier-vscode"
```
3. Every time you save (Cmd+S) → Code auto-formats!

**Why hardcore coders love it:**
- Never think about formatting again
- Code always looks clean
- Works with team style guides

**Install:** Search "Prettier"

---

### 3. **Indent Rainbow** (oderwat.indent-rainbow)
**Why you NEED this for vision:**
- Colors each indentation level differently
- Instantly see code structure without counting spaces
- Helps with Python, YAML, JSON where indentation matters

**What it looks like:**
```python
def function():          # No color
    if condition:        # Light blue indent
        nested code      # Darker blue indent
            deep code    # Even darker blue indent
```

**Install:** Search "Indent Rainbow"

---

### 4. **Better Comments** (aaron-bond.better-comments)
**Why you NEED this for vision:**
- Colors different comment types with BRIGHT colors
- TODO = orange, FIXME = red, NOTE = blue, etc.
- No more missing important comments!

**What it looks like:**
```python
# TODO: This is bright orange and stands out
# FIXME: This is bright red - urgent!
# NOTE: This is bright blue - important info
# ? This is a question in green
# ! This is an alert in red
```

**Install:** Search "Better Comments"

---

### 5. **GitHub Copilot** or **Continue** (AI coding assistants)
**Since you use Claude a lot:**

**GitHub Copilot** (paid, $10/month):
- AI code completions as you type
- Inline suggestions
- Chat panel for asking questions

**Continue** (free, uses Claude API):
- Connect to Claude API directly
- Similar to Copilot but uses your Claude API key
- More control over which model you use

**Which one?**
- If you already have Claude API → Use Continue (free)
- If you want simplicity → GitHub Copilot (paid)

**Install:** Search "GitHub Copilot" or "Continue"

---

### 6. **Todo Tree** (Gruntfuggly.todo-tree)
**What it does:**
- Finds all TODO/FIXME/NOTE comments in your entire project
- Shows them in a tree view on the sidebar
- Click to jump to that comment

**Why hardcore coders love it:**
- Never lose track of TODOs across hundreds of files
- See all FIXMEs in one place
- Filter by type (just TODOs, just FIXMEs, etc.)

**Install:** Search "Todo Tree"

---

### 7. **Git Graph** (mhutchie.git-graph)
**What it does:**
- Visual git history (like a better `git log`)
- See branches, merges, commits in a graph
- Click commits to see changes

**Why hardcore coders love it:**
- Understand complex git history at a glance
- No more command-line git log confusion
- See who changed what and when

**Install:** Search "Git Graph"

---

### 8. **REST Client** (humao.rest-client)
**For cloud/API work:**
- Test APIs directly in VSCode (no Postman needed!)
- Save API requests in `.http` files
- Share API tests with your team

**Example:**
```http
### Get user
GET https://api.example.com/users/1
Authorization: Bearer YOUR_TOKEN

### Create user
POST https://api.example.com/users
Content-Type: application/json

{
  "name": "John Doe",
  "email": "john@example.com"
}
```

Click "Send Request" → See response inline!

**Install:** Search "REST Client"

---

### 9. **Thunder Client** (rangav.vscode-thunder-client)
**Alternative to REST Client:**
- Like Postman but built into VSCode
- GUI for building requests (not just text files)
- Collections, environments, testing

**Which one?**
- REST Client = Simple, text-based
- Thunder Client = Full-featured, GUI

Pick one, not both!

**Install:** Search "Thunder Client"

---

### 10. **Docker** (ms-azuretools.vscode-docker)
**For cloud/DevOps work:**
- Manage Docker containers from VSCode
- View running containers, images, volumes
- Right-click to start/stop/remove
- Dockerfile syntax highlighting

**Install:** Search "Docker" (by Microsoft)

---

## 🎨 More High Visibility Extensions

### 11. **Bracket Pair Colorizer 2** - ❌ DON'T INSTALL!
**Why NOT to install:**
- VSCode has this built-in now! (`editor.bracketPairColorization.enabled: true`)
- You already have it enabled in your settings
- Extension is deprecated and slows down VSCode

**Already working for you!**

---

### 12. **Color Highlight** (naumovs.color-highlight)
**What it does:**
- Shows actual color preview for hex codes
- Highlights `#ff79c6` with the actual color

**You already have:** Colorize extension does this!
**Skip this one.**

---

## 🌩️ Cloud/DevOps Extensions You Might Want

### 13. **AWS Toolkit** (amazonwebservices.aws-toolkit-vscode)
**For cloud work:**
- Browse AWS resources from VSCode
- Deploy Lambda functions
- View CloudWatch logs
- S3 bucket browsing

**Install:** Search "AWS Toolkit"

---

### 14. **Azure Tools** (ms-vscode.vscode-node-azure-pack)
**If you use Azure:**
- Manage Azure resources
- Deploy to Azure
- View logs and metrics

**Install:** Search "Azure Tools"

---

### 15. **Terraform** (hashicorp.terraform)
**For infrastructure as code:**
- Syntax highlighting for .tf files
- Auto-completion
- Validation

**Install:** Search "Terraform"

---

## 📋 Recommended Installation Order

**Install these MANUALLY (one by one) and approve trust:**

### Tier 1: Must-Have for Vision
1. ✅ **Error Lens** - See errors inline (HUGE for vision)
2. ✅ **Indent Rainbow** - See code structure with colors
3. ✅ **Better Comments** - Bright colored comments

### Tier 2: Productivity Boosters
4. ✅ **Prettier** - Auto-format code on save
5. ✅ **Todo Tree** - Track all TODOs/FIXMEs
6. ✅ **Git Graph** - Visual git history

### Tier 3: Cloud/API Work
7. ✅ **REST Client** OR **Thunder Client** (pick one)
8. ✅ **Docker** - Container management
9. ✅ **AWS Toolkit** - If you use AWS

### Tier 4: AI Assistant (Pick One)
10. ✅ **GitHub Copilot** (paid) OR **Continue** (free with Claude API)

---

## 🎯 Priority for YOU

**Based on: Hardcore coder + Vision issues + Cloud/AI work**

**Install FIRST (Top 5):**
1. **Error Lens** ⭐⭐⭐⭐⭐ - CRITICAL for vision, shows errors inline
2. **Prettier** ⭐⭐⭐⭐⭐ - Save time, auto-format everything
3. **Indent Rainbow** ⭐⭐⭐⭐ - See structure easily
4. **Better Comments** ⭐⭐⭐⭐ - Bright comments you can't miss
5. **Git Graph** ⭐⭐⭐⭐ - Understand git history visually

**Install NEXT (Cloud/API):**
6. **REST Client** or **Thunder Client** - Test APIs
7. **Docker** - Manage containers
8. **AWS Toolkit** - Cloud resource management

**Install LAST (Nice to Have):**
9. **Todo Tree** - Track TODOs
10. **AI Assistant** - GitHub Copilot or Continue

---

## ⚙️ Settings to Add After Installing

### For Prettier (auto-format):
```json
"editor.formatOnSave": true,
"editor.defaultFormatter": "esbenp.prettier-vscode",
"[javascript]": {
    "editor.defaultFormatter": "esbenp.prettier-vscode"
},
"[typescript]": {
    "editor.defaultFormatter": "esbenp.prettier-vscode"
},
"[json]": {
    "editor.defaultFormatter": "esbenp.prettier-vscode"
}
```

### For Error Lens (high visibility):
```json
"errorLens.fontWeight": "bold",
"errorLens.fontSize": "14px",
"errorLens.margin": "20px",
"errorLens.enabledDiagnosticLevels": ["error", "warning", "info"]
```

### For Indent Rainbow (visibility):
```json
"indentRainbow.colors": [
    "rgba(255,121,198,0.1)",  // Hot pink (your brand color!)
    "rgba(139,233,253,0.1)",  // Cyan
    "rgba(80,250,123,0.1)",   // Green
    "rgba(241,250,140,0.1)",  // Yellow
]
```

---

## 📊 Extension Count After Adding These

**Current:** ~13 extensions
**After adding Top 5:** ~18 extensions
**After adding all recommended:** ~23 extensions

**Still under 25 - you're good!**

---

## 🚀 Next Steps

1. **Install Top 5 extensions manually** (Error Lens, Prettier, Indent Rainbow, Better Comments, Git Graph)
2. **Restart VSCode** after each install to approve trust
3. **Test them out** on your test files
4. **Add settings** (Prettier auto-format, Error Lens bold text, etc.)
5. **Re-export your profile** with the new extensions
6. **Commit to git** again

**Want me to help you install these one by one?**

---

**Updated:** 2026-01-10
