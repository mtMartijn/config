set nocompatible
filetype off

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
Plugin 'vimwiki/vimwiki'

call vundle#end()

filetype plugin indent on
filetype plugin on

colorscheme monokai

syntax on

set encoding=utf-8
set fileencoding=utf-8
set wildignore+=*/tmp/*,*.so,*.swp,*.o,*.d,*.spv
set number
set incsearch
set hlsearch

" To always show the statusline:
" set laststatus=2
set autoindent
set copyindent

" Disable swapfiles:
set nobackup
set noswapfile

"If there is a local .vimrc file, use it
set exrc 
set ignorecase
set smartcase

" So that you do not have to save when switching buffers
set hidden 

" Set tabs to 4 spaces
set tabstop=2
set shiftwidth=2
set softtabstop=2
set expandtab

let mapleader = "\<Space>"

" Vim-airline
let g:airline_powerline_fonts = 0
let g:airline_theme = 'bubblegum'
let g:airline_section_y = ''
let g:airline#extensions#whitespace#enabled = 0
let g:airline#extensions#tabline#enabled = 0

" GLSL.vim
let g:glsl_file_extensions = '*.glsl,*.frag,*.vert,*.geom,*.post,*.pixl,*.comp' 
let g:glsl_default_version = 'glsl450'

" Vimwiki
let g:vimwiki_map_prefix = '<Leader>d'
let g:vimwiki_global_ext = 0

" Neodark
let g:neodark#use_256color = 1

nnoremap ; :
inoremap jk <Esc>

nnoremap <Leader>w :w<CR>
nnoremap <CR> O<ESC>j
nnoremap <C-w> :bd<CR>

nnoremap <Leader>st :Gstatus<CR>
nnoremap <Leader>gd :Gdiff<CR>
nnoremap <Leader>gr :Gread<CR>
nnoremap <Leader>p :set wrap<CR>
nnoremap <Leader>np :set nowrap<CR>

vmap v <Plug>(expand_region_expand)
vmap <C-v> <Plug>(expand_region_shrink)

" Unmap commands (for some reason unmap doesn't work)
map <C-a> <Nop>
map <C-z> <Nop>
map <C-x> <Nop>

" Window split
nnoremap <Leader>i :vsplit<CR>
nnoremap <Leader>u :split<CR>
" Window navigation
nnoremap <C-h> :wincmd h<CR>
nnoremap <C-l> :wincmd l<CR>
nnoremap <C-j> :wincmd j<CR>
nnoremap <C-k> :wincmd k<CR>
" Buffer navigation
noremap <C-t> :bp<CR>
noremap <C-y> :bn<CR>

noremap <F10> :!gnuplot %<CR>
noremap <F8> :make<CR>
noremap <F9> :make run<CR>
noremap <F7> :!luajit -bl %<CR>

" Cannot use <F1> because of terminal
noremap <F2> :source $MYVIMRC<CR>
noremap <F3> :e $MYVIMRC<CR>
" Go to respective c++ header/source file
noremap <Leader>h :e %:p:s,.h$,.X123X,:s,.cpp$,.h,:s,.X123X$,.cpp,<CR>

" :s/\r//g "This is to get rid of ^M

