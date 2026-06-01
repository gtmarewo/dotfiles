local cmd = vim.cmd
cmd("colorscheme peachpuff")

local opt = vim.opt		-- to be concise
opt.relativenumber = true	-- show relative number for all but the current line
opt.number = true		-- show absolute number for current line

opt.ignorecase = true		-- ignore case when searching
opt.smartcase = true		-- assume case sensitive is wanted if mixed case search is used

opt.termguicolors = true	-- allow for a wider range of colors
opt.background = "dark"		-- dark mode
