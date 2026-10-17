-- Install blink.cmp using the built-in neovim plugin manager vim.pack
-- Fetch blink.cmp with pre-compiled binaries pinned to a semantic range
vim.pack.add({'saghen/blink.cmp'})

-- Initialize the plugin
require('blink.cmp').setup({
  -- basic configuration (if needed)
  fuzzy = { implementation = "lua" } 
})
