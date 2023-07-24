-- https://github.com/lifepillar/vim-solarized8/tree/neovim
return {
  'lifepillar/vim-solarized8',
  branch = 'neovim',
  config = function()
    vim.cmd.colorscheme "solarized8"
    vim.o.background = "dark"
  end
}
