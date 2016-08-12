set nocompatible              " be iMproved, required
filetype on   
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

execute pathogen#infect()


autocmd FileType java setlocal omnifunc=javacomplete#Complete
nmap <F4> <Plug>(JavaComplete-Imports-AddSmart)

imap <F4> <Plug>(JavaComplete-Imports-AddSmart)
nmap <F5> <Plug>(JavaComplete-Imports-Add)

imap <F5> <Plug>(JavaComplete-Imports-Add)
nmap <F6> <Plug>(JavaComplete-Imports-AddMissing)

imap <F6> <Plug>(JavaComplete-Imports-AddMissing)
nmap <F7> <Plug>(JavaComplete-Imports-RemoveUnused)

imap <F7> <Plug>(JavaComplete-Imports-RemoveUnused)





let g:pymode_python = 'python3'


" let g:syntastic_python_python_exec = 'python3' 
" Track the engine.
" Plugin 'SirVer/ultisnips'
"
" " Snippets are separated from the engine. Add this if you want them:
" Plugin 'honza/vim-snippets'
"
" " Trigger configuration. Do not use <tab> if you use
" https://github.com/Valloric/YouCompleteMe.
" let g:UltiSnipsExpandTrigger="<tab>"
let g:UltiSnipsJumpForwardTrigger="<c-c>"
let g:UltiSnipsJumpBackwardTrigger="<c-z>"


map <C-R>vr :VimuxRunCommand("clear; rspec " . bufname("%"))<CR>

map <C-R>vc :VimuxRunCommand("

" Prompt for a command to run
map <C-R>vp :VimuxPromptCommand<CR>
"
"   " Run last command executed by VimuxRunCommand
map <C-R>vl :VimuxRunLastCommand<CR>
"
"     " Inspect runner pane
map <C-R>vi :VimuxInspectRunner<CR>
"
"       " Close vim tmux runner opened by VimuxRunCommand
map <C-R>vq :VimuxCloseRunner<CR>
"
"         " Interrupt any command running in the runner pane
map <C-R>vx :VimuxInterruptRunner<CR>
"
"           " Zoom the runner pane (use <bind-key> z to restore runner pane)
map <C-R>vz :call VimuxZoomRunner()<CR>
"
" " If you want :UltiSnipsEdit to split your window.
" let g:UltiSnipsEditSplit="vertical"Plugin 'SirVer/ultisnips'

" Snippets are separated from the engine. Add this if you want them:
Plugin 'honza/vim-snippets'

" Trigger configuration. Do not use <tab> if you use https://github.com/Valloric/YouCompleteMe.
let g:UltiSnipsExpandTrigger="<tab>"

let g:UltiSnipsUsePythonVersion = 3
" If you want :UltiSnipsEdit to split your window.
let g:UltiSnipsEditSplit="vertical"

let g:UltiSnipsSnippetsDir        = $HOME.'/.vim/UltiSnips/'
let g:UltiSnipsSnippetDirectories=["UltiSnips"]

let g:syntastic_python_python_exec = '/Library/Python/2.7/'

Plugin 'artur-shaik/vim-javacomplete2'
set guifont=Menlo\ for\ Powerline
" let Vundle manage Vundle, required"
Plugin 'alvan/vim-php-manual'
Plugin 'VundleVim/Vundle.vim'
Plugin 'fatih/vim-go'
Plugin 'scrooloose/nerdtree'
Plugin 'scrooloose/syntastic'
Plugin 'sheerun/vim-polyglot'
Plugin 'chriskempson/tomorrow-theme'
Plugin 'benmills/vimux'
Plugin 'tpope/vim-fugitive' " the ultimate git helper
Plugin 'tpope/vim-commentary' 
call vundle#end()            " required
filetype plugin indent on    " required	

set mouse=a        " Enable mouse support in console
colorscheme darkblue 

filetype on
filetype plugin on
filetype indent on
syntax enable
set grepprg=grep\ -nH\ $*

"Go Lint
set rtp+=$GOPATH/src/github.com/golang/lint/misc/vim

"added multiple search
function! SearchMultiLine(bang, ...)
	if a:0 > 0
		let sep = (a:bang) ? '\_W\+' : '\_s\+'
		let @/ = join(a:000, sep)
	endif
endfunction
command! -bang -nargs=* -complete=tag S call SearchMultiLine(<bang>0, <f-args>)|normal! /<C-R>/<CR>




source ~/.vim/bundle/closetag/plugin/closetag.vim " Html auto close tags

set showcmd      " Shows what you are typing as a command
set nocompatible " Necessary for lots for cool vim things
set ruler        " Always show current positions along the bottom
set nu           " Set linenumber
set ai           " Auto indent
set si           " Smart indet
set wrap         " Wrap lines
syntax on
color Crystallite
