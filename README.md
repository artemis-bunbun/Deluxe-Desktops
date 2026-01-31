# Deluxe Desktops

A collection of my favourite wallpapers and fastfetch configs that I use personally without necessarily using a riced linux distro.

[![Made in Arch](https://img.shields.io/badge/Made%20in-Arch-1793d1?logo=arch-linux&logoColor=white)](https://archlinux.org/)

## Table of Contents

- [Gallery](#gallery)
- [How to Setup Fastfetch Configs for Beginners](#how-to-setup-fastfetch-configs-for-beginners)
- [Installer Script](#installer-script)
- [Credits](#credits)

## Gallery

### Reykjavik, Iceland - Midnight Blue

| 1080p | 1440p | 4K |
|-------|-------|-----|
| ![1080p](reykjavik_iceland_midnight_blue_1080p.png) | ![1440p](reykjavik_iceland_midnight_blue_1440p.png) | ![4k](reykjavik_iceland_midnight_blue_4k.png) |
## How to Setup Fastfetch Configs for Beginners

1. **Install fastfetch** (if not already installed)
   ```bash
   # Arch Linux
   sudo pacman -S fastfetch
   
   # Debian/Ubuntu
   sudo apt install fastfetch
   
   # Fedora
   sudo dnf install fastfetch
   
   # openSUSE
   sudo zypper install fastfetch
   ```

2. **Copy the config file**
   ```bash
   # Create the config directory if it doesn't exist
   mkdir -p ~/.config/fastfetch
   
   # Copy your desired config from this repo
   cp fastfetch/config.jsonc ~/.config/fastfetch/config.jsonc
   ```

3. **Run fastfetch**
   ```bash
   fastfetch
   ```

4. (optional) **Make it run automatically**
   If you want fastfetch to display every time you open a terminal, add this line to the end of your shell's config file:
   - For bash: `~/.bashrc`
   - For zsh: `~/.zshrc`
   
   Add this line:
   ```bash
   fastfetch
   ```
   
   Then restart your terminal or run `source ~/.bashrc` (or `source ~/.zshrc` for zsh)

For more customization options, check the [fastfetch documentation](https://github.com/LinusDierheimer/fastfetch).

## Installer Script

The `deluxe-arch-installer.sh` script automates the installation of essential packages on Arch Linux. It's designed to get your system set up quickly with all the necessary tools and configurations.

### What It Installs

- **fastfetch** - System information display tool
- **firefox** - Web browser
- **visual-studio-code-bin** - Code editor
- **vesktop** - Discord client
- **kitty** - Terminal emulator
- **yay** - AUR helper for managing community packages

### Usage

```bash
sudo ./deluxe-arch-installer.sh
```

### Requirements

- **Arch Linux** - This script is Arch Linux specific and will not run on other distributions
- **Root privileges** - Must be run with `sudo`

### Features

- Detects Arch Linux and validates system compatibility
- Updates system packages before installation
- Installs pacman packages (official repositories)
- Automatically installs and configures yay if not already present
- Installs AUR packages using yay
- Provides colored output and progress indicators
- Error handling and informative messages

## Credits

- Map/atlas style wallpapers generated with [maptoposter](https://github.com/originalankur/maptoposter)
- Map data courtesy of [OpenStreetMap](https://www.openstreetmap.org/)

## License

This project is licensed under the MIT License - see the [LICENSE](LICENSE) file for details.

**License Summary:**
- Wallpapers: MIT License (generated from maptoposter)
- maptoposter: MIT License
- OpenStreetMap Data: ODbL (Open Data Commons Open Database License)
