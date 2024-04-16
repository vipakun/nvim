-- set leader key to space
vim.g.mapleader = " "
local keymap = vim.keymap -- for conciseness
-- plugin trouble
keymap.set("n", "<leader>st", function() require("trouble").open() end)
-- window management
keymap.set("n", "<leader>sv", "<C-w>v", { desc = "Split window vertically" }) -- split window vertically
keymap.set("n", "<leader>sh", "<C-w>s", { desc = "Split window horizontally" }) -- split window horizontally
keymap.set("n", "<leader>sx", "<cmd>close<CR>", { desc = "Close current split" }) -- close current split window
-- keymap.set("n", "<leader>se", "<C-w>=", { desc = "Make splits equal size" }) -- make split windows equal width & height

--  jj exit vim
keymap.set("i", "jj", "<Esc>")
--  reload neovim
keymap.set("n", "<leader>rs", "<cmd>:source $MYVIMRC<CR>")
-- clear highlight search
keymap.set("n","<leader>h", ":nohlsearch<CR>")
