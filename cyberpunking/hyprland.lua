-- Cyberpunking: maximum neon glass, glow, and motion.
local active_border_color = {
  colors = { "rgba(26e6ffff)", "rgba(ff2bd6ff)", "rgba(7a5cffff)" },
  angle = 45,
}
local inactive_border_color = "rgba(45305fbb)"

hl.config({
  general = {
    gaps_in = 7,
    gaps_out = 14,
    border_size = 3,
    col = {
      active_border = active_border_color,
      inactive_border = inactive_border_color,
    },
  },

  decoration = {
    rounding = 10,
    rounding_power = 3,
    dim_inactive = true,
    dim_strength = 0.12,

    shadow = {
      enabled = true,
      range = 22,
      render_power = 4,
      color = "rgba(26e6ff99)",
      color_inactive = "rgba(ff2bd633)",
    },

    blur = {
      enabled = true,
      size = 10,
      passes = 4,
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
      indicator_height = 3,
      gradients = true,
      gradient_rounding = 10,
      text_color = "rgb(6af2ff)",
      text_color_inactive = "rgba(d8c9ecaa)",
      col = {
        active = "rgba(211536dd)",
        inactive = "rgba(100a1cbb)",
      },
    },
  },
})

-- Let the city lights bleed through terminals for the full neon-glass effect.
o.window({ tag = "terminal" }, { opacity = "0.93 0.84" })

-- Fast, synthetic motion with a slight overshoot on window entry.
hl.curve("cyberSnap", { type = "bezier", points = { { 0.16, 1 }, { 0.3, 1 } } })
hl.curve("cyberPulse", { type = "bezier", points = { { 0.2, 0.9 }, { 0.25, 1.08 } } })
hl.animation({ leaf = "border", enabled = true, speed = 3.2, bezier = "cyberSnap" })
hl.animation({ leaf = "windows", enabled = true, speed = 3.4, bezier = "cyberSnap" })
hl.animation({ leaf = "windowsIn", enabled = true, speed = 3.0, bezier = "cyberPulse", style = "popin 82%" })
hl.animation({ leaf = "windowsOut", enabled = true, speed = 2.2, bezier = "cyberSnap", style = "popin 88%" })
hl.animation({ leaf = "workspaces", enabled = true, speed = 4.2, bezier = "cyberSnap", style = "slide" })
hl.animation({ leaf = "specialWorkspace", enabled = true, speed = 3.2, bezier = "cyberPulse", style = "slidevert" })
