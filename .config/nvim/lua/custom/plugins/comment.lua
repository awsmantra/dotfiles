-- ~/dotfiles/nvim/.config/nvim/lua/custom/plugins/comment.lua

return {
    'numToStr/Comment.nvim',
    opts = {
        -- add any options here
        padding = true, -- Add a space b/w comment and the line
        sticky = true, -- Whether the cursor should stay at its position
        ignore = nil, -- Lines to be ignored while (un)comment
        toggler = {
            -- Line-comment toggle keymap
            line = 'gcc',
            -- Block-comment toggle keymap
            block = 'gbc',
        },
        opleader = {
            -- Line-comment keymap
            line = 'gc',
            -- Block-comment keymap
            block = 'gb',
        },
        extra = {
            -- Add comment on the line above
            above = 'gcO',
            -- Add comment on the line below
            below = 'gco',
            -- Add comment at the end of line
            eol = 'gcA',
        },
        -- Enable keybindings
        -- Note: If given `false` then the plugin won't create any mappings
        mappings = {
            -- Operator-pending mapping; `gcc` `gbc` `gc[count]{motion}` `gb[count]{motion}`
            basic = true,
            -- Extra mapping; `gco`, `gcO`, `gcA`
            extra = true,
        },
    },
    lazy = false,
}
