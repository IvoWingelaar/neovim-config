" Neovim configuration file

" Map 'jj' to <ESC> and use ',' as the leader key.
inoremap jj <ESC>
let mapleader = ','

" Vim-plug stuff.
call plug#begin('~/.nvim/plugged')

Plug 'scrooloose/nerdtree', { 'on' : 'NERDTreeToggle' }
Plug 'scrooloose/syntastic' 
Plug 'Xuyuanp/nerdtree-git-plugin', { 'on' : 'NERDTreeToggle' }
Plug 'bling/vim-airline'
Plug 'Valloric/YouCompleteMe', { 'do' : './install.sh --clang-completer --system-libclang --system-boost' }
Plug 'kien/ctrlp.vim'
Plug 'wting/rust.vim'
Plug 'klen/python-mode'
Plug 'majutsushi/tagbar'

" Must be loaded together.
Plug 'xolox/vim-easytags'
Plug 'xolox/vim-misc' 

call plug#end()

map <C-n> :NERDTreeToggle<CR>
map <C-c> :e ~/.nvimrc<CR>
map <C-r> :so ~/.nvimrc<CR>
