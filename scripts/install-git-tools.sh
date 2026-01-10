#!/bin/bash
# Install Git Tools Extensions
# GitLens, Git History, GitHub integration

echo "🌐 Installing Git Tools Extensions..."
echo "Installing GitLens, Git History, and GitHub integration."
echo ""

code --install-extension eamodio.gitlens
code --install-extension donjayamanne.githistory
code --install-extension github.vscode-pull-request-github
code --install-extension github.github-vscode-theme

echo ""
echo "✅ Git Tools Extensions installed!"
echo ""
echo "What these do:"
echo "  • eamodio.gitlens - Supercharges Git (blame, history, compare)"
echo "  • donjayamanne.githistory - View git log and file history"
echo "  • github.vscode-pull-request-github - Manage PRs from VSCode"
echo "  • github.github-vscode-theme - GitHub's official themes"
echo ""
echo "GitLens is MUCH more powerful than built-in Git!"
