" setting
let mapleader = ";"

set background=dark
set clipboard=unnamedplus
set completeopt="noinsert,menuone,noselect"
set termguicolors
set number
set hidden
set wildmenu
set expandtab
set shiftwidth=2
set tabstop=2
set relativenumber
set cursorline
set nowrap
set nocompatible
set nobackup
set noswapfile
setlocal foldexpr="nvim_treesitter#foldexpr()"
setlocal scrolloff<
setlocal scrolloff=24
filetype on
filetype plugin indent on
syntax enable
syntax on
set t_Co=256
set encoding=UTF-8
set fillchars+=vert:│
let g:indentLine_char_list = ['|', '¦', '┆', '┊']
let g:indentLine_enabled = 1
let g:indentLine_setColors = 8
let g:indentLine_defaultGroup = 'IndentLine'
let g:indentLine_bgcolor_term = 236
let g:indentLine_bgcolor_gui = '#2e3440'
let g:indentLine_color_term = 239
let g:indentLine_color_gui = '#3b4252'
" FZF
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

" key binding
nnoremap <C-p> :Telescope fd<CR>
nnoremap <C-f> :Telescope grep_string<CR>
nnoremap <C-b> :Telescope buffers<CR>
nnoremap <leader>rr :ReloadConfig<CR>
nnoremap <leader>t :SCROLLCOLOR <CR>
nnoremap <leader>q :q<CR>
nnoremap <leader>Q :q!<CR>
nnoremap <leader>w :w<CR>
nnoremap <leader>W :wq<CR>
nnoremap <leader>bd :bd<CR>
nnoremap <leader>BD :bd!<CR>

"lua config
lua require("/setup")

