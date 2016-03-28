" Set Colorscheme and enable syntax highlightin
colorscheme badwolf
syntax enable

" Tabs and Spaces
set tabstop=4		" number of visual spaces per Tab
set softtabstop=4	" number of spaces in tab when editing
set expandtab		" tabs are spaces

" UI configuration
set number          " show line numbers
set showcmd         " show command in bottom bar
set cursorline      " highlight current line
filetype indent on  " load filetype-specific indent files

set wildmenu        " visual autocomplete for command menu  
set lazyredraw      " only redraw when you need to
set showmatch       " highlight matching () {} []

" Searching
set incsearch       " search as characters are entered
set hlsearch        " highlight matches

" Create macro to remove highlighting
nnoremap <leader><space> :nohlsearch<CR>

" Remap my leader
let mapleader=","
