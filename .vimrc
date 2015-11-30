set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'
Plugin 'fatih/vim-go'
Plugin 'scrooloose/nerdtree'
Plugin 'scrooloose/syntastic'
Plugin 'sheerun/vim-polyglot'
Plugin 'chriskempson/tomorrow-theme'

call vundle#end()            " required
filetype plugin indent on    " required	

set mouse=a        " Enable mouse support in console
colorscheme Tomorrow-Night

filetype on
filetype plugin on
filetype indent on
syntax enable
set grepprg=grep\ -nH\ $*


source ~/.vim/bundle/closetag/plugin/closetag.vim " Html auto close tags

set showcmd      " Shows what you are typing as a command
set nocompatible " Necessary for lots for cool vim things
set ruler        " Always show current positions along the bottom
set nu           " Set linenumber
set ai           " Auto indent
set si           " Smart indet
set wrap         " Wrap lines
syntax on
