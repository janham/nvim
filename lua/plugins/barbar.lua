return {
  'romgrk/barbar.nvim',
  dependencies = {
    'lewis6991/gitsigns.nvim',     -- オプション: git status
    'nvim-tree/nvim-web-devicons', -- アイコン
  },
  init = function()
    vim.g.barbar_auto_setup = false
  end,
  config = function()
    require('barbar').setup({
      -- アニメーション
      animation = true,
      
      -- 自動非表示
      auto_hide = false,
      
      -- タブページボタン
      tabpages = true,
      
      -- クリック可能
      clickable = true,
      
      -- 除外するファイルタイプとバッファタイプ
      exclude_ft = { 'qf' },
      exclude_name = {},
      
      -- アイコンの設定
      icons = {
        buffer_index = false,
        buffer_number = false,
        button = '',
        diagnostics = {
          [vim.diagnostic.severity.ERROR] = { enabled = true, icon = ' ' },
          [vim.diagnostic.severity.WARN] = { enabled = false },
          [vim.diagnostic.severity.INFO] = { enabled = false },
          [vim.diagnostic.severity.HINT] = { enabled = true },
        },
        gitsigns = {
          added = { enabled = true, icon = '+' },
          changed = { enabled = true, icon = '~' },
          deleted = { enabled = true, icon = '-' },
        },
        filetype = {
          custom_colors = false,
          enabled = true,
        },
        separator = { left = '▎', right = '' },
        modified = { button = '●' },
        pinned = { button = '', filename = true },
        preset = 'default',
        alternate = { filetype = { enabled = false } },
        current = { buffer_index = false },
        inactive = { button = '×' },
        visible = { modified = { buffer_number = false } },
      },
      
      -- 最大バッファ名の長さ
      maximum_padding = 1,
      maximum_length = 30,
      minimum_padding = 1,
      minimum_length = 0,
      
      -- タブのセマンティックな文字
      semantic_letters = true,
      
      -- サイドバー（nvim-tree等）の設定
      sidebar_filetypes = {
        NvimTree = true,
      },
      
      -- 新しいバッファの挿入位置
      insert_at_end = false,
      insert_at_start = false,
    })
  end,
}



