-- Import the wezterm module
local wezterm = require("wezterm")

-- Store the config_builder in a table called config
local config = wezterm.config_builder()

-- Choose Nerd Font
config.font = wezterm.font("CaskaydiaMono Nerd Font")
config.font_size = 11

-- Remove the tab bar
config.enable_tab_bar = false

-- Enable the title bar
config.window_decorations = "TITLE"

return config
