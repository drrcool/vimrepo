" Remap my leader
let mapleader = ","

set nocompatible
filetype off

" Setup Vundle
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" Let Vundle manage Vundle
Plugin 'VundleVim/Vundle.vim'
Plugin 'scrooloose/nerdtree'
Plugin 'ctrlpvim/ctrlp.vim'
Bundle 'Powerline/powerline', {'rtp': 'powerline/bindings/vim'}

" All Vundle plugins need to be above the following line

call vundle#end()
filetype plugin indent on

" Setup Powerline
set guifont=Inconsolata\ for\ Powerline:h15
let g:Powerline_symbols = 'fancy'
set encoding=utf-8
set t_Co=256
set fillchars+=stl:\ ,stlnc:\
set term=xterm-256color
set termencoding=utf-8

" For powerline gui
if has("gui_running")
    let s:uname = system("uname")
    if s:uname == "Darwin\n"
        set guifont=Inconsolata\ for\ Powerline:h15
    endif
endif



" Start non-Vundle part here

" Set Colorscheme and enable syntax highlightin
colorscheme Tomorrow-Night-Bright
syntax enable

" Tabs and Spaces
set tabstop=4		" number of visual spaces per Tab
set softtabstop=4	" number of spaces in tab when editing
set expandtab		" tabs are spaces
set autoindent      " indent when moving to next line when coding
set shiftwidth=4    " when using >> or << 

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

" Python specific markup
let python_highlight_all = 1


" Create macro to remove highlighting
nnoremap <leader><space> :nohl<CR>

" Reload the vimrc
nnoremap <leader>s :so $MYVIMRC<CR>

" Open NERDTree automatically 
" autocmd vimenter * NERDTree

" Create a keybind to toggle tree view
map <C-n> :NERDTreeToggle<CR>

" Create some keybinds to navigate between splits
nnoremap <C-J> <C-W><C-J>
nnoremap <C-H> <C-W><C-H>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>

" Open new split panes to the right and bottom
set splitbelow
set splitright

" Set keybinds for CtrlP:
let g:ctrlp_map = '<C-P>'
let g:ctrlp_cmd = 'CtrlP'
let g:ctrlp_working_path_mode = 'ra'
let g:ctrlp_user_command = ['.git', 'cd %s && git ls-files -co --exclude-standard']

