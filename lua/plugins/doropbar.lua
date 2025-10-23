return {
  'Bekaboo/dropbar.nvim',
  event = { "BufReadPre", "BufNewFile" },
  dependencies = {
    'nvim-telescope/telescope-fzf-native.nvim'
  },
  config = function()
    require('dropbar').setup()
  end,
}
