#!/bin/bash

# Check if nvm is installed, if not, install it
if ! command -v nvm &> /dev/null; then
    echo "Node Version Manager (nvm) is not installed. Installing..."
    curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.39.1/install.sh | bash
    source ~/.nvm/nvm.sh
fi

# Check if Node.js version 16.x is installed
if nvm list | grep -q "v16"; then
    echo "Node.js version 16.x is already installed."
else
    echo "Installing Node.js version 16.x..."
    nvm install 16
fi

# Run npm install
npm install
