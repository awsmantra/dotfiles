-- ~/dotfiles/nvim/.config/nvim/lua/custom/plugins/conform.lua
local vim = vim

return {
    "stevearc/conform.nvim",
    lazy = false,
    event = { "BufReadPre", "BufNewFile" },
    config = function()
        local conform = require("conform")

        conform.setup({
            formatters_by_ft = {
                javascript = { "prettier" },
                typescript = { "prettier" },
                javascriptreact = { "prettier" },
                typescriptreact = { "prettier" },
                css = { "prettier" },
                html = { "prettier" },
                json = { "prettier" },
                yaml = { "prettier" },
                markdown = { "prettier" },
                lua = { "stylua" },
                python = { "isort", "black" },
                go = { "gofmt", "goimports" },
            },
            format_on_save = {
                -- These options will be passed to conform.format()
                timeout_ms = 500,
                lsp_fallback = true,
            },
        })

        -- Format commands
        vim.keymap.set({ "n", "v" }, "<leader>mp", function()
            conform.format({
                async = true,
                lsp_fallback = true,
            })
        end, { desc = "Format file or range (in visual mode)" })
    end,
}
