-- You can add your own plugins here or in other files in this directory!
--  I promise not to create any merge conflicts in this directory :)
--
-- See the kickstart.nvim README for more information
local vim = vim

vim.opt.relativenumber = true
vim.opt.number = true -- Shows current line number

-- Optional additional settings you might want:
vim.opt.cursorline = true -- Highlight current line
vim.opt.scrolloff = 8 -- Minimum lines to keep above/below cursorim.opt.relativenumber = true
vim.opt.list = false
vim.opt.swapfile = false

-- noice keymapping
vim.keymap.set('n', '<leader>nl', function()
  require('noice').cmd 'last'
end)

vim.keymap.set('n', '<leader>nh', function()
  require('noice').cmd 'history'
end)

vim.keymap.set('n', '<leader>nd', function()
  require('noice').cmd 'dismiss'
end)

vim.keymap.set('n', '<leader>na', function()
  require('noice').cmd 'all'
end)

-- nvimtree Key mappings
-- vim.keymap.set('n', '<leader>e', ':NvimTreeToggle<CR>', { desc = 'Toggle file explorer' })
vim.keymap.set('n', '<leader>e', ':NvimTreeFocus<CR>', { desc = 'Focus file explorer' })

-- Basic window navigation with Ctrl + hjkl
vim.keymap.set('n', '<C-h>', '<C-w>h', { desc = 'Move to left window', silent = true })
vim.keymap.set('n', '<C-j>', '<C-w>j', { desc = 'Move to bottom window', silent = true })
vim.keymap.set('n', '<C-k>', '<C-w>k', { desc = 'Move to top window', silent = true })
vim.keymap.set('n', '<C-l>', '<C-w>l', { desc = 'Move to right window', silent = true })

-- quit keymap
vim.keymap.set('n', '<leader>q', ':q<CR>', { desc = 'Quit' })
vim.keymap.set('n', '<leader>w', ':w<CR>', { desc = 'Save and quit' })
vim.keymap.set('n', '<leader>Q', ':q!<CR>', { desc = 'Force quit' })

-- close current buffer
vim.keymap.set('n', '<leader>x', ':bd<CR>', { desc = 'Close current buffer' })
vim.keymap.set('n', '<Tab>', ':bnext<CR>', { desc = 'Next buffer' })
vim.keymap.set('n', '<S-Tab>', ':bprevious<CR>', { desc = 'Previous buffer' })

-- vim.keymap.set("n", "<C-Left>", "<cmd>vertical resize -2<cr>", {
--     desc = "Decrease Window Width"
-- })
-- vim.keymap.set("n", "<C-Right>", "<cmd>vertical resize +2<cr>", {
--     desc = "Increase Window Width"
-- })
-- resize buffers

-- vim.keymap.set('n', 'o', vim.cmd.new)
-- Resize splits
vim.keymap.set('n', '<C-Left>', ':vertical resize -2<CR>', { desc = 'Decrease width', silent = true })
vim.keymap.set('n', '<C-Right>', ':vertical resize +2<CR>', { desc = 'Increase width', silent = true })
vim.keymap.set('n', '<C-Up>', ':resize +2<CR>', { desc = 'Increase height', silent = true })
vim.keymap.set('n', '<C-Down>', ':resize -2<CR>', { desc = 'Decrease height', silent = true })

vim.keymap.set('n', '<leader>sv', function()
  local buf = vim.api.nvim_get_current_buf()
  vim.cmd 'vsplit'
  vim.api.nvim_win_set_buf(0, buf)
end, { desc = 'Smart vertical split', silent = true })

vim.keymap.set('n', '<leader>sh', function()
  local buf = vim.api.nvim_get_current_buf()
  vim.cmd 'split'
  vim.api.nvim_win_set_buf(0, buf)
end, { desc = 'Smart horizontal split', silent = true })

vim.keymap.set('i', '<A-h>', '<Left>', { desc = 'Move left in insert mode' })
vim.keymap.set('i', '<A-l>', '<Right>', { desc = 'Move right in insert mode' })
vim.keymap.set('i', '<A-j>', '<Down>', { desc = 'Move down in insert mode' })
vim.keymap.set('i', '<A-k>', '<Up>', { desc = 'Move up in insert mode' })

vim.api.nvim_create_autocmd('FileType', {
  pattern = 'go',
  callback = function()
    vim.opt_local.tabstop = 4 -- width of a tab character
    vim.opt_local.shiftwidth = 4 -- width when indenting
    vim.opt_local.expandtab = false -- use tabs instead of spaces
  end,
})

return {
  require 'custom.plugins.nvim-tree',
  require 'custom.plugins.lazygit',
  require 'custom.plugins.conform',
  require 'custom.plugins.noice',
  require 'custom.plugins.flash',
  require 'custom.plugins.ufo',
  require 'custom.plugins.trouble',
  -- require("custom.plugins.cmp"),
  require 'custom.plugins.outline',
  require 'custom.plugins.comment',
  require 'custom.plugins.indent',
  require 'custom.plugins.lualine',
  -- require("custom.plugins.neo-tree"),
  require 'custom.plugins.autopairs',
}
