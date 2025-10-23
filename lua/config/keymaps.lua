-- set leader key to space

vim.g.mapleader = " "

local keymap = vim.keymap -- for conciseness

---------------------
-- General Keymaps -------------------

-- use jk to exit insert mode
keymap.set("i", "jk", "<ESC>", { desc = "Exit insert mode with jk" })

-- clear search highlights
keymap.set("n", "<leader>nh", ":nohl<CR>", { desc = "Clear search highlights" })

-- delete single character without copying into register
-- keymap.set("n", "x", '"_x')

-- increment/decrement numbers
keymap.set("n", "<leader>+", "<C-a>", { desc = "Increment number" }) -- increment
keymap.set("n", "<leader>-", "<C-x>", { desc = "Decrement number" }) -- decrement

-- window management
keymap.set("n", "<leader>sv", "<C-w>v", { desc = "Split window vertically" }) -- split window vertically
keymap.set("n", "<leader>sh", "<C-w>s", { desc = "Split window horizontally" }) -- split window horizontally
keymap.set("n", "<leader>se", "<C-w>=", { desc = "Make splits equal size" }) -- make split windows equal width & height
keymap.set("n", "<leader>sx", "<cmd>close<CR>", { desc = "Close current split" }) -- close current split window

keymap.set("n", "<leader>to", "<cmd>tabnew<CR>", { desc = "Open new tab" }) -- open new tab
keymap.set("n", "<leader>tx", "<cmd>tabclose<CR>", { desc = "Close current tab" }) -- close current tab
keymap.set("n", "<leader>tn", "<cmd>tabn<CR>", { desc = "Go to next tab" }) --  go to next tab
keymap.set("n", "<leader>tp", "<cmd>tabp<CR>", { desc = "Go to previous tab" }) --  go to previous tab
keymap.set("n", "<leader>tf", "<cmd>tabnew %<CR>", { desc = "Open current buffer in new tab" }) --  move current buffer to new tab

---------------------
-- nvim-tree
---------------------

keymap.set("n", "<leader>e", ":NvimTreeToggle<CR>", { desc = "Toggle file explorer", silent = true })
keymap.set("n", "<leader>ef", ":NvimTreeFindFile<CR>", { desc = "Find file in explorer", silent = true })
keymap.set("n", "<leader>ec", ":NvimTreeCollapse<CR>", { desc = "Collapse file explorer", silent = true })
keymap.set("n", "<leader>er", ":NvimTreeRefresh<CR>", { desc = "Refresh file explorer", silent = true })

---------------------
-- comment-box
---------------------

keymap.set({ "n", "v" }, "<leader>cb", "<cmd>lua require('comment-box').llbox()<CR>", { desc = "Comment box left aligned" })
keymap.set({ "n", "v" }, "<leader>cc", "<cmd>lua require('comment-box').lcbox()<CR>", { desc = "Comment box centered" })
keymap.set({ "n", "v" }, "<leader>ct", "<cmd>lua require('comment-box').llbox(3)<CR>", { desc = "Comment box with title" })
keymap.set("n", "<leader>cl", "<cmd>lua require('comment-box').lline()<CR>", { desc = "Comment line left" })
keymap.set("n", "<leader>cL", "<cmd>lua require('comment-box').cline()<CR>", { desc = "Comment line centered" })
keymap.set({ "n", "v" }, "<leader>cs", "<cmd>lua require('comment-box').catalog()<CR>", { desc = "Select comment box style" })
keymap.set({ "n", "v" }, "<leader>cd", "<cmd>lua require('comment-box').dbox()<CR>", { desc = "Remove comment box" })

---------------------
-- grug-far (検索・置換)
---------------------

-- grug-farを開く
keymap.set("n", "<leader>sr", function()
  require('grug-far').open()
end, { desc = "Search and Replace" })

-- 現在の単語で検索
keymap.set("n", "<leader>sw", function()
  require('grug-far').open({ prefills = { search = vim.fn.expand("<cword>") } })
end, { desc = "Search current word" })

-- ビジュアルモードで選択したテキストで検索
keymap.set("v", "<leader>sr", function()
  require('grug-far').with_visual_selection()
end, { desc = "Search selection" })

-- 現在のファイルのみで検索・置換
keymap.set("n", "<leader>sf", function()
  require('grug-far').open({ prefills = { paths = vim.fn.expand("%") } })
end, { desc = "Search in current file" })

---------------------
-- telescope
---------------------

-- プロジェクト全体の検索
keymap.set("n", "<leader>ff", "<cmd>Telescope find_files<cr>", { desc = "Find files" })
keymap.set("n", "<leader>fr", "<cmd>Telescope oldfiles<cr>", { desc = "Find recent files" })
keymap.set("n", "<leader>fs", "<cmd>Telescope live_grep<cr>", { desc = "Find string in project" })
keymap.set("n", "<leader>fc", "<cmd>Telescope grep_string<cr>", { desc = "Find string under cursor" })
keymap.set("n", "<leader>fb", "<cmd>Telescope buffers<cr>", { desc = "Find buffers" })
keymap.set("n", "<leader>fh", "<cmd>Telescope help_tags<cr>", { desc = "Find help" })
keymap.set("n", "<leader>fk", "<cmd>Telescope keymaps<cr>", { desc = "Find keymaps" })
keymap.set("n", "<leader>ft", "<cmd>Telescope colorscheme<cr>", { desc = "Find colorscheme" })

-- 現在のファイル内の検索
keymap.set("n", "<leader>/", "<cmd>Telescope current_buffer_fuzzy_find<cr>", { desc = "Find in current buffer" })

---------------------
-- glance (定義・参照表示)
---------------------

keymap.set("n", "gd", "<cmd>Glance definitions<cr>", { desc = "Glance definitions" })
keymap.set("n", "gr", "<cmd>Glance references<cr>", { desc = "Glance references" })
keymap.set("n", "gt", "<cmd>Glance type_definitions<cr>", { desc = "Glance type definitions" })
keymap.set("n", "gi", "<cmd>Glance implementations<cr>", { desc = "Glance implementations" })

---------------------
-- barbar (タブバー)
---------------------

local map = vim.keymap.set

-- タブ間の移動
map('n', '<leader>[', '<Cmd>BufferPrevious<CR>', { desc = "Previous buffer" })
map('n', '<leader>]', '<Cmd>BufferNext<CR>', { desc = "Next buffer" })

-- タブの並び替え
map('n', '<leader><', '<Cmd>BufferMovePrevious<CR>', { desc = "Move buffer left" })
map('n', '<leader>>', '<Cmd>BufferMoveNext<CR>', { desc = "Move buffer right" })

-- 番号でタブに移動
map('n', '<leader>1', '<Cmd>BufferGoto 1<CR>', { desc = "Go to buffer 1" })
map('n', '<leader>2', '<Cmd>BufferGoto 2<CR>', { desc = "Go to buffer 2" })
map('n', '<leader>3', '<Cmd>BufferGoto 3<CR>', { desc = "Go to buffer 3" })
map('n', '<leader>4', '<Cmd>BufferGoto 4<CR>', { desc = "Go to buffer 4" })
map('n', '<leader>5', '<Cmd>BufferGoto 5<CR>', { desc = "Go to buffer 5" })
map('n', '<leader>6', '<Cmd>BufferGoto 6<CR>', { desc = "Go to buffer 6" })
map('n', '<leader>7', '<Cmd>BufferGoto 7<CR>', { desc = "Go to buffer 7" })
map('n', '<leader>8', '<Cmd>BufferGoto 8<CR>', { desc = "Go to buffer 8" })
map('n', '<leader>9', '<Cmd>BufferGoto 9<CR>', { desc = "Go to buffer 9" })
map('n', '<leader>0', '<Cmd>BufferLast<CR>', { desc = "Go to last buffer" })

-- タブを閉じる
map('n', '<leader>x', '<Cmd>BufferClose<CR>', { desc = "Close current buffer" })
map('n', '<leader>bc', '<Cmd>BufferClose<CR>', { desc = "Close current buffer" })

-- 他のタブを全て閉じる
map('n', '<leader>bo', '<Cmd>BufferCloseAllButCurrent<CR>', { desc = "Close all but current buffer" })
map('n', '<leader>bO', '<Cmd>BufferCloseAllButCurrentOrPinned<CR>', { desc = "Close all but current or pinned" })

-- 左右のタブを閉じる
map('n', '<leader>bl', '<Cmd>BufferCloseBuffersLeft<CR>', { desc = "Close buffers to the left" })
map('n', '<leader>br', '<Cmd>BufferCloseBuffersRight<CR>', { desc = "Close buffers to the right" })

-- タブをピン留め
map('n', '<leader>bp', '<Cmd>BufferPin<CR>', { desc = "Pin/unpin buffer" })

-- タブをソート
map('n', '<leader>bb', '<Cmd>BufferOrderByBufferNumber<CR>', { desc = "Sort by buffer number" })
map('n', '<leader>bd', '<Cmd>BufferOrderByDirectory<CR>', { desc = "Sort by directory" })
map('n', '<leader>be', '<Cmd>BufferOrderByLanguage<CR>', { desc = "Sort by language" })
map('n', '<leader>bw', '<Cmd>BufferOrderByWindowNumber<CR>', { desc = "Sort by window number" })

-- バッファピッカー（魔法のモード）
map('n', '<leader>bP', '<Cmd>BufferPick<CR>', { desc = "Pick buffer" })

-- バッファを削除（強制）
map('n', '<leader>bD', '<Cmd>BufferClose!<CR>', { desc = "Force close buffer" })

---------------------
-- vim-doge (ドキュメント生成)
---------------------

keymap.set('n', '<leader>dg', '<Plug>(doge-generate)', { desc = "Generate documentation" })
keymap.set('n', '<leader>dc', '<Plug>(doge-comment-jump-forward)', { desc = "Jump to next TODO" })
keymap.set('n', '<leader>dC', '<Plug>(doge-comment-jump-backward)', { desc = "Jump to previous TODO" })

---------------------
-- gitsigns
---------------------

-- ハンク（変更の塊）のナビゲーション
keymap.set("n", "]h", "<cmd>Gitsigns next_hunk<cr>", { desc = "Next git hunk" })
keymap.set("n", "[h", "<cmd>Gitsigns prev_hunk<cr>", { desc = "Previous git hunk" })

-- ハンクのアクション
keymap.set("n", "<leader>hs", "<cmd>Gitsigns stage_hunk<cr>", { desc = "Stage hunk" })
keymap.set("v", "<leader>hs", "<cmd>Gitsigns stage_hunk<cr>", { desc = "Stage hunk" })
keymap.set("n", "<leader>hr", "<cmd>Gitsigns reset_hunk<cr>", { desc = "Reset hunk" })
keymap.set("v", "<leader>hr", "<cmd>Gitsigns reset_hunk<cr>", { desc = "Reset hunk" })
keymap.set("n", "<leader>hu", "<cmd>Gitsigns undo_stage_hunk<cr>", { desc = "Undo stage hunk" })

-- バッファ全体のアクション
keymap.set("n", "<leader>hS", "<cmd>Gitsigns stage_buffer<cr>", { desc = "Stage buffer" })
keymap.set("n", "<leader>hR", "<cmd>Gitsigns reset_buffer<cr>", { desc = "Reset buffer" })

-- プレビュー
keymap.set("n", "<leader>hp", "<cmd>Gitsigns preview_hunk<cr>", { desc = "Preview hunk" })
keymap.set("n", "<leader>hd", "<cmd>Gitsigns diffthis<cr>", { desc = "Diff this" })

-- ブレーム
keymap.set("n", "<leader>hb", "<cmd>Gitsigns blame_line<cr>", { desc = "Blame line" })
keymap.set("n", "<leader>hB", "<cmd>Gitsigns toggle_current_line_blame<cr>", { desc = "Toggle line blame" })

-- テキストオブジェクト
keymap.set({"o", "x"}, "ih", ":<C-U>Gitsigns select_hunk<CR>", { desc = "Select hunk" })
