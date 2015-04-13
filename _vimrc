set nocompatible
set backspace=2
filetype off

set rtp+=$HOME/vimfiles/bundle/Vundle.vim
let path='$HOME/vimfiles/bundle'
call vundle#begin(path)

Plugin 'gmarik/Vundle.vim'
Plugin 'tpope/fugitive.vim'
Plugin 'scrooloose/nerdtree'
Plugin 'scrooloose/syntastic'

call vundle#end()
filetype plugin indent on

" VIM CONFIGURE
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif
set colorcolumn=110
highlight ColorColumn ctermbg=red
noremap <F5> :w<CR> make<CR> :!echo"-------RUNNING-------"; echo; command time -v "./%<"<CR>

" To ignore plugin indent changes, instead use:
"filetype plugin on
"
" Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal
"
" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this line
