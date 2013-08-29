" set UTF-8 encoding
set enc=utf-8
set fenc=utf-8
set termencoding=utf-8

set nocompatible
filetype off

" Vundle stuff

set rtp+=~/.vim/bundle/vundle/
call vundle#rc()

" let Vundle manage Vundle
" required!
Bundle 'gmarik/vundle'
"The bundles you install will be listed here
Bundle 'scrooloose/nerdtree'
Bundle 'klen/python-mode'

" Turn on NerdTree
map <F2> :NERDTreeToggle<CR>

" fix backspace in Insert mode
set backspace=2

" indention 
set autoindent
filetype indent plugin on 
set modeline

" set linebreak to honor boundaries of a word when wrapping text
set linebreak
 
" configure tabwidth and insert spaces instead of tabs
set tabstop=4        " tab width is 4 spaces
set shiftwidth=4     " indent also with 4 spaces
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
    set guifont=Inconsolata\ 9
    set anti gfn=Inconsolata\ 9
  elseif has("gui_win32")
    set guifont=Consolas:h10
    set anti gfn=Consolas:h10
  elseif has("gui_macvim")
    set guifont=Menlo:h11
    set anti gfn=Menlo:h11
  endif
endif  

colorscheme vividchalk

"options for PythonMode
" Activate rope
" Keys:
" K             Show python docs
" <Ctrl-Space>  Rope autocomplete
" <Ctrl-c>g     Rope goto definition
" <Ctrl-c>d     Rope show documentation
" <Ctrl-c>f     Rope find occurrences
" <Leader>b     Set, unset breakpoint (g:pymode_breakpoint enabled)
" [[            Jump on previous class or function (normal, visual, operator modes)
" ]]            Jump on next class or function (normal, visual, operator modes)
" [M            Jump on previous class or method (normal, visual, operator modes)
" ]M            Jump on next class or method (normal, visual, operator modes)
let g:pymode_rope = 1

" Documentation
let g:pymode_doc = 1
let g:pymode_doc_key = 'K'

"Linting
let g:pymode_lint = 1
let g:pymode_lint_checker = "pyflakes,pep8"

" Skip errors and warnings
" E.g. "E501,W002", "E2,W" (Skip all Warnings and Errors startswith E2) and etc
let g:pymode_lint_ignore = "E501"

" Auto check on save
let g:pymode_lint_write = 1

" Support virtualenv
let g:pymode_virtualenv = 1

" Enable breakpoints plugin
let g:pymode_breakpoint = 1
let g:pymode_breakpoint_key = '<leader>b'

" syntax highlighting
let g:pymode_syntax = 1
let g:pymode_syntax_all = 1
let g:pymode_syntax_indent_errors = g:pymode_syntax_all
let g:pymode_syntax_space_errors = g:pymode_syntax_all

" Don't autofold code
let g:pymode_folding = 0
