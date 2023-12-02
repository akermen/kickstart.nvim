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
vim.keymap.set("n", "<leader>nt",    ":Neotree reveal_force_cwd toggle<CR>",      { desc = "[N]eotree [T]oggle",  noremap = true })
vim.keymap.set("n", "<leader>nf",    ":Neotree reveal_force_cwd float<CR>",       { desc = "[N]eotree [F]loat",   noremap = true })
vim.keymap.set("n", "<leader>nb",    ":Neotree toggle show buffers right<CR>",    { desc = "[N]eotree [B]uffers", noremap = true })
vim.keymap.set("n", "<leader>ng",    ":Neotree float git_status<CR>",             { desc = "[N]eotree [G]it",     noremap = true })

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
vim.keymap.set('n', '<leader>sj',    require('telescope.builtin').jumplist   ,    { desc = '[S]earch [J]ump',     noremap = true })
vim.keymap.set('n', '<leader>sr',    require('telescope.builtin').resume     ,    { desc = '[S]earch [R]esume',   noremap = true })
vim.keymap.set('n', '<leader>hh',    ":set hlsearch!<CR>",                        { desc = '[H]ighlight [H]it',   noremap = true })

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

-- easy-align
vim.keymap.set('x', '<leader>ea',    ':EasyAlign',                                { desc = '[E]asy [A]lign',      noremap = true })
vim.keymap.set('n', '<leader>ea',    ':EasyAlign',                                { desc = '[E]asy [A]lign',      noremap = true })

-- markdown preview
vim.keymap.set('n', '<leader>mp',    ':MarkdownPreview<CR>',                      { desc = '[M]arkdown [P]play',  noremap = true })
vim.keymap.set('n', '<leader>ms',    ':MarkdownPreviewStop<CR>',                  { desc = '[M]arkdown [S]top',   noremap = true })
vim.keymap.set('n', '<leader>mt',    ':MarkdownPreviewToggle<CR>',                { desc = '[M]arkdown [T]oggle', noremap = true })
vim.keymap.set("n", "<leader>tw",    ":set wrap!<cr>",                            { desc = '[T]ext [W]rap',       noremap = true })

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
vim.keymap.set('n', '<leader>mP',    require('telescope.builtin').planets     ,   { desc = '[M]ake [P]lanets',    noremap = true })
vim.keymap.set("n", "<leader>db",    [["_d]],                                     { desc = '[D]elete to [B]lack', noremap = true })
vim.keymap.set("v", "<leader>db",    [["_d]],                                     { desc = '[D]elete to [B]lack', noremap = true })
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
vim.keymap.set('n', '<leader>fn',    ":echo expand('%:t')<CR>",                   { desc = "[F]ile [N]ame",       noremap = true })
-- vim.keymap.set('n', '<leader>fp', ':file<CR>',                                 { desc = "[F]ile [P]ath",       noremap = true })
vim.keymap.set('n', '<leader>fp',    ':echo @%<CR>',                              { desc = "[F]ile [P]ath",       noremap = true })
vim.keymap.set('n', '<leader>fr',    ":echo expand('%:p')<CR>",                   { desc = "[F]ile [R]oot",       noremap = true })

-- undo
vim.keymap.set("n", "<leader>ut",    ":UndotreeToggle<CR>",                       { desc = '[U]ndotree [T]oggle', noremap = true })
vim.keymap.set("n", "<leader>us",    ":UndotreeShow<CR>",                         { desc = '[U]ndotree [S]how',   noremap = true })
vim.keymap.set("n", "<leader>uh",    ":UndotreeHide<CR>",                         { desc = '[U]ndotree [H]ide',   noremap = true })
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

-- open url
if vim.fn.has("mac") == 1 then
    vim.keymap.set('n', '<leader>gx', '<Cmd>call jobstart(["open", expand("<cfile>")], {"detach": v:true})<CR>')
elseif vim.fn.has("unix") == 1 then
    vim.keymap.set('n', '<leader>gx', '<Cmd>call jobstart(["xdg-open", expand("<cfile>")], {"detach": v:true})<CR>')
else
    vim.keymap.set('n', '<leader>gx', '<Cmd>lua print("Error: gx is not supported on this OS!")<CR>')
end

