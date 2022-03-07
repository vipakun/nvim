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
set showcmd
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

" Airline Begins
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
" Airline Ends

" Nerdtree Begins
Plug 'Xuyuanp/nerdtree-git-plugin'
Plug 'scrooloose/nerdtree', {'on': 'NERDTreeToggle'}
" Nerdtree Ends
call plug#end()


colorscheme gruvbox
set background=dark

let mapleader=" "
nnoremap <leader>pv :Vex<CR>
" Open vim default Explore View
nnoremap <Leader><CR> :so ~/.config/nvim/init.vim<CR>
" Source nvim config file


" ===== configure Telescope
" lua require('pluginX')
" Find files using Telescope command-line sugar.
nnoremap <leader>ff <cmd>Telescope find_files<cr>
nnoremap <leader>fg <cmd>Telescope live_grep<cr>
nnoremap <leader>fb <cmd>Telescope buffers<cr>
nnoremap <leader>fh <cmd>Telescope help_tags<cr>

" ===== configure Nerdtree
" Map a shortcut for NERDTree
map <C-n> :NERDTreeToggle<CR>
" Close vim if the only window is nerdtree
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif
" NERDTree automatically open when vim starts up
" autocmd vimenter * NERDTree
" NERDTree shows hidden files.
let NERDTreeShowHidden=1
" Nerdtree config for wildignore
let NERDTreeIgnore=['\.o$', '\~$','.DS_Store','*.swp']
" For mouse click in NERDTree
:set mouse=a
let g:NERDTreeMouseMode=3
" wildignore "
let NERDTreeIgnore=['\.o$', '\~$','.DS_Store','*.swp']

" ===== configure airline

" ===== Key Mappings

" Map the shotcuts for tab navigation
nnoremap <C-h> <C-w>h
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-l> <C-w>l

" highlight trailing whitespace
match ErrorMsg '\s\+$'


" remove trailing whitespaces automatically
autocmd BufWritePre * :%s/\s\+$//e

" Key Mapping: Ctrl-c to copy selected text
vmap <C-c> :w !pbcopy<CR><CR>
" key Mapping: Ctrl-x to cut selected text
vmap <C-x> :!pbcopy<CR>
" Key Mapping: Ctrl-a to copy the entire file contents
nmap <C-a> ggVG:w !pbcopy<CR><CR>
" Map to move lines
nnoremap <S-Up> :m-2<CR>
nnoremap <S-Down> :m+<CR>
inoremap <S-Up> <Esc>:m-2<CR>
inoremap <S-Down> <Esc>:m+<CR>
vnoremap <S-Up> <Esc>:m-2<CR>
vnoremap <S-Down> <Esc>:m+<CR>

" Tmux Key Binding
if &term =~ '^screen'
    " tmux will send xterm-style keys when its xterm-keys option is on
    execute "set <xUp>=\e[1;*A"
    execute "set <xDown>=\e[1;*B"
    execute "set <xRight>=\e[1;*C"
    execute "set <xLeft>=\e[1;*D"
endif
