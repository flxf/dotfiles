au BufReadPost * if line("'\"") > 0|if line("'\"") <= line("$")|exe("norm '\"")|else|exe "norm $"|endif|endif

" vundle

set rtp+=~/.vim/bundle/vundle/
call vundle#rc()

Bundle 'gmarik/vundle'

" vim plugins

Bundle 'Lokaltog/vim-powerline'
Bundle 'altercation/vim-colors-solarized'
Bundle 'flxf/uCpp.vim'
Bundle 'scrooloose/nerdcommenter'

syntax enable
set background=dark
colorscheme solarized

" removes any trailing space in a file before writing
autocmd BufWritePre * :%s/\s\+$//e

set autoindent
set colorcolumn=81
set encoding=utf-8
set expandtab
set hlsearch
set laststatus=2
set nobackup
set nocompatible
set noerrorbells
set noswapfile
set number
set ruler
set shiftwidth=2
set softtabstop=2
set title
set visualbell
set wildmenu
set wildmode=longest,list,full

set t_Co=256

let g:Powerline_symbols = 'fancy'

" custom filetypes
filetype on
au BufRead,BufNewFile *.jsm set filetype=javascript
au BufRead,BufNewFile *.ipdl set filetype=cpp

" plugins
filetype plugin on
let mapleader = ","

" reselect visual block after indent/outdent
vnoremap < <gv
vnoremap > >gv

" write the file the sudo
cnoremap w!! w !sudo tee % >/dev/null
