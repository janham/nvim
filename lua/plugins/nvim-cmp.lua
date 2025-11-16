return {
  "hrsh7th/nvim-cmp",
  event = "InsertEnter",
  dependencies = {
    "hrsh7th/cmp-buffer",       -- バッファからの補完
    "hrsh7th/cmp-path",         -- パスの補完
    "L3MON4D3/LuaSnip",         -- スニペットエンジン
    "saadparwaiz1/cmp_luasnip", -- スニペット補完
    "rafamadriz/friendly-snippets", -- 便利なスニペット集
    "onsails/lspkind.nvim",     -- アイコン
  },
  config = function()
    local cmp = require("cmp")
    local luasnip = require("luasnip")
    local lspkind = require("lspkind")

    -- friendly-snippetsを読み込む
    require("luasnip.loaders.from_vscode").lazy_load()

    cmp.setup({
      completion = {
        completeopt = "menu,menuone,preview,noselect",
      },
      snippet = {
        expand = function(args)
          luasnip.lsp_expand(args.body)
        end,
      },
      mapping = cmp.mapping.preset.insert({
        ["<C-k>"] = cmp.mapping.select_prev_item(), -- 前の候補
        ["<C-j>"] = cmp.mapping.select_next_item(), -- 次の候補
        ["<C-b>"] = cmp.mapping.scroll_docs(-4),
        ["<C-f>"] = cmp.mapping.scroll_docs(4),
        ["<C-Space>"] = cmp.mapping.complete(), -- 補完を表示
        ["<C-e>"] = cmp.mapping.abort(), -- 補完を閉じる
        ["<CR>"] = cmp.mapping.confirm({ select = false }),
      }),
      -- 補完ソース
      sources = cmp.config.sources({
				{ name = "copilot", group_index = 2 },
        { name = "nvim_lsp" }, -- LSP
        { name = "luasnip" },  -- スニペット
        { name = "buffer" },   -- バッファ
        { name = "path" },     -- パス
      }),
      -- アイコンの設定
			formatting = {
        format = lspkind.cmp_format({
          mode = 'symbol_text',  -- 'text', 'text_symbol', 'symbol_text', 'symbol'
          maxwidth = 50,         -- 最大幅
          ellipsis_char = '...',  -- 省略記号
          
          -- カスタムフォーマット（オプション）
          before = function(entry, vim_item)
            return vim_item
          end
        })
      },
    })
  end,
}
