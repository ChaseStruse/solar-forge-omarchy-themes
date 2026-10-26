# Glimmerwood

Grab your friends, light a lantern, and follow the fairy lights off the path.
Glimmerwood is an enchanted forest at twilight: deep plum shadows, will-o'-wisp
mint, firefly gold, toadstool rose, and pixie lilac, with everything glowing
just a little more than it should.

## Palette

- Primary accent / wisp mint: `#7ff7c4`
- Firefly gold: `#ffd96a`
- Toadstool rose: `#ff6f9c`
- Pixie lilac: `#c39bff`
- Fern green: `#9dff8a`
- Raised twilight surface: `#211a40`
- Deep plum shadow: `#141029`
- Parchment: `#f4ecd8`

## Backgrounds

Five original 4K paintings, rendered procedurally for this theme. Each has a
matching 9:16 painting in `backgrounds/portrait/` for vertical monitors (see the
repository README).

1. **Fairy Ring**: a moonlit glade where a ring of glowing toadstools hosts a
   fairy dance.
2. **The Party Sets Out**: an elf ranger, a wizard, a halfling with a lantern,
   and their fox follow a flower-lit path toward a golden hollow, with a fairy
   leading the way.
3. **The Elder Tree**: an elven tree-home with glowing round windows, a spiral
   stair of lights, and lantern strings through its canopy under an aurora.
4. **Wisp Lake**: will-o'-wisps drifting over a mirror-still lake of glowing
   lilies.
5. **Toadstool Hollow**: giant spotted mushrooms, fairies, and a forest gone soft
   with bokeh.

## Effects

The mint, gold, rose, and lilac gradient lives in `colors.toml` and `shell.toml`,
so it carries into borders, menus, notifications, popups, and the lock field on
any install. Mint marks focus and navigation, rose marks selection, and gold
marks hover.

`hyprland.lua` adds the full show: a wisp-mint glow around the active window,
extra-round corners, frosted vibrant blur, translucent terminals, springy
"just summoned" window animations, and a fairy-light border gradient that chases
itself around each window. Omarchy discards Lua from Git-installed themes, so
these effects only apply to a trusted local install. The chasing border redraws
continuously. If you're on battery, you can turn it off by setting the
`borderangle` animation's `enabled` to `false`.

## Install locally

This repository holds multiple themes, while Omarchy's Git installer expects
one theme at the repository root. Copy this directory into the custom theme
location, then apply it:

```bash
mkdir -p ~/.config/omarchy/themes/glimmerwood
cp -r glimmerwood/. ~/.config/omarchy/themes/glimmerwood/
omarchy theme set glimmerwood
```
