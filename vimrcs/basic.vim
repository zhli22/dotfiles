syntax on
filetype on
filetype plugin on
""""""""""""""""""""
"indentation
set autoindent                                                                                             
set tabstop=4
set softtabstop=0
set nobackup
set shiftwidth=0
""set expandtab

""""""""""""""""""""
" show line
set number
set cursorline
set relativenumber
set ruler



""""""""""""""""""""
" brackets match
""""""""""""""""""""
set showmatch


"make the longest line multiple lines
set wrap


""""""""""""""""""""
set nocompatible


""""""""""""""""""""
"show the result of search
"hight light search
"igonre cases when searching
set hlsearch
set incsearch
set ignorecase


"map the brackets
:inoremap ( ()<ESC>i
"":inoremap { {}<ESC>i
:inoremap [ []<ESC>i
:inoremap " ""<ESC>i
:inoremap ' ''<ESC>i

" Enable 256 colors palette in Gnome Terminal
""if $COLORTERM == 'gnome-terminal'
set t_Co=256
""endif

""""""""""""""""""""
"""""colr scheme""""
""""""""""""""""""""
colorscheme peaksea
set background=dark
colorscheme peaksea


"in order to do extra key combinations
let mapleader =","
"map short cut to save or quit
nnoremap <leader>w :w<CR>
nnoremap <leader>q :q<CR>


"enable mouse to click
set mouse=a


"clipboard problem to be solved
set clipboard=unnamedplus

 
""keep original style when paste
set pastetoggle=

"some indention problem of python to be solved
inoremap {<Return> {<CR><CR>}<C-o>k<Tab>
"after brackets and return auto indent

"inoremap {<CR> {<CR>}<ESC>O
"the next one might be useful
""inoremap $4 {<esc>o}<esc>O

"in case backspace doesnt work
set backspace=indent,eol,start

"show results of terminal directly into vim // t_ti=
"leave capture of vim in terminal // t_te=
""set t_ti=
""set t_te= t_ti=
