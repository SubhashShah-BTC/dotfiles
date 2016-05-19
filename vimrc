" =======================================================================
" Ruby stuff
" ========================================================================
set nocompatible
filetype off
set rtp+=~/.vim/bundle/Vundle.vim

call vundle#begin()
Plugin 'VundleVim/Vundle.vim'
Plugin 'thoughtbot/vim-rspec'
Plugin 'tpope/vim-dispatch'
Bundle 'christoomey/vim-tmux-navigator'
Plugin 'scrooloose/nerdtree'
call vundle#end()

let g:rspec_command = "Dispatch rspec {spec} %"

filetype plugin indent on

execute pathogen#infect()
syntax on

" Allow us to use Ctrl-s and Ctrl-q as keybinds
silent !stty -ixon

" " Restore default behaviour when leaving Vim.
autocmd VimLeave * silent !stty ixon

augroup myFileTypes
  " Clear old autocmds in group
  autocmd!
  " autoindent with two spaces, always expand tabs
  autocmd filetype ruby,eruby,yaml setlocal ai sw=2 sts=2 et
  autocmd filetype ruby,eruby,yaml setlocal path+=lib
  autocmd filetype ruby,eruby,yaml setlocal colorcolumn=80
  " Make ?s part of words
  autocmd filetype ruby,eruby,yaml setlocal iskeyword+=?
augroup END

autocmd StdinReadPre * let s:std_in=1

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
map <C-s> :w<cr>
imap <C-s> <Esc>:w<cr>
map <C-q> :q<cr>
map 0 ^
imap jj <esc>
map <Leader>d obinding.pry<esc>:w<cr>

map <Leader>t :call RunCurrentSpecFile()<CR>
map <Leader>s :call RunNearestSpec()<CR>
map <Leader>l :call RunLastSpec()<CR>
map <Leader>a :call RunAllSpecs()<CR>
map <Leader>n :NERDTreeToggle<CR>
map <Leader>ac :sp app/controllers/application_controller.rb<CR>
map <Leader>bb :!bundle install<cr>

nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>
