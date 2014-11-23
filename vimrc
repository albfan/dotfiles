set nocompatible              " be iMproved, required
filetype off                  " required
set number
autocmd! bufwritepost ~/.vimrc source %
map <leader>sv :source $MYVIMRC<CR>

let mapleader = ","

set clipboard=unnamed

set wildmode=longest,list

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/vundle/
call vundle#rc()
" alternatively, pass a path where Vundle should install plugins
"let path = '~/some/path/here'
"call vundle#rc(path)

" let Vundle manage Vundle, required
Plugin 'gmarik/vundle'

" The following are examples of different formats supported.
" Keep Plugin commands between here and filetype plugin indent on.
" git repos on your local machine (i.e. when working on your own plugin)

Plugin 'terryma/vim-multiple-cursors' "support for multi selections Ctrl+N
Plugin 'albfan/CCTree-1'              "cscope tree
Plugin 'gcmt/wildfire.vim'
Plugin 'tpope/vim-scriptease'         "helper for write vim scripts
Plugin 'tpope/vim-fugitive'           "helper for using git on vim
Plugin 'albfan/git-time-lapse'        "show a history time lapse like perforce

Plugin 'vim-scripts/genutils'
Plugin 'albfan/BreakPts'              "Help debug vim-scripts (only remote)
Plugin 'vim-scripts/Decho'            "Echo messages on vim scripts execution
Plugin 'yuratomo/dbg.vim'
Plugin 'vim-scripts/YankRing.vim'     "Cycles through last yanked chunks Ctrl+y
Plugin 'Yggdroot/indentLine'          "Shows a vertical line on defined tabstop
"Plugin 'SirVer/ultisnips'            "snippets for coding for<TAB> creates a loop etc...
Plugin 'ervandew/supertab'            "tab autocompletion
Plugin 'Raimondi/delimitMate'         "Help to insert closing comma, braces
Plugin 'scrooloose/nerdtree'          "dir navigation
Plugin 'kien/ctrlp.vim'               "fuzzy search for files
Plugin 'bling/vim-airline'            "handy statusline
Plugin 'altercation/vim-colors-solarized' "solarized theme
Plugin 'sjl/gundo.vim'                "show undo tree
Plugin 'sjl/splice.vim'               "helper for diffs
Plugin 'davidhalter/jedi-vim'        
Plugin 'airblade/vim-gitgutter'       "Ruler for changes on git tracked files
Plugin 'vim-scripts/AnsiEsc.vim'      "conceal escape colors to show a WYSIWYG
Plugin 'albfan/vim-minimap'           "A minimap file
Plugin 'albfan/gapply.vim'            "A try to ease git add workflow
Plugin 'albfan/cream-showinvisibles'  "Show whitespace
Plugin 'rking/ag.vim'                 "Use ag instead of grep
Plugin 'airblade/vim-rooter'          "Always set working directory to root of project
Plugin 'craigemery/vim-autotag'       "refresh tags when writing file
Plugin 'albfan/yavdb'

filetype plugin indent on     " required
" To ignore plugin indent changes, instead use:
"filetype plugin on
"
" Brief help
" :PluginList          - list configured plugins
" :PluginInstall(!)    - install (update) plugins
" :PluginSearch(!) foo - search (or refresh cache first) for foo
" :PluginClean(!)      - confirm (or auto-approve) removal of unused plugins
"
" see :h vundle for more details or wiki for FAQ
" NOTE: comments after Plugin commands are not allowed.
" Put your stuff after this line

" Solarized scheme
syntax enable
 
if has('gui_running')
   set background=dark
else
   set background=dark
   "set background=light
endif

"Show column layout error
"match ErrorMsg '\%>120v.\+'
"set cc=120
highlight ColorColumn ctermbg=235 guibg=#2c2d27
map <Leader>c :let &colorcolumn=join(range(120,999),",")<CR>
map <Leader>cc :let &colorcolumn=''<CR>

"colorscheme solarized 

inoremap <C-C> <ESC>

"CCTree
let CCTreeDisplayMode = 3
if filereadable("cscope.out")
"   CCTreeLoadDB cscope.out
endif 

nmap <Space> <S-Down>
nmap <S-Space> <S-Up> "Doesn't work on vim only in gvim

nmap <C-B> :tag <C-R>=expand('<cword>')<CR><CR>

" vertical line indentation
let g:indentLine_color_term = 239
let g:indentLine_color_gui = '#09AA08'
let g:indentLine_char = '│'

" NERDTree config
nmap <leader>d :NERDTreeToggle<CR>

nmap <leader>u :GundoToggle<CR>

" CtrlP Configuration {{{
" Use <leader>t to open ctrlp
let g:ctrlp_map = '<C-p>'
" Ignore these directories
set wildignore+=*/build/*,*/target/*
" disable caching
"let g:ctrlp_use_caching=0
"}}}

" airline
let g:airline_powerline_fonts = 1
let g:airline#extensions#tabline#enabled = 1
" vim-powerline
"let g:Powerline_symbols = 'fancy'
set t_Co=256
set laststatus=2

set tabstop=3
set softtabstop=3
set shiftwidth=3
set shiftround
set expandtab

" disable formatting when pasting large chunks of code
" this disable keys for insert mode
"set paste

set hlsearch
set incsearch
set ignorecase
set smartcase

set number

map <c-j> <c-w>j
map <c-k> <c-w>k
map <c-l> <c-w>l
map <c-h> <c-w>h

augroup vim_python
    autocmd!
    " highlight characters past column 120
    autocmd FileType python highlight Excess ctermbg=DarkGrey guibg=Black
    autocmd FileType python match Excess /\%120v.*/
    autocmd FileType python set nowrap
augroup END

augroup vim_java
    autocmd!
    " highlight characters past column 120
    autocmd FileType java highlight Excess ctermbg=DarkGrey guibg=Black
    autocmd FileType java match Excess /\%120v.*/
    autocmd FileType java set makeprg=mvn
    autocmd FileType java set errorformat=[ERROR]\ %f:[%l%.%c]%m
augroup END

" First try for indexing files
map <Leader>t :!ctags -R ./src $JDK_HOME/src<CR> 

"Yankring
let g:yankring_replace_n_pkey = '<C-Y>'
let g:yankring_replace_n_nkey = '<C-U>'

"relative number
function! NumberToggle()
  if(&relativenumber == 1)
    set norelativenumber
  else
    set relativenumber
  endif
endfunc

nnoremap <Leader>n :call NumberToggle()<cr>

autocmd FocusLost * set norelativenumber
autocmd FocusGained * set relativenumber

autocmd InsertEnter * set norelativenumber
autocmd InsertLeave * set relativenumber

"git gutter
highlight clear SignColumn
nnoremap <Leader>g :GitGutterToggle<CR>

