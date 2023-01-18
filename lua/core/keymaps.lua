vim.g.mapleader = ' '
vim.g.maplocalleader = ' '

vim.opt.backspace = '2'
vim.opt.showcmd = true
vim.opt.laststatus = 2
vim.opt.autowrite = true
vim.opt.cursorline = true
vim.opt.autoread = true

-- use spaces for tabs and whatnot
vim.opt.tabstop = 2
vim.opt.shiftwidth = 2
vim.opt.shiftround = true
vim.opt.expandtab = true


local opt = {
  noremap = true,
  silent = true,
}

local map = vim.api.nvim_set_keymap

map('i', 'jj', '<Esc>', opt)

-- move selected lines
map("v", "J", ":move '>+1<CR>gv-gv", opt)
map("v", "K", ":move '<-2<CR>gv-gv", opt)

-- indent in visual mode
map("v", "<", "<gv", opt)
map("v", ">", ">gv", opt)

-- copy/paste to clipboard
map('v', '<C-c>', '"*y', opt)
map('v', '<C-p>', '"*p', opt)
map('n', '<C-c>', '"*y', opt)
map('n', '<C-p>', '"*p', opt)


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


-- plugin shortcuts
local pluginKeys = {}

--pluginKeys.nvimTreeList = {
--  -- 打开文件或文件夹
--  { key = { "<CR>", "o", "<2-LeftMouse>" }, action = "edit" },
--  -- 分屏打开文件
--  { key = "v", action = "vsplit" },
--  { key = "h", action = "split" },
--  -- 显示隐藏文件
--  { key = "i", action = "toggle_custom" }, -- 对应 filters 中的 custom (node_modules)
--  { key = ".", action = "toggle_dotfiles" }, -- Hide (dotfiles)
--  -- 文件操作
--  --  { key = "R", action = "refresh" },
--  { key = "a", action = "create" },
--  { key = "d", action = "remove" },
--  { key = "r", action = "rename" },
--  { key = "x", action = "cut" },
--  { key = "c", action = "copy" },
--  { key = "p", action = "paste" },
--  { key = "s", action = "system_open" },
--}

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

