-- Add the catppuccin colors cheme from the given source by
-- calling a function with a single table as the argument
vim.pack.add { { src = "https://github.com/catppuccin/nvim", name = "catppuccin" } }

-- Change the default options and settings
require("catppuccin").setup({
  flavour = "auto",       -- latte, freppe, macchiato, mocha
  background = {
    light = "latte",      -- in light mode 
    dark  = "macchiato",  -- in dark mode
  },
})

-- Load the catppuccin color scheme
vim.cmd("colorscheme catppuccin")

-- Add the lualine plugin
vim.pack.add({
    'https://github.com/nvim-tree/nvim-web-devicons',
    'https://github.com/nvim-lualine/lualine.nvim'
})

-- Start lualine
-- require('lualine').setup()
require('lualine').setup({
  options = {
    -- Use specific rounded characters for the outer edges
    component_separators = { left = '', right = '' },
    section_separators = { left = '', right = '' },
  }
})

