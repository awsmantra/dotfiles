-- ~/dotfiles/nvim/.config/nvim/lua/custom/plugins/lazygit.lua

return {
    "kdheepak/lazygit.nvim",
    -- optional for floating window border decoration
    lazy = false,
    dependencies = {
        "nvim-lua/plenary.nvim",
    },
    cmd = {
        "LazyGit",
        "LazyGitConfig",
        "LazyGitCurrentFile",
        "LazyGitFilter",
        "LazyGitFilterCurrentFile",
    },
    keys = {
        { "<leader>lg", "<cmd>LazyGit<CR>", desc = "Open LazyGit" },
    },
}
