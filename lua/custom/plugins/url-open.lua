-- https://github.com/sontungexpt/url-open
return {
  'sontungexpt/url-open',
  event = 'VeryLazy',
  cmd = 'URLOpenUnderCursor',
  config = function()
    local status_ok, url_open = pcall(require, 'url-open')
    if not status_ok then
      return
    end
    url_open.setup {
      -- default will open url with default browser of your system or you can choose your browser like this
      -- open_app = "micorsoft-edge-stable",
      -- google-chrome, firefox, micorsoft-edge-stable, opera, brave, vivaldi
      open_app = 'default',
      -- If true, only open the URL when the cursor is in the middle of the URL.
      -- If false, open the next URL found from the cursor position,
      -- which means you can open a URL even when the cursor is in front of the URL or in the middle of the URL.
      open_only_when_cursor_on_url = false,
      highlight_url = {
        all_urls = {
          enabled = false,
          fg = '#21d5ff', -- "text" or "#rrggbb"
          -- fg = "text", -- text will set underline same color with text
          bg = nil, -- nil or "#rrggbb"
          underline = false,
        },
        cursor_move = {
          enabled = true,
          -- fg = '#199eff', -- "text" or "#rrggbb"
          fg = '#c1c1c1', -- "text" or "#rrggbb"
          -- fg = "text", -- text will set underline same color with text
          bg = nil, -- nil or "#rrggbb"
          underline = false,
        },
      },
    }
  end,
}
