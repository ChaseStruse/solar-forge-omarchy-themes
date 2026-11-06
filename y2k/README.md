# Y2K

It's 2001, the screensaver just kicked in, and everything is made of liquid
chrome. Y2K is turn-of-the-millennium digital optimism: bubblegum pink, aqua
glass, acid lime, tangerine, and holographic violet glowing over midnight
indigo, with every surface a little glossier than it needs to be.

## Palette

- Primary accent / bubblegum pink: `#ff6ad5`
- Aqua glass: `#4ff3ff`
- Acid lime: `#b6ff3b`
- Tangerine: `#ffa53d`
- Holographic violet: `#b98cff`
- Raised indigo surface: `#1f1847`
- Midnight indigo: `#120e2b`
- Chrome white: `#f3f1ff`

## Backgrounds

Six 3840×2160 wallpapers: three bright, three dark. The original renders were
1920×1080, so each was AI-upscaled with Real-ESRGAN (x4plus) to 7680×4320, then
downsampled to 4K with a little of the original texture blended back so the
airbrushed gradients keep their grain. The untouched originals and their
generation prompts live in `LowResWallpapers/`.

1. **Prismatic Chrome**: an iridescent liquid-chrome torus in a sky-blue to
   periwinkle haze, with orbit trails and floating bubbles.
2. **Bubblegum Dream**: a candy-pink resin ribbon curling through aqua and lime
   glass bubbles.
3. **Citrus Supernova**: an inflated holographic chrome star inside tangerine
   and violet rings over an aqua-to-lime glow.
4. **Midnight Chrome**: a mercury orbital form with icy cyan glints in deep
   midnight blue.
5. **Aqua Dream**: smoked aqua bubbles and a glass ribbon drifting through
   petroleum-black space.
6. **Violet Orbit**: a lavender-chrome starburst in purple rings above a
   receding metallic mesh.

`backgrounds/portrait/` has a 2160×3840 version of each one for vertical
monitors (see the repository README). The free-floating scenes (Prismatic
Chrome, Midnight Chrome, Aqua Dream) are rotated 90°. The others have a floor
or a clear "up", so they use a full-height crop from the 8K upscale, centered on
the main form.

## Effects

The pink, aqua, lime, tangerine, and violet holographic gradient lives in
`colors.toml` and `shell.toml`, so it carries into borders, menus,
notifications, popups, and the lock field on any install. Pink marks focus,
aqua marks selection, and lime marks hover.

`hyprland.lua` goes all in: a thick 4px holographic border that spins around
every window, a big bubblegum-pink glow around the active window with a faint
aqua halo on the rest, extra-round bubble corners, vibrant frosted-glass blur,
smoked-glass terminals, and windows that inflate in with a springy overshoot
and pop out like soap bubbles. Omarchy discards Lua from Git-installed themes,
so these effects only apply to a trusted local install. The spinning border
redraws continuously. If you're on battery, you can turn it off by setting the
`borderangle` animation's `enabled` to `false`.

## Install locally

This repository holds multiple themes, while Omarchy's Git installer expects
one theme at the repository root. Copy this directory into the custom theme
location, then apply it:

```bash
mkdir -p ~/.config/omarchy/themes/y2k
cp -r y2k/. ~/.config/omarchy/themes/y2k/
omarchy theme set y2k
```
