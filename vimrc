set nocompatible
filetype off
set rtp+=~/.vim/bundle/vundle/


" Set up Vundle to manage vim plugins
let iCanHazVundle=1
let vundle_readme=expand('~/.vim/bundle/vundle/README.md')
if !filereadable(vundle_readme)
  echo "Installing Vundle.."
  echo ""
  silent !mkdir -p ~/.vim/bundle
  silent !git clone https://github.com/gmarik/vundle ~/.vim/bundle/vundle
  let iCanHazVundle=0
endif

" Pre-Vundle Setup
Plugin 'gmarik/vundle'
" Vundle Bundles
Plugin 'StripWhiteSpaces'
Plugin 'godlygeek/tabular.git'
" Fuzzy find -- super useful
Plugin 'kien/ctrlp.vim'
Plugin 'flazz/vim-colorschemes'
Plugin 'rking/ag.vim'
Plugin 'slim-template/vim-slim'
Plugin 'surround.vim'
Plugin 'tComment'
Plugin 'tacahiroy/ctrlp-funky'
Plugin 'thoughtbot/vim-rspec'
Plugin 'tpope/vim-abolish'
Plugin 'tpope/vim-bundler'
Plugin 'tpope/vim-endwise'
Plugin 'tpope/vim-repeat'
Plugin 'vim-ruby/vim-ruby'

call vundle#end()
filetype plugin indent on


set background=dark
colorscheme terminal_colors
syntax enable
hi Error NONE

set autoindent " keep current indentation for newline
set autoread " keep buffer in sync with filesystem
set backspace=indent,eol,start " allow backspacing over everything in insert mode
set smartindent
" crosshairs
set cursorcolumn
set cursorline
set rulerformat=%c\ %l\/%L " column current_line/total_lines

set ignorecase
" set incsearch
set iskeyword+=?
set nocompatible
set sm " show matching braces
set smartcase
set sw=2 " soft tab width in spaces. Same as softtabstop?
set ts=2
" search stuff
set wildmenu
set wildmode=longest,list,full

set nowrap " allow lines to flow off the page
set scrolloff=8 " show 8 lines of context above and below the line you are on
set number
set showtabline=2 " always show the tab bar
set shiftwidth=2 softtabstop=2 expandtab
set history=200

" netrw window stuff
let g:netrw_altv = 1
" let g:netrw_liststyle = 3
let g:netrw_winsize = ""

set history=50		" keep 50 lines of command line history
set ruler		" show the cursor position all the time
set showcmd		" display incomplete commands
set incsearch		" do incremental searching

set hlsearch

" GUI setup:
if has("gui_macvim")
  let g:netrw_winsize = 50
  colorscheme twilight
  :set guioptions-=r  "remove right-hand scroll bar
  :set guioptions-=L  "remove left-hand scroll bar
endif
