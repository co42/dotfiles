vim.g.mapleader = ' '
vim.g.maplocalleader = ' '
vim.g.have_nerd_font = true -- Set to true if you have a Nerd Font installed and selected in the terminal

-- Config nvchad before lazy setup
vim.g.base46_cache = vim.fn.stdpath 'data' .. '/base46_cache/'

-- Disable netrw
vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1

-- [[ Setting options ]]
-- See `:help vim.opt` and `:help option-list`

vim.opt.cursorline = true -- Show which line your cursor is on
vim.opt.list = true -- Sets how neovim will display certain whitespace characters in the editor. See `:help 'list'` and `:help 'listchars'`
vim.opt.listchars = { tab = '» ', trail = '·', nbsp = '␣' }
vim.opt.ignorecase = true -- Case-insensitive searching UNLESS \C or one or more capital letters in the search term
vim.opt.inccommand = 'split' -- Preview substitutions live, as you type!
-- vim.opt.mouse = 'a' -- Enable mouse mode, can be useful for resizing splits for example!
vim.opt.number = true -- Show line numbers
vim.opt.relativenumber = true -- Line number relative to cursor
vim.opt.scrolloff = 10 -- Minimal number of screen lines to keep above and below the cursor
vim.opt.showmode = false -- Don't show the mode, since it's already in the status line
vim.opt.smartcase = true -- Do not ignore cast when search contains an uppercase
vim.opt.signcolumn = 'yes' -- Keep signcolumn on by default
vim.opt.splitbelow = true -- Configure how new splits should be opened
vim.opt.splitright = true -- Configure how new splits should be opened
vim.opt.timeoutlen = 300 -- Decrease mapped sequence wait time
vim.opt.undofile = true -- Save undo history to a file
vim.opt.undolevels = 10000 -- Maximum number of change that can be undone
vim.opt.updatetime = 250 -- Decrease update time
vim.opt.wrap = false -- Do not wrap lines

-- Sync clipboard between OS and Neovim.
--  Schedule the setting after `UiEnter` because it can increase startup-time
--  Remove this option if you want your OS clipboard to remain independent
--  See `:help 'clipboard'`
vim.schedule(function()
  vim.opt.clipboard = 'unnamedplus'
end)

-- [[ Basic Keymaps ]]
--  See `:help vim.keymap.set()`

-- Misc keymaps
vim.keymap.set('n', '<Esc>', '<cmd>nohlsearch<CR>') -- Clear highlights on search when pressing <Esc> in normal mode

-- Diagnostic keymaps
vim.keymap.set('n', '<leader>q', vim.diagnostic.setloclist, { desc = '[Q]uickfix list' })
vim.keymap.set('n', '<C-]>', vim.diagnostic.goto_next, { desc = 'next [d]iagnostic' })
vim.keymap.set('n', '<C-}>', function()
  vim.diagnostic.goto_next { severity = 'ERROR' }
end, { desc = 'next error' })
vim.keymap.set('n', '<C-[>', vim.diagnostic.goto_prev, { desc = 'prev [d]iagnostic' })
vim.keymap.set('n', '<C-{>', function()
  vim.diagnostic.goto_next { severity = 'ERROR' }
end, { desc = 'prev error' })

-- Terminal keymaps
vim.keymap.set('t', '<Esc><Esc>', '<C-\\><C-n>', { desc = 'Exit terminal mode' }) -- Easier shortcut instead of <C-\><C-n>

-- TIP: Disable arrow keys in normal mode
vim.keymap.set('n', '<left>', '<cmd>echo "Use h to move!!"<CR>')
vim.keymap.set('n', '<right>', '<cmd>echo "Use l to move!!"<CR>')
vim.keymap.set('n', '<up>', '<cmd>echo "Use k to move!!"<CR>')
vim.keymap.set('n', '<down>', '<cmd>echo "Use j to move!!"<CR>')

-- Keybinds to make split navigation easier.
--  Use CTRL+<hjkl> to switch between windows
vim.keymap.set('n', '<C-h>', '<C-w><C-h>', { desc = 'Move focus to the left window' })
vim.keymap.set('n', '<C-l>', '<C-w><C-l>', { desc = 'Move focus to the right window' })
vim.keymap.set('n', '<C-j>', '<C-w><C-j>', { desc = 'Move focus to the lower window' })
vim.keymap.set('n', '<C-k>', '<C-w><C-k>', { desc = 'Move focus to the upper window' })

-- [[ Basic Autocommands ]]
--  See `:help lua-guide-autocommands`

-- Highlight when yanking (copying) text
--  Try it with `yap` in normal mode
--  See `:help vim.highlight.on_yank()`
vim.api.nvim_create_autocmd('TextYankPost', {
  desc = 'Highlight when yanking (copying) text',
  group = vim.api.nvim_create_augroup('kickstart-highlight-yank', { clear = true }),
  callback = function()
    vim.highlight.on_yank()
  end,
})

-- [[ Install `lazy.nvim` plugin manager ]]
--    See `:help lazy.nvim.txt` or https://github.com/folke/lazy.nvim for more info
local lazypath = vim.fn.stdpath 'data' .. '/lazy/lazy.nvim'
if not (vim.uv or vim.loop).fs_stat(lazypath) then
  local lazyrepo = 'https://github.com/folke/lazy.nvim.git'
  local out = vim.fn.system { 'git', 'clone', '--filter=blob:none', '--branch=stable', lazyrepo, lazypath }
  if vim.v.shell_error ~= 0 then
    error('Error cloning lazy.nvim:\n' .. out)
  end
end ---@diagnostic disable-next-line: undefined-field
vim.opt.rtp:prepend(lazypath)

-- Config nvchad after lazy setup
dofile(vim.g.base46_cache .. 'defaults')
dofile(vim.g.base46_cache .. 'statusline')

-- [[ Configure and install plugins ]]
require('lazy').setup({
  { import = 'co.plugins' },
}, {
  ui = {
    icons = {},
  },
})
