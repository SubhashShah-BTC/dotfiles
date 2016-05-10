" =======================================================================
" Ruby stuff
" ========================================================================
execute pathogen#infect()
syntax on
filetype plugin indent on

augroup myfiletypes
  " Clear old autocmds in group
  autocmd!
  " autoindent with two spaces, always expand tabs
  autocmd FileType ruby,eruby,yaml setlocal ai sw=2 sts=2 et
  autocmd FileType ruby,eruby,yaml setlocal path+=lib
  autocmd FileType ruby,eruby,yaml setlocal colorcolumn=80
  " Make ?s part of words
  autocmd FileType ruby,eruby,yaml setlocal iskeyword+=?
augroup END


" Solarized theme
syntax enable
colorscheme monokai
set cursorline
highlight Search ctermbg=LightYellow ctermfg=Black cterm=bold,underline

" Tab settings
set tabstop=2
set expandtab
set shiftwidth=2
set autoindent
set smartindent
set pastetoggle=<F5>

set number
set relativenumber
set incsearch
set hlsearch
set ignorecase
set smartcase
set winwidth=84
set winheight=5
set winminheight=5
set winheight=999

let mapleader = ","


nmap <leader>h :nohlsearch<cr>
nmap <leader>s :w<cr>
imap <leader>s <Esc>:w<cr>
map qq :q<cr>
map 0 ^
