# Deluxe Desktops

A collection of my favourite wallpapers and fastfetch configs that I use personally without necessarily using a riced linux distro.

[![Made in Arch](https://img.shields.io/badge/Made%20in-Arch-1793d1?logo=arch-linux&logoColor=white)](https://archlinux.org/)

## Table of Contents

- [Gallery](#gallery)
- [How to Setup Fastfetch Configs for Beginners](#how-to-setup-fastfetch-configs-for-beginners)
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

## Credits

- Map/atlas style wallpapers generated with [maptoposter](https://github.com/originalankur/maptoposter)
- Map data courtesy of [OpenStreetMap](https://www.openstreetmap.org/)
