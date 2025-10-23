return {
  "dnlhc/glance.nvim",
  event = { "BufReadPre", "BufNewFile" },
  config = function()
    require('glance').setup({
      height = 18, -- ウィンドウの高さ
      zindex = 45, -- ウィンドウの重なり順
      
      -- プレビューウィンドウの設定
      preview_win_opts = {
        cursorline = true,
        number = true,
        wrap = true,
      },
      
      -- リストウィンドウの設定
      list = {
        position = 'right', -- 'left' または 'right'
        width = 0.33, -- 幅（0-1の割合）
      },
      
      -- テーマ
      theme = {
        enable = true,
        mode = 'auto', -- 'auto', 'brighten', 'darken'
      },
      
      -- マッピング
      mappings = {
        list = {
          ['j'] = require('glance').actions.next,
          ['k'] = require('glance').actions.previous,
          ['<Down>'] = require('glance').actions.next,
          ['<Up>'] = require('glance').actions.previous,
          ['<Tab>'] = require('glance').actions.next_location,
          ['<S-Tab>'] = require('glance').actions.previous_location,
          ['<C-u>'] = require('glance').actions.preview_scroll_win(5),
          ['<C-d>'] = require('glance').actions.preview_scroll_win(-5),
          ['v'] = require('glance').actions.jump_vsplit,
          ['s'] = require('glance').actions.jump_split,
          ['t'] = require('glance').actions.jump_tab,
          ['<CR>'] = require('glance').actions.jump,
          ['o'] = require('glance').actions.jump,
          ['<leader>l'] = require('glance').actions.enter_win('preview'),
          ['q'] = require('glance').actions.close,
          ['Q'] = require('glance').actions.close,
          ['<Esc>'] = require('glance').actions.close,
        },
        preview = {
          ['Q'] = require('glance').actions.close,
          ['<Tab>'] = require('glance').actions.next_location,
          ['<S-Tab>'] = require('glance').actions.previous_location,
          ['<leader>l'] = require('glance').actions.enter_win('list'),
        },
      },
      
      -- フック（オプション）
      hooks = {},
      
      -- ファイルタイプを無視
      folds = {
        fold_closed = '',
        fold_open = '',
        folded = true,
      },
      
      indent_lines = {
        enable = true,
        icon = '│',
      },
      
      -- ウィンドウの境界線
      border = {
        enable = true,
      },
    })
  end,
}
