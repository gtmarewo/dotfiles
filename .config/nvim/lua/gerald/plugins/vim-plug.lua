-- Install transparent-nvim here using vimscript instead of lua
vim.cmd([[
  call plug#begin(stdpath('config'), 'lua/gerald/plugins')
     Plug 'tribela/transparent.nvim'
  call plug#end()
]])

-- Do any further configuration of transparent.nvim here
require('transparent').setup({})
