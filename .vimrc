
set runtimepath+=$HOME/.vim

" vundle must be the first
source $HOME/.vim/vim/vundle.vim
source $HOME/.vim/vim/neocomplete.vim
source $HOME/.vim/vim/neosnippet.vim
source $HOME/.vim/vim/colortheme.vim
source $HOME/.vim/vim/ctags.vim
source $HOME/.vim/vim/doxygen.vim
source $HOME/.vim/vim/tagbar.vim
source $HOME/.vim/vim/nerdtree.vim
source $HOME/.vim/vim/airline.vim
source $HOME/.vim/vim/indentline.vim

" language support
" Web-mode
source $HOME/.vim/vim/emmet.vim
" java
source $HOME/.vim/vim/javacomplete2.vim
" Python
source $HOME/.vim/vim/jedi.vim
source $HOME/.vim/vim/syntax_python.vim
" C/C++
source $HOME/.vim/vim/clang_complete.vim

" common user configure
source $HOME/.vim/vim/common.vim
