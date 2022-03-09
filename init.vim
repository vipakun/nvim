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
set nowritebackup
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
set shortmess+=c
set showmatch           " highlight matching [{()}]
set smartcase
set smartindent
set softtabstop=2
set tabstop=2
set undodir=~/.vim/undodir
set undofile
set updatetime=300
set wildignore+=*/node_modules/*,_site,*/__pycache__/,*/venv/*,*/target/*,*/.vim$,\~$,*/.log,*/.aux,*/.cls,*/.aux,*/.bbl,*/.blg,*/.fls,*/.fdb*/,*/.toc,*/.out,*/.glo,*/.log,*/.ist,*/.fdb_latexmk

highlight ColorColumn ctermbg=0 guibg=lightgrey
highlight IncSearch ctermbg=black ctermfg=yellow
highlight MatchParen cterm=underline ctermbg=green ctermfg=white
highlight Search ctermbg=yellow ctermfg=black

au BufNewFile,BufRead *.js,*.jsx,*.ts,*.tsx,*.html,*.css
    \ set tabstop=2 |
    \ set softtabstop=2 |
    \ set shiftwidth=2 |
" set filetypes as typescriptreact
autocmd BufNewFile,BufRead *.tsx,*.jsx set filetype=typescriptreact
" au config for Python
au BufNewFile,BufRead *.py
    \ set tabstop=4 |
    \ set softtabstop=4 |
    \ set shiftwidth=4 |
    \ set textwidth=79 |
    \ set expandtab |
    \ set autoindent |
    \ set fileformat=unix |
    \ set colorcolumn=80 |
" Flag unnecessary whiteapsce for python files
highlight BadWhitespace ctermbg=red guibg=darkred
au BufRead,BufNewFile *.py,*.pyw,*.c,*.h match BadWhitespace /\s\+$/

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

" git-fugitive Begins
Plug 'tpope/vim-fugitive'
" vim-fugitive Ends

" js, jsx, graphql Begins
Plug 'pangloss/vim-javascript'
Plug 'leafgarland/typescript-vim'
Plug 'peitalin/vim-jsx-typescript'
Plug 'styled-components/vim-styled-components', { 'branch': 'main' }
Plug 'jparise/vim-graphql'
" js, jsx, graphql Begins
" MatchTagAlways
Plug 'Valloric/MatchTagAlways'
"
" Nerdtree Begins
Plug 'Xuyuanp/nerdtree-git-plugin'
Plug 'scrooloose/nerdtree', {'on': 'NERDTreeToggle'}
" Nerdtree Ends

" coc Begins
Plug 'neoclide/coc.nvim', {'branch': 'release'}
" coc Ends

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

" ===== configure airline
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#buffer_nr_show = 1
let g:airline#extensions#tabline#fnamemod = ':t'
let g:airline#extensions#tabline#tab_nr_type = 1
let g:airline_powerline_fonts = 1
let g:airline#extensions#tabline#show_tab_nr = 0
let g:airline_left_sep = ''
let g:airline_right_sep = ''
let g:airline#extensions#tabline#formatter = 'default'
let g:airline_theme='base16_gruvbox_dark_hard'

" ===== configure js, jsx graphql plugins
let g:javascript_plugin_jsdoc = 1

" ===== configure MatchTagAlways
let g:mta_use_matchparen_group = 1
let g:mta_set_default_matchtag_color = 1

" ===== coc configurations
" Use tab for trigger completion with characters ahead and navigate.
" NOTE: Use command ':verbose imap <tab>' to make sure tab is not mapped by
" other plugin before putting this into your config.
inoremap <silent><expr> <TAB>
      \ pumvisible() ? "\<C-n>" :
      \ <SID>check_back_space() ? "\<TAB>" :
      \ coc#refresh()
inoremap <expr><S-TAB> pumvisible() ? "\<C-p>" : "\<C-h>"

function! s:check_back_space() abort
  let col = col('.') - 1
  return !col || getline('.')[col - 1]  =~# '\s'
endfunction

" Use <c-space> to trigger completion.
if has('nvim')
  inoremap <silent><expr> <c-space> coc#refresh()
else
  inoremap <silent><expr> <c-@> coc#refresh()
endif

" GoTo code navigation.
nmap <silent> gd <Plug>(coc-definition)
nmap <silent> gy <Plug>(coc-type-definition)
nmap <silent> gi <Plug>(coc-implementation)
nmap <silent> gr <Plug>(coc-references)

" Use K to show documentation in preview window.
nnoremap <silent> K :call <SID>show_documentation()<CR>

function! s:show_documentation()
  if (index(['vim','help'], &filetype) >= 0)
    execute 'h '.expand('<cword>')
  elseif (coc#rpc#ready())
    call CocActionAsync('doHover')
  else
    execute '!' . &keywordprg . " " . expand('<cword>')
  endif
endfunction

" Formatting selected code.
xmap <leader>f  <Plug>(coc-format-selected)
nmap <leader>f  <Plug>(coc-format-selected)

let g:coc_global_extensions = ['coc-emmet', 'coc-snippets', 'coc-tsserver', 'coc-pairs', 'coc-json', 'coc-eslint', 'coc-tslint', 'coc-prettier']
"
" ===== Key Mappings

" Map the shotcuts for tab navigation
nnoremap <C-h> <C-w>h
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-l> <C-w>l

" highlight trailing whitespacjsone
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
