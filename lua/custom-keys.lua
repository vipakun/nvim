-- fetch keymap funciton

local map = vim.api.nvim_set_keymap 

-- leader key as Space
vim.g.mapleader = " "



-- map the key n to run the command :NvimTreeToggle
map('n', 'n', [[:NvimTreeToggle<CR>]], {})

-- CTRL+s to save the file
map('n', '<cmd-s>', [[:w<CR>]], {})

