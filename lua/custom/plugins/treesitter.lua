-- Overrides the nvim-treesitter spec in init.lua. lazy.nvim merges specs for the
-- same plugin and the later import wins, so nothing in init.lua needs to change.
--
-- Why: the `master` branch is archived and its query directives are broken on
-- Neovim 0.12. query_predicates.lua:19 registers them with `{ all = false }`, an
-- option 0.12 removed, so handlers now receive TSNode *lists* where they expect a
-- single node -> `node:range(true)` on a table -> "attempt to call method 'range'".
return {
  'nvim-treesitter/nvim-treesitter',
  branch = 'main',
  lazy = false, -- the `main` branch does not support lazy-loading
  build = ':TSUpdate',
  -- Defining `config` also neutralises the `main = 'nvim-treesitter.configs'` and
  -- `opts` pair still merged in from init.lua: lazy calls config(plugin, opts) and
  -- skips its default opts handler, so the dead `configs` module is never required.
  config = function()
    local ts = require 'nvim-treesitter'

    local want = { 'bash', 'c', 'diff', 'html', 'lua', 'luadoc', 'markdown', 'markdown_inline', 'query', 'vim', 'vimdoc' }

    -- The `main` branch installs parsers by shelling out to `tree-sitter build`
    -- (install.lua:309). Without that CLI on PATH every attempt fails, and since
    -- this runs at startup it would log one build error per parser on every
    -- launch. Homebrew's `tree-sitter` formula is the library only -- the CLI is
    -- the separate `tree-sitter-cli` formula.
    local has_cli = vim.fn.executable 'tree-sitter' == 1

    -- Treat a parser as present if nvim-treesitter installed it OR Neovim ships
    -- it (0.12 bundles c, lua, markdown, markdown_inline, query, vim, vimdoc).
    -- language.add() returns nil + an error rather than throwing when absent.
    local function is_present(lang)
      return vim.tbl_contains(ts.get_installed(), lang) or vim.treesitter.language.add(lang) == true
    end

    if has_cli then
      local missing = vim.tbl_filter(function(lang)
        return not is_present(lang)
      end, want)
      if #missing > 0 then
        ts.install(missing)
      end
    end

    -- Ruby leans on vim's regex highlighting for indent rules; same intent as the
    -- old additional_vim_regex_highlighting / indent.disable pair.
    local also_regex_highlight = { ruby = true }
    local no_treesitter_indent = { ruby = true }

    local function enable(buf, lang, ft)
      if not pcall(vim.treesitter.start, buf, lang) then
        return
      end
      if also_regex_highlight[ft] then
        vim.bo[buf].syntax = 'on'
      end
      if not no_treesitter_indent[ft] then
        vim.bo[buf].indentexpr = "v:lua.require'nvim-treesitter'.indentexpr()"
      end
    end

    vim.api.nvim_create_autocmd('FileType', {
      group = vim.api.nvim_create_augroup('custom-treesitter', { clear = true }),
      callback = function(args)
        local buf, ft = args.buf, args.match
        local lang = vim.treesitter.language.get_lang(ft)
        if not lang then
          return
        end

        if vim.treesitter.language.add(lang) then
          enable(buf, lang, ft)
          return
        end

        -- Stand-in for the old `auto_install`. Gated on the CLI for the same
        -- reason as above: otherwise every unparsed filetype logs a build error.
        if not has_cli or not vim.tbl_contains(ts.get_available(), lang) then
          return
        end
        ts.install(lang):await(function(err)
          if err then
            return
          end
          vim.schedule(function()
            if vim.api.nvim_buf_is_valid(buf) then
              enable(buf, lang, ft)
            end
          end)
        end)
      end,
    })
  end,
}
