#!/bin/bash
# Install Language Support Extensions
# Python, Bash, PowerShell, Groovy, Markdown, YAML, JSON

echo "💻 Installing Language Support Extensions..."
echo "Installing support for Python, Bash, PowerShell, and more."
echo ""

# Python
echo "Installing Python support..."
code --install-extension ms-python.python
code --install-extension ms-python.vscode-pylance
code --install-extension ms-python.debugpy
code --install-extension kevinrose.vsc-python-indent
code --install-extension njpwerner.autodocstring
code --install-extension donjayamanne.python-environment-manager

# Bash
echo "Installing Bash support..."
code --install-extension mads-hartmann.bash-ide-vscode
code --install-extension rogalmic.bash-debug
code --install-extension shakram02.bash-beautify

# PowerShell
echo "Installing PowerShell support..."
code --install-extension ms-vscode.powershell

# Groovy
echo "Installing Groovy support..."
code --install-extension argylewolflabs.vscode-groovy
code --install-extension marlon407.code-groovy

# Markdown
echo "Installing Markdown support..."
code --install-extension yzhang.markdown-all-in-one
code --install-extension mdickin.markdown-shortcuts

# YAML/JSON
echo "Installing YAML/JSON support..."
code --install-extension redhat.vscode-yaml
code --install-extension zainchen.json

echo ""
echo "✅ Language Support Extensions installed!"
echo ""
echo "Languages covered:"
echo "  • Python (with Pylance, debugging, auto-docstring)"
echo "  • Bash (IDE features, debugging, beautifier)"
echo "  • PowerShell"
echo "  • Groovy"
echo "  • Markdown (with preview enhancements)"
echo "  • YAML/JSON"
