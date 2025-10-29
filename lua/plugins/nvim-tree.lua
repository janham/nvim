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
        
        -- Enterキーでファイルを開いて自動フォーカス（ファイルの場合のみ）
        vim.keymap.set("n", "<CR>", function()
          local node = api.tree.get_node_under_cursor()
          if node then
            -- ファイルの場合は開いてフォーカス移動
            if node.type ~= "directory" then
              api.node.open.edit()
              -- ファイルを開いた後、そのファイルにフォーカス
              vim.schedule(function()
                local wins = vim.api.nvim_list_wins()
                for _, win in ipairs(wins) do
                  local buf = vim.api.nvim_win_get_buf(win)
                  local ft = vim.api.nvim_buf_get_option(buf, 'filetype')
                  if ft ~= 'NvimTree' then
                    vim.api.nvim_set_current_win(win)
                    break
                  end
                end
              end)
            else
              -- ディレクトリの場合はデフォルト動作に任せる
              api.node.open.edit()
            end
          end
        end, { buffer = bufnr, desc = "Open file/directory" })
        
				--- Ctrl + e を無効化
        vim.keymap.set("n", "<C-e>", "<Nop>", { buffer = bufnr, desc = "Disabled" })

				--- vim-treeウィンドウで ZZ と ZQ を無効化
        vim.keymap.set("n", "ZZ", "<Nop>", { buffer = bufnr, desc = "Disabled" })
        vim.keymap.set("n", "ZQ", "<Nop>", { buffer = bufnr, desc = "Disabled" })
      end,
    })
  end,
}
