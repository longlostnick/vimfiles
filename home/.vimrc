"-----------------------------------------------------------------------------
" General Stuff
"-----------------------------------------------------------------------------

" no compatibility mode
set nocp

" turn off highlight search to start
set nohls

" search while we type
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

"-----------------------------------------------------------------------------
" Editor Formatting
"-----------------------------------------------------------------------------

" turn off paren matching
let loaded_matchparen = 1

" When the page starts to scroll, keep the cursor 5 lines from the top/bottom
set scrolloff=5

" Tabs and spaces
set expandtab
set tabstop=4
set shiftwidth=4
set shiftround

" Indentation
set autoindent
set smartindent

" Allow backspacing over indent, eol, and the start of an insert
set backspace=2

" Let the cursor do some crazy stuff
set virtualedit=all

" Tabs and spaces (ruby)
au BufRead,BufNewFile *.rb,*.erb setl sw=2 sts=2 et

"-----------------------------------------------------------------------------
" Key mappings
"-----------------------------------------------------------------------------

" jj esc!
imap jj <esc>

" No more shift colon!
nmap <space> :

" Toggle that stupid highlight search
nmap <silent> ,m :set invhls<CR>:set hls?<CR>

" Shortcut to rapidly toggle `set list`
nmap <silent> ,l :set list!<CR>

" Tab switching (mainly for terminal)
nmap <silent> ,f :tabn<CR>
nmap <silent> ,d :tabp<CR>

" Keep text selected after indentation. Favorite setting of all time :D
vnoremap < <gv 
vnoremap > >gv  

"-----------------------------------------------------------------------------
" Plugin stuff
"-----------------------------------------------------------------------------

" SuperTab auto-highlight first result
let g:SuperTabLongestHighlight = 1

" NERDTree toggling
nmap <silent> ,nt :NERDTreeToggle \| :silent NERDTreeMirror<CR>

"-----------------------------------------------------------------------------
" File stuff
"-----------------------------------------------------------------------------

" Set filetype stuff to on
filetype plugin indent on

" Setting up the directories
set backup 						" backups are nice ...
set backupdir=$HOME/.vimbackup/ " but not when they clog .
set viewdir=$HOME/.vimviews/ 	" same for view files
set directory=$HOME/.vimswap/ 	" same for swap files

" Creating directories if they don't exist
silent execute '!mkdir -p $HOME/.vimbackup'
silent execute '!mkdir -p $HOME/.vimswap'
silent execute '!mkdir -p $HOME/.vimviews'

" Set some common filetypes
au BufNewFile,BufRead *.jst   setl filetype=html
au BufNewFile,BufRead *.ejs   setl filetype=html
au BufNewFile,BufRead *.erb   setl filetype=eruby
au BufNewFile,BufRead Gemfile setl filetype=Gemfile

"-----------------------------------------------------------------------------
" Colors and layout
"-----------------------------------------------------------------------------

" tell VIM to always put a status line in, even if there is only one window
set laststatus=2

" Set the status line the way i like it
set stl=%f\ %m\ %r\ Line:%l/%L[%p%%]\ Col:%c\ Buf:%n

set t_Co=256

syntax enable

set number
set background=dark
set ruler
set cursorline

colorscheme Tomorrow-Night
"colorscheme xoria256
"colorscheme jellybeans
