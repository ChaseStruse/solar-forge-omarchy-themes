# Solar Ram Studios

The house theme for Solar Ram Studios. The Ram stares out of obsidian black
with emerald fire in its eyes, and every window on the desktop burns with the
same light: emerald glow, silver-white edge light, and a forge gradient that
circles each border.

## Palette

Built on the brand palette in `brand/palette.json`.

- Primary accent / Solar Emerald: `#20d99a`
- Deep Emerald: `#11995d`
- Forest Shadow (inactive borders, selection): `#05542d`
- Molten mint (selected text, highlights): `#5dffc0`
- Raised surface: `#0f1f19`
- Obsidian background: `#040f0b`
- Slate Silver (muted): `#787e81`
- Silver White (text): `#f2f5f4`

The brand guide avoids gold, yellow, and orange lighting, so the terminal's
yellow is a pale chartreuse (`#d4f27a`). Red and orange stay readable for
errors and warnings.

## Backgrounds

Four 4K wallpapers at 3840×2400 (16:10). The original renders were only
1672×941, so each was AI-upscaled with Real-ESRGAN (x4plus), downsampled to
3840×2160 with a little of the original texture blended back, and given a gentle
shadow grade that crushes near-black to true black for OLED panels.

Omarchy crops wallpapers to fill the screen, so on a 16:10 laptop panel a 16:9
image loses its side edges, which is where the wordmarks sit. Each image was
extended with a soft, darkened mirror of its own top and bottom 120px. A 16:10
screen shows the full width, and a 16:9 screen crops exactly those strips off,
so it shows the original framing.

1. **Emerald Eclipse**: the Solar Ram head before an emerald solar corona.
2. **Solar Sanctum**: the Ram monument inside the studio's emerald aperture.
3. **Emerald Frontier**: the Ram on an obsidian cliff above glowing rivers and
   an aurora.
4. **Solar Ram Crest**: the logo, centered on a pure black field.

`backgrounds/portrait/` has a native 2160×3840 version of each one for
vertical monitors (see the repository README). The head shots are too wide for
a straight crop, so they're fitted to the screen width and fade into black above
and below. Frontier uses a full-height crop centered on the Ram.

The untouched originals, logo, palette sheet, and generation prompts live in
`brand/`.

## Effects

The emerald and silver-white gradient is defined in `colors.toml` and
`shell.toml`, so borders, menus, the launcher, notifications, popups, and the
lock field all carry it on any install. Emerald marks focus and navigation,
molten mint marks selection, and silver-white marks hover.

`hyprland.lua` adds the full show:

- A bright emerald glow around the focused window
- A dimmed forest-green halo on unfocused windows
- Frosted, vibrant blur and translucent terminals
- Windows that strike in with an overshoot, like a hammer blow
- Workspaces that glide in with a fade
- A border gradient that loops around every window

Omarchy discards Lua from Git-installed themes, so these effects only apply to a
trusted local install. The looping border redraws continuously. On battery, you
can turn it off by setting the `borderangle` animation's `enabled` to `false`.

## Install locally

This repository holds multiple themes, while Omarchy's Git installer expects
one theme at the repository root. Copy this directory into the custom theme
location, then apply it:

```bash
mkdir -p ~/.config/omarchy/themes/solar-ram-studios
cp -r solar-ram-studios/. ~/.config/omarchy/themes/solar-ram-studios/
omarchy theme set solar-ram-studios
```
