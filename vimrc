set tabstop=4
set shiftwidth=4
set expandtab
set autoindent
set smarttab

set colorcolumn=81,101,121

noremap <Up> <Nop>
noremap <Down> <Nop>
noremap <Left> <Nop>
noremap <Right> <Nop>
inoremap <Up> <Nop>
inoremap <Down> <Nop>
inoremap <Left> <Nop>
inoremap <Right> <Nop>

set number

augroup numbertoggle
  autocmd!
  autocmd BufEnter,FocusGained,InsertLeave,WinEnter * if &nu && mode() != "i" | set rnu   | endif
  autocmd BufLeave,FocusLost,InsertEnter,WinLeave   * if &nu                  | set nornu | endif
augroup END

set scrolloff=5

set wildmenu
set cursorline
set linebreak

au BufNewFile,BufRead *.cl setf cool

execute pathogen#infect()

