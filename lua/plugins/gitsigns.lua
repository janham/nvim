return {
  "lewis6991/gitsigns.nvim",
  event = { "BufReadPre", "BufNewFile" },
  config = function()
    require('gitsigns').setup({
      signs = {
        add          = { text = '│' },
        change       = { text = '│' },
        delete       = { text = '_' },
        topdelete    = { text = '‾' },
        changedelete = { text = '~' },
        untracked    = { text = '┆' },
      },
      signcolumn = true,  -- サインカラムに表示
      numhl      = false, -- 行番号をハイライト
      linehl     = false, -- 行全体をハイライト
      word_diff  = false, -- 単語単位のdiff
      watch_gitdir = {
        follow_files = true
      },
      auto_attach = true,
      attach_to_untracked = true,
      current_line_blame = false, -- 現在行にインラインでblameを表示
      current_line_blame_opts = {
        virt_text = true,
        virt_text_pos = 'eol', -- 行末に表示
        delay = 1000,
        ignore_whitespace = false,
      },
      current_line_blame_formatter = '<author>, <author_time:%Y-%m-%d> - <summary>',
      sign_priority = 6,
      update_debounce = 100,
      status_formatter = nil,
      max_file_length = 40000,
      preview_config = {
        border = 'single',
        style = 'minimal',
        relative = 'cursor',
        row = 0,
        col = 1
      },
    })
  end,
}
