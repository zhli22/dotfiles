syntax on
""filetype on
""""""""""""""""""""
"indentation
set autoindent                                                                                             
set softtabstop=4
set nobackup
set shiftwidth=0
set expandtab

""""""""""""""""""""
" show line
set number
set cursorline
set relativenumber
set ruler
""""""""""""""""""""
" brackets match
set showmatch
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
""colorscheme default
colorscheme peaksea
set background=dark




let mapleader =","


"enable mouse to click
set mouse=a


"clipboard problem to be solved
set clipboard=unnamed

"airline theme set to simple
""let g:airline_theme='molokai'

 
""keep original style when paste
nnoremap  :set invpaste paste? imap :set invpaste paste? set pastetoggle=





