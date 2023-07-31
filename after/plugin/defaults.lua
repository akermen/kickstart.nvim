-- ---------------------------------------------------------------------------
-- custom settings
-- ---------------------------------------------------------------------------

vim.o.backup = false
vim.o.cmdheight = 1
vim.o.colorcolumn = "119"
vim.o.confirm = true
vim.o.cursorline = true
vim.o.expandtab = true
vim.o.foldenable = false
vim.o.foldmethod = "indent"
vim.o.history = 1000
vim.o.incsearch = true
vim.o.matchtime = 2
vim.o.mousefocus = true
vim.o.nu = true
vim.o.relativenumber = true
vim.o.scrolloff = 2
vim.o.shiftround = true
vim.o.shiftwidth = 4
vim.o.showmatch = true
vim.o.smartindent = true
vim.o.smarttab = true
vim.o.softtabstop = 4
vim.o.spell = false
vim.o.spelllang = "en_us"
vim.o.splitbelow = true
vim.o.splitright = true
vim.o.swapfile = false
vim.o.tabstop = 4
vim.o.termguicolors = true
vim.o.undolevels = 1000
vim.o.undoreload = 1000
vim.o.visualbell = true
vim.o.wildignore = " *.pyc,*.swp,*.o,*.obj,*/.git/*,*/.DS_Store,*/.vim,*/.virtualenv*,*/__pycache__,*/htmlcov"
vim.o.wrap = false

-- https://neovide.dev/configuration.html
if vim.g.neovide then
    vim.g.neovide_cursor_animation_length = 0
    vim.g.neovide_cursor_trail_size = 0
    vim.o.guifont = "DejaVuSansMono Nerd Font Mono:h15"
end

