return {
  "nvim-tree/nvim-tree.lua",
  dependencies = { "nvim-tree/nvim-web-devicons" },
  config = function()
    -- netrwを無効化（nvim-treeと競合するため）
    vim.g.loaded_netrw = 1
    vim.g.loaded_netrwPlugin = 1
    
    require("nvim-tree").setup({
      -- 基本設定
      sort_by = "case_sensitive",
      view = {
        width = 30,
      },
      renderer = {
        group_empty = true,
        icons = {
          show = {
            file = true,
            folder = true,
            folder_arrow = true,
            git = true,
          },
        },
      },
      filters = {
        dotfiles = false,  -- 隠しファイルを表示
      },
      -- Git統合
      git = {
        enable = true,
        ignore = false,
      },
      -- ファイルを開いた後の動作
      actions = {
        open_file = {
          quit_on_open = false,  -- ファイルを開いてもvim-treeを閉じない
        },
      },
      -- カスタムキーマップ
      on_attach = function(bufnr)
        local api = require("nvim-tree.api")
			 
        -- デフォルトのキーマップを適用
        api.config.mappings.default_on_attach(bufnr)
        
        -- ファイルの自動フォーカス機能（デフォルトのEnterキーは変更しない）
        
				--- Ctrl + e を無効化
        vim.keymap.set("n", "<C-e>", "<Nop>", { buffer = bufnr, desc = "Disabled" })

				--- vim-treeウィンドウで ZZ と ZQ を無効化
        vim.keymap.set("n", "ZZ", "<Nop>", { buffer = bufnr, desc = "Disabled" })
        vim.keymap.set("n", "ZQ", "<Nop>", { buffer = bufnr, desc = "Disabled" })
      end,
    })
  end,
}
