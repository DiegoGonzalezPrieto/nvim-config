set number
set nocompatible 
set hidden
set nocp
filetype plugin on

set colorcolumn=80
hi ColorColumn ctermbg=Gray

"set cursorcolumn


" ################## VIM-PLUG ##################
"
" plugin section; uses vim-plug
" basic usage: https://github.com/junegunn/vim-plug/wiki/tutorial

call plug#begin('~/.local/share/nvim/site/plugged')


" coc - autocomplete plugin
Plug 'neoclide/coc.nvim', {'branch': 'release'}

" fzf - fuzzy search plugin

Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'


" auto-pairs - add closing parenthesis/brackets

Plug 'jiangmiao/auto-pairs'
Plug 'machakann/vim-sandwich'

" NERD Commenter - easy comment files

Plug 'preservim/nerdcommenter'

" GitGutter - Git integration
Plug 'airblade/vim-gitgutter'

" Emmet - HTML & CSS expanding abbreviations
Plug 'mattn/emmet-vim'

" Surround - easily surround with (){}[]""''
Plug 'tpope/vim-surround'

call plug#end()


" ################## COC ##################
" https://github.com/neoclide/coc.nvim


" COC  - use <tab> for trigger completion and navigate to the next complete item

function! s:check_back_space() abort
  let col = col('.') - 1
  return !col || getline('.')[col - 1]  =~ '\s'
endfunction

inoremap <silent><expr> <Tab>
      \ pumvisible() ? "\<C-n>" :
      \ <SID>check_back_space() ? "\<Tab>" :
      \ coc#refresh()



" COC - use <cr> (enter) to confirm completion

inoremap <expr> <cr> pumvisible() ? "\<C-y>" : "\<C-g>u\<CR>"

" Remap <C-f> and <C-b> for scroll float windows/popups.
if has('nvim-0.4.0') || has('patch-8.2.0750')
  nnoremap <silent><nowait><expr> <C-f> coc#float#has_scroll() ? coc#float#scroll(1) : "\<C-f>"
  nnoremap <silent><nowait><expr> <C-b> coc#float#has_scroll() ? coc#float#scroll(0) : "\<C-b>"
  inoremap <silent><nowait><expr> <C-f> coc#float#has_scroll() ? "\<c-r>=coc#float#scroll(1)\<cr>" : "\<Right>"
  inoremap <silent><nowait><expr> <C-b> coc#float#has_scroll() ? "\<c-r>=coc#float#scroll(0)\<cr>" : "\<Left>"
  vnoremap <silent><nowait><expr> <C-f> coc#float#has_scroll() ? coc#float#scroll(1) : "\<C-f>"
  vnoremap <silent><nowait><expr> <C-b> coc#float#has_scroll() ? coc#float#scroll(0) : "\<C-b>"
endif




" ################## /COC ##################



" ################## NETRW ##################
" NETRW file explorer as NerdTree

"let g:netrw_banner = 0
"let g:netrw_liststyle = 3
let g:netrw_browse_split = 3
"let g:netrw_altv = 1
"let g:netrw_winsize = 25
"augroup ProjectDrawer
"  autocmd!
"  autocmd VimEnter * :Vexplore
"augroup END

" ################## /NETRW ##################
"
"
" ################## FZF ##################
" usage:  https://github.com/junegunn/fzf.vim#Commands


" ################## Auto-Pairs ##################
" https://github.com/jiangmiao/auto-pairs


" ################## NERD Commenter ##################
" https://github.com/preservim/nerdcommenter
"
"
" ################## Emmet ##################
" https://raw.githubusercontent.com/mattn/emmet-vim/master/TUTORIAL
