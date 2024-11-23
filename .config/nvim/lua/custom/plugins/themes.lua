-- ~/dotfiles/nvim/.config/nvim/lua/custom/plugins/themes.lua

return {
    {
        "folke/tokyonight.nvim",
        lazy = false,
        priority = 1000,
        opts = {
            style = "storm", -- night, storm, day, moon
            light_style = "day",
            -- transparent = true,
            -- styles = {
            --     sidebars = "transparent",
            --     floats = "transparent",
            -- },
        },
    },
    {
        'navarasu/onedark.nvim',
        lazy = false,
        priority = 1000,
        opts = {
            style = 'light' -- dark, darker, cool, deep, warm, warmer, light
        },
    },
}
