" vim-plug

""""""""""""""""""""""""""""""""""""""
""""""""""""""""""""""""""""""""""""""
""""""""""""""""""""""""""""""""""""""
""""""""""""""""""""""""""""""""""""""
call plug#begin('~/.vim_runtime/plugged')

Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'scrooloose/nerdtree'
Plug 'kien/ctrlp.vim'
Plug 'tpope/vim-surround'
Plug 'tpope/vim-repeat'
Plug 'vim-syntastic/syntastic'
":TlistOpen to open the taglist
Plug 'vim-scripts/taglist.vim'
"to use more colors add colorscheme into vimrc
Plug 'flazz/vim-colorschemes'

"requires Vim 7.4.1578+
"Plug 'Valloric/YouCompleteMe' 

"need vim at least 8.0 version
"Plug 'w0rp/ale'

Plug 'chriskempson/base16-vim'
call plug#end()
""""""""""""""""""""""""""""""""""""""
""""""""""""""""""""""""""""""""""""""
""""""""""""""""""""""""""""""""""""""
""""""""""""""""""""""""""""""""""""""

"airline theme set to simple
let g:airline_theme='peaksea'
"airline add buffer on top
let g:airline#extensions#tabline#enabled = 1
"airline show page number
let g:airline#extensions#tabline#tab_nr_type = 1

"nerdtree shortcut
map <C-n> :NERDTreeToggle<CR>
"open in new tab
let NERDTreeMapOpenInTab='<ENTER>'
"quit tree while open new tab
let NERDTreeQuitOnOpen=1

"file finder ctrlp shortcut
let g:ctrlp_map = '<c-p>'
let g:ctrlp_cmd = 'CtrlP'

"start using indent guide
let g:indent_guides_enable_on_vim_startup = 1
hi IndentGuidesOdd  ctermbg=black
hi IndentGuidesEven ctermbg=darkgrey

"nerd tree shown on the left
let g:NERDTreeWinPos = "right"

"syntastic check
let g:syntastic_error_symbol=">>"
let g:syntastic_warning_symbol='--'
let g:syntastic_check_on_open=0
let g:syntastic_check_on_wq=1
"set syntastic window color to nothing
highlight SignColumn ctermbg=NONE ctermfg=NONE cterm=bold

"tag list shown on the right and bar width set to 0
let Tlist_Use_Right_Window   = 1
let Tlist_Enable_Fold_Column=0
let Tlist_WinWidth = 35

"tag list shortcut
map <C-l> :TlistToggle<CR>

colorscheme apprentice
"colorscheme molokai
"colorscheme gruvbox
"colorscheme peaksea
"colorscheme jellybeans
"colorscheme zenburn

"toggle temrinal using neovim
"nnoremap <leader>t :sp term://zsh<CR>i
"tnoremap <C-l> <C-\><C-n>:q!<CR>
"

set splitbelow

"switch between tabs
nnoremap <C-k> :tabprevious<CR>                                                                            
nnoremap <C-j> :tabnext<CR>

"close all tabs at once
nnoremap <C-q> :qa<CR>
