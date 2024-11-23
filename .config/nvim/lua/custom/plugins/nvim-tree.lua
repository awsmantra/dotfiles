-- ~/dotfiles/nvim/.config/nvim/lua/custom/plugins/nvim-tree.lua
local vim = vim

return {
    "nvim-tree/nvim-tree.lua",
    version = "*",
    lazy = false,
    dependencies = {
        "nvim-tree/nvim-web-devicons",
    },
    config = function()
        require("nvim-tree").setup({
            sort_by = "case_sensitive",
            view = {
                width = 30,
            },
            renderer = {
                group_empty = true,
                icons = {
                    show = {
                        file = true,
                        folder = true,
                        folder_arrow = true,
                        git = true,
                    },
                },
            },
            filters = {
                dotfiles = false,
            },
            git = {
                enable = true,
                ignore = false,
            },
            actions = {
                open_file = {
                    quit_on_open = false,
                    resize_window = true,
                },
            },
        })

        vim.keymap.set('n', '<C-l>', function()
            local current_buf = vim.api.nvim_get_current_buf()
            local is_tree = vim.bo[current_buf].filetype == 'NvimTree'
            if is_tree then
                vim.cmd('wincmd p')
            end
        end, { desc = 'Focus last buffer' })

        -- -- Key mappings
        -- vim.keymap.set('n', '<leader>e', ':NvimTreeToggle<CR>', { desc = 'Toggle file explorer' })
        -- vim.keymap.set('n', '<leader>fe', ':NvimTreeFocus<CR>', { desc = 'Focus file explorer' })
    end,
}
