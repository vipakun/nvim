syntax on
set backspace=indent,eol,start
set cmdheight=2         " Give more space for displaying messages.
set colorcolumn=80
set cursorline          " highlight current line
set encoding=UTF-8
set expandtab
set hidden " allow switch buffer without save the buffer
set incsearch
set laststatus=2
set nobackup
set noerrorbells
set nofoldenable        " disable code folding"
set nohlsearch
set noshowmode          " use airline to show mode status instead
set noswapfile
set nowrap
set nu
set relativenumber
set scrolloff=5         " keep 5 lines below and above the cursor
set shiftwidth=2
set showmatch           " highlight matching [{()}]
set smartcase
set smartindent
set softtabstop=2
set tabstop=2
set undodir=~/.vim/undodir
set undofile
set wildignore+=*/node_modules/*,_site,*/__pycache__/,*/venv/*,*/target/*,*/.vim$,\~$,*/.log,*/.aux,*/.cls,*/.aux,*/.bbl,*/.blg,*/.fls,*/.fdb*/,*/.toc,*/.out,*/.glo,*/.log,*/.ist,*/.fdb_latexmk

highlight ColorColumn ctermbg=0 guibg=lightgrey
highlight IncSearch ctermbg=black ctermfg=yellow
highlight MatchParen cterm=underline ctermbg=green ctermfg=white
highlight Search ctermbg=yellow ctermfg=black

au BufNewFile,BufRead *.js,*.jsx,*.ts,*.tsx,*.html,*.css
    \ set tabstop=2 |
    \ set softtabstop=2 |
    \ set shiftwidth=2 |

call plug#begin('~/.config/plugged')
Plug 'morhetz/gruvbox'
" Telescope Begins
Plug 'nvim-telescope/telescope-fzf-native.nvim', { 'do': 'make' }  " For telescope sorter to improve sorting performance
Plug 'nvim-lua/plenary.nvim'
Plug 'nvim-treesitter/nvim-treesitter'
Plug 'nvim-telescope/telescope.nvim'
" Telescope Ends
call plug#end()


colorscheme gruvbox
set background=dark

let mapleader=" "
nnoremap <leader>pv :Vex<CR> 
" Open vim default Explore View
nnoremap <Leader><CR> :so ~/.config/nvim/init.vim<CR>
" Source nvim config file


" configure Telescope
" Find files using Telescope command-line sugar.
nnoremap <leader>ff <cmd>Telescope find_files<cr>
nnoremap <leader>fg <cmd>Telescope live_grep<cr>
nnoremap <leader>fb <cmd>Telescope buffers<cr>
nnoremap <leader>fh <cmd>Telescope help_tags<cr>

map <C-n> :NERDTreeToggle<CR>

