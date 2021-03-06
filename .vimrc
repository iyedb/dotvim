set encoding=utf-8
call plug#begin()
Plug 'tpope/vim-sensible'
Plug 'https://github.com/jiangmiao/auto-pairs.git'
" On-demand loading
Plug 'scrooloose/nerdtree', { 'on': 'NERDTreeToggle' }
Plug 'tpope/vim-fugitive'
" Plug 'vim-airline/vim-airline'
" Plug 'vim-airline/vim-airline-themes'
Plug 'tomasr/molokai'
Plug 'ctrlpvim/ctrlp.vim'
Plug 'tpope/vim-commentary'
Plug 'nvie/vim-flake8'
Plug 'mhinz/vim-janah'
Plug 'pangloss/vim-javascript'
Plug 'mxw/vim-jsx'
Plug 'scrooloose/syntastic'
Plug 'elixir-lang/vim-elixir'
Plug 'slashmili/alchemist.vim'
Plug 'sjl/clam.vim'
Plug 'fatih/vim-go'
Plug 'colepeters/spacemacs-theme.vim'
Plug 'bronson/vim-trailing-whitespace'
Plug 'itchyny/lightline.vim'
call plug#end()

if (has("termguicolors"))
  set termguicolors
endif

let mapleader = ","

set number
set ruler
set title
set hidden
set visualbell
set laststatus=2
set diffopt+=vertical
set colorcolumn=80
set tabstop=4
set shiftwidth=4
set noshowmode
set background=dark

syntax on

" colorscheme molokai
" let g:molokai_original = 1
" colorscheme molokai

colorscheme spacemacs-theme

map <C-n> :NERDTreeToggle<CR>
noremap <leader>n :NERDTreeToggle<CR>
let NERDTreeIgnore = ['\.pyc$', '.DS_Store']
let NERDTreeShowHidden=1

let g:jsx_ext_required = 0

nnoremap <F3> :set hlsearch!<CR>
let g:go_fmt_command = "goimports"
let g:lightline = {
      \ 'active': {
      \   'left': [ [ 'mode', 'paste' ],
      \             [ 'gitbranch', 'readonly', 'filename', 'modified' ] ]
      \ },
      \ 'component_function': {
      \   'gitbranch': 'fugitive#head'
      \ },
      \ }
