return {
  'MagicDuck/grug-far.nvim',
  config = function()
    require('grug-far').setup({
      -- デフォルト設定
      -- エンジン: 'ripgrep' (rg) または 'astgrep' (ast-grep)
      engine = 'ripgrep',
      
      -- ウィンドウ設定
      windowCreationCommand = 'topleft split',
      
      -- キーマップ
      keymaps = {
        replace = { n = '<localleader>r' },
        qflist = { n = '<localleader>q' },
        syncLocations = { n = '<localleader>s' },
        syncLine = { n = '<localleader>l' },
        close = { n = '<localleader>c' },
        historyOpen = { n = '<localleader>t' },
        historyAdd = { n = '<localleader>a' },
        refresh = { n = '<localleader>f' },
        openLocation = { n = '<localleader>o' },
        gotoLocation = { n = '<enter>' },
        pickHistoryEntry = { n = '<enter>' },
        abort = { n = '<localleader>b' },
      },
      
      -- 検索結果のハイライト
      resultsHighlight = true,
      
      -- スピナーの表示
      spinnerStates = {
        '⠋', '⠙', '⠹', '⠸', '⠼', '⠴', '⠦', '⠧', '⠇', '⠏'
      },
    })
  end,
}
