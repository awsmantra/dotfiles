-- Pull in the wezterm API
local wezterm = require("wezterm")

-- This will hold the configuration.
local config = wezterm.config_builder()

-- This is where you actually apply your config choices

-- For example, changing the color scheme:
-- config.color_scheme = "AdventureTime"
-- config.color_scheme = "One Dark (Gogh)"
-- config.font = wezterm.font("JetBrains Mono")
--
config.font = wezterm.font("MesloLGM Nerd Font Mono")
config.font_size = 16
-- and finally, return the configuration to wezterm
config.use_fancy_tab_bar = true
-- config.color_scheme = "Catppuccin Frappe" -- or Macchiato, Frappe, Latte

--config.color_scheme = "Catppuccin Macchiato" -- or Macchiato, Frappe, Latte
config.cursor_thickness = "2"
config.keys = {
  { key = '=', mods = 'CTRL', action = wezterm.action.IncreaseFontSize },
}

-- config.window_background_image = '/Users/rakeshsanghvi/Documents/wallpaper/vladstudio_chirp_chirp_1920x1080.jpg'

config.window_background_image = '/Users/rakeshsanghvi/Documents/wallpaper/vladstudio_loneliest_house_night_1920x1080.jpg'
-- config.window_background_image = '/Users/rakeshsanghvi/Documents/wallpaper/vladstudio_flow_7_1920x1080.jpg '

config.window_background_image_hsb = {
  -- Darken the background image by reducing it to 1/3rd
  brightness = 0.3,

  -- You can adjust the hue by scaling its value.
  -- a multiplier of 1.0 leaves the value unchanged.
  hue = 1.0,

  -- You can adjust the saturation also.
  saturation = 1.0,
}

-- config.window_background_opacity = 0.5
-- config.window_background_image = "/Users/rakeshsanghvi/Documents/wallpaper/vladstudio_chirp_chirp_1920x1080.jpg"


return config