-- ~/dotfiles/nvim/.config/nvim/lua/custom/plugins/outline.lua

local vim = vim

return {
    "hedyhli/outline.nvim",
    lazy = false,
    config = function()
        -- Example mapping to toggle outline
        vim.keymap.set("n", "<leader>o", "<cmd>Outline<CR>", { desc = "Toggle Outline" })

        require("outline").setup({
            -- Your custom configuration
            outline_window = {
                -- Window position
                position = 'right',
                -- Width of the window
                width = 25,
                -- Whether width is relative to the total width
                relative_width = false,
                -- Show line numbers in outline window
                show_numbers = false,
                -- Show relative line numbers in outline window
                show_relative_numbers = false,
                -- Wrap long lines in outline window
                wrap = false,
                -- Hide outline when window loses focus
                hide_on_unfocus = true,
            },
            -- Symbol details shown in outline window
            symbol_folding = {
                -- Depth past which nodes will be folded by default
                autofold_depth = 1,
                -- Automatically fold nodes on startup
                auto_fold = false,
                -- Mark folded nodes with custom icon
                markers = { '', '' },
            },
            preview_window = {
                -- Auto preview symbol under cursor in outline
                auto_preview = true,
                -- Open preview window only when cursor enters outline
                open_hover_on_preview = true,
                width = 50, -- Percentage or fixed value
                min_width = 50,
                -- Border characters
                border = 'single',
                -- Win options
                winhl = {
                    Normal = 'Normal', -- Highlight group
                },
            },
            -- Symbols to be shown in outline
            symbols = {
                -- Filter by kind
                filter = {
                    -- Include these symbols
                    'Class',
                    'Constructor',
                    'Enum',
                    'Field',
                    'Function',
                    'Interface',
                    'Method',
                    'Module',
                    'Namespace',
                    'Package',
                    'Property',
                    'Struct',
                    'Trait',
                },
            },
            -- Guide line
            guides = {
                enabled = true,
                markers = {
                    -- Connected nodes
                    bottom = "└",
                    middle = "├",
                    vertical = "│",
                },
            },
            keymaps = {
                -- Show help for keymaps
                show_help = "?",
                -- Close outline window
                close = { "q", "<Esc>" },
                -- Jump to symbol under cursor
                goto_location = "<Cr>",
                -- Highlight symbol under cursor, opposite of peek_location
                peek_location = "o",
                -- Hover symbol under cursor
                hover_symbol = "<C-space>",
                -- Move up/down outline list
                toggle_preview = "K",
                rename_symbol = "r",
                code_actions = "a",
                -- Fold all nodes in outline window
                fold_all = "zM",
                -- Unfold all nodes in outline window
                unfold_all = "zR",
                -- Fold current node
                fold = "zo",
                -- Unfold current node
                unfold = "zc",
                -- Move down to next node
                goto_next = { "j" },
                -- Move up to previous node
                goto_prev = { "k" },
            },
        })
    end,
}
