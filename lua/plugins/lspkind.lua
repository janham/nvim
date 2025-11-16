return {
  "onsails/lspkind.nvim",
  event = "VeryLazy",
  config = function()
    require("lspkind").init({
      -- アイコンのプリセット: 'default', 'codicons', または 'custom'
      mode = 'symbol_text',
      
      -- プリセット: 'default' (nerd fonts) または 'codicons' (VSCode icons)
      preset = 'codicons',
      
      -- シンボルマップをオーバーライド
      symbol_map = {
        Text = "󰉿",
        Method = "󰆧",
        Function = "󰊕",
        Constructor = "",
        Field = "󰜢",
        Variable = "󰀫",
        Class = "󰠱",
        Interface = "",
        Module = "",
        Property = "󰜢",
        Unit = "󰑭",
        Value = "󰎠",
        Enum = "",
        Keyword = "󰌋",
        Snippet = "",
        Color = "󰏘",
        File = "󰈙",
        Reference = "󰈇",
        Folder = "󰉋",
        EnumMember = "",
        Constant = "󰏿",
        Struct = "󰙅",
        Event = "",
        Operator = "󰆕",
        TypeParameter = "",
      },
    })
  end,
}
