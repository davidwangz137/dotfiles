set nocompatible
filetype off

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'VundleVim/Vundle.vim'
Plugin 'Valloric/YouCompleteMe'
Plugin 'The-NERD-Commenter'
Plugin 'ctrlp.vim'
Plugin 'Buffergator'

call vundle#end()            " required
filetype plugin indent on    " required

" enable syntax highlighting
syntax enable

" show line numbers
set number

" set tabs to have 4 spaces
set ts=4

" indent when moving to the next line while writing code
set autoindent

" expand tabs into spaces
set expandtab

" when using the >> or << commands, shift lines by 4 spaces
set shiftwidth=4

" show a visual line under the cursor's current line
set cursorline

" show the matching part of the pair for [] {} and ()
set showmatch

" enable all Python syntax highlighting features
let python_highlight_all = 1

colorscheme default2

" make search ignore case by default
set ignorecase

set smartcase

"Set the Leader key

let mapleader = "\<Space>"

"faster saving

nnoremap <Leader>w :w<CR>

"make vim highlight as it searchs

set hlsearch incsearch

"set plugin filetype on for NERDCOMMENTER

filetype plugin on

"autocmd! ycmcompletemecursormove CursorMovedI 
"autocmd! ycmcompleteme CursorHoldI 

map <C-w><Bslash> :ConqueTermVSplit bash <CR> <Esc> <Esc>:!echo "HERE" <CR> :autocmd! ycmcompletemecursormove CursorMovedI <CR> :autocmd! ycmcompleteme CursorHoldI <CR> 
"map <C-w><Bslash> :ConqueTermVSplit bash <CR> <Esc> <Esc>:!echo "HERE" <CR> :autocmd! ycmcompletemecursormove CursorMovedI <CR> :autocmd! ycmcompleteme CursorHoldI <CR> 
"map <C-w><Bslash> :ConqueTermVSplit bash <CR> 
map <C-w>- :ConqueTermSplit bash <CR>

"let g:ConqueTerm_StartMessages = 0
