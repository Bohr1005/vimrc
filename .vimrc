set nu
set sw=4
set ts=4
"set showmatch
set autoindent
"set smartindent
"set expandtab
set smarttab
syntax enable
set encoding=utf8
set nobackup
set nowb
set noswapfile
set guifont=Menlo:h16

map s <nop>
map s<right> :set splitright<CR>:vsplit<CR>
map s<left> :set nosplitright<CR>:vsplit<CR>
map s<up> :set nosplitbelow<CR>:split<CR>
map s<down> :set splitbelow<CR>:split<CR>

nmap <silent> <F8> <Plug>MarkdownPreview        " 普通模式
imap <silent> <F8> <Plug>MarkdownPreview        " 插入模式
nmap <silent> <F9> <Plug>StopMarkdownPreview    " 普通模式
imap <silent> <F9> <Plug>StopMarkdownPreview    " 插入模式

call plug#begin('~/.vim/plugged')
Plug 'vim-airline/vim-airline'
Plug 'connorholyday/vim-snazzy'

" File navigation
Plug 'scrooloose/nerdtree', { 'on': 'NERDTreeToggle' }
Plug 'Xuyuanp/nerdtree-git-plugin'

" Taglist
Plug 'majutsushi/tagbar', { 'on': 'TagbarOpenAutoClose' }

" Error checking
Plug 'w0rp/ale'

" Auto Complete
Plug 'Valloric/YouCompleteMe'

" Undo Tree
Plug 'mbbill/undotree/'

" Python
Plug 'vim-scripts/indentpython.vim'

Plug 'iamcco/mathjax-support-for-mkdp'
Plug 'iamcco/markdown-preview.vim'
Plug 'fadein/vim-FIGlet'
call plug#end()

color snazzy

map tt :NERDTreeToggle<CR>
let NERDTreeMapOpenExpl = ""
let NERDTreeMapUpdir = ""
let NERDTreeMapUpdirKeepOpen = "l"
let NERDTreeMapOpenSplit = ""
let NERDTreeOpenVSplit = ""
let NERDTreeMapActivateNode = "i"
let NERDTreeMapOpenInTab = "o"
let NERDTreeMapPreview = ""
let NERDTreeMapCloseDir = "n"
let NERDTreeMapChangeRoot = "y"

nnoremap gd :YcmCompleter GoToDefinitionElseDeclaration<CR>
nnoremap gi :YcmCompleter GoToInclude<CR> 
nnoremap g/ :YcmCompleter GetDoc<CR>
nnoremap gt :YcmCompleter GetType<CR>
nnoremap gr :YcmCompleter GoToReferences<CR>

let g:ycm_error_symbol = '!'
let g:ycm_warning_symbol = '?'
let g:ycm_confirm_extra_conf=0
let g:ycm_autoclose_preview_window_after_completion=0
let g:ycm_autoclose_preview_window_after_insertion=1
let g:ycm_use_clangd = 0
let g:ycm_python_interpreter_path = "/bin/python3"
let g:ycm_python_binary_path = "/bin/python3"
