-- ~/dotfiles/nvim/.config/nvim/lua/custom/plugins/noice.lua

return {
  'folke/noice.nvim',
  event = 'VeryLazy',
  lazy = false,
  dependencies = {
    'MunifTanjim/nui.nvim',
    'rcarriga/nvim-notify',
  },
  config = function()
    require('noice').setup {
      routes = {
        {
          filter = {
            event = 'msg_show',
            kind = '',
            find = 'written',
          },
          opts = { skip = true },
        },
      },
      -- keymap configuration
    }
  end,
}
