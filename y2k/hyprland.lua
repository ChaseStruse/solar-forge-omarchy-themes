-- Y2K: holographic chrome borders, a bubblegum-pink glow, glassy blur, and
-- windows that bounce in like a screensaver from 2001.
local active_border_color = {
  colors = { "rgba(ff6ad5ff)", "rgba(4ff3ffff)", "rgba(b6ff3bff)", "rgba(ffa53dff)", "rgba(b98cffff)" },
  angle = 45,
}
local inactive_border_color = "rgba(3a2a78bb)"

hl.config({
  general = {
    gaps_in = 10,
    gaps_out = 20,
    border_size = 4,
    col = {
      active_border = active_border_color,
      inactive_border = inactive_border_color,
    },
  },

  decoration = {
    rounding = 22,
    rounding_power = 3,
    dim_inactive = true,
    dim_strength = 0.1,

    shadow = {
      enabled = true,
      range = 40,
      render_power = 2,
      color = "rgba(ff6ad5cc)",
      color_inactive = "rgba(4ff3ff26)",
    },

    blur = {
      enabled = true,
      size = 9,
      passes = 4,
      noise = 0.02,
      contrast = 1.1,
      vibrancy = 0.55,
      vibrancy_darkness = 0.25,
      new_optimizations = true,
      ignore_opacity = false,
      xray = false,
    },
  },

  group = {
    col = {
      border_active = active_border_color,
      border_inactive = inactive_border_color,
    },
    groupbar = {
      font_family = "JetBrainsMono Nerd Font",
      font_weight_active = "ultraheavy",
      indicator_height = 4,
      gradients = true,
      gradient_rounding = 22,
      text_color = "rgb(f9ff9a)",
      text_color_inactive = "rgba(dedbf7aa)",
      col = {
        active = "rgba(3a2a78dd)",
        inactive = "rgba(120e2bbb)",
      },
    },
  },
})

-- Smoked-glass terminals so the chrome shows through.
o.window({ tag = "terminal" }, { opacity = "0.88 0.8" })

-- Bubble physics: windows inflate in with a big springy overshoot, pop out
-- like soap bubbles, and the holographic gradient spins around every border.
hl.curve("y2kLinear", { type = "bezier", points = { { 0, 0 }, { 1, 1 } } })
hl.curve("y2kBounce", { type = "bezier", points = { { 0.3, 1.7 }, { 0.6, 1 } } })
hl.curve("y2kJelly", { type = "bezier", points = { { 0.2, 1.35 }, { 0.4, 1 } } })
hl.curve("y2kGlide", { type = "bezier", points = { { 0.22, 1 }, { 0.36, 1 } } })
hl.animation({ leaf = "border", enabled = true, speed = 4, bezier = "y2kGlide" })
hl.animation({ leaf = "borderangle", enabled = true, speed = 30, bezier = "y2kLinear", style = "loop" })
hl.animation({ leaf = "windows", enabled = true, speed = 4.4, bezier = "y2kJelly" })
hl.animation({ leaf = "windowsIn", enabled = true, speed = 4.8, bezier = "y2kBounce", style = "popin 50%" })
hl.animation({ leaf = "windowsOut", enabled = true, speed = 3, bezier = "y2kGlide", style = "popin 70%" })
hl.animation({ leaf = "fade", enabled = true, speed = 4, bezier = "y2kGlide" })
hl.animation({ leaf = "layers", enabled = true, speed = 4, bezier = "y2kJelly", style = "popin 80%" })
hl.animation({ leaf = "workspaces", enabled = true, speed = 5, bezier = "y2kJelly", style = "slidefade 25%" })
hl.animation({ leaf = "specialWorkspace", enabled = true, speed = 4.4, bezier = "y2kBounce", style = "slidevert" })
