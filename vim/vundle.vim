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

" The following are examples of different formats supported.
" Keep Plugin commands between vundle#begin/end.
" plugin on GitHub repo

" Auto Completion
Plugin 'Shougo/neocomplete'
" Snippet
Plugin 'Shougo/neosnippet'
Plugin 'Shougo/neosnippet-snippets'
" This Snippet seems incompatible with neocomplete
" Plugin 'SirVer/ultisnips'
" Snippets are separated from the engine. Add this if you want them:
" Plugin 'honza/vim-snippets'

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
" EasyMotion
Plugin 'easymotion/vim-easymotion'
" Beautiful front end
Plugin 'bling/vim-airline'
" Git
Plugin 'tpope/vim-fugitive'
" Buffer
Plugin 'kien/ctrlp.vim'
" Plugin 'Shougo/unite.vim'
" Alignment
Plugin 'godlygeek/tabular'
" Indent Line
Plugin 'Yggdroot/indentLine'
" Grep Tool
Plugin 'rking/ag.vim'
" Repeat vimscript commands
Plugin 'tpope/vim-repeat'

" Language support
" Syntax check
Plugin 'scrooloose/syntastic'
" C/C++ Completion
Plugin 'Rip-Rip/clang_complete'
" Web-mode
Plugin 'mattn/emmet-vim'
" PHP Completion
Plugin 'shawncplus/phpcomplete.vim'
" Java Completion
Plugin 'artur-shaik/vim-javacomplete2'
" Python Completion
Plugin 'davidhalter/jedi-vim'
" Plugin 'klen/python-mode'

" Python highlight
Plugin 'hdima/python-syntax'
" Javascript highlight
Plugin 'pangloss/vim-javascript'




" plugin from http://vim-scripts.org/vim/scripts.html
" Plugin 'L9'
" Git plugin not hosted on GitHub
" Plugin 'git://git.wincent.com/command-t.git'
" git repos on your local machine (i.e. when working on your own plugin)
" Plugin 'file:///home/gmarik/path/to/plugin'
" The sparkup vim script is in a subdirectory of this repo called vim.
" Pass the path to set the runtimepath properly.
" Plugin 'rstacruz/sparkup', {'rtp': 'vim/'}
" Avoid a name conflict with L9
" Plugin 'user/L9', {'name': 'newL9'}

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

