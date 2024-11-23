-- You can add your own plugins here or in other files in this directory!
--  I promise not to create any merge conflicts in this directory :)
--
-- See the kickstart.nvim README for more information
local vim = vim


vim.opt.relativenumber = true
vim.opt.number = true -- Shows current line number

-- Optional additional settings you might want:
vim.opt.cursorline = true -- Highlight current line
vim.opt.scrolloff = 8     -- Minimum lines to keep above/below cursorim.opt.relativenumber = true
vim.opt.list = false
vim.opt.swapfile = false

-- noice keymapping
vim.keymap.set("n", "<leader>nl", function()
    require("noice").cmd("last")
end)

vim.keymap.set("n", "<leader>nh", function()
    require("noice").cmd("history")
end)

vim.keymap.set("n", "<leader>nd", function()
    require("noice").cmd("dismiss")
end)

vim.keymap.set("n", "<leader>na", function()
    require("noice").cmd("all")
end)


-- nvimtree Key mappings
-- vim.keymap.set('n', '<leader>e', ':NvimTreeToggle<CR>', { desc = 'Toggle file explorer' })
vim.keymap.set('n', '<leader>e', ':NvimTreeFocus<CR>', { desc = 'Focus file explorer' })

-- quit keymap
vim.keymap.set('n', '<leader>q', ':q<CR>', { desc = 'Quit' })
vim.keymap.set('n', '<leader>w', ':w<CR>', { desc = 'Save and quit' })
vim.keymap.set('n', '<leader>Q', ':q!<CR>', { desc = 'Force quit' })

-- close current buffer
vim.keymap.set('n', '<leader>x', ':bd<CR>', { desc = 'Close current buffer' })
vim.keymap.set('n', '<Tab>', ':bnext<CR>', { desc = 'Next buffer' })
vim.keymap.set('n', '<S-Tab>', ':bprevious<CR>', { desc = 'Previous buffer' })
-- vim.keymap.set('n', 'o', vim.cmd.new)

-- Map Alt/Option keys in insert mode
vim.keymap.set('i', '<A-h>', '<Left>', { desc = 'Move left' })
vim.keymap.set('i', '<A-l>', '<Right>', { desc = 'Move right' })
vim.keymap.set('i', '<A-j>', '<Down>', { desc = 'Move down' })
vim.keymap.set('i', '<A-k>', '<Up>', { desc = 'Move up' })



return {
    require("custom.plugins.nvim-tree"),
    require("custom.plugins.lazygit"),
    require("custom.plugins.conform"),
    require("custom.plugins.noice"),
    require("custom.plugins.flash"),
    require("custom.plugins.ufo"),
    require("custom.plugins.trouble"),
    -- require("custom.plugins.cmp"),
    require("custom.plugins.outline"),
    require("custom.plugins.comment"),
    require("custom.plugins.indent"),
    require("custom.plugins.lualine"),
    -- require("custom.plugins.neo-tree"),
    require("custom.plugins.autopairs"),
}
