"------------------------------------------------
" Plugins
"------------------------------------------------

set nocompatible              " required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'gmarik/Vundle.vim'
Plugin 'tmhedberg/SimpylFold'
Plugin 'vim-scripts/indentpython.vim'
Plugin 'scrooloose/syntastic'
Plugin 'nvie/vim-flake8'
Plugin 'jnurmine/Zenburn'
Plugin 'altercation/vim-colors-solarized'
Plugin 'scrooloose/nerdtree'
Plugin 'kien/ctrlp.vim'
Plugin 'jistr/vim-nerdtree-tabs'
Plugin 'tpope/vim-fugitive'
Plugin 'Lokaltog/powerline', {'rtp': 'powerline/bindings/vim/'}
Plugin 'Shougo/unite.vim'
Plugin 'rking/ag.vim'
Plugin 'Chun-Yang/vim-action-ag'
Plugin 'ggreer/the_silver_searcher'
Plugin 'tell-k/vim-autopep8'
Plugin 'sandeepcr529/Buffet.vim'
Plugin 'fatih/vim-go'


" Add all your plugins here (note older versions of Vundle used Bundle instead of Plugin)


" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required

"------------------------------------------------
" Mappings
"------------------------------------------------

let mapleader = "-"
" Display buffer list
map ,b :Bufferlist<CR>
" Window movement keys
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>
" Enable folding/unfolding using space key
nnoremap <space> za

"------------------------------------------------
" Syntax, highlight, colors
"------------------------------------------------

"Highlight python syntax
let python_highlight_all=1
syntax on

" Switching between color schemes using F5
if has('gui_running')
    set background=dark
    colorscheme solarized
else
    colorscheme zenburn
endif

call togglebg#map("<F5>")


"------------------------------------------------
" Windows
"------------------------------------------------

set splitbelow
set splitright

"------------------------------------------------
" Tabs, Indentations
"------------------------------------------------

" Tab suport for python
au BufNewFile,BufRead *.py;
    \ set tabstop=4
    \ set softtabstop=4
    \ set shiftwidth=4
    \ set textwidth=79
    \ set expandtab
    \ set autoindent
    \ set fileformat=unix

"------------------------------------------------
" Folding
"------------------------------------------------

" Enable folding
set foldmethod=indent
set foldlevel=99


"------------------------------------------------
" Auto-commands
"------------------------------------------------

highlight BadWhitespace ctermbg=red guibg=darkred

"Highlight unnecessary whitespaces
au BufRead,BufNewFile *.py,*.pyw,*.c,*.h match BadWhitespace /\s\+$/

autocmd vimenter * NERDTree
autocmd VimEnter * set winfixwidth
autocmd VimEnter * wincmd p

"------------------------------------------------
" Displaying Text
"------------------------------------------------

set nu

"------------------------------------------------
" Misc
"------------------------------------------------

" Hide pyc files
let NERDTreeIgnore=['\.pyc$', '\~$'] "ignore files in NERDTree

