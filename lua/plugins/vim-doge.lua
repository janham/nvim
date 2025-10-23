return {
  'kkoomen/vim-doge',
  build = ':call doge#install()',
  event = "VeryLazy",
  config = function()
    -- ドキュメントコメントのスタイル設定
    vim.g.doge_doc_standard_php = 'phpdoc'
    vim.g.doge_doc_standard_python = 'google'  -- 'google', 'numpy', 'reST', 'sphinx'
    vim.g.doge_doc_standard_javascript = 'jsdoc'
    vim.g.doge_doc_standard_typescript = 'jsdoc'
    
    -- コメントの挙動設定
    vim.g.doge_comment_interactive = 1  -- インタラクティブモード
    vim.g.doge_comment_jump_modes = {'n', 'i', 's'}  -- ジャンプモード
    vim.g.doge_comment_jump_wrap = 1  -- 最後までジャンプしたら最初に戻る
    
    -- バッファのファイルタイプ設定
    vim.g.doge_enable_mappings = 0  -- デフォルトのマッピングを無効化（自分で設定）
    
    -- TODO プレースホルダー
    vim.g.doge_buffer_mappings = 1
  end,
}
