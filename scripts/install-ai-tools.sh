#!/bin/bash
# Install AI Coding Assistant Extensions
# GitHub Copilot and Amazon Q

echo "🤖 Installing AI Coding Assistant Extensions..."
echo "Installing GitHub Copilot and Amazon Q."
echo ""

code --install-extension github.copilot
code --install-extension github.copilot-chat
code --install-extension amazonwebservices.amazon-q-vscode

echo ""
echo "✅ AI Coding Assistant Extensions installed!"
echo ""
echo "What these do:"
echo "  • github.copilot - AI code suggestions"
echo "  • github.copilot-chat - Chat with Copilot"
echo "  • amazonwebservices.amazon-q-vscode - Amazon Q assistant"
echo ""
echo "Note: These may require separate subscriptions/authentication"
