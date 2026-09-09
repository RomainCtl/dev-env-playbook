" Vim defaults to 'compatible' when selecting a vimrc with the cammand-line '-u' argument. Override this.
if &compatible
	set compatible
endif

" vim-plug (see: https://github.com/junegunn/vim-plug)
" Install vim-plug if not found + Run PlugInstall if there are missing plugins
let data_dir = has('nvim') ? stdpath('data') . './site' : '~/.vim'
if empty(glob(data_dir . '/autoload/plug.vim'))
	silent execute '!curl -fLo '.data_dir.'/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'
	autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif

" plugins list
call plug#begin('~/.vim/plugged')
Plug 'scrooloose/nerdtree', { 'on': 'NERDTreeToggle' }
Plug 'rafi/awesome-vim-colorschemes' "(themes available: https://vimawesome.com/plugin/awesome-vim-colorschemes)
call plug#end()

" This line should not be removed as it ensures that various options are properly set to work with the Vim-related packages.
runtime! archlinux.vim

"let skip_defaults_vim=1 " italic for comments
syntax enable 		" syntax highlighting
set termguicolors 	" enable true colors support

set background=dark
colorscheme slate

"let g:one_allow_italics = 1 " italic for comments
"colorscheme one
"set background=light

set tabstop=2
set softtabstop=2
set shiftwidth=2
set expandtab
set autoindent
set smartindent
filetype plugin on "filetype-specific plugins
filetype indent on "filetype-specific auto-indent

set mouse=a
set ruler
set number
set relativenumber
set showcmd
set cursorline
set wildmenu
set showmatch
set incsearch
set hlsearch
set smartcase

set magic

set noerrorbells
set novisualbell

set encoding=utf8
