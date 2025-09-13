-- https://github.com/voldikss/vim-browser-search
-- use { "voldikss/vim-browser-search", event = "VimEnter" }
return {
  'voldikss/vim-browser-search',
  init = function()
    vim.g.browser_search_default_engine = 'google'
  end,
}
