-- Pull in the wezterm API
local wezterm = require("wezterm")

-- The following 'table' named config will hold the configuration.
-- A table is the only data structure in lua.
-- Here the table acts as an associative array.
-- It holds key - value pairs.
-- In lua variables are global unless marked local.
-- A local variable is only accessible within a block or scope.
local config = wezterm.config_builder()

-- Apply config choices

-- Choose a Nerd Font and it's size to view icons in the terminal
config.font = wezterm.font("CaskaydiaMono Nerd Font")
config.font_size = 12

-- Remove the tab bar
config.enable_tab_bar = false

-- Enable the title bar
config.window_decorations = "TITLE"

-- Enable window background opacity
config.window_background_opacity = 0.8

-- Set the default width and height for a new wezterm window
config.initial_cols = 100
config.initial_rows = 30

-- Disable the "Are you sure you want to quit/close?" prompt
config.window_close_confirmation = 'NeverPrompt'

-- Choose a color scheme
config.color_scheme = 'Catppuccin Macchiato'
-- return the configuration to wezterm
return config
