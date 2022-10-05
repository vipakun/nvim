-- Modes
--   normal_mode = "n",
--   insert_mode = "i",
--   visual_mode = "v",
--   visual_block_mode = "x",
--   term_mode = "t",
--   command_mode = "c",

-- leader key as Space
vim.g.mapleader = " "
vim.g.maplocalleader = " "

local opt = {
  noremap = true,
  silent = true,
}

local map = vim.api.nvim_set_keymap

map('i', 'jj', '<Esc>', {})

-- move selected lines
map("v", "J", ":move '>+1<CR>gv-gv", opt)
map("v", "K", ":move '<-2<CR>gv-gv", opt)

-- indent in visual mode
map("v", "<", "<gv", opt)
map("v", ">", ">gv", opt)

-- split windows
-- remove default s binding
map("n", "s", "", opt)
-- vertical split
map("n", "sv", ":vsp<CR>", opt)

-- Ctrol + sv will open selected file vertically
--
-- horizontal split
map("n", "sh", ":sp<CR>", opt)
-- close current splitted window
map("n", "sc", "<C-w>c", opt)
-- close other windows
map("n", "so", "<C-w>o", opt)
-- alt + hjkl  jump between windows
map("n", "<C-h>", "<C-w>h", opt)
map("n", "<C-j>", "<C-w>j", opt)
map("n", "<C-k>", "<C-w>k", opt)
map("n", "<C-l>", "<C-w>l", opt)
-- map("n", "p", '"_dP', opt)

map("n", "<leader>h", ":BufferLineCyclePrev<CR>", opt)
map("n", "<leader>l", ":BufferLineCycleNext<CR>", opt)
-- map("n", "<leader>l", ":BufferLineCycleNext<CR>", opt)
-- close
-- "moll/vim-bbye"
map("n", "<leader>w", ":Bdelete!<CR>", opt)
-- map("n", "<leader>bl", ":BufferLineCloseRight<CR>", opt)
-- map("n", "<leader>bh", ":BufferLineCloseLeft<CR>", opt)
map("n", "<leader>bc", ":BufferLinePickClose<CR>", opt)


-- Telescrope
-- Find File
map("n", "<C-p>", ":Telescope find_files<CR>", opt)
-- Global Search
-- map("n", "<CS-f>", ":Telescope live_grep<CR>", opt)
map("n", "<C-f>", ":Telescope live_grep<CR>", opt)


-- plugin shortcuts
local pluginKeys = {}
map("n", "<leader>m", ":NvimTreeToggle<CR>", opt)

pluginKeys.nvimTreeList = {
  -- 打开文件或文件夹
  { key = { "<CR>", "o", "<2-LeftMouse>" }, action = "edit" },
  -- 分屏打开文件
  { key = "v", action = "vsplit" },
  { key = "h", action = "split" },
  -- 显示隐藏文件
  { key = "i", action = "toggle_custom" }, -- 对应 filters 中的 custom (node_modules)
  { key = ".", action = "toggle_dotfiles" }, -- Hide (dotfiles)
  -- 文件操作
  --  { key = "R", action = "refresh" },
  { key = "a", action = "create" },
  { key = "d", action = "remove" },
  { key = "r", action = "rename" },
  { key = "x", action = "cut" },
  { key = "c", action = "copy" },
  { key = "p", action = "paste" },
  { key = "s", action = "system_open" },
}

pluginKeys.telescopeList = {
  i = {
    -- 上下移动
    ["<Down>"] = "move_selection_next",
    ["<Up>"] = "move_selection_previous",
    -- 历史记录
    -- ["<C-n>"] = "cycle_history_next",
    -- ["<C-p>"] = "cycle_history_prev",
    -- 关闭窗口
    ["esc"] = "close",
    -- ["<C-c>"] = "close",
    -- 预览窗口上下滚动
    ["<C-u>"] = "preview_scrolling_up",
    ["<C-d>"] = "preview_scrolling_down",
  },
}

-- lsp 回调函数快捷键设置
pluginKeys.mapLSP = function(mapbuf)
  -- using lspkind-nvim
  -- rename
  -- mapbuf("n", "<leader>rn", "<cmd>lua vim.lsp.buf.rename()<CR>", opt)
  mapbuf("n", "<leader>rn", "<cmd>Lspsaga rename<CR>", opt)
  --code action
  --mapbuf("n", "<leader>ca", "<cmd>lua vim.lsp.buf.code_action()<CR>", opt)
  mapbuf("n", "<leader>ca", "<cmd>Lspsaga code_action<CR>", opt)
  --go xx
  --mapbuf("n", "gd", "<cmd>lua vim.lsp.buf.definition()<CR>", opt)
  --mapbuf("n", "gh", "<cmd>lua vim.lsp.buf.hover()<CR>", opt)
  --mapbuf("n", "gD", "<cmd>lua vim.lsp.buf.declaration()<CR>", opt)
  --mapbuf("n", "gi", "<cmd>lua vim.lsp.buf.implementation()<CR>", opt)
  --mapbuf("n", "gr", "<cmd>lua vim.lsp.buf.references()<CR>", opt)
  mapbuf("n", "gd", "<cmd>lua vim.lsp.buf.definition()<CR>", opt)
  mapbuf("n", "gh", "<cmd>Lspsaga hover_doc<cr>", opt)
  mapbuf("n", "gr", "<cmd>Lspsaga lsp_finder<CR>", opt)
  --diagnostic
  --mapbuf("n", "gp", "<cmd>lua vim.diagnostic.open_float()<CR>", opt)
  --mapbuf("n", "gk", "<cmd>lua vim.diagnostic.goto_prev()<CR>", opt)
  --mapbuf("n", "gj", "<cmd>lua vim.diagnostic.goto_next()<CR>", opt)
  mapbuf("n", "<leader>f", "<cmd>lua vim.lsp.buf.formatting()<CR>", opt)
  mapbuf("n", "gp", "<cmd>Lspsaga show_line_diagnostics<CR>", opt)
  mapbuf("n", "gj", "<cmd>Lspsaga diagnostic_jump_next<cr>", opt)
  mapbuf("n", "gk", "<cmd>Lspsaga diagnostic_jump_prev<cr>", opt)
  mapbuf("n", "<leader>f", "<cmd>lua vim.lsp.buf.formatting()<CR>", opt)
  --没用到
  --mapbuf('n', '<leader>q', '<cmd>lua vim.diagnostic.setloclist()<CR>', opt)
  --mapbuf("n", "<C-k>", "<cmd>lua vim.lsp.buf.signature_help()<CR>", opt)
  --mapbuf('n', '<space>wa', '<cmd>lua vim.lsp.buf.add_workspace_folder()<CR>', opt)
  --mapbuf('n', '<space>wr', '<cmd>lua vim.lsp.buf.remove_workspace_folder()<CR>', opt)
  --mapbuf('n', '<space>wl', '<cmd>lua print(vim.inspect(vim.lsp.buf.list_workspace_folders()))<CR>', opt)
  --mapbuf('n', '<space>D', '<cmd>lua vim.lsp.buf.type_definition()<CR>', opt)
end

-- nvim-cmp 自动补全
pluginKeys.cmp = function(cmp)
  return {
    -- 出现补全
    ["<C-.>"] = cmp.mapping(cmp.mapping.complete(), { "i", "c" }),
    -- 取消
    ["<C-,>"] = cmp.mapping({
      i = cmp.mapping.abort(),
      c = cmp.mapping.close()
    }),
    -- 上一个
    ["<C-k>"] = cmp.mapping.select_prev_item(),
    -- 下一个
    ["<C-j>"] = cmp.mapping.select_next_item(),
    -- 确认
    ["<CR>"] = cmp.mapping.confirm({
      select = true,
      behavior = cmp.ConfirmBehavior.Replace
    }),
    -- 如果窗口内容太多，可以滚动
    ["<C-u>"] = cmp.mapping(cmp.mapping.scroll_docs(-4), { "i", "c" }),
    ["<C-d>"] = cmp.mapping(cmp.mapping.scroll_docs(4), { "i", "c" }),
  }
end


-- typescript 快捷键
pluginKeys.mapTsLSP = function(mapbuf)
  mapbuf("n", "gs", ":TSLspOrganize<CR>", opt)
  mapbuf("n", "gr", ":TSLspRenameFile<CR>", opt)
  mapbuf("n", "gi", ":TSLspImportAll<CR>", opt)
end

return pluginKeys
