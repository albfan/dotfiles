set nocompatible              " be iMproved, required
filetype off                  " required
set number
autocmd! bufwritepost ~/.vimrc source %
map <leader>sv :source $MYVIMRC<CR>
set hidden

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
Plugin 'albfan/vim-breakpts'              "Help debug vim-scripts (only remote)
Plugin 'vim-scripts/Decho'            "Echo messages on vim scripts execution
Plugin 'vim-scripts/YankRing.vim'     "Cycles through last yanked chunks Ctrl+y
Plugin 'Yggdroot/indentLine'          "Shows a vertical line on defined tabstop
"Plugin 'SirVer/ultisnips'            "snippets for coding for<TAB> creates a loop etc...
Plugin 'ervandew/supertab'            "tab autocompletion
Plugin 'Raimondi/delimitMate'         "Help to insert closing comma, braces
Plugin 'scrooloose/nerdtree'          "dir navigation
Plugin 'scrooloose/nerdcommenter'     "easy comment/uncomment
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
Plugin 'albfan/dbg.vim'               "general debugger fixed for java sources
Plugin 'albfan/bashfunction.vim'      "navigate through declared bash functions
Plugin 'Shougo/unite.vim'             "A plugin from all things
Plugin 'sjbach/lusty'
"Plugin 'zhaocai/GoldenView.Vim'      "shorcuts conflicts with multi-cursors
Plugin 'Shougo/vimproc.vim'
Plugin 'xolox/vim-misc'
Plugin 'xolox/vim-easytags'
Plugin 'Lokaltog/vim-easymotion'      "easy motion in vim
Plugin 'majutsushi/tagbar'
Plugin 'szw/vim-ctrlspace'            "navigate through buffers and tabs
Plugin 'rstacruz/sparkup'             "write HTML faster
Plugin 'junegunn/goyo.vim'            "Non disturb mode
Plugin 'edkolev/tmuxline.vim'         "Config tmuxline from vim
Plugin 'mbbill/desertEx'
Plugin 'shawncplus/skittles_berry'
Plugin 'godlygeek/tabular'

filetype plugin indent on     " required

syntax enable

if &diff
   colorscheme skittles_berry
endif

highlight ColorColumn ctermbg=235 guibg=#2c2d27

function! ColorColumnToggle()
   if &colorcolumn == ''
      let &colorcolumn=join(range(120,999),",")
   else
      let &colorcolumn=''
   endif
endfunction

inoremap <C-C> <ESC>

"CCTree
let CCTreeDisplayMode = 3
if filereadable("cscope.out")
"   CCTreeLoadDB cscope.out
endif 

nmap <Space> <S-Down>
nmap <S-Space> <S-Up> "Doesn't work on vim only in gvim

nmap <C-B> :tag <C-R>=expand('<cword>')<CR><CR>
nmap <Leader>tw :set wrap!<CR>
nmap <Leader>tn :set number!<CR>
nmap <leader>tcc :call ColorColumnToggle()<CR>
nmap <leader>tt :TagbarToggle<CR>
nmap <leader>ti :IndentLinesToggle<CR>

" vertical line indentation
let g:indentLine_color_term = 239
let g:indentLine_color_gui = '#09AA08'
let g:indentLine_char = '│'



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
let g:airline#extensions#tabline#left_sep = ' '
let g:airline#extensions#tabline#left_alt_sep = '|'
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

" scary config, lets see what happens, recover is annoying
set nobackup
set noswapfile

"move around windows
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

"NERDTree
let NERDTreeIgnore=['\.pyc$', '\.class$']

" Index actual jdk
map <Leader>bjt :!ctags -R ./src $JDK_HOME/src<CR> 

"Yankring
let g:yankring_replace_n_pkey = '<C-Y>'
let g:yankring_replace_n_nkey = '<C-U>'

map <Leader>trn :set relativenumber!<cr>
map <leader>tn :NERDTreeToggle<CR>
map <leader>tu :GundoToggle<CR>

autocmd FocusLost * set norelativenumber
autocmd FocusGained * set relativenumber

autocmd InsertEnter * set norelativenumber
autocmd InsertLeave * set relativenumber

"git gutter
highlight clear SignColumn
nnoremap <Leader>g :GitGutterToggle<CR>
nnoremap <Leader>gn :GitGutterNextHunk<CR>
nnoremap <Leader>gp :GitGutterPreviousHunk<CR>
nnoremap <Leader>gv :GitGutterPreviewHunk<CR>

map <Leader>ug :Unite grep -start-insert<CR>
map <Leader>uf :Unite file_rec -start-insert<CR>
map <Leader>um :Unite mapping -start-insert<CR>
map <Leader>ur :Unite register -start-insert<CR>

map <Leader>dt :diffthis<CR>
map <Leader>do :diffoff<CR>
map <Leader>du :diffupdate<CR>

"stop using arrow keys
noremap <up>    :echom 'USE K TO GO UP'<CR>
noremap <down>  :echom 'USE J TO GO DOWN'<CR>
noremap <left>  :echom 'USE H TO GO LEFT'<CR>
noremap <right> :echom 'USE L TO GO RIGHT'<CR>
inoremap jj     <Esc>l
"inoremap <up>    <C-o>:echom 'USE K TO GO UP'<CR>
"inoremap <down>  <C-o>:echom 'USE J TO GO DOWN'<CR>
"inoremap <right> <C-o>:echom 'USE L TO GO RIGHT'<CR>
"inoremap <left>  <C-o>:echom 'USE H TO GO LEFT'<CR>

map <Leader>uu :GundoRenderGraph<CR>

function! VerticalSplitPreview(file)
   execute "vert botright split" . a:file . "| wincmd p"
endfunction
command! -complete=file -nargs=1 VSPreview call VerticalSplitPreview(<f-args>)
map <Leader>vs :VSPreview 

"default completion in supertab
let g:SuperTabDefaultCompletionType = "<c-n>"
let g:SuperTabContextDefaultCompletionType = "<c-n>"

let g:indentLine_char = '┊'

