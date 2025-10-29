return {
  "nvim-treesitter/nvim-treesitter",
  build = ":TSUpdate",
  event = { "BufReadPre", "BufNewFile" },
  config = function()
    require("nvim-treesitter.configs").setup({
      -- インストールする言語
      ensure_installed = {
        "lua",
        "vim",
        "vimdoc",
        "javascript",
        "typescript",
        "python",
        "html",
        "css",
        "json",
				"php",
				"bash",
				"markdown",
				"markdown_inline"
        -- 必要な言語を追加
      },
      
      -- 自動インストール
      auto_install = true,
      
      -- シンタックスハイライト
      highlight = {
        enable = true,
      },
      
      -- インデント
      indent = {
        enable = true,
      },
    })
  end,
}
