#!/bin/bash
# Install Visual Enhancement Extensions
# These extensions help with visibility and seeing code better

echo "🎨 Installing Visual Enhancement Extensions..."
echo "These extensions help with visibility, colors, and navigation."
echo ""

# Path indicators for YAML/JSON
echo "Installing path indicators..."
code --install-extension richie5um2.vscode-statusbar-json-path
code --install-extension jtcontreras90.yaml-path-extractor

# Color highlighting
echo "Installing color highlighting..."
code --install-extension kamikillerto.vscode-colorize
code --install-extension mechatroner.rainbow-csv

# Text markers
echo "Installing text markers..."
code --install-extension ryu1kn.text-marker

echo ""
echo "✅ Visual Enhancement Extensions installed!"
echo ""
echo "What these do:"
echo "  • richie5um2.vscode-statusbar-json-path - Shows JSON path in status bar"
echo "  • jtcontreras90.yaml-path-extractor - Shows YAML path breadcrumbs"
echo "  • kamikillerto.vscode-colorize - Highlights color codes in files"
echo "  • mechatroner.rainbow-csv - Colors CSV columns differently"
echo "  • ryu1kn.text-marker - Mark text with custom colors"
echo ""
echo "Next: Test these with your test files in test-files/"
