return {
  "nvim-treesitter/nvim-treesitter-context",
  dependencies = { "nvim-treesitter/nvim-treesitter" },
  event = { "BufReadPre", "BufNewFile" },
  config = function()
    require("treesitter-context").setup({
      enable = true,
      max_lines = 0,            -- コンテキストの最大行数（0は無制限）
      min_window_height = 0,    -- 最小ウィンドウ高
      line_numbers = true,      -- 行番号を表示
      multiline_threshold = 20, -- 複数行のしきい値
      trim_scope = 'outer',     -- トリミング方法
      mode = 'cursor',          -- モード: 'cursor' または 'topline'
      separator = nil,          -- セパレータ文字
    })
  end,
}
