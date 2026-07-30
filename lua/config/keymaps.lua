-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua

local map = vim.keymap.set
local opts = { noremap = true, silent = true }

-- Save & Quit
map('n', '<C-s>', '<cmd>w<CR>', opts)
map('n', '<leader>W', '<cmd>noautocmd w<CR>', opts)
map('n', '<C-q>', '<cmd>q<CR>', opts)

-- Delete character without yanking
map('n', 'x', '"_x', opts)

-- Scroll and center
map('n', '<C-d>', '<C-d>zz', opts)
map('n', '<C-u>', '<C-u>zz', opts)

-- Search navigation and center
map('n', 'n', 'nzzzv', opts)
map('n', 'N', 'Nzzzv', opts)

-- Window resizing
map('n', '<Up>', ':resize -2<CR>', opts)
map('n', '<Down>', ':resize +2<CR>', opts)
map('n', '<Left>', ':vertical resize -2<CR>', opts)
map('n', '<Right>', ':vertical resize +2<CR>', opts)

-- Buffers
map('n', '<Tab>', ':bnext<CR>', opts)
map('n', '<S-Tab>', ':bprevious<CR>', opts)
map('n', '<leader>bn', '<cmd>enew<CR>', opts)

-- Window splits
map('n', '<leader>v', '<C-w>v', opts)
map('n', '<leader>h', '<C-w>s', opts)
map('n', '<leader>se', '<C-w>=', opts)
map('n', '<leader>xs', ':close<CR>', opts)

-- Move between splits
map('n', '<C-k>', ':wincmd k<CR>', opts)
map('n', '<C-j>', ':wincmd j<CR>', opts)
map('n', '<C-h>', ':wincmd h<CR>', opts)
map('n', '<C-l>', ':wincmd l<CR>', opts)

-- Tabs
map('n', '<leader>to', ':tabnew<CR>', opts)
map('n', '<leader>tx', ':tabclose<CR>', opts)
map('n', '<leader>tn', ':tabn<CR>', opts)
map('n', '<leader>tp', ':tabp<CR>', opts)

-- Toggle wrap
map('n', '<leader>lw', '<cmd>set wrap!<CR>', opts)

-- Stay in indent mode
map('v', '<', '<gv', opts)
map('v', '>', '>gv', opts)

-- Keep last yanked when pasting
map('v', 'p', '"_dP', opts)
