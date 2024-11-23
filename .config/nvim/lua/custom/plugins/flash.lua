-- ~/dotfiles/nvim/.config/nvim/lua/custom/plugins/flash.lua

return {
    "folke/flash.nvim",
    event = "VeryLazy",
    lazy = false,
    opts = {
        -- configuration
        labels = "asdfghjklqwertyuiopzxcvbnm",
        search = {
            -- search/jump in all windows
            multi_window = true,
            -- search direction
            forward = true,
            -- when `false`, find only matches in the given direction
            wrap = true,
            -- Each mode supports label assignment, multi-window, wrap, and search options
            incremental = false,
        },
        jump = {
            -- save location in the jumplist
            jumplist = true,
            -- jump position
            pos = "start", -- start|end
            -- add pattern to search history
            history = false,
            -- add pattern to search register
            register = false,
            -- clear highlight after jump
            nohlsearch = false,
            -- automatically jump when there is only one match
            autojump = false,
        },
    },
    -- stylua: ignore
    keys = {
        { "s",     mode = { "n", "x", "o" }, function() require("flash").jump() end,              desc = "Flash" },
        { "S",     mode = { "n", "x", "o" }, function() require("flash").treesitter() end,        desc = "Flash Treesitter" },
        { "r",     mode = "o",               function() require("flash").remote() end,            desc = "Remote Flash" },
        { "R",     mode = { "o", "x" },      function() require("flash").treesitter_search() end, desc = "Treesitter Search" },
        { "<c-s>", mode = { "c" },           function() require("flash").toggle() end,            desc = "Toggle Flash Search" },
    },
}
