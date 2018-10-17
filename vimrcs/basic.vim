syntax on
""""""""""""""""""""
"indentation
set autoindent                                                                                             
set nu
set tabstop=4
set nobackup
set shiftwidth=4
set expandtab

""""""""""""""""""""
" show line
set number
""""""""""""""""""""
"
set cursorline
""""""""""""""""""""
" brackets match
set showmatch
""""""""""""""""""""
" relative number
set relativenumber
""""""""""""""""""""
" line under our input
set ruler
""""""""""""""""""""
"make the longest line multiple lines
set wrap
""""""""""""""""""""
"
set nocompatible
""""""""""""""""""""
"show the result of search
set incsearch

"map the brackets
:inoremap ( ()<ESC>i
:inoremap { {}<ESC>i
:inoremap [ []<ESC>i
:inoremap " ""<ESC>i
:inoremap ' ''<ESC>i

" Enable 256 colors palette in Gnome Terminal
if $COLORTERM == 'gnome-terminal'
set t_Co=256
endif

""""""""""""""""""""
"""""colr scheme""""
""""""""""""""""""""
colorscheme default
"set background=dark



let mapleader =","


"enable mouse to click
set mouse=a


"clipboard problem to be solved
set clipboard=unnamed

let g:airline_theme='simple'
 
