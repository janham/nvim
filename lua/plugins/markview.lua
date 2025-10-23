return {
  "OXY2DEV/markview.nvim",
  ft = "markdown",
  dependencies = {
    "nvim-treesitter/nvim-treesitter",
    "nvim-tree/nvim-web-devicons",
  },
  config = function()
    require("markview").setup({
      -- プレビュー設定
      preview = {
        modes = { "n", "i", "no", "c" },
        hybrid_modes = { "i" },
        
        callbacks = {
          on_enable = function(_, win)
            vim.wo[win].conceallevel = 2
            vim.wo[win].concealcursor = "nc"
          end
        },
      },
      
      -- Markdown要素の設定
      markdown = {
        -- ヘッダー
        headings = {
          enable = true,
          shift_width = 0,
          
          heading_1 = {
            style = "label",
            sign = "󰌕 ",
            sign_hl = "rainbow1",
            hl = "MarkviewHeading1",
          },
          heading_2 = {
            style = "label",
            sign = "󰌖 ",
            sign_hl = "rainbow2",
            hl = "MarkviewHeading2",
          },
          heading_3 = {
            style = "label",
            sign = " ",
            sign_hl = "rainbow3",
            hl = "MarkviewHeading3",
          },
          heading_4 = {
            style = "label",
            sign = " ",
            sign_hl = "rainbow4",
            hl = "MarkviewHeading4",
          },
          heading_5 = {
            style = "label",
            sign = " ",
            sign_hl = "rainbow5",
            hl = "MarkviewHeading5",
          },
          heading_6 = {
            style = "label",
            sign = " ",
            sign_hl = "rainbow6",
            hl = "MarkviewHeading6",
          },
        },
        
        -- コードブロック
        code_blocks = {
          enable = true,
          style = "language",
          border_hl = "MarkviewCode",
          sign = true,
          sign_hl = nil,
        },
        
        -- インラインコード
        inline_codes = {
          enable = true,
          hl = "MarkviewInlineCode",
        },
        
        -- リンク
        links = {
          enable = true,
          hyperlinks = {
            icon = "󰌹 ",
            hl = "MarkviewHyperlink",
          },
          images = {
            icon = "󰥶 ",
            hl = "MarkviewImage",
          },
          emails = {
            icon = "󰇮 ",
            hl = "MarkviewEmail",
          },
        },
        
        -- チェックボックス
        checkboxes = {
          enable = true,
          checked = {
            text = "󰱒 ",
            hl = "MarkviewCheckboxChecked",
          },
          unchecked = {
            text = "󰄱 ",
            hl = "MarkviewCheckboxUnchecked",
          },
          pending = {
            text = "󰥔 ",
            hl = "MarkviewCheckboxPending",
          },
        },
        
        -- リスト
        list_items = {
          enable = true,
          indent_size = 2,
          shift_width = 2,
        },
        
        -- 水平線
        horizontal_rules = {
          enable = true,
        },
        
        -- テーブル
        tables = {
          enable = true,
          text = {
            top = "─",
            header = "─",
            separator = "─",
            bottom = "─",
            left = "│",
            right = "│",
            vertical = "│",
            overlap = "┼",
            top_left = "╭",
            top_right = "╮",
            bottom_left = "╰",
            bottom_right = "╯",
            header_left = "├",
            header_right = "┤",
          },
        },
        
        -- ブロッククォート
        block_quotes = {
          enable = true,
          default = {
            border = "▋",
            border_hl = "MarkviewBlockQuoteDefault",
          },
        },
      },
    })
  end,
}
