" general settings
colorscheme desert			" define syntax color scheme
set dir=~/.vim/swap			" keep swap file in one place
set bdir=~/.vim/backup		" keep backups file in one place
set encoding=utf-8			" UTF-8 encoding for all new files
set termencoding=utf-8		" force terminal encoding
set syntax=on				" enable syntax highlight
set history=100				" 100 lines command history
set number					" show line numbers
set numberwidth=1			" min num of col to reserve for line numbers
set showmatch				" show matching brackets () [] {}
set ttyfast					" fast terminal for redraws
set autoread				" reload file if detected changes
set wildmenu				" enhanced tab-completion shows all matching cmds
set shell=/bin/bash			" set default shell type

" statusline
set ruler					" show cursor position in status line
set showmode				" show mode in status line
set showcmd					" show partial cmds in status line
set cursorline				" show a cursorline

" tabs and indenting
set tabstop=4				" n space tab width
set autoindent				" auto indent next new line
set nocindent				" C style indent OFF

" searching
set hlsearch				" highlights all search results
set incsearch				" increment search
set ignorecase				" case-insensitive match
set smartcase				" uppercase causes case-sensitive search
set wrapscan				" searches wrap back to the top of file
