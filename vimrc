" set UTF-8 encoding
set enc=utf-8
set fenc=utf-8
set termencoding=utf-8

" fix backspace in Insert mode
set backspace=2

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

" set initial window size to 125 columns, 50 lines.
set lines=50 columns=125

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

if has("gui_running")
  if has("gui_gtk2")
    set guifont=Inconsolata\ 11
    set anti gfn=Inconsolata\ 11
  elseif has("gui_win32")
    set guifont=Consolas:h10
    set anti gfn=Consolas:h10
  elseif has("gui_macvim")
    set guifont=Monaco:h10
    set anti gfn=Monaco:h10
  endif
endif  

colorscheme vividchalk
