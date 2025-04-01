" Install vim-plug if not found
if empty(glob('~/.vim/autoload/plug.vim'))
  silent !curl -fLo ~/.vim/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
endif

" Run PlugInstall if there are missing plugins
autocmd VimEnter * if len(filter(values(g:plugs), '!isdirectory(v:val.dir)'))
  \| PlugInstall --sync | source $MYVIMRC
\| endif


"begin of plugins
call plug#begin('~/,vim/plugged')

" List your plugins here
Plug 'sheerun/vim-polyglot'
Plug 'w0rp/ale'
Plug 'tpope/vim-surround'
Plug 'vim-airline/vim-airline-themes'
Plug 'vim-airline/vim-airline'
Plug 'nordtheme/vim'

call plug#end()
"end of plugins

"sets visual vim stuff
set number
set relativenumber
set clipboard=unnamedplus

"themes
let g:airline_theme='bubblegum'
colorscheme nord
