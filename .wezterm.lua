-- Pull in the wezterm API
local wezterm = require("wezterm")

-- The following 'table' named config will hold the configuration.
-- A table is the only data structure in lua.
-- Here the table acts as an associative array.
-- It holds key - value pairs.
-- In lua variables are global unless marked local.
-- A local variable is only accessible within a block or scope.
local config = wezterm.config_builder()

local act = wezterm.action

-- Apply config choices

-- Choose a Nerd Font and it's size to view icons in the terminal
config.font = wezterm.font("CaskaydiaMono Nerd Font")
config.font_size = 12

-- Remove the tab bar
config.enable_tab_bar = false

-- Enable the title bar
config.window_decorations = "NONE"

-- Enable window background opacity
config.window_background_opacity = 0.8

-- Set the default width and height for a new wezterm window
config.initial_cols = 90
config.initial_rows = 30

-- hide_tab_bar_if_only_one_tab = true

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
    action = act.SendKey { key = 'Tab' },
  },
  
  -- LEADER + v to split horizontally
  {
    key = '\\',
    mods = 'LEADER',
    action = act.SplitHorizontal { domain = 'CurrentPaneDomain' },
  },
  -- LEADER + h to split vertically
  {
    key = '-',
    mods = 'LEADER',
    action = act.SplitVertical { domain = 'CurrentPaneDomain' },
  },
  -- Navigate between panes using Vim-style directions (Leader + h/j/k/l)
  { 
    key = 'h',
    mods = 'LEADER',
    action = act.ActivatePaneDirection('Left') },
  { 
    key = 'j',
    mods = 'LEADER',
    action = act.ActivatePaneDirection('Down') },
  { 
    key = 'k',
    mods = 'LEADER',
    action = act.ActivatePaneDirection('Up') },
  { 
    key = 'l',
    mods = 'LEADER',
    action = act.ActivatePaneDirection('Right') },
}

-- return the configuration to wezterm
return config
