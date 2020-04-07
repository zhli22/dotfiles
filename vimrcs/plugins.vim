" vim-plug

""""""""""""""""""""""""""""""""""""""
""""""""""""""""""""""""""""""""""""""
""""""""""""""""""""""""""""""""""""""
""""""""""""""""""""""""""""""""""""""
call plug#begin('~/.vim_runtime/plugged')

Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'scrooloose/nerdtree'
"Plug 'kien/ctrlp.vim'
""Plug 'tpope/vim-surround'
""Plug 'tpope/vim-repeat'
"to use more colors add colorscheme into vimrc
Plug 'flazz/vim-colorschemes'

"requires Vim 7.4.1578+
"Plug 'Valloric/YouCompleteMe' 

"need vim at least 8.0 version
" Plug 'dense-analysis/ale'

Plug 'neoclide/coc.nvim', {'do': './install.sh nightly'}

Plug 'chriskempson/base16-vim'

" Plug 'lervag/vimtex'

"Plug 'Yggdroot/LeaderF', { 'do': './install.sh' }

"for markdown
Plug 'vim-pandoc/vim-pandoc'
Plug 'vim-pandoc/vim-pandoc-syntax'


Plug 'sirver/ultisnips'

Plug 'scrooloose/nerdcommenter'
Plug 'glacambre/firenvim', { 'do': { _ -> firenvim#install(0) } }
Plug 'majutsushi/tagbar'

Plug 'chemzqm/vim-jsx-improve'

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

"ctrlp setting
"file finder ctrlp shortcut
"let g:ctrlp_map = '<c-p>'
"let g:ctrlp_cmd = 'CtrlP'

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
" let g:ale_lint_on_text_changed = 'never'
" let g:ale_lint_on_enter = 0


autocmd FileType java setlocal omnifunc=javacomplete#Complete

" Use <C-l> for trigger snippet expand.
imap <C-l> <Plug>(coc-snippets-expand)

" Use <C-j> for select text for visual placeholder of snippet.
" vmap <C-j> <Plug>(coc-snippets-select)

" Use <C-j> for jump to next placeholder, it's default of coc.nvim
let g:coc_snippet_next = '<c-j>'

" Use <C-k> for jump to previous placeholder, it's default of coc.nvim
let g:coc_snippet_prev = '<c-k>'

" Use <C-j> for both expand and jump (make expand higher priority.)
imap <C-j> <Plug>(coc-snippets-expand-jump)


set termguicolors

colorscheme base16-default-dark


"map terminal combine keys
"exit terminal
" tnoremap <C-l> <C-\><C-n>:q!<CR>
"open terminal
" nnoremap <C-l> :sp term://zsh<CR>:resize 11 <CR>i
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


"leaderf setting
"noremap <Leader>ff :LeaderfFunction<cr>
"noremap <Leader>fb :LeaderfBuffer<cr>
"noremap <Leader>ft :LeaderfTag<cr>
"noremap <Leader>fm :LeaderfMru<cr>
"noremap <Leader>fl :LeaderfLine<cr>

"let g:python3_host_prog='/Library/Frameworks/Python.framework/Versions/3.6/bin/python3'
"let g:python3_host_prog="/usr/local/bin/python3"
"let g:python_host_prog='/usr/bin/python2.7'
"
"

"vim tex
" let g:tex_flavor='latex'
" let g:vimtex_view_method='zathura'
" let g:vimtex_quickfix_mode=0
"auto hide math equation
" set conceallevel=1
" set concealcursor=nvc
" let g:tex_conceal='abdmg'

"let g:UltiSnipsExpandTrigger="<tab>"
"let g:UltiSnipsJumpForwardTrigger = '<TAB>'
let g:UltiSnipsExpandTrigger='<Nop>'


"nerd commenter setting
" Add spaces after comment delimiters by default
let g:NERDSpaceDelims = 1

" Use compact syntax for prettified multi-line comments
let g:NERDCompactSexyComs = 1

" Align line-wise comment delimiters flush left instead of following code indentation
let g:NERDDefaultAlign = 'left'

" Set a language to use its alternate delimiters by default
let g:NERDAltDelims_java = 1

" Add your own custom formats or override the defaults
let g:NERDCustomDelimiters = { 'c': { 'left': '/**','right': '*/' } }

" Allow commenting and inverting empty lines (useful when commenting a region)
let g:NERDCommentEmptyLines = 1

" Enable trimming of trailing whitespace when uncommenting
let g:NERDTrimTrailingWhitespace = 1

" Enable NERDCommenterToggle to check all selected lines is commented or not 
let g:NERDToggleCheckAllLines = 1
nmap <C-c> <leader>c<Space>
vmap <C-c> <leader>c<Space>

" autocmd Filetype vert set syntax=c
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
"
nmap <C-t> :TagbarToggle<CR>

nmap <C-]> :call CocAction('jumpDefinition', 'tab drop') <CR>
