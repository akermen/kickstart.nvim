# NeoVim Configuration - Issues & Fixes

## CRITICAL ERRORS (Must Fix)

### 1. LSP Code Action Mapping Syntax Error 🔴
- **File**: `init.lua:544`
- **Issue**: Incorrect parameter type - passing table `{ 'n', 'x' }` where string expected
- **Current Code**: `map('gra', vim.lsp.buf.code_action, '[G]oto Code [A]ction', { 'n', 'x' })`
- **Expected**: `map('gra', vim.lsp.buf.code_action, '[G]oto Code [A]ction', 'n', 'x')`
- **Impact**: Code action mapping won't work correctly in visual mode
- **Status**: ❌ **TO FIX**

### 2. Duplicate Keymap Conflict: `<leader>bc` - FIXED ✓ 🟢
- **File**: `after/plugin/keymaps.lua:13` and `after/plugin/keymaps.lua:337`
- **Conflict**:
  - Line 13: Buffer cleanup (`:bd<CR>`)
  - Line 337: DAP breakpoint clear (changed to `<leader>br`)
- **Impact**: Resolved - buffer cleanup remains at `<leader>bc`, breakpoint clear now at `<leader>br`
- **Status**: ✅ **FIXED** - Changed breakpoint clear to `<leader>br` with desc `[B]r.point [R]emove`

### 3. Duplicate Keymap Conflict: `<leader>ts` - FIXED ✓ 🟢
- **File**: `after/plugin/keymaps.lua:26` and `after/plugin/keymaps.lua:32`
- **Conflict**:
  - Line 26: Tab first (changed to `<leader>tf`)
  - Line 32: Tab split (remains `<leader>ts`)
- **Impact**: Resolved - tab first now at `<leader>tf`, tab split remains at `<leader>ts`
- **Status**: ✅ **FIXED** - Changed tab first to `<leader>tf`, removed duplicate `<leader>tF` line with same desc

### 4. Invalid Gitsigns Commands - FIXED ✓ 🟢
- **File**: `after/plugin/keymaps.lua:111-114`
- **Commands**: `:Gitsigns next_hunk`, `:Gitsigns prev_hunk`, `:Gitsigns preview_hunk`, `:Gitsigns blame_line`
- **Issue**: Was using singular `:Gitsign` instead of plural `:Gitsigns`
- **Fix**: Changed all four commands from `Gitsign` to `Gitsigns` (correct command name)
- **Status**: ✅ **FIXED** - All gitsigns commands now properly named

### 5. Wrong Completion Engine Configuration - FIXED ✓ 🟢
- **File**: `after/plugin/keymaps.lua:227-249`
- **Issue**: Was configuring `nvim-cmp` but project uses `blink.cmp` (init.lua:781)
- **Problem**: nvim-cmp is not even declared as a dependency
- **Fix**: Commented out entire nvim-cmp configuration block with note explaining why
- **Status**: ✅ **FIXED** - Removed nvim-cmp config which was incompatible with blink.cmp

### 6. Deprecated Plugin Dependency - FIXED ✓ 🟢
- **File**: `lua/custom/plugins/autopairs.lua` (removed)
- **Issue**: Custom autopairs depended on `'hrsh7th/nvim-cmp'` but project uses `blink.cmp`
- **Fix**: Removed redundant custom plugin and enabled Kickstart's built-in autopairs in `init.lua:980`
- **Status**: ✅ **FIXED** - Using Kickstart's autopairs which is properly configured

---

## WARNINGS (Should Fix)

### 1. Keymap Description Typo - FIXED ✓ 🟢
- **File**: `after/plugin/keymaps.lua:275`
- **Typo**: `'[H]arpoon [T[oggle'` → `'[H]arpoon [T]oggle'`
- **Status**: ✅ **FIXED** - Corrected bracket placement in description

### 2. Conflicting Keymap Deletions 🟡
- **File**: `after/plugin/keymaps.lua:344-345`
- **Code**: `vim.keymap.del("i", "<Tab>")` and `vim.keymap.del("i", "<CR>")`
- **Issue**: Deletes `<Tab>` and `<CR>` mappings that blink.cmp may need
- **Impact**: May conflict with blink.cmp completion keybindings
- **Status**: ⏳ **ACTIVE** - Verified still present, monitor for issues

### 3. Python Path Inconsistency (virtualenv) - FIXED ✓ 🟢
- **File**: `lua/custom/plugins/dap-python.lua:22-23`
- **Issue**: Checked `/virtualenv/` but assigned `/.virtualenv/` (inconsistent paths)
- **Fix**: Changed assignment to match check: `/virtualenv/bin/python`
- **Status**: ✅ **FIXED** - Standardized path checking and assignment

### 4. Python Path Inconsistency (env) - FIXED ✓ 🟢
- **File**: `lua/custom/plugins/dap-python.lua:30-31`
- **Issue**: Checked `/env/` but assigned `/.env/` (inconsistent paths)
- **Fix**: Changed assignment to match check: `/env/bin/python`
- **Status**: ✅ **FIXED** - Standardized path checking and assignment

### 5. Duplicate Plugin Specifications - FIXED ✓ 🟢
- **Files**: `init.lua:980` (commented) and `lua/custom/plugins/autopairs.lua` (removed)
- **Issue**: Was specifying autopairs in two places
- **Fix**: Removed custom `lua/custom/plugins/autopairs.lua` file entirely
- **Status**: ✅ **FIXED** - Custom autopairs plugin removed, using Kickstart's instead

---

## INFORMATION ITEMS 📝

### 1. TODO Comment - Python Path Detection 🔵
- **File**: `lua/custom/plugins/dap-python.lua:11`
- **Note**: Author marked as needing "find more generic method" for Python path detection
- **Status**: ℹ️ **IMPROVEMENT** - Consider better virtualenv detection

### 2. Friendly-snippets Redundancy 🔵
- **Files**: `init.lua` (commented) and custom plugins
- **Status**: ℹ️ **CLEANUP** - Remove commented snippet plugin from init.lua

### 3. Neovide Configuration 🔵
- **File**: `after/plugin/defaults.lua:42-46`
- **Note**: GUI-specific configuration, harmless but could be in separate file
- **Status**: ℹ️ **OPTIONAL** - Consider organizing GUI-specific config separately

---

## Summary Statistics 📊

| Category | Count | Status |
|----------|-------|--------|
| **Critical Errors** | 6 | ✅ **5 FIXED** / ❌ 1 TO DO |
| **Warnings** | 5 | ✅ **4 FIXED** / ⏳ 1 ACTIVE |
| **Information Items** | 3 | 📝 **PENDING** |
| **Total Issues** | 14 | ✅ **9 FIXED** / ⏳ 1 ACTIVE |

---

## Fix Priority Order

1. ❌ **[CRITICAL]** Fix LSP code action syntax (mapping broken)
2. ✅ **[CRITICAL]** Fix gitsigns commands (will cause runtime errors)
3. ✅ **[CRITICAL]** Fix nvim-cmp vs blink.cmp mismatch (completion broken)
4. ✅ **[CRITICAL]** Resolve duplicate keymap conflicts
5. ✅ **[IMPORTANT]** Fix Python path inconsistencies
6. ⏳ **[REVIEW]** Check keymap deletion necessity
7. ✅ **[NICE]** Fix typos and clean up redundancy
