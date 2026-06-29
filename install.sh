#!/bin/bash

# Colors to make the terminal output look nice
GREEN='\033[0;32m'
RED='\033[0;31m'
BLUE='\033[0;34m'
NC='\033[0m' # No Color (Reset)

echo -e "${BLUE} Starting Fastfetch configuration installation...${NC}"

# 1. Create the directory if it doesn't exist
mkdir -p ~/.config/fastfetch

# 2. Download the configuration file from GitHub
URL="https://raw.githubusercontent.com/Fanty1107/fastfetch-config/main/config.jsonc"
OUTPUT="$HOME/.config/fastfetch/config.jsonc"

echo -e "${BLUE} Downloading config.jsonc...${NC}"
if curl -fsSL "$URL" -o "$OUTPUT"; then
    echo -e "${GREEN} Configuration successfully downloaded to: $OUTPUT${NC}"
else
    echo -e "${RED} Error downloading the file. Check your connection or ensure the repository is public.${NC}"
    exit 1
fi

echo -e "${GREEN} All set! Open a new terminal or type 'fastfetch' to test it.${NC}"