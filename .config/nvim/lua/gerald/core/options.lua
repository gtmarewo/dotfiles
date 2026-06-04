local opt = vim.opt		            -- to be concise
opt.relativenumber = true	        -- show relative number for all but the current line
opt.number = true		            -- show absolute number for current line

opt.ignorecase = true		        -- ignore case when searching
opt.smartcase = true		        -- assume case sensitive is wanted if mixed case search is used

opt.termguicolors = true	        -- allow for a wider range of colors
opt.background = "dark"		        -- dark mode

local cmd = vim.cmd

cmd("let g:netrw_liststyle = 3")    -- tree view from the file explorer

-- Make backgrounds transparent
vim.api.nvim_set_hl(0, "Normal", { bg = "NONE" })
vim.api.nvim_set_hl(0, "NormalFloat", { bg = "NONE" })
vim.api.nvim_set_hl(0, "FloatBorder", { bg = "NONE" })
vim.api.nvim_set_hl(0, "Pmenu", { bg = "NONE" })

-- tabs & indentation
opt.tabstop = 2 		            -- 2 spaces for tabs (prettier default)
opt.shiftwidth = 2 		            -- 2 spaces for indent width
opt.expandtab = true 		        -- expand tab to spaces
opt.autoindent = true 		        -- copy indent from current line when starting new one
