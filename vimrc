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

Plugin 'tommcdo/vim-lion'
Plugin 'wellle/targets.vim'
Plugin 'vim-scripts/Super-Shell-Indent' "sh indent
Plugin 'suan/vim-instant-markdown'    "markdown preview on browser
Plugin 'brookhong/cscope.vim'         "cscope
Plugin 'Chiel92/vim-autoformat'       "Autoformat code
Plugin 'devjoe/vim-codequery'         "Code indexer
Plugin 'albfan/MultiPrompt.vim'       "Multiple fields prompt dialog
Plugin 'embear/vim-localvimrc'        "per project configuration
Plugin 'terryma/vim-multiple-cursors' "support for multi selections Ctrl+N
Plugin 'albfan/CCTree-1'              "cscope tree
Plugin 'gcmt/wildfire.vim'
Plugin 'albfan/vim-goto'              "Navigate to funcions dinamically
Plugin 'tpope/vim-scriptease'         "helper for write vim scripts
Plugin 'tpope/vim-fugitive'           "helper for using git on vim
Plugin 'tpope/vim-abolish'            "helper for word replacement 
Plugin 'tpope/vim-classpath'          "helper for goto java classpath 
Plugin 'albfan/git-time-lapse'        "show a history time lapse like perforce
Plugin 'gregsexton/gitv'
Plugin 'albfan/vim-git-graph'
Plugin 'albfan/vim-patchreview'       "Review a patch
Plugin 'vim-scripts/genutils'
Plugin 'albfan/vim-breakpts'          "Help debug vim-scripts (only remote)
Plugin 'vim-scripts/winmanager'
Plugin 'vim-scripts/Decho'            "Echo messages on vim scripts execution
Plugin 'vim-scripts/YankRing.vim'     "Cycles through last yanked chunks Ctrl+y
Plugin 'albfan/indentLine'            "Shows a vertical line on defined tabstop
Plugin 'SirVer/ultisnips'             "snippets for coding for<TAB> creates a loop etc...
Plugin 'albfan/vim-snippets'           "snippets definition
Plugin 'ervandew/supertab'            "tab autocompletion

"Plugin 'Raimondi/delimitMate'         "Help to insert closing comma, braces
"Plugin 'jiangmiao/auto-pairs'
"Plugin 'kana/vim-smartinput'

Plugin 'scrooloose/nerdtree'          "dir navigation
Plugin 'scrooloose/nerdcommenter'     "easy comment/uncomment
Plugin 'scrooloose/syntastic'         "syntax errors
Plugin 'albfan/nerdtree-git-plugin'   "git plugin for nerdtree
Plugin 'albfan/nerdtree-file-filter-plugin'   "git plugin for nerdtree

"Plugin 'kien/ctrlp.vim'               "fuzzy search for files
"Plugin 'zhaocai/GoldenView.Vim'      "shorcuts conflicts with multi-cursors
"Plugin 'xolox/vim-easytags'
"Plugin 'vim-scripts/autocomplpop'

Plugin 'vim-airline/vim-airline-themes'
Plugin 'vim-airline/vim-airline'

Plugin 'altercation/vim-colors-solarized' "solarized theme
Plugin 'simnalamburt/vim-mundo'       "Another undo tree manager
Plugin 'sjl/gundo.vim'                "show undo tree
Plugin 'sjl/splice.vim'               "helper for diffs
Plugin 'davidhalter/jedi-vim'
Plugin 'albfan/vim-signify'           "Show changed lines
Plugin 'airblade/vim-gitgutter'       "Ruler for changes on git tracked files
Plugin 'albfan/AnsiEsc.vim'           "conceal escape colors to show a WYSIWYG
Plugin 'albfan/vim-minimap'           "A minimap file
Plugin 'albfan/gapply.vim'            "A try to ease git add workflow
Plugin 'albfan/cream-showinvisibles'  "Show whitespace
Plugin 'albfan/ag.vim'                "Use ag instead of grep
"Plugin 'albfan/vim-rooter'          "Always set working directory to root of project
"Plugin 'craigemery/vim-autotag'       "refresh tags when writing file
Plugin 'albfan/dbg.vim'               "general debugger fixed for java sources
Plugin 'albfan/bashfunction.vim'      "navigate through declared bash functions
Plugin 'Shougo/unite.vim'             "A plugin from all things
"Plugin 'Shougo/vimfiler.vim'          "A plugin to replace NERDtree
Plugin 'albfan/Easytree.vim'          "A plugin to replace NERDtree
"Plugin 'sjbach/lusty'
Plugin 'Shougo/vimproc.vim'
Plugin 'xolox/vim-misc'
Plugin 'Lokaltog/vim-easymotion'      "easy motion in vim
Plugin 'majutsushi/tagbar'
Plugin 'szw/vim-ctrlspace'            "navigate through buffers and tabs
Plugin 'rstacruz/sparkup'             "write HTML faster
Plugin 'junegunn/goyo.vim'            "Non disturb mode
"Plugin 'edkolev/tmuxline.vim'         "Config tmuxline from vim
Plugin 'mbbill/desertEx'
Plugin 'shawncplus/skittles_berry'
Plugin 'godlygeek/tabular'
Plugin 'xolox/vim-notes'              "Note takig
Plugin 'xolox/vim-session'            "Extend mksession
Plugin 'stefandtw/quickfix-reflector.vim' "edit on quickfix
Plugin 'tpope/vim-commentary'
Plugin 'tpope/vim-surround'
Plugin 'junegunn/vim-emoji'
Plugin 'junegunn/vader.vim'
Plugin 'tpope/vim-repeat'
Plugin 'will133/vim-dirdiff'
Plugin 'vim-scripts/L9'
Plugin 'albfan/JavaDecompiler.vim'

"refactor for vim
"Plugin 'albfan/vim-lib'
"Plugin 'albfan/vim-dev'
"Plugin 'albfan/vim-system-tools'
"Plugin 'albfan/vim-tags'
"Plugin 'albfan/vim-brackets'
"Plugin 'albfan/vim-mu-template'
"Plugin 'albfan/vim-refactor'
"Plugin 'albfan/vim-ut'

Plugin 'albfan/vim-help'
Plugin 'elzr/vim-json.git'
Plugin 'albfan/maven-compiler.vim'
Plugin 'albfan/vim-jide'
Plugin 'albfan/vim-sourcepart'
Plugin 'albfan/vim-projconf'

Plugin 'blueshirts/darcula'

let g:localvimrc_name = [".lvimrc", ".config/vimrc"]
let g:localvimrc_sandbox = 0
let g:localvimrc_ask = 0

filetype plugin indent on     " required

let g:session_autoload = 'no'
let g:session_autosave = 'no'

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

nnoremap <C-B> :tag <C-R>=expand('<cword>')<CR><CR>zv
nnoremap <Leader>tw :set wrap!<CR>
nnoremap <Leader>tl :set number!<CR>
nnoremap <leader>tc :call ColorColumnToggle()<CR>
nnoremap <leader>tt :TagbarToggle<CR>
nnoremap <leader>ts :SyntasticToggleMode<CR>
nnoremap <Leader>th :GitGutterToggle<CR>
nnoremap <leader>te :helpclose<CR>

" vertical line indentation
let g:indentLine_color_term = 239
let g:indentLine_color_gui = '#09AA08'
let g:indentLine_char = '│'



" CtrlP Configuration {{{
" Use <leader>t to open ctrlp
let g:ctrlp_map = '<C-p>'
" Ignore these directories
"set wildignore+=*/build/*,*/target/*
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

"NERDTree
let NERDTreeIgnore=['\.pyc$', '\.class$']

"Yankring
let g:yankring_replace_n_pkey = '<Leader>e'
let g:yankring_replace_n_nkey = '<Leader>g'

noremap <Leader>ty :YRShow<cr>
noremap <Leader>trn :set relativenumber!<cr>
noremap <leader>tn :EasyTree<CR>
"noremap <leader>tn :NERDTreeToggle<CR>
noremap <leader>tu :GundoToggle<CR>
noremap <leader>tv :call ToggleVirtualEditmap()<CR>

noremap <leader>nf :NERDTreeFind<CR>

function! ToggleVirtualEditmap()
   if &virtualedit == ""
      set virtualedit=all
   else 
      set virtualedit= 
   endif
endfunction

map <leader>rn :NERDTree<CR>

map <leader>fn :NERDTreeFocus<CR>
autocmd FocusLost * set norelativenumber
autocmd FocusGained * set relativenumber

autocmd InsertEnter * set norelativenumber
autocmd InsertLeave * set relativenumber

"git gutter
highlight clear SignColumn
nnoremap <Leader>hn :GitGutterNextHunk<CR>
nnoremap <Leader>hp :GitGutterPrevHunk<CR>
nnoremap <Leader>hv :GitGutterPreviewHunk<CR>

let g:unite_source_history_yank_enable = 1
map <Leader>ug :<C-u>Unite grep -start-insert<CR>
map <Leader>uf :<C-u>Unite file_rec -start-insert<CR>
map <Leader>um :<C-u>Unite mapping -start-insert<CR>
map <Leader>ur :<C-u>Unite register -start-insert<CR>
map <leader>uy :<C-u>Unite history/yank<CR>


autocmd FileType unite call s:unite_my_settings()
function! s:unite_my_settings()
  " Overwrite settings.

  imap <buffer> jj      <Plug>(unite_insert_leave)
endfunction

map <Leader>dt :diffthis<CR>
map <Leader>do :diffoff<CR>
map <Leader>du :diffupdate<CR>

"stop using arrow keys
noremap <up>    :echom 'USE K TO GO UP'<CR>
noremap <down>  :echom 'USE J TO GO DOWN'<CR>
noremap <left>  :echom 'USE H TO GO LEFT'<CR>
noremap <right> :echom 'USE L TO GO RIGHT'<CR>
inoremap jj     <Esc>l
noremap go     o<Esc>
noremap gO     O<Esc>
"inoremap <up>    <C-o>:echom 'USE K TO GO UP'<CR>
"inoremap <down>  <C-o>:echom 'USE J TO GO DOWN'<CR>
"inoremap <right> <C-o>:echom 'USE L TO GO RIGHT'<CR>
"inoremap <left>  <C-o>:echom 'USE H TO GO LEFT'<CR>

map <Leader>uu :GundoRenderGraph<CR>

"Window mapping
map <Leader>wh :wincmd h<CR>
map <Leader>wl :wincmd l<CR>
map <Leader>wj :wincmd j<CR>
map <Leader>wk :wincmd k<CR>
map <Leader>wH :wincmd H<CR>
map <Leader>wL :wincmd L<CR>
map <Leader>wJ :wincmd J<CR>
map <Leader>wK :wincmd K<CR>
map <Leader>ww :wincmd w<CR>
map <Leader>w+ :wincmd +<CR>
map <Leader>w- :wincmd -<CR>
map <Leader>w> :wincmd ><CR>
map <Leader>w< :wincmd <<CR>


function! VerticalSplitPreview(file)
   execute "vert botright split" . a:file . "| wincmd p"
endfunction
command! -complete=file -nargs=1 VSPreview call VerticalSplitPreview(<f-args>)
map <Leader>vs :VSPreview 

"default completion in supertab
let g:SuperTabDefaultCompletionType = "<c-n>"
let g:SuperTabContextDefaultCompletionType = "<c-n>"

let g:indentLine_char = '┊'

let &tabstop=3
let &softtabstop=3
let &shiftwidth=3

" fix meta-keys which generate <Esc>a .. <Esc>z
"let c='a'
"while c <= 'z'
  ""exec "set <M-S-".c.">=\e".toupper(c)
  "exec "set <M-".toupper(c).">=\e".toupper(c)
  "exec "set <M-".c.">=\e".c
  "let c = nr2char(1+char2nr(c))
"endwhile

set <S-Del>=[3;2~
"set <S-M-Del>=[3;4~
"set <C-Del>=[3;5~
"set <C-S-Del>=[3;6~
"set <C-M-Del>=[3;7~
"set <C-S-M-Del>=[3;8~

"vim-brackets
let g:markers_mark = '<M-i>'
let g:markers_jump_f="<M-d>"
let g:markers_jump_b="<M-S-d>"

" Syntastic
let g:syntastic_java_javac_exec = escape(expand('$JDK_HOME'), '\') . '/bin/javac'
let g:syntastic_java_javac_executable = escape(expand('$JDK_HOME'), '\') . '/bin/javac'
let g:syntastic_enable_signs = 1
let g:syntastic_debug = 0

set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 0
let g:syntastic_check_on_wq = 0
let g:syntastic_error_symbol = "✗"
let g:syntastic_warning_symbol = "⚠"
let g:syntastic_enable_balloons = 1
let g:syntastic_quiet_messages = { "level": "warnings" }
let g:syntastic_mode_map = { "mode": "passive"}

function! FocusTagbar()
  let l:bn = bufwinnr("Tagbar")
  if l:bn != -1
    exec l:bn."wincmd w"
  else 
    Tagbar
  endif 
endfunction

nmap <silent> <Leader>ft :call FocusTagbar()<CR>

let g:ctrlspace_default_mapping_key = '<Leader>tm'

nnoremap <silent> <Leader>tb :BreakPts<CR>
nnoremap <script> <silent> <Leader>c <Plug>BreakPtsContKey 
nnoremap <script> <silent> <Leader>n <Plug>BreakPtsNextKey
nnoremap <script> <silent> <Leader>s <Plug>BreakPtsStepKey
nnoremap <script> <silent> <Leader>f <Plug>BreakPtsFinishKey

let g:UltiSnipsJumpForwardTrigger="<c-m>"
let g:UltiSnipsEditSplit = 'context'
let g:UltiSnipsListSnippets = "<c-l>"

"jj makes this don't work and k too
"inoremap <expr> j ((pumvisible())?("\<C-n>"):("j"))
"inoremap <expr> k ((pumvisible())?("\<C-p>"):("k"))


" ----
" sandbox
" ----

let g:ProjConf = [
     \ [ "~/projects/c/miraclecast", "~/projects/c/miraclecast/tags", "~/projects/c/systemd/tags" ]
     \ ]

function! FindAndReplaceAll(pattern,replacement)
  let searchfiles = "*"
  "exec "S/".a:pattern."/ -R ".searchfiles
  let excludedir = "target"
  silent! exec "grep ".a:pattern." -iR --exclude-dir ".excludedir." *"
  let files = uniq(sort(map(getqflist(), "bufname(v:val['bufnr'])")))
  "let size = len(files)
  "let i = 0
  let flags = "g"."i"."c"
  "while i < size
  for f in files
    "exe "cnf"
    exe "edit ".f 
    exec "%s/".a:pattern."/".a:replacement."/".flags
    "TODO: on quit quit all remaining searches
    "let i = i + 1 
  "endwhile
  endfor
endfunction

function! UltiSnips_Java_GetPackage()
	if exists("*FindRootDirectory")
		let rootDir = FindRootDirectory()
		let srcpath = "src/main/java"
		let package = substitute(expand("%:p:h"), rootDir."/".srcpath, "", "")
		let package = substitute(package, "/", ".", "g")[1:]
		return package
	endif
	return ""
endfunction


map <Leader>sc :echo "hi<" . synIDattr(synID(line("."),col("."),1),"name") . '> trans<'
\ . synIDattr(synID(line("."),col("."),0),"name") . "> lo<"
\ . synIDattr(synIDtrans(synID(line("."),col("."),1)),"name") . ">"<CR>

function! PrettifyVimDictionary() 
   execute '%s/"/\\"/g'
   execute "%s/'/\"/g"
   execute "%!python -m json.tool"
endfunction



let g:brkptsLayout="edit"

function! ToggleSyntax()
  if exists("g:syntax_on")
    syntax off
  else
    syntax enable
 endif
endfunction


highlight SignifySignAdd    cterm=none ctermbg=none  ctermfg=119
highlight SignifySignDelete cterm=none ctermbg=none  ctermfg=167
highlight SignifySignChange cterm=none ctermbg=none  ctermfg=227
highlight link SignifyLineAdd             SignifySignAdd
highlight link SignifyLineChange          SignifySignChange
highlight link SignifyLineDelete          SignifySignDelete

" Set scripts to be executable from the shell
function! Make_executable()
  if getline(1) =~ "^#!" || expand('%:e') == 'sh'
    silent !chmod +x <afile> 
  endif
endfunction
au BufWritePost * call Make_executable()

nnoremap <leader>fa :call CscopeFindInteractive(expand('<cword>'))<CR>
nnoremap <leader>l :call ToggleLocationList()<CR>

" s: Find this C symbol
nnoremap  <leader>fs :call CscopeFind('s', expand('<cword>'))<CR>
" g: Find this definition
nnoremap  <leader>fg :call CscopeFind('g', expand('<cword>'))<CR>
" d: Find functions called by this function
nnoremap  <leader>fd :call CscopeFind('d', expand('<cword>'))<CR>
" c: Find functions calling this function
nnoremap  <leader>fc :call CscopeFind('c', expand('<cword>'))<CR>
" t: Find this text string
nnoremap  <leader>ft :call CscopeFind('t', expand('<cword>'))<CR>
" e: Find this egrep pattern
nnoremap  <leader>fe :call CscopeFind('e', expand('<cword>'))<CR>
" f: Find this file
nnoremap  <leader>ff :call CscopeFind('f', expand('<cword>'))<CR>
" i: Find files #including this file
nnoremap  <leader>fi :call CscopeFind('i', expand('<cword>'))<CR>
