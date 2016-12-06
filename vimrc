set nocompatible
filetype off

let g:glsl_file_extensions = '*.glsl,*.frag,*.vert,*.post,*.pixl' 
let g:glsl_default_version = 'glsl330'

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'tpope/vim-commentary'
Plugin 'tpope/vim-fugitive'
Plugin 'bling/vim-airline'
Plugin 'terryma/vim-expand-region'
Plugin 'vim-airline/vim-airline-themes'
Plugin 'kien/ctrlp.vim'
Plugin 'beyondmarc/glsl.vim'
Plugin 'octol/vim-cpp-enhanced-highlight'

call vundle#end()

filetype plugin indent on
filetype plugin on

colorscheme monokai

syntax on

set encoding=utf-8
set fileencoding=utf-8
" apparently necessary for backspace to work in cygwin
set bs=2
set number
set incsearch
set hlsearch
" To always show the statusline:
set laststatus=2
set autoindent
set copyindent
set nobackup
set noswapfile
set tags=./tags;/
" So that you do not have to save when switching buffers
set hidden 

" Set tabs to 4 spaces
set tabstop=4
set shiftwidth=4
set expandtab

set wildignore+=*\\bin\\*,*.exe,*.o,*.d

let g:airline_powerline_fonts = 0
let g:airline_theme = 'bubblegum'
let g:airline_section_y = ''
let g:airline#extensions#whitespace#enabled = 0
let g:airline#extensions#tabline#enabled = 1

let mapleader = "\<Space>"

nnoremap <Leader>st :Gstatus<CR>
nnoremap <Leader>w :w<CR>
nnoremap ; :
inoremap jk <Esc>

vmap v <Plug>(expand_region_expand)
vmap <C-v> <Plug>(expand_region_shrink)

noremap <C-h> <C-w>W
noremap <C-l> <C-w>w
noremap <C-j> :bp<CR>
noremap <C-k> :bn<CR>

nnoremap <CR> O<ESC>j
nnoremap <C-w> :bd<CR>

noremap <F8> :make -j8<CR>
noremap <F9> :make run<CR>
noremap <Leader>re :make re<CR>

nmap <Leader>i gcc
" Cannot use <F1> because of terminal
noremap <F2> :source $MYVIMRC<CR>
noremap <F3> :e $MYVIMRC<CR>
" Go to respective c++ header/source file
noremap <Leader>h :e %:p:s,.h$,.X123X,:s,.cpp$,.h,:s,.X123X$,.cpp,<CR>

" create ctags of project
" noremap <C-F12> :!ctags -R --sort=yes --c++-kinds=+p --fields=+iaS --extra=+q .<CR>
