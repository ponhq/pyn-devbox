set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
Plugin 'kien/ctrlp.vim'
Plugin 'edkolev/promptline.vim'

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required

set autoread

set encoding=UTF-8

""" ui
syntax on
set wildmenu
set ruler
set mouse=a
set cmdheight=2
set number
set cursorline

hi CursorLine cterm=bold
hi Normal guibg=NONE ctermbg=NONE

""" search
set ignorecase
set smartcase
set hlsearch
set incsearch
set magic
set showmatch

""" text
set expandtab
set smarttab
set shiftwidth=2
set tabstop=2
set encoding=utf-8

set ai
set si
set wrap

set backspace=indent,eol,start

""" airline
set laststatus=2
let g:airline_theme='badwolf'
let g:airline_powerline_fonts = 1

""" ignore
set wildignore+=*/tmp/*,*.so,*.swp,*.zip,*/node_modules,*/target,*/dist,*/build,*/coverage,*/level_store*,.git,.hg,.svn,.idea
