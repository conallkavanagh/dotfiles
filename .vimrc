
set nocompatible

let data_dir = has('nvim') ? stdpath('data') . '/site' : '~/.vim'
if empty(glob(data_dir . '/autoload/plug.vim'))
	  silent execute '!curl -fLo '.data_dir.'/autoload/plug.vim --create-dirs  https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'
	    autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
	endif

call plug#begin()

Plug 'preservim/nerdtree'
Plug 'chriskempson/base16-vim'
Plug 'danilo-augusto/vim-afterglow'
Plug 'christoomey/vim-tmux-navigator'
Plug 'ctrlpvim/ctrlp.vim'

call plug#end()            
filetype plugin indent on   

set shortmess+=I
" Enable type file detection. Vim will be able to try to detect the type of file in use.
filetype on

" Load an indent file for the detected file type.
filetype indent on

" Always show the status line at the bottom, even if you only have one window open.
set laststatus=2

" Turn syntax highlighting on.
syntax on

" Add line number on left-hand side.
set number relativenumber

" Set to system clipboard
set clipboard=unnamedplus

" set autocomplete with ctrl+n to activate
set wildmode=longest,list,full

"set tab width, shift width
set tabstop=4
set shiftwidth=4
set smarttab

set autoindent
set smartindent

set hidden

" Enable searching as you type, rather than waiting till you press enter.
set incsearch

" colour scheme stuff
"set termguicolors
colorscheme molokai
set t_Co=256
set background=dark
hi Normal guibg=NONE ctermbg=NONE " set no background
set encoding=utf8
let base16colorspace=256  " Access colors present in 256 colorspace"

"dont create a backup file
set nobackup
set nowb
set noswapfile

" Enable mouse support
set mouse+=a

let mapleader = " "
" remappings for switching panes
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>

" allow moving of lines using arrow keys
nnoremap <silent> <down> :m .+1<CR>==
nnoremap <silent> <up> :m .-2<CR>==
inoremap <silent> <down> <Esc>:m .+1<CR>==gi
inoremap <silent> <up> <Esc>:m .-2<CR>==gi
vnoremap <silent> <down> :m '>+1<CR>gv=gv
vnoremap <silent> <up> :m '<-2<CR>gv=gv

" show hidden files in NERDTree
let NERDTreeShowHidden=1
" Toggle NERDTree
nnoremap <silent> <leader>f :NERDTreeToggle<cr>

" Disable audible bell because it's annoying.
set noerrorbells visualbell t_vb=
