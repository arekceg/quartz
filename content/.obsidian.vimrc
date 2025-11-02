" Leader Mapping
" Leader Mapping
let mapleader=" "

" Display hybird line numbers
set number relativenumber

" Toggle relative line numbers
" use Ctrl+L to toggle the line number counting method
function! g:ToggleNuMode()
  if &relativenumber == 0
     set relativenumber
  else
     set norelativenumber
     set number
  endif
endfunction
nnoremap <silent><C-L> :call g:ToggleNuMode()<cr>

" Map K and J to jump wraped lines correctly
nnoremap j gj
nnoremap gj j
nnoremap k gk
nnoremap gk k

" Map leader d to blackhole register
nnoremap <leader>d "_d
xnoremap <leader>d "_d
nnoremap <leader>D "_D
xnoremap <leader>D "_D

" Map leader c to blackhole register
nnoremap <leader>c "_c
xnoremap <leader>c "_c
nnoremap <leader>C "_C
xnoremap <leader>C "_C

" Map regular paste to blackhole register
xnoremap p "_dP
xnoremap <leader>p p

xnoremap P "_dP
xnoremap <leader>P P

"Map [ESC] to kj
imap kj <Esc>
