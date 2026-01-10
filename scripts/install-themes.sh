#!/bin/bash
# Install Recommended High-Contrast Themes
# Themes optimized for visibility

echo "🎨 Installing High-Contrast Themes..."
echo "Installing themes optimized for visibility."
echo ""

code --install-extension zhuangtongfa.Material-theme  # One Dark Pro
code --install-extension github.github-vscode-theme  # GitHub themes
code --install-extension dracula-theme-pro.theme-dracula-pro  # Dracula Pro

# Your existing Monokai variants (if you want to reinstall)
# code --install-extension gerane.theme-monokai-highfructose
# code --install-extension databyne.theme-monokai-hc
# code --install-extension 74th.monokai-charcoal-high-contrast
# code --install-extension gyunbie.high-contrast-yellow-theme

echo ""
echo "✅ High-Contrast Themes installed!"
echo ""
echo "Themes to try:"
echo "  1. One Dark Pro (zhuangtongfa.Material-theme)"
echo "     • Very popular, highly customizable"
echo "     • Bright colors, good contrast"
echo ""
echo "  2. GitHub Dark High Contrast (github.github-vscode-theme)"
echo "     • Built for visibility"
echo "     • Try the 'GitHub Dark High Contrast' variant"
echo ""
echo "  3. Dracula Pro (dracula-theme-pro.theme-dracula-pro)"
echo "     • Popular, bright colors"
echo ""
echo "To switch themes: Cmd+K Cmd+T"
echo "To test: Open test-files/test.py and test-files/test.md"
