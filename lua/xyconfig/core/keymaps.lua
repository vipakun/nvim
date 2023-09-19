-- set leader key to space
vim.g.mapleader = " "
local keymap = vim.keymap -- for conciseness
-- plugin trouble
keymap.set("n", "<leader>sv", function() require("trouble").open() end)
--  jj exit vim
keymap.set("i", "jj", "<Esc>")
--  reload neovim
keymap.set("n", "<leader>rs", "<cmd>:source $MYVIMRC<CR>")


