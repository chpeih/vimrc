
if has("win32")
    set runtimepath+=$VIM/vimfiles

    " vundle must be the first
    source $VIM/vimfiles/vim/vundle.vim
    source $VIM/vimfiles/vim/neocomplete.vim
    source $IVM/vimfiles/vim/neosnippet.vim
    source $VIM/vimfiles/vim/colortheme.vim
    source $VIM/vimfiles/vim/ctags.vim
    source $VIM/vimfiles/vim/doxygen.vim
    source $VIM/vimfiles/vim/tagbar.vim
    source $VIM/vimfiles/vim/nerdtree.vim
    source $VIM/vimfiles/vim/airline.vim
    source $VIM/vimfiles/vim/indentline.vim

    " syntastic check
    source $VIM/vimfiles/vim/syntastic.vim
    " language completion
    source $VIM/vimfiles/vim/emmet.vim
    source $VIM/vimfiles/vim/javacomplete2.vim
    source $VIM/vimfiles/vim/jedi.vim
    source $VIM/vimfiles/vim/clang_complete.vim
    " syntax highlight
    source $VIM/vimfiles/vim/syntax_python.vim

    source $VIM/vimfiles/vim/common.vim
else
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

    " syntastic check
    source $HOME/.vim/vim/syntastic.vim
    " language completion
    source $HOME/.vim/vim/emmet.vim
    source $HOME/.vim/vim/javacomplete2.vim
    source $HOME/.vim/vim/jedi.vim
    source $HOME/.vim/vim/clang_complete.vim
    " syntax highlight
    source $HOME/.vim/vim/syntax_python.vim

    source $HOME/.vim/vim/common.vim
endif
