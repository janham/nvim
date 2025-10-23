return {
  "tpope/vim-fugitive",
  dependencies = {
    "tpope/vim-rhubarb", -- GitHubサポート
  },
  cmd = { "Git", "G", "Gdiffsplit", "Gread", "Gwrite", "Ggrep", "GMove", "GDelete", "GBrowse", "GRemove" },
  keys = {
    -- 基本操作
    { "<leader>gs", "<cmd>Git<cr>", desc = "Git status" },
    { "<leader>gc", "<cmd>Git commit<cr>", desc = "Git commit" },
    { "<leader>gp", "<cmd>Git push<cr>", desc = "Git push" },
    { "<leader>gP", "<cmd>Git pull<cr>", desc = "Git pull" },
    
    -- ブランチ操作
    { "<leader>gb", "<cmd>Git branch<cr>", desc = "Git branch" },
    { "<leader>gco", "<cmd>Git checkout<cr>", desc = "Git checkout" },
    
    -- ログ・履歴
    { "<leader>gl", "<cmd>Git log<cr>", desc = "Git log" },
    { "<leader>gbl", "<cmd>Git blame<cr>", desc = "Git blame (detailed)" },
    
    -- Diff
    { "<leader>gdf", "<cmd>Gdiffsplit<cr>", desc = "Git diff split" },
    { "<leader>gdv", "<cmd>Gvdiffsplit<cr>", desc = "Git diff vertical" },
    
    -- GitHub（vim-rhubarb）
    { "<leader>gho", "<cmd>GBrowse<cr>", desc = "Open in GitHub" },
  },
}
