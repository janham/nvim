return {
  'nvimdev/dashboard-nvim',
  event = 'VimEnter',
  config = function()
    require('dashboard').setup {
      theme = 'hyper',
      config = {
        week_header = {
          enable = true,
        },
        shortcut = {
          {
            icon = '  ',
            desc = 'New File',
            group = 'Label',
            action = 'enew',
            key = 'n',
          },
          {
            icon = '  ',
            desc = 'Configuration',
            group = 'Number',
            action = 'edit ~/.config/nvim/init.lua',
            key = 'c',
          },
          {
            icon = '  ',
            desc = 'Exit',
            group = 'DiagnosticHint',
            action = 'quit',
            key = 'q',
          },
        },
      },
    }
  end,
  dependencies = { {'nvim-tree/nvim-web-devicons'} }
}
