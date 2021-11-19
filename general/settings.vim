syntax enable

set number relativenumber
set numberwidth=1
set mouse=a
set clipboard=unnamedplus
set showcmd
set ruler
set encoding=utf-8
set showmatch
set sw=2
set laststatus=2
set bg=dark         
set guicursor=                                     " Disable blinking for the n-v-c modes
set termguicolors
set guioptions-=T                                   " No Tool bar
set cursorline                                     " Highlight the current line
set hidden                                         " When on a buffer becomes hidden when it is abandoned
set path+=**
set nowrap
set encoding=UTF-8

set smartindent
set smarttab
set tabstop=2 softtabstop=2
set shiftwidth=4
set expandtab
set smartcase
set incsearch
set nohlsearch
set completeopt=menuone,noinsert,noselect
set signcolumn=yes
highlight ColorColumn ctermbg=0 guibg=lightgrey

set noswapfile
set nobackup
set undofile
execute 'set undodir=' . g:nvim_data_root . '/undodir'
colorscheme dracula
let NERDTreeQuitOnOpen=1

let mapleader=","

nmap <Leader>w :w<CR>
nmap <Leader><F5> :source ~/.vimrc<CR>
nmap <Leader>s <Plug>(easymotion-s2)
nmap <Leader>nt :NERDTreeFind<CR>
" Python virtual environment detection in linux
let g:loaded_python_provider = 0
" Ruta donde se creó el ambiente de Python con pipenv.
let g:python3_host_prog = '/home/{usuario}/.local/share/virtualenvs/{nvim-999999}/bin/python'
