syntax on

set spell spelllang=en_gb
set encoding=utf-8
set noerrorbells
set tabstop=4 softtabstop=4
set shiftwidth=4
set expandtab
set smartindent
set nu
set nowrap
set smartcase
set noswapfile
set nobackup
set undodir=~/.vim/undodir
set undofile
set incsearch

set autoindent

call plug#begin('~/.vim/plugged')

Plug 'morhetz/gruvbox'
Plug 'rodjek/vim-puppet'
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'
Plug 'airblade/vim-rooter'
Plug 'preservim/nerdtree'
Plug 'aserebryakov/vim-todo-lists'
Plug 'zxqfl/tabnine-vim'
Plug 'prettier/vim-prettier', {
  \ 'do': 'yarn install',
  \ 'for': ['javascript', 'typescript', 'css', 'less', 'scss', 'json', 'graphql', 'markdown', 'vue', 'yaml', 'html'] }
Plug 'ryanoasis/vim-devicons'

call plug#end()

colorscheme gruvbox
set background=dark
set iskeyword+=:
set backspace=indent,eol,start

if executable('rg')
    let g:rg_derive_root='true'
endif

let mapleader = " "
let g:netrw_browse_split = 2
let g:netrw_banner = 0

let g:ctrlp_use_caching = 0
let g:netrw_winsize = 25

vmap <Space>pt :!perltidy<CR>
nmap <Space>pt :%! perltidy<CR>

inoremap jk <ESC>
nnoremap <Space>n :NERDTree<CR>
nnoremap <Space>jq :%!jq .<CR>
nnoremap <Space>rg :Rg<CR>

