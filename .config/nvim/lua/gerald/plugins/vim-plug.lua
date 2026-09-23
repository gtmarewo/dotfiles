-- Install Transparent nvim here using Vimscript instead of lua
vim.cmd([[
  call plug#begin(stdpath('config'), 'lua/gerald/plugins')
     Plug 'tribela/transparent.nvim'
  call plug#end()
]])

-- Initialize the transparent.nvim plugin
require('transparent').setup({})
