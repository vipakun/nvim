-- vim.g global
-- vim.o option
-- vim.wo window option
-- vim.bo buffer option

-- utf8
vim.g.encoding = "UTF-8"
vim.o.fileencoding = 'utf-8'
-- jkhl buffer for edge 
vim.o.scrolloff = 4
vim.o.sidescrolloff = 4
-- number and relative number 
vim.wo.number = true
vim.wo.relativenumber = true
-- highlight cursor line 
vim.wo.cursorline = true
-- show left side sign column 
vim.wo.signcolumn = "yes"
-- columns warning line  
vim.wo.colorcolumn = "80"
-- change tab to 2 spaces 
vim.o.tabstop = 2
vim.bo.tabstop = 2
vim.o.softtabstop = 2
vim.o.shiftround = true
-- >> << shift width 
vim.o.shiftwidth = 2
vim.bo.shiftwidth = 2
-- use space to replace tab
vim.o.expandtab = true
vim.bo.expandtab = true
-- new line indent
vim.o.autoindent = true
vim.bo.autoindent = true
vim.o.smartindent = true
-- case insensitive search, unless search Captial Case explo 
vim.o.ignorecase = true
vim.o.smartcase = true
-- disable highlight search result 
vim.o.hlsearch = false
-- seach while typing 
vim.o.incsearch = true
-- give two lines for command line
vim.o.cmdheight = 2
-- auto reload file while file is modified by other editor
vim.o.autoread = true
vim.bo.autoread = true
-- do not wrap the line if it is too long 
vim.wo.wrap = false
-- use > < to move to next line if cursor is at the end of the line  
vim.o.whichwrap = '<,>,[,]'
-- hide the modifed buffer 
vim.o.hidden = true
-- enable mouse 
vim.o.mouse = "a"
-- disable backup file 
vim.o.backup = false
vim.o.writebackup = false
vim.o.swapfile = false
-- smaller updatetime
vim.o.updatetime = 300
-- if two key strokes interval is less than 500 ms, vim considers it is one action
vim.o.timeoutlen = 500
-- split window will show from below and right 
vim.o.splitbelow = true
vim.o.splitright = true
-- autocomplete but not autoselect 
vim.g.completeopt = "menu,menuone,noselect,noinsert"
-- styles
vim.o.background = "dark"
vim.o.termguicolors = true
vim.opt.termguicolors = true
-- if space, show dot
vim.o.list = true
vim.o.listchars = "space:·"
-- 补全增强
vim.o.wildmenu = true
-- Dont' pass messages to |ins-completin menu|
vim.o.shortmess = vim.o.shortmess .. 'c'
-- 补全最多显示10行
vim.o.pumheight = 10
-- show tabline
vim.o.showtabline = 2
-- disable mode if using plugin 
vim.o.showmode = false
