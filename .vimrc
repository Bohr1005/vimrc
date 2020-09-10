set nu
set sw=4
set ts=4
"set showmatch
set autoindent
"set smartindent
"set expandtab
set wildmenu
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
Plug 'jiangmiao/auto-pairs'
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

let g:ycm_global_ycm_extra_conf =  '~/.vim/plugged/YouCompleteMe/third_party/ycmd/.ycm_extra_conf.py' 
let g:ycm_error_symbol = '!'
let g:ycm_warning_symbol = '?'
let g:ycm_confirm_extra_conf=0
let g:ycm_autoclose_preview_window_after_completion=0
let g:ycm_autoclose_preview_window_after_insertion=1
let g:ycm_use_clangd = 0
let g:ycm_python_interpreter_path = "/bin/python3"
let g:ycm_python_binary_path = "/bin/python3"
let g:ycm_semantic_triggers =  {
            \   'c' : ['->', '.','re![_a-zA-z0-9]'],
            \   'objc' : ['->', '.', 're!\[[_a-zA-Z]+\w*\s', 're!^\s*[^\W\d]\w*\s',
            \             're!\[.*\]\s'],
            \   'ocaml' : ['.', '#'],
            \   'cpp,objcpp' : ['->', '.', '::','re![_a-zA-Z0-9]'],
            \   'perl' : ['->'],
            \   'php' : ['->', '::'],
            \   'cs,java,javascript,typescript,d,python,perl6,scala,vb,elixir,go' : ['.'],
            \   'ruby' : ['.', '::'],
            \   'lua' : ['.', ':'],
            \   'erlang' : [':'],
            \ }
"Tagslist
let Tlist_Show_One_File=1     "不同时显示多个文件的tag，只显示当前文件的    
let Tlist_Exit_OnlyWindow=1   "如果taglist窗口是最后一个窗口，则退出vim   
let Tlist_Ctags_Cmd="/usr/bin/ctags" "将taglist与ctags关联  
let Tlist_Auto_Open = 1
let Tlist_Use_Right_Window = 1
