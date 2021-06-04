syntax on
filetype on
filetype plugin on
""""""""""""""""""""
"indentation
set autoindent
set smartindent
set tabstop=4
set softtabstop=0
set nobackup
set shiftwidth=0
""""""""""""""""""""""""""""""""""""""""""""
" status bar""""""""""""""""""""""""""""""""
""""""""""""""""""""""""""""""""""""""""""""
set laststatus=2
set statusline=
set statusline+=%#DiffAdd#%{(mode()=='n')?'\ \ NORMAL\ ':''}
set statusline+=%#DiffChange#%{(mode()=='i')?'\ \ INSERT\ ':''}
set statusline+=%#DiffDelete#%{(mode()=='r')?'\ \ RPLACE\ ':''}
set statusline+=%#Cursor#%{(mode()=='v')?'\ \ VISUAL\ ':''}
set statusline+=\ %n\           " buffer number
set statusline+=%#Visual#       " colour
set statusline+=%{&paste?'\ PASTE\ ':''}
set statusline+=%{&spell?'\ SPELL\ ':''}
set statusline+=%#CursorIM#     " colour
set statusline+=%R                        " readonly flag
set statusline+=%M                        " modified [+] flag
set statusline+=%#Cursor#               " colour
set statusline+=%#CursorLine#     " colour
set statusline+=\ %t\                   " short file name
set statusline+=%=                          " right align
set statusline+=%#CursorLine#   " colour
set statusline+=\ %Y\                   " file type
set statusline+=%#CursorIM#     " colour
set statusline+=\ %3l:%-2c\         " line + column
set statusline+=%#Cursor#       " colour
set statusline+=\ %3p%%\                " percentage
"""""""""""""""""""""""""""""""""""""""""""

""set expandtab

""""""""""""""""""""
" show line
""set number
""set cursorline
""set relativenumber
set ruler



""""""""""""""""""""
" brackets match
""""""""""""""""""""
set showmatch

"make the longest line multiple lines
"set wrap


""""""""""""""""""""
"set nocompatible


""""""""""""""""""""
"show the result of search
"hight light search
"igonre cases when searching
set hlsearch
set incsearch
set ignorecase


"map the brackets
"inoremap ( ()<ESC>i
"":inoremap { {}<ESC>i
"":inoremap [ []<ESC>i
"":inoremap " ""<ESC>i
"":inoremap ' ''<ESC>i

" Enable 256 colors palette in Gnome Terminal
""if $COLORTERM == 'gnome-terminal'
set t_Co=256
""endif

""""""""""""""""""""
"""""colr scheme""""
""""""""""""""""""""


"in order to do extra key combinations
let mapleader =","
"map short cut to save or quit
nnoremap <leader>w :w<CR>
nnoremap <leader>q :q<CR>
nnoremap <leader>n :set invnumber<CR>
nnoremap <leader>r :set relativenumber!<CR>
"toggle mouse
function! ToggleMouse()
" check if mouse is enabled
if &mouse == 'a'
	" disable mouse
	set mouse=
else
	" enable mouse everywhere
	set mouse=a
endif
endfunc

nnoremap <leader>m :call ToggleMouse()<CR>


"enable mouse to click
set mouse=a


"clipboard problem to be solved
set clipboard=unnamedplus


""keep original style when paste
set pastetoggle=

"some indention problem of python to be solved
"inoremap {<Return> {<CR><CR>}<C-o>k<Tab>
"after brackets and return auto indent

inoremap {<CR> {<CR>}<ESC>O
"the next one might be useful
"inoremap $4 {<esc>o}<esc>O

"in case backspace doesnt work
set backspace=indent,eol,start

"show results of terminal directly into vim // t_ti=
"leave capture of vim in terminal // t_te=
""set t_ti=
""set t_te= t_ti=

map <space> :

colorscheme base16-default-dark
hi TabLineFill term=bold cterm=bold ctermbg=8
set clipboard=unnamed

"hi MatchParen cterm=none ctermbg=8 ctermfg=blue
hi MatchParen cterm=bold ctermbg=none ctermfg=red

"""""""""""""""""""""""""""
" compile cpp
""""""""""""""""""""""""
" autocmd filetype cpp nnoremap <leader>c :w <bar> ! g++ -std=c++17 -w % -o %:r && ./%:r \| tee %:r.out <CR>
autocmd filetype cpp nnoremap <leader>c :w <bar> ! g++ -std=c++17 -w % -o %:r && ./%:r <CR>

""""""""""""""""""""""""""
" toggle comment
"""""""""""""""""""""""""
"function! ToggleComment()
"if matchstr(getline(line(".")),'^\s*\/\/.*$') == ''
"	:execute "s:^:// :"
"else
"	:execute "s:^\s*// ::"
"	echo "hah"
"endif
"endfunc
""""""""""""""""""""""""""""""""""
" mapping only works if it is a cpp file
"""""""""""""""""""""""""""""""""""

""""""""""""""""""""""""""
" toggle comment, python3 version
"""""""""""""""""""""""""
"function! ToggleComment()
"python << EOF
"import vim
"r = vim.current.range
"line = vim.current.buffer[r.start]
"if line.lstrip().startswith('// '):
"    vim.current.buffer[r.start] = vim.current.buffer[r.start].replace('// ', '')
"else:
"    vim.current.buffer[r.start] = '// ' + vim.current.buffer[r.start]
"EOF
"endfunction
"
"autocmd filetype cpp map <C-c> :call ToggleComment()<CR>
set splitbelow

" cursor to underscore
set guicursor=a:hor20-Cursor


"set syntastic window color to nothing
highlight SignColumn ctermbg=NONE ctermfg=NONE cterm=bold

set termguicolors
set splitbelow

nnoremap <C-k> :tabprevious<CR>                                                                            
nnoremap <C-j> :tabnext<CR>

noremap <C-q> :qa<CR>

inoremap <C-e> <ESC>A
inoremap <C-a> <ESC>I
nnoremap <C-a> 0
nnoremap <C-e> $


"inoremap <c-d> <DELETE>


 autocmd Filetype vert set syntax=c
augroup vert
  au!
  autocmd BufNewFile,BufRead *.vert  set syntax=c 
augroup END
augroup frag
  au!
  autocmd BufNewFile,BufRead *.frag  set syntax=c 
augroup END

augroup geom
  au!
  autocmd BufNewFile,BufRead *.geom  set syntax=c 
augroup END
"
