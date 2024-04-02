filetype off

call plug#begin()
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'haishanh/night-owl.vim'
call plug#end()

""""" enable 24bit true color
if (has("termguicolors"))
 set termguicolors
endif

syntax enable
colorscheme night-owl

" if pop up menu is visible, tab to complete, else normal tab
inoremap <silent><expr> <Tab> pumvisible() ? "\<C-y>" : "\<Tab>"

filetype plugin indent on

let mapleader=","

set number
set ruler
set noerrorbells
set encoding=utf-8
set ttyfast
set splitright
set splitbelow
set wrap
set textwidth=79
set tabstop=2
set smarttab
set shiftwidth=2
set smartindent
set autoindent
set hlsearch
set showmode
set incsearch
set relativenumber
