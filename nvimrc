call plug#begin('~/.local/share/nvim/plugged')
Plug 'tpope/vim-commentary'
Plug 'tpope/vim-fugitive'
Plug 'bling/vim-airline'
Plug 'terryma/vim-expand-region'
Plug 'vim-airline/vim-airline-themes'
Plug 'kien/ctrlp.vim'
Plug 'beyondmarc/glsl.vim'
Plug 'octol/vim-cpp-enhanced-highlight'
Plug 'vimwiki/vimwiki'
Plug 'mklabs/split-term.vim'
Plug 'kassio/neoterm'
Plug 'KeitaNakamura/neodark.vim'
Plug 'sheerun/vim-polyglot'
Plug 'morhetz/gruvbox'
Plug 'rakr/vim-one'
Plug 'MarcWeber/vim-addon-local-vimrc'
" Plug 'lervag/vimtex'
Plug 'donRaphaco/neotex'
call plug#end()

filetype plugin indent on
filetype plugin on

" Enable true color
if (empty($TMUX))
  if (has("nvim"))
  "For Neovim 0.1.3 and 0.1.4 < https://github.com/neovim/neovim/pull/2198 >
  let $NVIM_TUI_ENABLE_TRUE_COLOR=1
  endif
  "For Neovim > 0.1.5 and Vim > patch 7.4.1799 < https://github.com/vim/vim/commit/61be73bb0f965a895bfb064ea3e55476ac175162 >
  "Based on Vim patch 7.4.1770 (`guicolors` option) < https://github.com/vim/vim/commit/8a633e3427b47286869aa4b96f2bfc1fe65b25cd >
  " < https://github.com/neovim/neovim/wiki/Following-HEAD#20160511 >
  if (has("termguicolors"))
    set termguicolors
  endif
endif

" Colors
syntax enable
set background=dark
let g:one_allow_italics=1
colorscheme one

set encoding=utf-8
set fileencoding=utf-8
set wildignore+=*/tmp/*,*.so,*.swp,*.o,*.d,*.spv
set number
set incsearch
set hlsearch

" To always show the statusline:
set laststatus=2
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

" Tab settings
set expandtab shiftwidth=2 softtabstop=2
set tabstop=2
autocmd Filetype python setlocal shiftwidth=4 softtabstop=4
" set shiftwidth=2

let mapleader = "\<Space>"

" Vim-airline
let g:airline_powerline_fonts = 0
let g:airline_theme = 'one'
let g:airline_section_y = ''
let g:airline#extensions#whitespace#enabled = 0
let g:airline#extensions#tabline#enabled = 1 " Disable top bar

" GLSL.vim
let g:glsl_file_extensions = '*.glsl,*.frag,*.vert,*.geom,*.post,*.pixl,*.comp'
let g:glsl_default_version = 'glsl450'

" Vimwiki
let g:vimwiki_map_prefix = '<Leader>d'
let g:vimwiki_global_ext = 0

" CtrlP
" let g:ctrlp_prompt_mappings = { 'AcceptSelection("v")': ['<c-i>'] }

" vimtex
" let g:vimtex_complete_close_braces = 1
" nnoremap <Leader>ll <plug>(vimtex-compile)

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

nnoremap <Leader>t :T 

set splitbelow
set splitright

" Window split
nnoremap <Leader>i :vsplit<CR>
nnoremap <Leader>u :split<CR>
" Window navigation
nnoremap <C-h> :wincmd h<CR>
nnoremap <C-l> :wincmd l<CR>
" nnoremap <C-j> :wincmd j<CR>
" nnoremap <C-k> :wincmd k<CR>
" Buffer navigation
noremap <C-j> :bp<CR>
noremap <C-k> :bn<CR>

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
