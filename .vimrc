" Vim-plug setup
let data_dir = has('nvim') ? stdpath('data') . '/site' : '~/.vim'
if empty(glob(data_dir . '/autoload/plug.vim'))
  silent execute '!curl -fLo '.data_dir.'/autoload/plug.vim --create-dirs  https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'
  autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif

" Plugin declarations
call plug#begin('~/.vim/plugged')
Plug 'tpope/vim-sensible'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
call plug#end()

" Vim-airline settings
let g:airline_theme = 'wombat' 
let g:airline#extensions#tabline#enabled = 1
let g:airline_powerline_fonts = 1

" General settings
set fenc=utf-8
set autoread
set hidden
set showcmd

" Visual settings
syntax enable
set number
set cursorline
set showmatch
set laststatus=2
set wildmode=list:longest

" Indentation settings
set list listchars=tab:\▸\-
set expandtab
set tabstop=2
set shiftwidth=2
set autoindent
set softtabstop=2

" Search settings
set ignorecase
set smartcase
set incsearch
set wrapscan
set hlsearch

" Key mappings
imap jj <Esc>
map <S-h> ^
map <S-l> $
nmap <Esc><Esc> :nohlsearch<CR><Esc>
nnoremap j gj
nnoremap k gk

