#!/bin/bash

# Arch Linux Package Installation Script
# Installs: fastfetch, firefox, vs code, vesktop, kitty, and yay

RED='\033[0;31m'
GREEN='\033[0;32m'
YELLOW='\033[1;33m'
NC='\033[0m'

echo -e "${YELLOW}Arch Linux Package Installer${NC}"
echo ""

if ! grep -qi arch /etc/os-release; then
    echo -e "${RED}Error: This script is for Arch Linux only!${NC}"
    exit 1
fi

echo -e "${GREEN}✓ Detected Arch Linux${NC}"
echo ""

if [[ $EUID -ne 0 ]]; then
    echo -e "${RED}Error: This script must be run as root (use: sudo ./install-packages.sh)${NC}"
    exit 1
fi

ACTUAL_USER="${SUDO_USER:-root}"
ACTUAL_HOME="$(eval echo ~$ACTUAL_USER)"

echo -e "${YELLOW}Updating system packages...${NC}"
if ! pacman -Syu --noconfirm; then
    echo -e "${YELLOW}⚠ System update had issues, but continuing with installations...${NC}"
fi

echo -e "${YELLOW}Installing pacman packages...${NC}"
if pacman -S --noconfirm fastfetch firefox kitty; then
    echo -e "${GREEN}✓ Pacman packages installed${NC}"
else
    echo -e "${RED}✗ Failed to install pacman packages${NC}"
    exit 1
fi

echo -e "${YELLOW}Installing yay (AUR helper)...${NC}"
if ! command -v yay &> /dev/null; then
    if ! pacman -S --noconfirm base-devel git; then
        echo -e "${RED}✗ Failed to install build dependencies${NC}"
        exit 1
    fi
    
    BUILD_DIR=$(mktemp -d)
    if ! git clone https://aur.archlinux.org/yay.git "$BUILD_DIR/yay"; then
        echo -e "${RED}✗ Failed to clone yay from AUR${NC}"
        exit 1
    fi
    
    cd "$BUILD_DIR/yay"
    if ! sudo -u "$ACTUAL_USER" HOME="$ACTUAL_HOME" makepkg -si --noconfirm; then
        echo -e "${RED}✗ Failed to build and install yay${NC}"
        exit 1
    fi
    
    rm -rf "$BUILD_DIR"
    echo -e "${GREEN}✓ yay installed successfully${NC}"
else
    echo -e "${GREEN}✓ yay already installed${NC}"
fi

echo -e "${YELLOW}Installing AUR packages with yay...${NC}"
if sudo -u "$ACTUAL_USER" HOME="$ACTUAL_HOME" yay -S --noconfirm visual-studio-code-bin vesktop; then
    echo -e "${GREEN}✓ AUR packages installed${NC}"
else
    echo -e "${RED}✗ Failed to install AUR packages${NC}"
    exit 1
fi


echo -e "${GREEN}✓ All packages installed successfully!${NC}"
echo ""
echo -e "${GREEN}Installation complete!${NC}"
echo "Installed packages:"
echo "  • fastfetch"
echo "  • firefox"
echo "  • visual-studio-code-bin (VS Code)"
echo "  • vesktop"
echo "  • kitty"
echo "  • yay"
