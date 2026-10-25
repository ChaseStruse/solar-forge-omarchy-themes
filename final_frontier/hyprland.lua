-- The Final Frontier: starlit glass, nebula glow, and zero-gravity motion.
local active_border_color = {
  colors = { "rgba(ffc86bff)", "rgba(ff8ac6ff)", "rgba(a58bffff)", "rgba(6ff0d6ff)" },
  angle = 60,
}
local inactive_border_color = "rgba(2f3570bb)"

hl.config({
  general = {
    gaps_in = 8,
    gaps_out = 16,
    border_size = 3,
    col = {
      active_border = active_border_color,
      inactive_border = inactive_border_color,
    },
  },

  decoration = {
    rounding = 14,
    rounding_power = 2.4,
    dim_inactive = true,
    dim_strength = 0.1,

    shadow = {
      enabled = true,
      range = 28,
      render_power = 3,
      color = "rgba(a58bffaa)",
      color_inactive = "rgba(6ff0d622)",
    },

    blur = {
      enabled = true,
      size = 9,
      passes = 4,
      noise = 0.02,
      vibrancy = 0.25,
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
      gradient_rounding = 14,
      text_color = "rgb(ffdc9a)",
      text_color_inactive = "rgba(d4d8f5aa)",
      col = {
        active = "rgba(221d55dd)",
        inactive = "rgba(0e1230bb)",
      },
    },
  },
})

-- Let the nebulae drift through the terminals.
o.window({ tag = "terminal" }, { opacity = "0.92 0.84" })

-- Zero-g motion: windows float in with a soft overshoot, and the border
-- gradient slowly orbits each window like a sunrise circling a planet.
hl.curve("ffLinear", { type = "bezier", points = { { 0, 0 }, { 1, 1 } } })
hl.curve("ffDrift", { type = "bezier", points = { { 0.05, 0.9 }, { 0.1, 1.05 } } })
hl.curve("ffGlide", { type = "bezier", points = { { 0.22, 1 }, { 0.36, 1 } } })
hl.animation({ leaf = "border", enabled = true, speed = 4, bezier = "ffGlide" })
hl.animation({ leaf = "borderangle", enabled = true, speed = 90, bezier = "ffLinear", style = "loop" })
hl.animation({ leaf = "windows", enabled = true, speed = 4.2, bezier = "ffGlide" })
hl.animation({ leaf = "windowsIn", enabled = true, speed = 4.4, bezier = "ffDrift", style = "popin 76%" })
hl.animation({ leaf = "windowsOut", enabled = true, speed = 3.0, bezier = "ffGlide", style = "popin 86%" })
hl.animation({ leaf = "workspaces", enabled = true, speed = 5.2, bezier = "ffGlide", style = "slidefade 18%" })
hl.animation({ leaf = "specialWorkspace", enabled = true, speed = 4.2, bezier = "ffDrift", style = "slidevert" })
