" It's possible to search colorscheme here
" http://cocopon.me/app/vim-color-gallery/
colorscheme molokai

" General settings
syntax on
set tabstop=2
set softtabstop=2
set shiftwidth=2
set expandtab
set number
set hlsearch

if has('vim_starting')
  set nocompatible
  set runtimepath+=~/.vim/bundle/neobundle.vim/
endif

call neobundle#begin(expand('~/.vim/bundle/'))

" Let NeoBundle manage NeoBundle
NeoBundleFetch 'Shougo/neobundle.vim'

" file browser
NeoBundle 'scrooloose/nerdtree'
NeoBundle 'Shougo/unite.vim'

" frontend
NeoBundle 'slim-template/vim-slim'
NeoBundle 'kchmck/vim-coffee-script'
NeoBundle 'nathanaelkane/vim-indent-guides'

" internet
NeoBundle 'tyru/open-browser.vim'

" syntax
NeoBundle 'elzr/vim-json'
NeoBundle 'digitaltoad/vim-jade'
NeoBundle 'groenewege/vim-less'

" blog
NeoBundle 'plasticboy/vim-markdown'
NeoBundle 'kannokanno/previm'
augroup PrevimSettings
  autocmd!
  autocmd BufNewFile,BufRead *.{md,mdwn,mkd,mkdn,mark*} set filetype=markdown
augroup END
autocmd! FileType markdown hi! def link markdownItalic Normal

NeoBundle 'mattn/webapi-vim'
NeoBundle 'moznion/hateblo.vim'

" clojure
NeoBundle 'tpope/vim-fireplace'
NeoBundle 'tpope/vim-classpath'
NeoBundle 'guns/vim-clojure-static'

" TypeScript
NeoBundle 'https://github.com/leafgarland/typescript-vim.git'
"NeoBundle 'https://github.com/clausreinke/typescript-tools.git'

call neobundle#end()

" Required:
filetype plugin indent on

NeoBundleCheck
