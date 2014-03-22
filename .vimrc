
" General "{{{
set nocompatible
" Modeline
set modeline
set modelines=5 " default numbers of lines to read for modeline instructions
" Backup
set nowritebackup
set nobackup
set directory=/tmp// " prepend(^=) $HOME/.tmp/ to default path; use full path as backup filename(//)
" Buffers
set hidden " The current buffer can be put to the background without writing to disk
" Match and search
set hlsearch " highlight search
set ignorecase " Do case in sensitive matching with
set smartcase   " be sensitive when there's a capital letter
set incsearch "

set whichwrap=<,>,[,]          " Autorise le passage d'une ligne à l'autre avec les flèches
" "}}}


" Formatting "{{{
set nowrap
set textwidth=0 " Don't wrap lines by default
set backspace=indent,eol,start  " more powerful backspacing

set tabstop=2 " Set the default tabstop
set softtabstop=2
set shiftwidth=2 " Set the default shift width for indents
set expandtab " Make tabs into spaces (set by tabstop)
set smarttab " Smarter tab levels

set noai                       " autoindentation inactive

syntax on " enable syntax
filetype plugin indent on " Automatically detect file types.
" "}}}

" Visual "{{{
set nonumber " Line numbers off
set showmatch " Show matching brackets.
set matchtime=5 " Bracket blinking.
set novisualbell " No blinking
set noerrorbells " No noise.
set laststatus=2 " Always show status line.
set statusline=%<%f%h%m%r%=%l,%c\ %P "Contenu de la barre de status
set vb t_vb= " disable any beeps or flashes on error
set ruler " Show ruler
set showcmd " Display an incomplete command in the lower right corner of the Vim window
set shortmess=atI " Shortens messages

set foldmethod=marker " Fold on the marker
set foldlevel=100 " Don't autofold anything (but I can still fold manually)
set foldopen=block,hor,mark,percent,quickfix,tag " what movements open folds

set mouse-=a " Disable mouse
set mousehide " Hide mouse after chars typed

set splitbelow
set splitright

let g:molokai_original=1
colorscheme molokai
" "}}}

" Auto commands " {{{
au BufRead,BufNewFile *.sls setfiletype yaml
"au BufRead,BufNewFile {*.md,*.mkd,*.markdown}                         set ft=markdown
"au BufRead,BufNewFile {COMMIT_EDITMSG}                                set ft=gitcommit
" " }}}


" Key mappings " {{{
" show/Hide hidden Chars
map <silent> <F12> :set invlist<CR> 
" " }}}

" set encoding=utf-8
" set fileencoding=utf-8
" set termencoding=utf-8


" filetype plugin indent on      " enable filetype and filetype plugin and indent for specific file 

