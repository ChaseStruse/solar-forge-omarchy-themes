-- Glimmerwood: fairy-light borders, a will-o'-wisp glow, and windows that
-- bounce in like they've just been summoned.
local active_border_color = {
  colors = { "rgba(7ff7c4ff)", "rgba(ffd96aff)", "rgba(ff6f9cff)", "rgba(c39bffff)" },
  angle = 45,
}
local inactive_border_color = "rgba(3a2f6abb)"

hl.config({
  general = {
    gaps_in = 9,
    gaps_out = 18,
    border_size = 3,
    col = {
      active_border = active_border_color,
      inactive_border = inactive_border_color,
    },
  },

  decoration = {
    rounding = 18,
    rounding_power = 2.6,
    dim_inactive = true,
    dim_strength = 0.08,

    shadow = {
      enabled = true,
      range = 32,
      render_power = 3,
      color = "rgba(7ff7c4aa)",
      color_inactive = "rgba(c39bff22)",
    },

    blur = {
      enabled = true,
      size = 8,
      passes = 4,
      noise = 0.025,
      vibrancy = 0.4,
      vibrancy_darkness = 0.2,
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
      gradient_rounding = 18,
      text_color = "rgb(ffe89e)",
      text_color_inactive = "rgba(e2d9efaa)",
      col = {
        active = "rgba(33285edd)",
        inactive = "rgba(141029bb)",
      },
    },
  },
})

-- Let the fireflies shine through the terminals.
o.window({ tag = "terminal" }, { opacity = "0.9 0.82" })

-- Summoning-spell motion: windows pop in with a springy overshoot, and the
-- fairy-light gradient chases itself around every border.
hl.curve("gwLinear", { type = "bezier", points = { { 0, 0 }, { 1, 1 } } })
hl.curve("gwSpring", { type = "bezier", points = { { 0.34, 1.56 }, { 0.64, 1 } } })
hl.curve("gwFlutter", { type = "bezier", points = { { 0.18, 1.25 }, { 0.4, 1 } } })
hl.curve("gwGlide", { type = "bezier", points = { { 0.22, 1 }, { 0.36, 1 } } })
hl.animation({ leaf = "border", enabled = true, speed = 4, bezier = "gwGlide" })
hl.animation({ leaf = "borderangle", enabled = true, speed = 45, bezier = "gwLinear", style = "loop" })
hl.animation({ leaf = "windows", enabled = true, speed = 4.4, bezier = "gwFlutter" })
hl.animation({ leaf = "windowsIn", enabled = true, speed = 4.6, bezier = "gwSpring", style = "popin 60%" })
hl.animation({ leaf = "windowsOut", enabled = true, speed = 3.2, bezier = "gwGlide", style = "popin 80%" })
hl.animation({ leaf = "fade", enabled = true, speed = 4, bezier = "gwGlide" })
hl.animation({ leaf = "layers", enabled = true, speed = 4, bezier = "gwFlutter", style = "popin 85%" })
hl.animation({ leaf = "workspaces", enabled = true, speed = 5, bezier = "gwFlutter", style = "slidefade 20%" })
hl.animation({ leaf = "specialWorkspace", enabled = true, speed = 4.4, bezier = "gwSpring", style = "slidevert" })
