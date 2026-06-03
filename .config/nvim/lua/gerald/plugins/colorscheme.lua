return {
  "folker/tokyonight.vim",
  priority = 1000,
  config = function ()
    require("tokyonight").setup({
      style = "night"
    })

    vim.cmd("colorscheme tokyonight")
  end
}
