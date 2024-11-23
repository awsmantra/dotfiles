-- Neo-tree is a Neovim plugin to browse the file system
-- https://github.com/nvim-neo-tree/neo-tree.nvim
return { -- So for api plugins like devicons, we can always set lazy=true
    {
        'nvim-neo-tree/neo-tree.nvim',
        version = '*',
        dependencies = { 'nvim-lua/plenary.nvim', 'nvim-tree/nvim-web-devicons', -- not strictly required, but recommended
            'MunifTanjim/nui.nvim' },
        cmd = 'Neotree',
        keys = { {
            '\\',
            ':Neotree reveal<CR>',
            desc = 'NeoTree reveal',
            silent = true
        } },
        opts = {
            filesystem = {
                filtered_items = {
                    visible = true,
                    show_hidden_count = true,
                    hide_dotfiles = false,
                    hide_gitignored = false,
                    hide_by_name = { '.git', '.DS_Store', 'thumbs.db' },
                    never_show = {}
                },
                window = {
                    mappings = {
                        ['\\'] = 'close_window'
                    }
                }
            }

        }
    } }
