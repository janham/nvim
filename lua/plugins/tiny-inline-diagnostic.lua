return {
  "rachartier/tiny-inline-diagnostic.nvim",
  event = "LspAttach",
  priority = 1000,
  config = function()
    require('tiny-inline-diagnostic').setup({
      -- オプション
      signs = {
        left = "",
        right = "",
        diag = "●",
        arrow = "    ",
        up_arrow = "    ",
        vertical = " │",
        vertical_end = " └"
      },
      hi = {
        error = "DiagnosticError",
        warn = "DiagnosticWarn",
        info = "DiagnosticInfo",
        hint = "DiagnosticHint",
        arrow = "NonText",
        background = "CursorLine",
        mixing_color = "None",
      },
      blend = {
        factor = 0.27,
      },
      options = {
        -- 診断を表示する条件
        show_source = false,
        
        -- 診断メッセージのスロットリング（ミリ秒）
        throttle = 20,
        
        -- マルチライン診断を表示
        softwrap = 15,
        
        -- 複数行の診断
        multiple_diag_under_cursor = false,
        
        -- オーバーフローした診断を表示
        overflow = {
          mode = "wrap",
        },
        
        -- 診断の形式
        format = nil,
        
        -- 仮想テキストとして診断を表示
        virt_texts = {
          priority = 2048,
        },
      },
    })

    -- デフォルトの診断表示を無効化
    vim.diagnostic.config({ virtual_text = false })
  end,
}
