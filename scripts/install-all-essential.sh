#!/bin/bash
# Install ALL Essential Extensions
# Runs all individual installation scripts

echo "================================================"
echo "🚀 Installing ALL Essential VSCode Extensions"
echo "================================================"
echo ""
echo "This will install extensions in these categories:"
echo "  1. Visual Enhancements"
echo "  2. IDE Enhancements"
echo "  3. Language Support"
echo "  4. DevOps Tools"
echo "  5. Git Tools"
echo "  6. High-Contrast Themes"
echo ""
read -p "Continue? (y/n) " -n 1 -r
echo ""

if [[ ! $REPLY =~ ^[Yy]$ ]]; then
    echo "Installation cancelled."
    exit 1
fi

SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"

echo ""
echo "Starting installation..."
echo ""

# Run each installation script
bash "$SCRIPT_DIR/install-visual-extensions.sh"
echo ""
echo "---"
echo ""

bash "$SCRIPT_DIR/install-ide-enhancements.sh"
echo ""
echo "---"
echo ""

bash "$SCRIPT_DIR/install-language-support.sh"
echo ""
echo "---"
echo ""

bash "$SCRIPT_DIR/install-devops-tools.sh"
echo ""
echo "---"
echo ""

bash "$SCRIPT_DIR/install-git-tools.sh"
echo ""
echo "---"
echo ""

bash "$SCRIPT_DIR/install-themes.sh"
echo ""

echo "================================================"
echo "✅ All Essential Extensions Installed!"
echo "================================================"
echo ""
echo "Next Steps:"
echo "  1. Restart VSCode"
echo "  2. Test themes with: Cmd+K Cmd+T"
echo "  3. Open test files in test-files/ folder"
echo "  4. Follow docs/03-theme-testing-guide.md"
echo ""
echo "Optional: Run install-ai-tools.sh if you want AI assistants"
