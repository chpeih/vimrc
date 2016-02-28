" Vundle plugin package manager

set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'


" (1) Coding Completion/Syntax/etc
" common completion
Plugin 'Shougo/neocomplete'
" common snippet
Plugin 'Shougo/neosnippet'
Plugin 'Shougo/neosnippet-snippets'
" C/C++ 
Plugin 'Rip-Rip/clang_complete'
" Web-mode  Html/Css/Javascript
Plugin 'mattn/emmet-vim'
" java 
Plugin 'artur-shaik/vim-javacomplete2'
" PHP 
Plugin 'shawncplus/phpcomplete.vim'
Plugin 'StanAngeloff/php.vim'
" Python 
Plugin 'davidhalter/jedi-vim'
Plugin 'hdima/python-syntax'
" Javascript 
Plugin 'pangloss/vim-javascript'
" Coffee script
Plugin 'kchmck/vim-coffee-script'

" (2) Programming Tools
" Tagbar for class/function/macro
Plugin 'majutsushi/tagbar'
" DoxygenToolkit
Plugin 'vim-scripts/DoxygenToolkit.vim'
" Nerdtree
Plugin 'scrooloose/nerdtree'
" Color theme Solarized
Plugin 'altercation/vim-colors-solarized'
" Fast Comment
Plugin 'scrooloose/nerdcommenter'
" Parenthese
Plugin 'tpope/vim-surround'
" Git
Plugin 'tpope/vim-fugitive'
" file explorer
Plugin 'kien/ctrlp.vim'
" Alignment
Plugin 'godlygeek/tabular'
" Indent Line
Plugin 'Yggdroot/indentLine'
" Grep Tool
Plugin 'rking/ag.vim'

" (3) Other Tools
" EasyMotion
Plugin 'easymotion/vim-easymotion'
" Beautiful front end
Plugin 'bling/vim-airline'
" Repeat vimscript commands
Plugin 'tpope/vim-repeat'
" mark
Plugin 'vim-scripts/Mark--Karkat'
" LaTex
Plugin 'LaTeX-Box-Team/LaTeX-Box'
" Markdown
Plugin 'plasticboy/vim-markdown'




" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required
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

