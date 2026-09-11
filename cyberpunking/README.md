# Cyberpunking

A maximalist neon cyberpunk theme for Omarchy: hot magenta, electric cyan,
ultraviolet surfaces, deep ink backgrounds, and sharp high-contrast text.

## Palette

- Primary neon: `#ff2bd6`
- Electric cyan: `#26e6ff`
- Ultraviolet surface: `#211536`
- Deep ink: `#100a1c`
- Cool white: `#f4ecff`

Background images live in `backgrounds/`. Omarchy generates supported
application configs from `colors.toml` when the theme is installed from Git.

## Install locally

This repository contains multiple themes, while Omarchy's Git installer expects
one theme at the repository root. Copy this directory into the custom theme
location, then apply it:

```bash
mkdir -p ~/.config/omarchy/themes/cyberpunking
cp -r cyberpunking/. ~/.config/omarchy/themes/cyberpunking/
omarchy theme set cyberpunking
```
