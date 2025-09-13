-- ---------------------------------------------------------------------------
-- keymaps
-- ---------------------------------------------------------------------------

-- fix conflicst with the original mappings
local funcLWF = function() print(vim.inspect(vim.lsp.buf.list_workspace_folders())) end
vim.keymap.set('n', '<leader>wf',    funcLWF,                                     { desc = "LSP: [W]orkspace [F]olders"          })
vim.keymap.set('n', '<leader>dm',    vim.diagnostic.open_float,                   { desc = '[D]iagnostic [M]essage'              })
vim.keymap.set('n', '<leader>dl',    vim.diagnostic.setloclist,                   { desc = '[D]iagnostic [L]ist'                 })

-- buffers
vim.keymap.set("n", "<leader>bw",    "<cmd>w<CR>",                                { desc = "[B]uffer [W]rite",    noremap = true })
vim.keymap.set("n", "<leader>bc",    ":bd<CR>",                                   { desc = "[B]uffer [C]leanup",  noremap = true })
vim.keymap.set("n", "<leader>bd",    ":bd!<CR>",                                  { desc = "[B]uffer [D]estroy",  noremap = true })

-- switching
vim.keymap.set("n", "<Tab>",         "<C-W>w",                                    { desc = "Switch windows",      noremap = true })
vim.keymap.set("n", "<S-Tab>",       "<C-W>W",                                    { desc = "Switch windows",      noremap = true })
vim.keymap.set("n", "<leader><Tab>", "<C-^>",                                     { desc = "Switch buffers",      noremap = true })

-- tabs
vim.keymap.set("n", "<leader>tc",    ":tabnew<CR>",                               { desc = "[T]ab [C]reate",      noremap = true })
vim.keymap.set("n", "<leader>tq",    ":tabclose<CR>",                             { desc = "[T]ab [Q]uit",        noremap = true })
vim.keymap.set("n", "<leader>tn",    ":tabnext<CR>",                              { desc = "[T]ab [N]ext",        noremap = true })
vim.keymap.set("n", "<leader>tp",    ":tabprevious<CR>",                          { desc = "[T]ab [P]revious",    noremap = true })
vim.keymap.set("n", "<leader>ts",    ":tabfirst<CR>",                             { desc = "[T]ab [S]tart",       noremap = true })
vim.keymap.set("n", "<leader>te",    ":tablast<CR>",                              { desc = "[T]ab [E]end",        noremap = true })
vim.keymap.set("n", "<leader>tl",    ":tabm -1<CR>",                              { desc = "[T]ab [L]eft",        noremap = true })
vim.keymap.set("n", "<leader>tr",    ":tabm +1<CR>",                              { desc = "[T]ab [R]ight",       noremap = true })
vim.keymap.set("n", "<leader>tF",    ":tabm 0<CR>",                               { desc = "[T]ab [F]irst",       noremap = true })
vim.keymap.set("n", "<leader>tL",    ":tabm<CR>",                                 { desc = "[T]ab [L]ast",        noremap = true })
vim.keymap.set("n", "<leader>to",    ":tabonly<CR>",                              { desc = "[T]ab [O]nly",        noremap = true })
vim.keymap.set("n", "<leader>ts",    ":tab split<CR>",                            { desc = "[T]ab [S]plit",       noremap = true })
vim.keymap.set("n", "<leader>tb",    ":tab ball<CR>",                             { desc = "[T]ab [B]uffers",     noremap = true })
vim.keymap.set("n", "<leader>1",     "1gt",                                       { desc = "[T]ab [1]",           noremap = true })
vim.keymap.set("n", "<leader>2",     "2gt",                                       { desc = "[T]ab [2]",           noremap = true })
vim.keymap.set("n", "<leader>3",     "3gt",                                       { desc = "[T]ab [3]",           noremap = true })
vim.keymap.set("n", "<leader>4",     "4gt",                                       { desc = "[T]ab [4]",           noremap = true })
vim.keymap.set("n", "<leader>5",     "5gt",                                       { desc = "[T]ab [5]",           noremap = true })
vim.keymap.set("n", "<leader>6",     "6gt",                                       { desc = "[T]ab [6]",           noremap = true })
vim.keymap.set("n", "<leader>7",     "7gt",                                       { desc = "[T]ab [7]",           noremap = true })
vim.keymap.set("n", "<leader>8",     "8gt",                                       { desc = "[T]ab [8]",           noremap = true })

-- NeoTree
vim.keymap.set("n", "<leader>n",     ":Neotree reveal_force_cwd toggle<CR>",      { desc = "[N]eotree [T]oggle",  noremap = true })
-- vim.keymap.set("n", "<leader>nf", ":Neotree reveal_force_cwd float<CR>",       { desc = "[N]eotree [F]loat",   noremap = true })
-- vim.keymap.set("n", "<leader>nb", ":Neotree toggle show buffers right<CR>",    { desc = "[N]eotree [B]uffers", noremap = true })
-- vim.keymap.set("n", "<leader>ng", ":Neotree float git_status<CR>",             { desc = "[N]eotree [G]it",     noremap = true })

-- windows
vim.keymap.set("n", "<leader>wv",    "<C-W>v",                                    { desc = "[W]indow [V]ertical", noremap = true })
vim.keymap.set("n", "<leader>wp",    "<C-W>s",                                    { desc = "[W]indow [P]arallel", noremap = true })
vim.keymap.set("n", "<leader>wq",    "<C-W>c",                                    { desc = "[W]indow [Q]uit",     noremap = true })
vim.keymap.set("n", "<leader>we",    "<C-W>=",                                    { desc = "[W]indow [E]qual",    noremap = true })
vim.keymap.set("n", "<leader>wx",    "<C-W>x",                                    { desc = "[W]indow [X]change",  noremap = true })
vim.keymap.set("n", "<leader>wo",    "<C-W>r",                                    { desc = "[W]indow [O]rder",    noremap = true })
vim.keymap.set("n", "<leader>wh",    "<C-W><C-H>",                                { desc = "[W]indow left",       noremap = true })
vim.keymap.set("n", "<leader>wj",    "<C-W><C-J>",                                { desc = "[W]indow down",       noremap = true })
vim.keymap.set("n", "<leader>wk",    "<C-W><C-K>",                                { desc = "[W]indow up",         noremap = true })
vim.keymap.set("n", "<leader>wl",    "<C-W><C-L>",                                { desc = "[W]indow right",      noremap = true })
vim.keymap.set("n", "<leader>ww",    ":vertical resize +5<CR>",                   { desc = "[W]indow [W]ide",     noremap = true })
vim.keymap.set("n", "<leader>wn",    ":vertical resize -5<CR>",                   { desc = "[W]indow [N]arrow",   noremap = true })
vim.keymap.set("n", "<leader>wu",    ":resize +5<CR>",                            { desc = "[W]indow [U]p",       noremap = true })
vim.keymap.set("n", "<leader>wd",    ":resize -5<CR>",                            { desc = "[W]indow [D]own",     noremap = true })
vim.keymap.set("n", "<leader>wz",    vim.fn['zoom#toggle'],                       { desc = "[W]indow [Z]oom",     noremap = true })
vim.keymap.set("n", "<leader>z",     vim.fn['zoom#toggle'],                       { desc = "[Z]oom Window",       noremap = true })

-- spell checking
vim.keymap.set("n", "<leader>st",    ":setlocal spell!<CR>",                      { desc = "[S]pell [T]oggle",    noremap = true })
vim.keymap.set("n", "<leader>sn",    "]s",                                        { desc = "[S]pell [N]ext",      noremap = true })
vim.keymap.set("n", "<leader>sp",    "[s",                                        { desc = "[S]pell [P]revious",  noremap = true })
-- vim.keymap.set("n", "<leader>sS", "z=",                                        { desc = "[S]pell [S]uggest",   noremap = true })
vim.keymap.set('n', '<leader>ss',    require('telescope.builtin').spell_suggest,  { desc = '[S]pell [S]uggest',   noremap = true })
vim.keymap.set("n", "<leader>sa",    "1z=<CR>",                                   { desc = "[S]pell [A]ccept",    noremap = true })
vim.keymap.set("n", "<leader>sc",    "zg",                                        { desc = "[S]pell [C]orrect",   noremap = true })
vim.keymap.set("n", "<leader>si",    "zw",                                        { desc = "[S]pell [I]ncorrect", noremap = true })

-- diff
vim.keymap.set("n", "<leader>dw",    ":windo diffthis<CR>",                       { desc = "[D]iff [W]indow",     noremap = true })
vim.keymap.set("n", "<leader>dq",    ":diffoff!<CR>",                             { desc = "[D]iff [Q]uit",       noremap = true })
vim.keymap.set("n", "<leader>dn",    "]c",                                        { desc = "[D]iff [N]ext",       noremap = true })
vim.keymap.set("n", "<leader>dp",    "[c",                                        { desc = "[D]iff [P]revious",   noremap = true })

-- search
vim.keymap.set('n', '<leader>sC',    require('telescope.builtin').commands,       { desc = '[S]earch [C]ommand',  noremap = true })
vim.keymap.set('n', '<leader>sH',    require('telescope.builtin').search_history, { desc = '[S]earch [H]istory',  noremap = true })
vim.keymap.set('n', '<leader>sR',    require('telescope.builtin').registers,      { desc = '[S]earch [R]egister', noremap = true })
vim.keymap.set('n', '<leader>sm',    require('telescope.builtin').marks,          { desc = '[S]earch [M]ark',     noremap = true })
vim.keymap.set('n', '<leader>sk',    require('telescope.builtin').keymaps,        { desc = '[S]earch [K]eymap',   noremap = true })
vim.keymap.set('n', '<leader>so',    require('telescope.builtin').vim_options,    { desc = '[S]earch [O]ption',   noremap = true })
vim.keymap.set('n', '<leader>sj',    require('telescope.builtin').jumplist,       { desc = '[S]earch [J]ump',     noremap = true })
vim.keymap.set('n', '<leader>sr',    require('telescope.builtin').resume,         { desc = '[S]earch [R]esume',   noremap = true })
vim.keymap.set('n', '<leader>hh',    ":set hlsearch!<CR>",                        { desc = '[H]ighlight [H]it',   noremap = true })
vim.keymap.set('n', '<leader>o',     require('telescope.builtin').find_files,     { desc = '[O]pen Files',        noremap = true })
vim.keymap.set('n', '<leader>f',     require('telescope.builtin').live_grep,      { desc = '[F]ind in files',     noremap = true })
vim.keymap.set('n', '<leader>ws',    ':BrowserSearch<CR>',                        { desc = '[W]eb [S]earch',      noremap = true })
vim.keymap.set('v', '<leader>ws',    ':BrowserSearch<CR>',                        { desc = '[W]eb [S]earch',      noremap = true })
vim.keymap.set('n', '<leader>wt',    ':BrowserSearch ',                           { desc = '[W]eb Search [T]ext', noremap = true })

-- Git
vim.keymap.set('n', '<leader>gg',    ":G<CR>",                                    { desc = '[G]it',               noremap = true })
vim.keymap.set('n', '<leader>gs',    require('telescope.builtin').git_status,     { desc = '[G]it [S]tatus',      noremap = true })
vim.keymap.set('n', '<leader>gS',    require('telescope.builtin').git_stash,      { desc = '[G]it [S]tash',       noremap = true })
vim.keymap.set('n', '<leader>gc',    require('telescope.builtin').git_commits,    { desc = '[G]it All [C]ommits', noremap = true })
vim.keymap.set('n', '<leader>gC',    require('telescope.builtin').git_bcommits,   { desc = '[G]it [C]ommits',     noremap = true })
vim.keymap.set('n', '<leader>gb',    require('telescope.builtin').git_branches,   { desc = '[G]it [B]ranches',    noremap = true })
vim.keymap.set('n', '<leader>gB',    ":Git blame<CR>",                            { desc = '[G]it [B]lame',       noremap = true })
vim.keymap.set('n', '<leader>gw',    ":GBrowse<CR>",                              { desc = '[G]it Open [W]eb',    noremap = true })
vim.keymap.set('n', '<leader>glb',   ":GitBlameToggle<CR>",                       { desc = '[G]it [L]ine [B]lame',noremap = true })
vim.keymap.set('n', '<leader>glw',   ":GitBlameOpenCommitURL<CR>",                { desc = '[G]it [L]ine [W]eb',  noremap = true })
vim.keymap.set('n', '<leader>gls',   ":GitBlameCopySHA<CR>",                      { desc = '[G]it [L]ine [S]HA',  noremap = true })
vim.keymap.set('n', '<leader>gn',    ":Gitsign next_hunk<CR>",                    { desc = '[G]it [N]ext Hunk',   noremap = true })
vim.keymap.set('n', '<leader>gp',    ":Gitsign prev_hunk<CR>",                    { desc = '[G]it [P]rev Hunk',   noremap = true })
vim.keymap.set('n', '<leader>gv',    ":Gitsign preview_hunk<CR>",                 { desc = '[G]it [V]iew Hunk',   noremap = true })
vim.keymap.set('n', '<leader>glB',   ":Gitsign blame_line<CR>",                   { desc = '[G]it [L]ine [B]lame',noremap = true })
-- map('n', '<leader>hs', gitsigns.stage_hunk)
-- map('n', '<leader>hr', gitsigns.reset_hunk)
-- map('v', '<leader>hs', function() gitsigns.stage_hunk {vim.fn.line('.'), vim.fn.line('v')} end)
-- map('v', '<leader>hr', function() gitsigns.reset_hunk {vim.fn.line('.'), vim.fn.line('v')} end)
-- map('n', '<leader>hS', gitsigns.stage_buffer)
-- map('n', '<leader>hu', gitsigns.undo_stage_hunk)
-- map('n', '<leader>hR', gitsigns.reset_buffer)
-- map('n', '<leader>hp', gitsigns.preview_hunk)
-- map('n', '<leader>hb', function() gitsigns.blame_line{full=true} end)
-- map('n', '<leader>tb', gitsigns.toggle_current_line_blame)
-- map('n', '<leader>hd', gitsigns.diffthis)
-- map('n', '<leader>hD', function() gitsigns.diffthis('~') end)
-- map('n', '<leader>td', gitsigns.toggle_deleted)
-- map({'o', 'x'}, 'ih', ':<C-U>Gitsigns select_hunk<CR>')

-- easy-align
vim.keymap.set('x', '<leader>ea',    ':EasyAlign',                                { desc = '[E]asy [A]lign',      noremap = true })
vim.keymap.set('n', '<leader>ea',    ':EasyAlign',                                { desc = '[E]asy [A]lign',      noremap = true })

-- markdown preview
vim.keymap.set('n', '<leader>mp',    ':MarkdownPreview<CR>',                      { desc = '[M]arkdown [P]lay',   noremap = true })
vim.keymap.set('n', '<leader>ms',    ':MarkdownPreviewStop<CR>',                  { desc = '[M]arkdown [S]top',   noremap = true })
vim.keymap.set('n', '<leader>mt',    ':MarkdownPreviewToggle<CR>',                { desc = '[M]arkdown [T]oggle', noremap = true })

-- quickfix
vim.keymap.set("n", "<Space>qo",     require('telescope.builtin').quickfix,       { desc = '[Q]uickfix [O]pen',   noremap = true })
vim.keymap.set("n", "<Space>qO",     ":copen<CR>",                                { desc = '[Q]uickfix [O]pen',   noremap = true })
vim.keymap.set("n", "<Space>qq",     ":cclose<CR>",                               { desc = '[Q]uickfix [Q]uit',   noremap = true })
vim.keymap.set("n", "<Space>qn",     ":cnext<CR>",                                { desc = '[Q]uickfix [N]ext',   noremap = true })
vim.keymap.set("n", "<Space>qp",     ":cprev<CR>",                                { desc = '[Q]uickfix [P]rev',   noremap = true })
vim.keymap.set("n", "<Space>qf",     ":cfirst<CR>",                               { desc = '[Q]uickfix [F]irst',  noremap = true })
vim.keymap.set("n", "<Space>ql",     ":clast<CR>",                                { desc = '[Q]uickfix [L]ast',   noremap = true })
vim.keymap.set("n", "<Space>qg",     ":cc<CR>",                                   { desc = '[Q]uickfix [G]o to',  noremap = true })

-- location-list
vim.keymap.set("n", "<Space>lo",     ":lopen<CR>",                                { desc = '[L]ocation [O]pen',   noremap = true })
vim.keymap.set("n", "<Space>lq",     ":lclose<CR>",                               { desc = '[L]ocation [Q]uit',   noremap = true })
vim.keymap.set("n", "<Space>ln",     ":lnext<CR>",                                { desc = '[L]ocation [N]ext',   noremap = true })
vim.keymap.set("n", "<Space>lp",     ":lprev<CR>",                                { desc = '[L]ocation [P]rev',   noremap = true })
vim.keymap.set("n", "<Space>lf",     ":lfirst<CR>",                               { desc = '[L]ocation [F]irst',  noremap = true })
vim.keymap.set("n", "<Space>ll",     ":llast<CR>",                                { desc = '[L]ocation [L]ast',   noremap = true })
vim.keymap.set("n", "<Space>lg",     ":ll<CR>",                                   { desc = '[L]ocation [G]o to',  noremap = true })

-- misc
vim.keymap.set("n", "Q", "<nop>")
vim.keymap.set("n", "<leader>me",    "<cmd>!chmod +x %<CR>",                      { desc = '[M]ake [E]xecutable', silent = true  })
vim.keymap.set("n", "<leader>mR",    "<cmd>CellularAutomaton make_it_rain<CR>",   { desc = '[M]ake it [R]ain',    noremap = true })
vim.keymap.set("n", "<leader>mG",    "<cmd>CellularAutomaton game_of_life<CR>",   { desc = '[M]ake it [G]ame',    noremap = true })
vim.keymap.set('n', '<leader>mP',    require('telescope.builtin').planets,        { desc = '[M]ake [P]lanets',    noremap = true })
vim.keymap.set("n", "<leader>mb",    [["_d]],                                     { desc = '[M]ove to [B]lack',   noremap = true })
vim.keymap.set("x", "<leader>pk",    [["_dP]],                                    { desc = '[P]aste but [K]eep',  noremap = true })
vim.keymap.set("n", "J",             "mzJ`z",                                     { desc = '[J]oin from Cursor',  noremap = true })
vim.keymap.set("v", "J",             ":m '>+1<CR>gv=gv",                          { desc = 'Move block of lines', noremap = true })
vim.keymap.set("v", "K",             ":m '<-2<CR>gv=gv",                          { desc = 'Move block of lines', noremap = true })
vim.keymap.set("n", "<C-d>",         "<C-d>zz",                                   { desc = 'Page down centered',  noremap = true })
vim.keymap.set("n", "<C-u>",         "<C-u>zz",                                   { desc = 'Page up centered',    noremap = true })
-- vim.keymap.set("n", "n",          "nzzzv",                                     { desc = 'Next hit centered',   noremap = true })
-- vim.keymap.set("n", "N",          "Nzzzv",                                     { desc = 'Prev hit centered',   noremap = true })
vim.keymap.set("v", "y",             "myy`y",                                     { desc = "[Y]ank from cursor",  noremap = true })
vim.keymap.set("v", "Y",             "myY`y",                                     { desc = "[Y]ank from cursor",  noremap = true })
vim.keymap.set('n', 'x',             '"_x',                                       { desc = "Delete",              noremap = true })
vim.keymap.set('n', '+',             '<C-a>',                                     { desc = "Increment",           noremap = true })
vim.keymap.set('n', '-',             '<C-x>',                                     { desc = "Decrement",           noremap = true })
vim.keymap.set('v', '+',             '<C-a>',                                     { desc = "Increment",           noremap = true })
vim.keymap.set('v', '-',             '<C-x>',                                     { desc = "Decrement",           noremap = true })
-- vim.keymap.set('n', '<leader>fn',    ":echo expand('%:t')<CR>",                { desc = "[F]ile [N]ame",       noremap = true })
-- -- vim.keymap.set('n', '<leader>fp', ':file<CR>',                              { desc = "[F]ile [P]ath",       noremap = true })
-- vim.keymap.set('n', '<leader>fp',    ':echo @%<CR>',                           { desc = "[F]ile [P]ath",       noremap = true })
-- vim.keymap.set('n', '<leader>fr',    ":echo expand('%:p')<CR>",                { desc = "[F]ile [R]oot",       noremap = true })
vim.keymap.set("n", "<leader>tw",    ":set wrap!<cr>",                            { desc = '[T]ext [W]rap',       noremap = true })

-- undo
vim.keymap.set("n", "<leader>ut",    ":UndotreeToggle<CR>",                       { desc = '[U]ndotree [T]oggle', noremap = true })
vim.keymap.set("n", "<leader>uf",    ":UndotreeFocus<CR>",                        { desc = '[U]ndotree [F]ocus',  noremap = true })

-- gui app specific maps
if vim.g.neovide then
vim.keymap.set('n', '<D-v>',         '"+p',                                       { desc = "Paste",               noremap = true })
vim.keymap.set('i', '<D-v>',         '<c-r>+',                                    { desc = "Paste",               noremap = true })
vim.keymap.set('c', '<D-v>',         '<c-r>+',                                    { desc = "Paste",               noremap = true })
vim.keymap.set('v', '<D-c>',         '"+y',                                       { desc = "Yank",                noremap = true })
vim.keymap.set('n', '<D-s>',         ':w<CR>',                                    { desc = "Save",                noremap = true })
vim.keymap.set('i', '<D-s>',         '<ESC>:w<CR>',                               { desc = "Save",                noremap = true })
end

-- ollama
vim.keymap.set('n', '<leader>ai',    ':Gen<CR>',                                  { desc = '[A][I]',              noremap = true })
vim.keymap.set('v', '<leader>ai',    ':Gen<CR>',                                  { desc = '[A][I]',              noremap = true })
vim.keymap.set('n', '<leader>ag',    ':Gen Generate<CR>',                         { desc = '[A]I [G]enerate',     noremap = true })
vim.keymap.set('n', '<leader>ac',    ':Gen Chat<CR>',                             { desc = '[A]I [C]hat',         noremap = true })
vim.keymap.set('v', '<leader>ao',    ':Gen Summarize<CR>',                        { desc = '[A]I [O]utline',      noremap = true })
vim.keymap.set('v', '<leader>aa',    ':Gen Ask<CR>',                              { desc = '[A]I [A]ask',         noremap = true })
vim.keymap.set('v', '<leader>as',    ':Gen Enhance_Grammar_Spelling<CR>',         { desc = '[A]I [S]spelling',    noremap = true })
vim.keymap.set('v', '<leader>aw',    ':Gen Enhance_Wording<CR>',                  { desc = '[A]I [W]ording',      noremap = true })
vim.keymap.set('v', '<leader>ar',    ':Gen Review_Code<CR>',                      { desc = '[A]I [R]eview Code',  noremap = true })
vim.keymap.set('v', '<leader>ae',    ':Gen Enhance_Code<CR>',                     { desc = '[A]I [E]nhance Code', noremap = true })
vim.keymap.set('v', '<leader>ab',    ':Gen Make_Concise<CR>',                     { desc = '[A]I [B]rief',        noremap = true })
vim.keymap.set('v', '<leader>al',    ':Gen Make_List<CR>',                        { desc = '[A]I [L]ist',         noremap = true })
vim.keymap.set('v', '<leader>at',    ':Gen Make_Table<CR>',                       { desc = '[A]I [T]able',        noremap = true })
vim.keymap.set('v', '<leader>at',    ':Gen Make_Table<CR>',                       { desc = '[A]I [T]able',        noremap = true })
vim.keymap.set('v', '<leader>am',    ':Gen Change<CR>',                           { desc = '[A]I [M]odify',       noremap = true })
vim.keymap.set('v', '<leader>av',    ':Gen Change_Code<CR>',                      { desc = '[A]I [V]ariety Code', noremap = true })
vim.keymap.set('v', '<leader>af',    ':Gen Fix_Code<CR>',                         { desc = '[A]I [F]ix Code',     noremap = true })

-- open url
vim.keymap.set("n", "gx",            '<esc>:URLOpenUnderCursor<cr>',              { desc = '[G]oto [X]rl',        noremap = true })
vim.keymap.set('n', '<leader>gt',    '<esc>:URLOpenUnderCursor<cr>',              { desc = '[G]o [T]o',           noremap = true })
vim.keymap.set('n', '<leader>us',    '<esc>:URLOpenHighlightAll<cr>',             { desc = '[U]rl [S]how All',    noremap = true })
vim.keymap.set('n', '<leader>uc',    '<esc>:URLOpenHighlightAllClear<cr>',        { desc = '[U]rl [C]lear All',   noremap = true })

-- vim.keymap.set("n", "<leader>do",    "<CMD>Oil<CR>",                           { desc = "[D]irectory [O]pen",  noremap = true })

-- cmp: fix for <CR> to confirm instead of <C-y> and <TAB> to next item
local cmp = require("cmp")
cmp.setup({
  mapping = {
    ["<CR>"] = cmp.mapping(
      function(fallback)
        if cmp.visible() then
          cmp.confirm({ select = true })
        else
          fallback()
        end
      end, { "i" }),
    ["<TAB>"] = cmp.mapping(
      function(fallback)
        if cmp.visible() then
          cmp.select_next_item()
        else
          fallback()
        end
      end, { "i" })
  }
})

-- harpoon
local harpoon = require("harpoon")
harpoon:setup()

-- to use Telesopce as UI (does not allow reordering the list)
local conf = require("telescope.config").values
local function toggle_telescope(harpoon_files)
    local file_paths = {}
    for _, item in ipairs(harpoon_files.items) do
        table.insert(file_paths, item.value)
    end

    require("telescope.pickers").new({}, {
        prompt_title = "Harpoon",
        finder = require("telescope.finders").new_table({
            results = file_paths,
        }),
        previewer = conf.file_previewer({}),
        sorter = conf.generic_sorter({}),
    }):find()
end

local functionHarpoonToggle1 = function() harpoon.ui:toggle_quick_menu(harpoon:list()) end
local functionHarpoonToggle2 = function() toggle_telescope(harpoon:list()) end
vim.keymap.set("n", "<leader>ho",    functionHarpoonToggle1,                      { desc = '[H]arpoon [O]pen',    noremap = true })
vim.keymap.set("n", "<leader>ht",    functionHarpoonToggle2,                      { desc = '[H]arpoon [T[oggle',  noremap = true })
vim.keymap.set("n", "<leader>ha",    function() harpoon:list():add() end,         { desc = '[H]arpoon [A]dd',     noremap = true })
vim.keymap.set("n", "<leader>h1",    function() harpoon:list():select(1) end,     { desc = '[H]arpoon [1]',       noremap = true })
vim.keymap.set("n", "<leader>h2",    function() harpoon:list():select(2) end,     { desc = '[H]arpoon [2]',       noremap = true })
vim.keymap.set("n", "<leader>h3",    function() harpoon:list():select(3) end,     { desc = '[H]arpoon [3]',       noremap = true })
vim.keymap.set("n", "<leader>h4",    function() harpoon:list():select(4) end,     { desc = '[H]arpoon [4]',       noremap = true })
vim.keymap.set("n", "<leader>h5",    function() harpoon:list():select(5) end,     { desc = '[H]arpoon [5]',       noremap = true })
vim.keymap.set("n", "<leader>h6",    function() harpoon:list():select(6) end,     { desc = '[H]arpoon [6]',       noremap = true })
vim.keymap.set("n", "<leader>h7",    function() harpoon:list():select(7) end,     { desc = '[H]arpoon [7]',       noremap = true })
vim.keymap.set("n", "<leader>h8",    function() harpoon:list():select(8) end,     { desc = '[H]arpoon [8]',       noremap = true })
vim.keymap.set("n", "<leader>h9",    function() harpoon:list():select(9) end,     { desc = '[H]arpoon [9]',       noremap = true })
vim.keymap.set("n", "<leader>hp",    function() harpoon:list():prev() end,        { desc = '[H]arpoon [P]rev',    noremap = true })
vim.keymap.set("n", "<leader>hn",    function() harpoon:list():next() end,        { desc = '[H]arpoon [N]ext',    noremap = true })

-- dap
local dap = require("dap")
local dapui = require("dapui")
local widgets = require('dap.ui.widgets')

local function debug_stop()
    dap.clear_breakpoints()
    dapui.close()
    dap.terminate()
    -- vim.api.nvim_feedkeys(vim.api.nvim_replace_termcodes("<C-w>=", false, true, true), "n", false)
end

local function set_breakpoint_log()
    dap.set_breakpoint(nil, nil, vim.fn.input('Log point message: '))
end

local function float_element(element)
    dapui.float_element(element)
end

local function watch_add()
   dapui.elements.watches.add(vim.fn.expand('<cword>'))
end

vim.keymap.set('n', '<F5>',          function() dap.continue() end,               { desc = 'Debug Continue',      noremap = true })
vim.keymap.set('n', '<F6>',          function() debug_stop() end,                 { desc = 'Debug End',           noremap = true })
vim.keymap.set('n', '<F10>',         function() dap.step_over() end,              { desc = 'Debug Step Over',     noremap = true })
vim.keymap.set('n', '<F11>',         function() dap.step_into() end,              { desc = 'Debug Step Into',     noremap = true })
vim.keymap.set('n', '<F12>',         function() dap.step_out() end,               { desc = 'Debug Step Up',       noremap = true })

vim.keymap.set('n', '<leader>dc',    function() dap.continue() end,               { desc = '[D]ebug [C]ontinue',  noremap = true })
vim.keymap.set('n', '<leader>dt',    function() debug_stop() end,                 { desc = '[D]ebug [T]erminate', noremap = true })
vim.keymap.set('n', '<leader>do',    function() dap.step_over() end,              { desc = '[D]ebug Step [O]ver', noremap = true })
vim.keymap.set('n', '<leader>di',    function() dap.step_into() end,              { desc = '[D]ebug Step [I]nto', noremap = true })
vim.keymap.set('n', '<leader>du',    function() dap.step_out() end,               { desc = '[D]ebug Step [U]p',   noremap = true })

vim.keymap.set('n', '<leader>de',    function() widgets.hover() end,              { desc = '[D]ebug [E]valuate',  noremap = true })
vim.keymap.set('v', '<leader>de',    function() widgets.hover() end,              { desc = '[D]ebug [E]valuate',  noremap = true })
vim.keymap.set('n', '<leader>dv',    function() widgets.preview() end,            { desc = '[D]ebug E[v]aluate', noremap = true })
vim.keymap.set('v', '<leader>dv',    function() widgets.preview() end,            { desc = '[D]ebug E[v]aluate', noremap = true })

vim.keymap.set('n', '<leader>lb',    function() float_element('breakpoints') end, { desc = '[L]ist [B]r.points',  noremap = true })
vim.keymap.set('n', '<leader>ls',    function() float_element('scopes') end,      { desc = '[L]ist [S]copes',     noremap = true })
vim.keymap.set('n', '<leader>lt',    function() float_element('stacks') end,      { desc = '[L]ist [T]hreads',    noremap = true })
vim.keymap.set('n', '<leader>lw',    function() float_element('watches') end,     { desc = '[L]ist [W]atches',    noremap = true })

vim.keymap.set('n', '<leader>bt',    function() dap.toggle_breakpoint() end,      { desc = '[B]r.point [T]oggle', noremap = true })
vim.keymap.set('n', '<leader>bc',    function() dap.clear_breakpoints() end,      { desc = '[B]r.point [C]lear',  noremap = true })
vim.keymap.set('n', '<leader>bs',    function() dap.set_breakpoint() end,         { desc = '[B]r.point [S]et',    noremap = true })
vim.keymap.set('n', '<leader>bl',    function() set_breakpoint_log() end,         { desc = '[B]r.point [L]og',    noremap = true })

vim.keymap.set('n', '<leader>wa',    function() watch_add() end,                  { desc = '[W]atch [A]dd',       noremap = true })
-- ---------------------------------------------------------------------------
