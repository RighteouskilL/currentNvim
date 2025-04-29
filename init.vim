autocmd BufRead,BufNewFile *.ejs set filetype=html
" setting
let mapleader = ";"
let g:indentLine_char_list = ['|', '¦', '┆', '┊']
let g:indentLine_enabled = 1
let g:indentLine_setColors = 8
let g:indentLine_defaultGroup = 'IndentLine'
let g:indentLine_bgcolor_term = 236
let g:indentLine_bgcolor_gui = '#2e3440'
let g:indentLine_color_term = 239
let g:indentLine_color_gui = '#3b4252'
let g:fzf_action = {
  \ 'ctrl-t': 'tab split',
  \ 'ctrl-i': 'split',
  \ 'ctrl-v': 'vsplit' }
let g:fzf_layout = { 'window': { 'width': 1, 'height': 0.6, 'relative': v:true , 'yoffset': 1.0 } }
let g:fzf_colors =
\ { 'fg':      ['fg', 'Normal'],
  \ 'bg':      ['bg', 'Normal'],
  \ 'hl':      ['fg', 'Comment'],
  \ 'fg+':     ['fg', 'CursorLine', 'CursorColumn', 'Normal'],
  \ 'bg+':     ['bg', 'CursorLine', 'CursorColumn'],
  \ 'hl+':     ['fg', 'Statement'],
  \ 'info':    ['fg', 'PreProc'],
  \ 'border':  ['fg', 'Ignore'],
  \ 'prompt':  ['fg', 'Conditional'],
  \ 'pointer': ['fg', 'Exception'],
  \ 'marker':  ['fg', 'Keyword'],
  \ 'spinner': ['fg', 'Label'],
  \ 'header':  ['fg', 'Comment'] }

set background=dark
set clipboard=unnamedplus
set completeopt="noinsert,menuone,noselect"
set cursorline
set encoding=UTF-8
set expandtab
set ff=unix
set fillchars+=vert:│
set hidden
set nowrap
set nocompatible
set nobackup
set noswapfile
set number
set relativenumber
set shiftwidth=2
set showmatch
set tabstop=2
set tags=./tags;/
set termguicolors
set t_Co=256
set wildmenu
setlocal foldexpr="nvim_treesitter#foldexpr()"
setlocal scrolloff<
setlocal scrolloff=24
filetype on
filetype plugin indent on
syntax enable
syntax on
"lua config
lua require("/setup")

