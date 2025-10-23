-- 行番号の設定
vim.opt.number = true         -- 行番号を表示
-- vim.opt.relativenumber = true -- 相対行番号を表示

-- エディタの基本設定
vim.opt.signcolumn = "yes"    -- サインカラムを常に表示
vim.opt.cursorline = true     -- カーソル行をハイライト

-- インデント設定
vim.opt.tabstop = 2           -- タブの幅
vim.opt.shiftwidth = 2        -- インデントの幅
-- vim.opt.expandtab = true      -- タブをスペースに変換

-- 検索設定
vim.opt.ignorecase = true     -- 検索時に大文字小文字を無視
vim.opt.smartcase = true      -- 大文字が含まれている場合は区別

-- 見た目の設定
-- vim.opt.termguicolors = true  -- 24bitカラーを有効化
vim.opt.wrap = false          -- 行の折り返しをしない

-- その他
vim.opt.clipboard = "unnamedplus" -- システムクリップボードを使用
vim.opt.mouse = "a"           -- マウス操作を有効化
