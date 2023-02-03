vim.g.mapleader = " "

local keymap = vim.keymap -- for conciseness

-- general keymaps

-- jj to exit edit mode
keymap.set("i", "jj", "<Esc>")
-- space+n+h, no highlight
keymap.set("n", "<leader>nh", ":nohl<CR>")

-- delete single character without copying into register
-- keymap.set("n", "x", '"_x')

-- move selected lines
keymap.set("v", "J", ":move '>+1<CR>gv-gv")
keymap.set("v", "K", ":move '<-2<CR>gv-gv")

-- indent in visual mode
keymap.set("v", "<", "<gv")
keymap.set("v", ">", ">gv")

-- increment/decrement numbers
keymap.set("n", "<leader>+", "<C-a>") -- increment
keymap.set("n", "<leader>-", "<C-x>") -- decrement

-- window management
keymap.set("n", "<leader>sv", "<C-w>v") -- split window vertically
keymap.set("n", "<leader>sh", "<C-w>s") -- split window horizontally
keymap.set("n", "<leader>se", "<C-w>=") -- make split windows equal width & height
keymap.set("n", "<leader>sx", ":close<CR>") -- close current split window
keymap.set("n", "<leader>wo", "<C-w>o") -- close other windows

-- tab management
keymap.set("n", "<leader>to", ":tabnew<CR>") -- open new tab
keymap.set("n", "<leader>tx", ":tabclose<CR>") -- close current tab
keymap.set("n", "<leader>tn", ":tabn<CR>") --  go to next tab
keymap.set("n", "<leader>tp", ":tabp<CR>") --  go to previous tab

-- alt + hjkl  jump between windows
keymap.set("n", "<C-h>", "<C-w>h")
keymap.set("n", "<C-j>", "<C-w>j")
keymap.set("n", "<C-k>", "<C-w>k")
keymap.set("n", "<C-l>", "<C-w>l")

-- vim-maximizer
keymap.set("n", "<leader>sm", ":MaximizerToggle<CR>") -- toggle split window maximization

-- nvim-tree
keymap.set("n", "<leader>e", ":NvimTreeToggle<CR>") -- leader+e(xplore) to toggle

-- telescope
keymap.set("n", "<leader>ff", "<cmd>Telescope find_files<CR>") -- find files within current working directory, respects .gitignore
keymap.set("n", "<leader>fs", "<cmd>Telescope live_grep<CR>") -- find string in current working directory as you type
keymap.set("n", "<leader>fg", "<cmd>Telescope grep_string<CR>") -- find string under cursor in current working directory
keymap.set("n", "<leader>fb", "<cmd>Telescope buffers<CR>") -- list open buffers in current neovim instance
keymap.set("n", "<leader>fh", "<cmd>Telescope help_tags<CR>") -- list available help tags

-- trouble
keymap.set("n", "<leader>xx", "<cmd>TroubleToggle<CR>")
keymap.set("n", "<leader>xw", "<cmd>TroubleToggle workspace_diagnostics<CR>")
keymap.set("n", "<leader>xx", "<cmd>TroubleToggle document_diagnostics<CR>")
keymap.set("n", "<leader>xx", "<cmd>TroubleToggle quickfix<CR>")
