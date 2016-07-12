"Note to self: Conqueterm bash history works, but you can only use backspace.
"Delete does nothing

set nocompatible
filetype off

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'VundleVim/Vundle.vim'
Plugin 'Valloric/YouCompleteMe'
Plugin 'The-NERD-Commenter'
Plugin 'ctrlp.vim'
Plugin 'Buffergator'
"Plugin 'Syntastic'

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

colorscheme elflord

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

"make vim refresh to get the new file if it has changed

set autoread

"run vim-flake8 to get PEP8 violations everytime a file is written

"autocmd BufWritePost *.py call Flake8()

"make it so it keeps on looking up the directory tree for a tags file until it
"finds one. This should make it use the one in the home directory

"set tags=/,tags;/
set tags=~/tags

"let g:syntastic_always_populate_loc_list = 0
"let g:syntastic_auto_loc_list = 1
"let g:syntastic_check_on_open = 0
"let g:syntastic_check_on_w = 0
"let g:syntastic_check_on_wq = 0
""let g:syntastic_python_pylint_args = '--rcfile=/home/dwang/.pylintrc'
""Passive by default
""let g:syntastic_mode_map = { 'mode': 'passive', 'active_filetypes':
""[],'passive_filetypes': [] }
"""Shortcut to set the editor into passive mode where it doesn't auto check
"map ,s :SyntasticToggleMode <CR>
"map ,c :SyntasticCheck pylint <CR>
"map c, :lclose <CR>
"let g:syntastic_mode_map = { 'mode': 'passive', 'active_filetypes': ['python'],'passive_filetypes': [] }
""map ,c :SyntasticCheck<CR> :SyntasticToggleMode<CR>
"map <C-w><Bslash> :!echo \"HERE\" <CR> :ConqueTermVSplit bash <CR> 
"map <C-w><Bslash> :ConqueTermVSplit bash <CR> <Esc> <Esc>:!echo \"HERE\" <CR> :autocmd! ycmcompletemecursormove CursorMovedI <CR> :autocmd! ycmcompleteme CursorHoldI <CR> 
"map <C-w><Bslash> :autocmd! ycmcompletemecursormove CursorMovedI <CR> :autocmd! matchparen CursorMovedI <CR> :autocmd! youcompleteme CursorHoldI <CR> :ConqueTermVSplit bash <CR> 
"map <C-w>- :autocmd! ycmcompletemecursormove CursorMovedI <CR> :autocmd! matchparen CursorMovedI <CR> :autocmd! youcompleteme CursorHoldI <CR> :ConqueTermSplit bash <CR>
map <C-w><Bslash> :vs <CR> 
map <C-w>- :sp <CR>
let g:ConqueTerm_StartMessages = 0

"autowrap NEVER
set tw=0

"Disable the annoying visual bell stuff when backspace too much on ConqueTerm
set visualbell
set t_vb=

"Set another key to move around the splits in Vim so we can use tmux as the
"split manager
"Using vim and tmux then using vim bindings to yank vim... There is something
"disagreeable here
"nnoremap <C-a> <C-w>
"
set wildmode=longest,list
" So CtrlP starts in the local split directory
let g:ctrlp_working_path_mode = 0

" Mouse resize of splits so we can use many at the same time
set mouse=n
set ttymouse=xterm2
