-- https://github.com/f-person/git-blame.nvim
return {
  'f-person/git-blame.nvim',
  init = function()
    vim.g.gitblame_message_template = '<author> • <date> • <summary> • <sha>'
    vim.g.gitblame_date_format = '%r'
    vim.g.gitblame_enabled = 0
    vim.g.gitblame_delay = 400
  end,
}
