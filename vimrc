" All system-wide defaults are set in $VIMRUNTIME/archlinux.vim (usually just
" /usr/share/vim/vimfiles/archlinux.vim) and sourced by the call to :runtime
" you can find below.  If you wish to change any of those settings, you should
" do it in this file (/etc/vimrc), since archlinux.vim will be overwritten
" everytime an upgrade of the vim packages is performed.  It is recommended to
" make changes after sourcing archlinux.vim since it alters the value of the
" 'compatible' option.

" This line should not be removed as it ensures that various options are
" properly set to work with the Vim-related packages.
runtime! archlinux.vim

" If you prefer the old-style vim functionalty, add 'runtime! vimrc_example.vim'
" Or better yet, read /usr/share/vim/vim80/vimrc_example.vim or the vim manual
" and configure vim to your own liking!

" do not load defaults if ~/.vimrc is missing
"let skip_defaults_vim=1
"
set number
set numberwidth=1
set mouse=r
set clipboard=unnamed
set showcmd
set ruler
set encoding=utf-8
set showmatch
set sw=2
set relativenumber
syntax enable
set tabstop=2
set autoindent
set laststatus=2
set bg=dark

call plug#begin('~/.vim/plugged')

" Temas
 Plug 'morhetz/gruvbox'

" " IDE
 Plug 'easymotion/vim-easymotion'
 Plug 'scrooloose/nerdtree'
 Plug 'christoomey/vim-tmux-navigator'

 call plug#end()

 colorscheme gruvbox
 let g:gruvbox_contrast_dark = "hard"
 let NERDTreeQuitOnOpen=1

 let mapleader=" "

 nmap <Leader>s <Plug>(easymotion-s2)
 nmap <Leader>nt :NERDTreeFind<CR>
