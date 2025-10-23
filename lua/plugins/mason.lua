return {
  "williamboman/mason.nvim",
  dependencies = {
    "williamboman/mason-lspconfig.nvim",
    "WhoIsSethDaniel/mason-tool-installer.nvim",
  },
  config = function()
    local mason = require("mason")
    local mason_lspconfig = require("mason-lspconfig")
    local mason_tool_installer = require("mason-tool-installer")

    mason.setup({
      ui = {
        icons = {
          package_installed = "✓",
          package_pending = "➜",
          package_uninstalled = "✗",
        },
      },
    })

    mason_lspconfig.setup({
      -- 自動インストールするLSPサーバー
      ensure_installed = {
        "lua_ls",       -- Lua
        "pyright",      -- Python
        "ts_ls",        -- TypeScript/JavaScript
        "html",         -- HTML
        "cssls",        -- CSS
        "jsonls",       -- JSON
        "bashls",       -- Bash
        "intelephense", -- PHP
      },
      -- 自動インストール（新しいファイルタイプが検出されたときに自動でLSPサーバーをインストール）
      automatic_installation = true,
    })

    mason_tool_installer.setup({
      ensure_installed = {
        "prettier", -- フォーマッター
        "stylua",   -- Luaフォーマッター
        "eslint_d", -- JavaScriptリンター
      },
    })
  end,
}
