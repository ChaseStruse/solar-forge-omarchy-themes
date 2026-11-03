-- Solar Ram Studios: forge-hot emerald glow, silver edge light, and a
-- border gradient that burns its way around every window.
local active_border_color = {
  colors = { "rgba(20d99aff)", "rgba(f2f5f4ff)", "rgba(11995dff)", "rgba(5dffc0ff)" },
  angle = 45,
}
local inactive_border_color = "rgba(05542daa)"

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
    rounding = 12,
    rounding_power = 3,
    dim_inactive = true,
    dim_strength = 0.14,

    -- The Solar Ram's eye-glow, wrapped around the focused window.
    shadow = {
      enabled = true,
      range = 30,
      render_power = 3,
      color = "rgba(20d99acc)",
      color_inactive = "rgba(05542d44)",
    },

    blur = {
      enabled = true,
      size = 10,
      passes = 4,
      noise = 0.02,
      vibrancy = 0.35,
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
      indicator_height = 3,
      gradients = true,
      gradient_rounding = 12,
      text_color = "rgb(5dffc0)",
      text_color_inactive = "rgba(d3dbd8aa)",
      col = {
        active = "rgba(0b3d29dd)",
        inactive = "rgba(020906bb)",
      },
    },
  },
})

-- Let the emerald light bleed through the terminals.
o.window({ tag = "terminal" }, { opacity = "0.92 0.84" })

-- Forged motion: windows strike in with a hammer-blow overshoot, workspaces
-- glide like molten metal, and the gradient circles every border.
hl.curve("forgeLinear", { type = "bezier", points = { { 0, 0 }, { 1, 1 } } })
hl.curve("forgeSnap", { type = "bezier", points = { { 0.16, 1 }, { 0.3, 1 } } })
hl.curve("forgeStrike", { type = "bezier", points = { { 0.2, 0.9 }, { 0.25, 1.12 } } })
hl.curve("forgeMolten", { type = "bezier", points = { { 0.22, 1 }, { 0.36, 1 } } })
hl.animation({ leaf = "border", enabled = true, speed = 3.2, bezier = "forgeSnap" })
hl.animation({ leaf = "borderangle", enabled = true, speed = 40, bezier = "forgeLinear", style = "loop" })
hl.animation({ leaf = "windows", enabled = true, speed = 3.4, bezier = "forgeSnap" })
hl.animation({ leaf = "windowsIn", enabled = true, speed = 3.0, bezier = "forgeStrike", style = "popin 80%" })
hl.animation({ leaf = "windowsOut", enabled = true, speed = 2.2, bezier = "forgeSnap", style = "popin 88%" })
hl.animation({ leaf = "fade", enabled = true, speed = 3.6, bezier = "forgeMolten" })
hl.animation({ leaf = "layers", enabled = true, speed = 3.6, bezier = "forgeStrike", style = "popin 88%" })
hl.animation({ leaf = "workspaces", enabled = true, speed = 4.2, bezier = "forgeMolten", style = "slidefade 15%" })
hl.animation({ leaf = "specialWorkspace", enabled = true, speed = 3.2, bezier = "forgeStrike", style = "slidevert" })
