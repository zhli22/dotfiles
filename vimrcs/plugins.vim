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
"to use more colors add colorscheme into vimrc
Plug 'flazz/vim-colorschemes'

"requires Vim 7.4.1578+
"Plug 'Valloric/YouCompleteMe' 

"need vim at least 8.0 version
Plug 'w0rp/ale'

Plug 'neoclide/coc.nvim', {'do': './install.sh nightly'}

Plug 'chriskempson/base16-vim'

Plug 'Yggdroot/LeaderF', { 'do': './install.sh' }



call plug#end()
""""""""""""""""""""""""""""""""""""""
""""""""""""""""""""""""""""""""""""""
""""""""""""""""""""""""""""""""""""""
""""""""""""""""""""""""""""""""""""""

"airline theme set to simple
let g:airline_theme='peaksea'

"airline show buffer
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#tab_nr_type = 1
let g:airline#extensions#tabline#show_tab_type = 1

"nerdtree shortcut
map <C-n> :NERDTreeToggle<CR>

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
"let Tlist_Use_Right_Window   = 1
"let Tlist_Enable_Fold_Column=0
"let Tlist_WinWidth = 35


"colorscheme molokai
"colorscheme gruvbox
"colorscheme peaksea
"colorscheme jellybeans
"colorscheme zenburn
"
"
"use tab to auto complete
inoremap <silent><expr> <TAB>
      \ pumvisible() ? "\<C-n>" :
      \ <SID>check_back_space() ? "\<TAB>" :
      \ coc#refresh()
inoremap <expr><S-TAB> pumvisible() ? "\<C-p>" : "\<C-h>"

function! s:check_back_space() abort
  let col = col('.') - 1
  return !col || getline('.')[col - 1]  =~# '\s'
endfunction

"check syntax only when save file
let g:ale_lint_on_text_changed = 'never'
let g:ale_lint_on_enter = 0


autocmd FileType java setlocal omnifunc=javacomplete#Complete

" Use <C-l> for trigger snippet expand.
imap <C-l> <Plug>(coc-snippets-expand)

" Use <C-j> for select text for visual placeholder of snippet.
""vmap <C-j> <Plug>(coc-snippets-select)

" Use <C-j> for jump to next placeholder, it's default of coc.nvim
let g:coc_snippet_next = '<c-j>'

" Use <C-k> for jump to previous placeholder, it's default of coc.nvim
let g:coc_snippet_prev = '<c-k>'

" Use <C-j> for both expand and jump (make expand higher priority.)
""imap <C-j> <Plug>(coc-snippets-expand-jump)


set termguicolors

colorscheme base16-default-dark


"map terminal combine keys
"exit terminal
tnoremap <C-l> <C-\><C-n>:q!<CR>
"open terminal
nnoremap <C-l> :sp term://zsh<CR>:resize 12 <CR>i
tnoremap <C-w> <C-\><C-n><C-w><C-w>

set splitbelow

nnoremap <C-k> :tabprevious<CR>                                                                            
nnoremap <C-j> :tabnext<CR>

let NERDTreeMapOpenInTab='<ENTER>'
let NERDTreeQuitOnOpen=1

"close all tabs at once
nnoremap <C-q> :qa<CR>

inoremap <C-e> <ESC>A
inoremap <C-a> <ESC>I
nnoremap <C-a> 0
nnoremap <C-e> $

imap <c-j> <ESC><DOWN>I
imap <c-k> <ESC><Up>I

inoremap <c-d> <DELETE>




noremap <Leader>ff :LeaderfFunction<cr>
noremap <Leader>fb :LeaderfBuffer<cr>
noremap <Leader>ft :LeaderfTag<cr>
noremap <Leader>fm :LeaderfMru<cr>
noremap <Leader>fl :LeaderfLine<cr>


