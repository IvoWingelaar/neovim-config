" Neovim configuration file

" Map 'jj' to <ESC> and use ',' as the leader key.
inoremap jj <ESC>
let mapleader = ','

" Vim-plug stuff.
call plug#begin('~/.nvim/plugged')

" A plugin for file-tree-management.
Plug 'scrooloose/nerdtree', { 'on' : 'NERDTreeToggle' }
Plug 'scrooloose/syntastic' 
Plug 'Xuyuanp/nerdtree-git-plugin', { 'on' : 'NERDTreeToggle' }
Plug 'Valloric/YouCompleteMe', { 'do' : 'python2 install.py --clang-completer --racer-completer' }
Plug 'kien/ctrlp.vim'
Plug 'rking/ag.vim'
Plug 'ervandew/supertab'
Plug 'wting/rust.vim'
"Plug 'klen/python-mode'
Plug 'davidhalter/jedi-vim'
Plug 'majutsushi/tagbar'
"Plug 'fholgado/minibufexpl.vim'
Plug 'mbbill/undotree'
Plug 'SirVer/ultisnips'
Plug 'honza/vim-snippets'

Plug 'tpope/vim-sensible'
Plug 'tpope/vim-fugitive'
Plug 'airblade/vim-gitgutter'
Plug 'powerline/powerline'

Plug 'easymotion/vim-easymotion'

"Plug 'rdnetto/YCM-Generator', {'branch': 'stable'}

Plug 'altercation/vim-colors-solarized'
Plug 'bling/vim-airline'

" Must be loaded together.
"Plug 'xolox/vim-easytags'
"Plug 'xolox/vim-misc' 

call plug#end()

syntax enable
colorscheme solarized
set background=dark

" Mixed numbering mode.
set relativenumber
set number

set ts=4
set autoindent
set expandtab
set shiftwidth=4
set showmatch

if has('nvim')
    nmap <BS> <C-w>h
endif
nmap <C-h> <C-w>h
nmap <C-j> <C-w>j
nmap <C-k> <C-w>k
nmap <C-l> <C-w>l

" Setup some default ignores
let g:ctrlp_custom_ignore = {
  \ 'dir':  '\v[\/](\.(git|hg|svn)|\_site|\__pycache__)$',
  \ 'file': '\v\.(exe|so|dll|class|png|jpg|jpeg)$',
\}

" Use the nearest .git directory as the cwd
" This makes a lot of sense if you are working on a project that is in version
" control. It also supports works with .svn, .hg, .bzr.
let g:ctrlp_working_path_mode = 'r'

" Use a leader instead of the actual named binding
nmap <leader>p :CtrlP<cr>

" Easy bindings for its various modes
nmap <leader>bb :CtrlPBuffer<cr>
nmap <leader>bm :CtrlPMixed<cr>
nmap <leader>bs :CtrlPMRU<cr>

map <C-n> :NERDTreeToggle<CR>
map <C-c> :e ~/.nvimrc<CR>
map <C-r> :so ~/.nvimrc<CR>
nmap <F8> :TagbarToggle<CR>
nnoremap <F5> :UndotreeToggle<CR>

let g:airline#extensions#tabline#enabled = 1
let g:ycm_rust_src_path = '/usr/local/rust/rustc-1.5.0/src'
let g:ycm_global_ycm_extra_conf = '~/.config/nvim/ycm_extra_conf.py'


let g:UltiSnipsExpandTrigger = "<c-i>"
let g:UltiSnipsListSnippets = "<c-o>"
let g:UltiSnipsJumpForwardTrigger = "<c-b>"
let g:UltiSnipsJumpBackwardTrigger = "<c-z>"
let g:UltiSnipsEditSplit = "vertical"
