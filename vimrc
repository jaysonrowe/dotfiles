" set UTF-8 encoding
set enc=utf-8
set fenc=utf-8
set termencoding=utf-8
 
" disable vi compatibility (emulation of old bugs)
set nocompatible
 
" use indentation of previous line
set autoindent

" set linebreak to honor boundaries of a word when wrapping text
set linebreak
 
" configure tabwidth and insert spaces instead of tabs
set tabstop=2        " tab width is 4 spaces
set shiftwidth=2     " indent also with 4 spaces
set expandtab        " expand tabs to spaces
 
" wrap lines at 120 chars. 80 is somewaht antiquated with nowadays displays.
set textwidth=120
 
" turn syntax highlighting on
set t_Co=256
syntax on
 
" turn line numbers on
set number
 
" highlight matching braces
set showmatch

" set backup and temp directories
set backupdir=$HOME/.vim/tmp/backup/
set backup
set directory=$HOME/.vim/tmp/swap/
set viewdir=$HOME/.vim/tmp/view/
set undodir=$HOME/.vim/tmp/undo/
" store undo files, undo edits after deleting a buffer
set undofile
set viminfo='50,n$HOME/.vim/tmp/viminfo
color vividchalk
set guifont=Ubuntu\ Mono\ 11
set anti gfn=Ubuntu\ Mono\ 11
