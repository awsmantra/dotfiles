-- ~/dotfiles/nvim/.config/nvim/lua/custom/plugins/indent.lua
local vim = vim

return {
    "lukas-reineke/indent-blankline.nvim",
    main = "ibl",
    config = function()
        -- Set custom highlights
        vim.opt.list = false
        local hooks = require "ibl.hooks"
        hooks.register(hooks.type.HIGHLIGHT_SETUP, function()
            vim.api.nvim_set_hl(0, "IndentBlanklineIndent1", { fg = "#E06C75" })
            vim.api.nvim_set_hl(0, "IndentBlanklineIndent2", { fg = "#E5C07B" })
            vim.api.nvim_set_hl(0, "IndentBlanklineIndent3", { fg = "#98C379" })
            vim.api.nvim_set_hl(0, "IndentBlanklineIndent4", { fg = "#56B6C2" })
            vim.api.nvim_set_hl(0, "IndentBlanklineIndent5", { fg = "#61AFEF" })
            vim.api.nvim_set_hl(0, "IndentBlanklineIndent6", { fg = "#C678DD" })
        end)

        require("ibl").setup({
            indent = {
                char = "│",
                highlight = {
                    "IndentBlanklineIndent1",
                    "IndentBlanklineIndent2",
                    "IndentBlanklineIndent3",
                    "IndentBlanklineIndent4",
                    "IndentBlanklineIndent5",
                    "IndentBlanklineIndent6",
                },
            },
            scope = {
                enabled = true,
                show_start = true,
                show_end = true,
                char = "│",
            },
        })

        require("ibl").update({ enabled = false })
        -- Add keybinding to toggle indent lines
        vim.keymap.set("n", "<leader>i", "<cmd>IBLToggle<cr>", { desc = "Toggle indent lines" })
    end,
}
