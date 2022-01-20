set tabstop=4
set shiftwidth=4
set expandtab
set autoindent
set smarttab

set colorcolumn=81,101,121
highlight ColorColumn ctermbg=darkgrey

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

colorscheme elflord

au BufNewFile,BufRead *.cl setf cool


let data_dir = has('nvim') ? stdpath('data') . '/site' : '~/.vim'
if empty(glob(data_dir . '/autoload/plug.vim'))
    silent execute '!curl -fLo '.data_dir.'/autoload/plug.vim --create-dirs  https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'
    autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif


call plug#begin('~/.vim/vim-plug')

Plug 'rust-lang/rust.vim'
Plug 'vim-syntastic/syntastic'

call plug#end()



syntax enable
filetype plugin indent on

