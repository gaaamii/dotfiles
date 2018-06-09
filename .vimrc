colorscheme molokai

" General settings
syntax on
set tabstop=2
set softtabstop=2
set shiftwidth=2
set expandtab
set number
set hlsearch
set noswapfile

if has('vim_starting')
  set nocompatible
  set runtimepath+=~/.vim/bundle/neobundle.vim/
endif

call neobundle#begin(expand('~/.vim/bundle/'))

" Let NeoBundle manage NeoBundle
NeoBundleFetch 'Shougo/neobundle.vim'

" navigate file
NeoBundle "ctrlpvim/ctrlp.vim"

let g:ctrlp_custom_ignore = 'public/packs\|vendor/bundle\|node_modules\|DS_Store\|git'

" frontend
NeoBundle 'slim-template/vim-slim'
NeoBundle 'nathanaelkane/vim-indent-guides'

" Elm
NeoBundle 'elmcast/elm-vim'

" syntax
NeoBundle 'elzr/vim-json'

" blog
NeoBundle 'plasticboy/vim-markdown'

" HTML Coding
NeoBundle 'mattn/emmet-vim'

autocmd! FileType markdown hi! def link markdownItalic Normal

call neobundle#end()

" Required:
filetype plugin indent on

NeoBundleCheck
