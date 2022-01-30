set nocompatible              " be iMproved, required
filetype off                  " required

" VUNDLE Plugins here 
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'
Plugin 'preservim/nerdtree'
Plugin 'chriskempson/base16-vim'
Plugin 'danilo-augusto/vim-afterglow'
Plugin 'christoomey/vim-tmux-navigator'

call vundle#end()            
filetype plugin indent on   

" Enable type file detection. Vim will be able to try to detect the type of file in use.
filetype on

" Load an indent file for the detected file type.
filetype indent on

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



" remappings for switching panes
let mapleader = " "
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
nmap <silent> <leader>f :NERDTreeToggle<cr>
