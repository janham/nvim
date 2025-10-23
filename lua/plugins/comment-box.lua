return {
  "LudoPinelli/comment-box.nvim",
  event = "VeryLazy",
  config = function()
    require('comment-box').setup({
      doc_width = 80, -- ボックスの幅
      box_width = 60, -- 内側のボックス幅
      borders = {
        top = "─",
        bottom = "─",
        left = "│",
        right = "│",
        top_left = "╭",
        top_right = "╮",
        bottom_left = "╰",
        bottom_right = "╯",
      },
      line_width = 70,
      lines = {
        line = "─",
        line_start = "─",
        line_end = "─",
        title_left = "─",
        title_right = "─",
      },
      outer_blank_lines_above = 0,
      outer_blank_lines_below = 0,
      inner_blank_lines = 0,
      line_blank_line_above = false,
      line_blank_line_below = false,
    })
  end,
}
