#!/bin/bash
# Install DevOps Tools Extensions
# AWS, Docker, Kubernetes, Jenkins/Groovy

echo "☁️ Installing DevOps Tools Extensions..."
echo "Installing AWS, Docker, Kubernetes, and Jenkins support."
echo ""

# AWS
echo "Installing AWS tools..."
code --install-extension amazonwebservices.aws-toolkit-vscode
code --install-extension mark-tucker.aws-cli-configure

# Docker & Kubernetes
echo "Installing container tools..."
code --install-extension ms-azuretools.vscode-docker
code --install-extension ms-kubernetes-tools.vscode-kubernetes-tools

# Jenkins
echo "Installing Jenkins/Groovy support..."
code --install-extension secanis.jenkinsfile-support
code --install-extension ivory-lab.jenkinsfile-support
code --install-extension janjoerke.jenkins-pipeline-linter-connector

echo ""
echo "✅ DevOps Tools Extensions installed!"
echo ""
echo "Tools installed:"
echo "  AWS:"
echo "    • amazonwebservices.aws-toolkit-vscode"
echo "    • mark-tucker.aws-cli-configure"
echo ""
echo "  Containers:"
echo "    • ms-azuretools.vscode-docker"
echo "    • ms-kubernetes-tools.vscode-kubernetes-tools"
echo ""
echo "  Jenkins:"
echo "    • secanis.jenkinsfile-support"
echo "    • ivory-lab.jenkinsfile-support"
echo "    • janjoerke.jenkins-pipeline-linter-connector"
