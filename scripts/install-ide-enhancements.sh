#!/bin/bash
# Install IDE Enhancement Extensions
# These add right-click options, navigation, and quality of life improvements

echo "🔧 Installing IDE Enhancement Extensions..."
echo "These add right-click options, navigation, and productivity features."
echo ""

# Context menu enhancements
echo "Installing context menu enhancements..."
code --install-extension ouweiya.copy-file-name
code --install-extension everspace.rightclick-git
code --install-extension codyschrank.rightclickfix

# File/Project navigation
echo "Installing navigation tools..."
code --install-extension alefragnani.project-manager
code --install-extension alefragnani.bookmarks
code --install-extension alefragnani.numbered-bookmarks
code --install-extension mhutchie.git-graph

# Quality of life
echo "Installing quality of life tools..."
code --install-extension anjali.clipboard-history
code --install-extension mkxml.vscode-filesize
code --install-extension xyz.local-history

echo ""
echo "✅ IDE Enhancement Extensions installed!"
echo ""
echo "What these do:"
echo "  Context Menu:"
echo "    • ouweiya.copy-file-name - Copy file paths easily"
echo "    • everspace.rightclick-git - Git operations via right-click"
echo "    • codyschrank.rightclickfix - Fixes context menu issues"
echo ""
echo "  Navigation:"
echo "    • alefragnani.project-manager - Switch between projects"
echo "    • alefragnani.bookmarks - Bookmark lines in code"
echo "    • alefragnani.numbered-bookmarks - Numbered bookmarks"
echo "    • mhutchie.git-graph - Visual git history"
echo ""
echo "  Quality of Life:"
echo "    • anjali.clipboard-history - Clipboard manager"
echo "    • mkxml.vscode-filesize - Shows file sizes"
echo "    • xyz.local-history - Local file backups"
