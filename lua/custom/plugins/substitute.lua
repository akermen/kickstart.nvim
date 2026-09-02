-- https://github.com/gbprod/substitute.nvim
return {
  'gbprod/substitute.nvim',
  event = 'VeryLazy',
  config = function()
    local substitute = require 'substitute'
    local exchange = require 'substitute.exchange'

    substitute.setup {
      on_substitute = nil, -- callback after substitution, useful for highlight-on-yank integration
      yank_substituted_text = false, -- do not yank the replaced text
      preserve_cursor_position = true,
      modifiers = nil,
      highlight_substituted_text = {
        enabled = true,
        timer = 500, -- ms to highlight the substituted region
      },
      range = {
        prefix = 's', -- used for command-line range substitution
        prompt_current_text = false,
        confirm = false,
        complete_word = false,
        subject = nil,
        range = nil,
        suffix = '',
        auto_apply = false,
        cursor_position = 'end',
      },
      exchange = {
        motion = false,
        use_esc_to_cancel = true,
        preserve_cursor_position = false,
      },
    }

    -- Core: replace motion/selection with register content
    vim.keymap.set('n', 'gr', substitute.operator, { desc = 'Replace with register (motion)' })
    vim.keymap.set('n', 'grr', substitute.line, { desc = 'Replace line with register' })
    vim.keymap.set('n', 'gR', substitute.eol, { desc = 'Replace to end of line with register' })
    vim.keymap.set('x', 'gr', substitute.visual, { desc = 'Replace visual selection with register' })

    -- Exchange: swap two text objects
    vim.keymap.set('n', 'gx', exchange.operator, { desc = 'Exchange (motion)' })
    vim.keymap.set('n', 'gxx', exchange.line, { desc = 'Exchange line' })
    vim.keymap.set('x', 'gx', exchange.visual, { desc = 'Exchange visual selection' })
    vim.keymap.set('n', 'gxc', exchange.cancel, { desc = 'Cancel exchange' })
  end,
}
