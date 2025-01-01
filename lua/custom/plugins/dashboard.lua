-- https://github.com/folke/snacks.nvim
-- lazy.nvim
return {
  'folke/snacks.nvim',
  opts = {
    dashboard = {

      sections = {
        { section = 'header' },
        { icon = ' ', title = 'Menu', section = 'keys', indent = 2, padding = 1 },
        { icon = ' ', title = 'Recent Files', section = 'recent_files', enabled = vim.g.neovide ~= nil, indent = 2, padding = 1 },
        -- { icon = ' ', title = 'Projects', section = 'projects', indent = 2, padding = 1 },
        {
          icon = ' ',
          title = 'Git',
          section = 'terminal',
          enabled = function()
            return require('snacks').git.get_root() ~= nil
          end,
          cmd = 'git status --short --branch --renames',
          height = 5,
          padding = 1,
          ttl = 5 * 60,
          indent = 2,
        },
        -- { section = 'startup' },
      },
    },
  },
}
