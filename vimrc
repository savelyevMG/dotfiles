" disable Vi compatible for plugins stable work
set nocompatible

" indent logic from https://habr.com/ru/articles/64224/
set tabstop=4
set shiftwidth=4
set smarttab
set expandtab
set smartindent

" highlight all in Python
let g:python_highlight_all = 1

" misc color settings
set term=xterm-256color
set t_Co=256

" let Vim use filetype and syntax
filetype on
syntax on

" no long lines wrapping
set nowrap

" command history length
set history=1000

" navigate windows without Ctrl
nmap <silent> <C-k> :wincmd k<CR>
nmap <silent> <C-j> :wincmd j<CR>
nmap <silent> <C-l> :wincmd l<CR>
nmap <silent> <C-h> :wincmd h<CR>

" F2 = Save file
map <F2> <Esc>:w<CR>
map <F10> <Esc>:q<CR>

" highlight search
set hlsearch

" lines numeration with ZERO on current line
set relativenumber

" but current line has it's REAL number
set nu

" disable arrows
noremap <Up> <Nop> 
noremap <Down> <Nop>
noremap <Left> <Nop>
noremap <Right> <Nop>

" disable arrows in INSERT mode
inoremap <Up> <Nop>
inoremap <Down> <Nop>
inoremap <Left> <Nop>
inoremap <Right> <Nop>

" change Comment color (darkgray is not bad too)
highlight Comment ctermfg=Blue

" vim-plug section
call plug#begin()
Plug 'flazz/vim-colorschemes'
Plug 'xolox/vim-misc'
Plug 'xolox/vim-colorscheme-switcher'
Plug 'vim-airline/vim-airline'
Plug 'tpope/vim-sensible'
Plug 'preservim/NERDTree'
Plug 'vim-scripts/dbext.vim'
call plug#end()

colorscheme vividchalk 

" for DBEXT plugin: set connections profile
let g:dbext_default_profile_myPGDB='type=pgsql:host=222.222.222.130:user=m:dsnname=slurmdb:dbname=slurmdb:passwd=m'
let g:dbext_default_profile='myPGDB'
