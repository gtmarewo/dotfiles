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
config.initial_cols = 120
config.initial_rows = 40

-- Disable the "Are you sure you want to quit/close?" prompt
config.window_close_confirmation = 'NeverPrompt'

-- Choose a color scheme
config.color_scheme = 'Catppuccin Macchiato'

-- Define the leader key as Tab
config.leader = { key = 'Tab', mods = 'NONE', timeout_milliseconds = 1000 }

config.keys = {
  -- 2. Allow sending an actual Tab by pressing Tab twice
  {
    key = 'Tab',
    mods = 'LEADER',
    action = wezterm.action.SendKey { key = 'Tab' },
  },
  
  -- LEADER + v to split vertically
  {
    key = 'v',
    mods = 'LEADER',
    action = wezterm.action.SplitHorizontal { domain = 'CurrentPaneDomain' },
  },
  -- LEADER + h to split horizontally
  {
    key = 'h',
    mods = 'LEADER',
    action = wezterm.action.SplitVertical { domain = 'CurrentPaneDomain' },
  },
}

-- return the configuration to wezterm
return config
