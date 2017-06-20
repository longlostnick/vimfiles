"-----------------------------------------------------------------------------
" General Stuff
"-----------------------------------------------------------------------------

set nocp

set nohls
set incsearch

" set the search scan so that it ignores case when the search is all lower
" case but recognizes uppercase if it's specified
set ignorecase
set smartcase

" Turn off the angryness
set noerrorbells
set visualbell

" Fix esc key delaying itself wtf?
set ttimeoutlen=0

" 'fuzzy' find files in current dir
set path+=**
set wildmenu

"-----------------------------------------------------------------------------
" Editor Formatting
"-----------------------------------------------------------------------------

" turn off paren matching
let loaded_matchparen = 1

" When the page starts to scroll, keep the cursor 5 lines from the top/bottom
set scrolloff=5

" Tabs and spaces
set expandtab
set tabstop=2
set shiftwidth=2
set shiftround

" Indentation
set autoindent
set smartindent

" Allow backspacing over indent, eol, and the start of an insert
set backspace=2

" Let the cursor do some crazy stuff
set virtualedit=all

" Stuff for Go
let g:go_highlight_functions = 1
let g:go_highlight_methods = 1
let g:go_highlight_structs = 1
let g:go_highlight_operators = 1
let g:go_highlight_build_constraints = 1

"-----------------------------------------------------------------------------
" Key mappings
"-----------------------------------------------------------------------------

let mapleader=","

" jj esc!
imap jj <esc>

" No more shift colon!
nmap <space> :

" Toggle that stupid highlight search
nmap <silent> <Leader>m :set invhls<CR>:set hls?<CR>

" Keep text selected after indentation. Favorite setting of all time :D
vnoremap < <gv 
vnoremap > >gv  

"-----------------------------------------------------------------------------
" Plugin stuff
"-----------------------------------------------------------------------------

" SuperTab auto-highlight first result
let g:SuperTabLongestHighlight = 1

" Use grep with ctrlp
"let g:ctrlp_user_command = 'grep -rl "" --exclude-dir=tmp --exclude-dir=coverage --exclude-dir=".*" %s'
let g:ctrlp_custom_ignore = '\v[\/](\.*|tmp|coverage)$'

" NERDTree toggling
nmap <silent> <Leader>nt :NERDTreeToggle \| :silent NERDTreeMirror<CR>

" Pathogen!
execute pathogen#infect()

"-----------------------------------------------------------------------------
" File stuff
"-----------------------------------------------------------------------------

" Set filetype stuff to on
filetype plugin indent on

" Set some common filetypes
au BufNewFile,BufRead *.erb set ft=eruby
au BufNewFile,BufRead *.jst,*.eco set syntax=jst

" remember last cursor position
au BufReadPost * if line("'\"") > 1 && line("'\"") <= line("$") | exe "normal! g`\"" | endif

" Setting up the directories
set backup                       " backups are nice ...
set backupdir=$HOME/.vimbackup// " but not when they clog .
set viewdir=$HOME/.vimviews//    " same for view files
set directory=$HOME/.vimswap//   " same for swap files

" Creating directories if they don't exist
silent execute '!mkdir -p $HOME/.vimbackup'
silent execute '!mkdir -p $HOME/.vimswap'
silent execute '!mkdir -p $HOME/.vimviews'

"-----------------------------------------------------------------------------
" Colors and layout
"-----------------------------------------------------------------------------

" tell VIM to always put a status line in, even if there is only one window
set laststatus=2

" Set the status line the way i like it
set stl=%f\ %m\ %r\ Line:%l/%L[%p%%]\ Col:%c\ Buf:%n

set t_Co=256
set term=screen-256color

syntax enable

set number
set background=light
set cursorline

"set listchars=tab:>-,trail:-,eol:$
set listchars=tab:▸\ ,eol:¬

colorscheme lucius
LuciusWhiteHighContrast
