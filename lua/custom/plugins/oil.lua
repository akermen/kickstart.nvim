-- https://github.com/stevearc/oil.nvim
return {
  'stevearc/oil.nvim',
  opts = {
    default_file_explorer = true,
    delete_to_trash = true,
    columns = {
      -- "icon",
      -- "permissions",
      "size",
      -- "mtime",
    },
    buf_options = {
      buflisted = false,
      bufhidden = "hide",
    },
  },
  dependencies = { "nvim-tree/nvim-web-devicons" },
}
