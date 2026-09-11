# Cyberpunking

A maximalist neon cyberpunk theme for Omarchy: hot magenta, electric cyan,
ultraviolet surfaces, deep ink backgrounds, and sharp high-contrast text.

## Palette

- Primary accent / electric cyan: `#26e6ff`
- Counter-accent / hot magenta: `#ff2bd6`
- Ultraviolet surface: `#211536`
- Deep ink: `#100a1c`
- Cool white: `#f4ecff`

The Hyprland layer uses a cyan-magenta-violet active-border gradient, cyan glow
shadows, strong background blur, translucent terminals, and fast synthetic
animations. Its current techno typeface is `JetBrainsMono Nerd Font`, which is
included with a standard Omarchy installation.

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
