# Solar Forge Omarchy Themes

This repository is the home for all custom Omarchy themes we build together.

Each theme should live in its own top-level directory and follow Omarchy's theme structure so it can be installed or copied into `~/.config/omarchy/themes/`.

## Vertical monitors

Omarchy shows the same wallpaper on every screen and crops it to fill, so a
16:9 image on a portrait monitor only shows its middle third. Each theme ships
a `backgrounds/portrait/` folder with a 9:16 version of every wallpaper, using
the same file names.

Omarchy's wallpaper cycling only looks at the top level of `backgrounds/`, so
the portrait folder never shows up in the normal rotation. To use it, clone the
built-in background plugin (`omarchy plugin clone omarchy.background`) and have
each screen whose height is greater than its width load
`backgrounds/portrait/<name>` when that file exists, falling back to the
landscape image otherwise.

Regenerate a theme's portrait set with `scripts/make-portrait-backgrounds.sh`:
`rotate` turns space scenes 90° (there's no "up" in space), and `crop` takes a
full-height slice at a chosen position for each image.
