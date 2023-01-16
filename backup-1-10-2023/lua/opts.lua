--[[ opts.lua ]]
local opt = vim.opt

-- [[ Context ]]
opt.cmdheight = 2                -- int: Give more space for cmd
opt.colorcolumn = '80'           -- str:  Show col for max line length
opt.cursorline = true            -- bool: Show cursorline
opt.number = true                -- bool: Show line numbers
opt.backup = false               -- bool: Disable backup
opt.foldenable = false          -- bool: Not fold code
opt.relativenumber = true        -- bool: Show relative line numbers
opt.scrolloff = 4                -- int:  Min num lines of context
opt.showmode = true              -- bool: TOGGLE Do not show mode. Use package instead
opt.wrap = false                 -- bool: No Wrap
opt.scrolloff = 5                -- int: 5 lines on screen below or above the cursor 
opt.showcmd = true               -- bool: showcmd 
opt.showmatch = true             -- bool: show matched bracket 
opt.smartindent = true           -- bool: doing smart indentation
opt.undofile = true              -- bool: auto saves undo hisotry to an undo file
opt.undodir = '~/.config/nvim/undodir' -- string: define the undo dir
-- opt.wildignore = '*/node_modules/*,_site,*/__pycache__/,*/venv/*,*/target/*,*/.vim$,*/.lua$,\~$,*/.log,*/.aux,*/.cls,*/.aux,*/.bbl,*/.blg,*/.fls,*/.fdb*/,*/.toc,*/.out,*/.glo,*/.log,*/.ist,*/.fdb_latexmk'

-- [[ Filetypes ]]
opt.encoding = 'utf8'            -- str:  String encoding to use
opt.fileencoding = 'utf8'        -- str:  File encoding to use
opt.swapfile = false             -- bool: Disable swapfile

-- [[ Theme ]]
opt.syntax = "ON"                -- str:  Allow syntax highlighting
opt.termguicolors = true         -- bool: If term supports ui color then enable

-- [[ Search ]]
opt.ignorecase = true            -- bool: Ignore case in search patterns
opt.smartcase = true             -- bool: Override ignorecase if search contains capitals
opt.incsearch = true             -- bool: Use incremental search
opt.hlsearch = false             -- bool: Highlight search matches

-- [[ Whitespace ]]
opt.expandtab = true             -- bool: Use spaces instead of tabs
opt.shiftwidth = 2               -- num:  Size of an indent
opt.softtabstop = 2              -- num:  Number of spaces tabs count for in insert mode
opt.tabstop = 2                  -- num:  Number of spaces tabs count for

-- [[ Splits ]]
opt.splitright = true            -- bool: Place new window to right of current one
opt.splitbelow = true            -- bool: Place new window below the current one
