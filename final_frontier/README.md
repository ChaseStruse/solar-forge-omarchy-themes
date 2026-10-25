# The Final Frontier

A theme about wonder, discovery, and the plain fact that space is beautiful.
Deep cosmic indigo surfaces, starlight text, and a sunrise-over-a-new-world
accent gradient: stellar gold, nebula rose, violet twilight, aurora teal.
The future out there is bright.

## Palette

- Primary accent / stellar gold: `#ffc86b`
- Nebula rose: `#ff8ac6`
- Violet twilight: `#a58bff`
- Aurora teal: `#6ff0d6`
- Raised starlit surface: `#171d44`
- Deep cosmic indigo: `#0b0f26`
- Starlight white: `#eef1ff`

## Backgrounds

Five original 4K paintings, rendered procedurally for this theme:

1. **First Light**: dawn breaking over a living world, with city lights glittering
   on the night side and an aurora dancing on the far limb.
2. **Stellar Nursery**: young blue-white suns carving teal and rose cliffs of gas.
3. **Ringed Wanderer**: a candy-banded gas giant, its rings, its polar vortex,
   and two curious moons.
4. **Island Universe**: a grand-design spiral galaxy with satellite galaxies
   keeping it company.
5. **Pale Blue Dot**: the river of the Milky Way, and one small blue world
   caught in a sunbeam.

## Effects

The gold, rose, violet, and teal gradient lives in `colors.toml` and `shell.toml`,
so it carries into borders, menus, notifications, popups, and the lock field on any
install. Gold marks focus and navigation, rose marks selection, and teal marks hover.

`hyprland.lua` adds the full show: a violet nebula glow around the active
window, frosted glass blur, translucent terminals, zero-gravity window motion,
and a border gradient that slowly orbits each window. Omarchy discards Lua from
Git-installed themes, so these effects only apply to a trusted local
install. The orbiting border redraws continuously. If you're on battery, you can
turn it off by setting the `borderangle` animation's `enabled` to `false`.

## Install locally

This repository holds multiple themes, while Omarchy's Git installer expects
one theme at the repository root. Copy this directory into the custom theme
location, then apply it:

```bash
mkdir -p ~/.config/omarchy/themes/final_frontier
cp -r final_frontier/. ~/.config/omarchy/themes/final_frontier/
omarchy theme set final_frontier
```
