call plug#begin('~/.vim_runtime/plugged')

Plug 'preservim/nerdtree'
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'preservim/nerdcommenter'
Plug 'majutsushi/tagbar'

call plug#end()

"nerdtree shortcut
map <C-n> :NERDTreeToggle<CR>

"nerd tree shown on the left
let g:NERDTreeWinPos = "right"
let g:languageserver = 1

let NERDTreeMapOpenInTab='<ENTER>'
let NERDTreeQuitOnOpen=1
let g:coc_start_at_startup=0

" toggle ccls service
" :call CocAction('toggleService', 'languageserver.ccls')

nmap <C-]> :call CocAction('jumpDefinition', 'tab drop') <CR>

nmap <C-l> :call CocAction('toggleService', 'languageserver.ccls') <CR>
nmap <leader>l :CocStart <CR>

nmap <C-t> :TagbarToggle<CR>

let g:NERDSpaceDelims = 1
let g:NERDCompactSexyComs = 1
let g:NERDDefaultAlign = 'left'
let g:NERDCustomDelimiters = { 'c': { 'left': '/**','right': '*/' } }
let g:NERDCommentEmptyLines = 1
let g:NERDToggleCheckAllLines = 1
let g:NERDToggleCheckAllLines = 1
let g:NERDToggleCheckAllLines = 1
nmap <C-c> <leader>c<Space>
vmap <C-c> <leader>c<Space>


" use tab to auto complete
inoremap <silent><expr> <TAB>
      \ pumvisible() ? "\<C-n>" :
      \ <SID>check_back_space() ? "\<TAB>" :
      \ coc#refresh()
inoremap <expr><S-TAB> pumvisible() ? "\<C-p>" : "\<C-h>"

function! s:check_back_space() abort
  let col = col('.') - 1
  return !col || getline('.')[col - 1]  =~# '\s'
endfunction

" CocStart except cpp
autocmd WinEnter,BufEnter * if &ft != "cpp" | CocStart
