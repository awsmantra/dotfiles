-- ~/dotfiles/nvim/.config/nvim/lua/custom/plugins/lualine.lua

return {
    'nvim-lualine/lualine.nvim',
    dependencies = {
        'nvim-tree/nvim-web-devicons',
        'folke/tokyonight.nvim',
        'navarasu/onedark.nvim'
    },
    opts = {
        options = {
            theme = 'tokyonight',
            component_separators = '|',
            section_separators = '',
        },
    },
}
