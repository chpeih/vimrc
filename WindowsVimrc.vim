set runtimepath+=$HOME/.vim


" (Vundle)
" 
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

" Tagbar for class/function/macro
Plugin 'majutsushi/tagbar'
" DoxygenToolkit
Plugin 'vim-scripts/DoxygenToolkit.vim'
" Fast Comment
Plugin 'scrooloose/nerdcommenter'
" Beautiful front end
Plugin 'bling/vim-airline'
" Buffer
Plugin 'kien/ctrlp.vim'
" Indent Line
Plugin 'Yggdroot/indentLine'
" mark
Plugin 'vim-scripts/Mark--Karkat'

" Python 
Plugin 'hdima/python-syntax'
" Javascript highlight
Plugin 'pangloss/vim-javascript'


" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required
" Vundle end



" Plugin Configure

" (4) Ctags Cscope

"在有ctags文件的支持下的Taglist配置
"设置tags在当前目录下寻找以及父目录
if executable('ctags')
    set tags+=./tags
    set tags+=../tags
    set tags+=../../tags
    set tags+=../../../tags
    set tags+=../../../../tags
    set tags+=../../../../../tags
    set tags+=../../../../../..tags
    set tags+=../../../../../../../tags
endif

if executable('cscope')
    set nocscopeverbose
    if filereadable("cscope.out")
        cs add ./cscope.out
    elseif filereadable("../cscope.out")
        cs add ../cscope.out
    elseif filereadable("../../cscope.out")
        cs add ../../cscope.out
    elseif filereadable("../../../cscope.out")
        cs add ../../../cscope.out
    elseif filereadable("../../../../cscope.out")
        cs add ../../../../cscope.out
    elseif filereadable("../../../../../cscope.out")
        cs add ../../../../../cscope.out
    elseif filereadable("../../../../../../cscope.out")
        cs add ../../../../../../cscope.out
    elseif filereadable("../../../../../../../cscope.out")
        cs add ../../../../../../../cscope.out
    endif
endif

"cscope key mapping
nmap <C-\>s :cs find s <C-R>=expand("<cword>")<CR><CR>
nmap <C-\>g :cs find g <C-R>=expand("<cword>")<CR><CR>
nmap <C-\>c :cs find c <C-R>=expand("<cword>")<CR><CR>
nmap <C-\>d :cs find d <C-R>=expand("<cword>")<CR><CR>
nmap <C-\>t :cs find t <C-R>=expand("<cword>")<CR><CR>
nmap <C-\>e :cs find e <C-R>=expand("<cword>")<CR><CR>
nmap <C-\>f :cs find f <C-R>=expand("<cfile>")<CR><CR>
nmap <C-\>i :cs find i ^<C-R>=expand("<cfile>")<CR>$<CR>
"cscope commands:
"add  : Add a new database    (Usage: add file|dir [pre-path] [flags])
"find : Query for a pattern   (Usage: find c|d|e|f|g|i|s|t name)
"    c: Find functions calling this function
"    d: Find functions called by this function
"    e: Find this egrep pattern
"    f: Find this file
"    g: Find this definition
"    i: Find files #including this file
"    s: Find this C symbol
"    t: Find assignments to
"help : Show this message              (Usage: help)
"kill : Kill a connection              (Usage: kill #)
"reset: Reinit all connections         (Usage: reset)
"show : Show connections               (Usage: show)


" (5) DoxygenToolkit
let g:DoxygenToolkit_briefTag_pre="@brief "
let g:DoxygenToolkit_paramTag_pre="@param "
let g:DoxygenToolkit_returnTag="@return "
let g:DoxygenToolkit_blockHeader="----------------------------------------------------------------------"
let g:DoxygenToolkit_blockFooter="----------------------------------------------------------------------"
let g:DoxygenToolkit_authorName="zhaochenyou16@gmail.com"
let g:DoxygenToolkit_briefTag_className="yes"
let g:DoxygenToolkit_briefTag_funcName="yes"
let g:DoxygenToolkit_briefTag_enumName="yes"
let g:DoxygenToolkit_briefTag_namespaceName="yes"
let g:DoxygenToolkit_briefTag_structName="yes"


" (6) Tagbar
"快捷键开关Tagbar
nmap <F9> :TagbarToggle<cr> 
"不同时显示多个文件的tag 只显示当前文件的
let g:tagbar_right=1
let g:tagbar_width=30
let g:tagbar_foldlevel=99
let g:tagbar_show_visibility=1
let g:tagbar_show_linenumbers=1
let g:tagbar_autoshowtag=1
let g:tagbar_sort=0
"打开vim时自动打开tagbar
autocmd VimEnter * nested :call tagbar#autoopen(1)    
autocmd VimEnter * nested :TagbarSetFoldlevel! 99

" Taglist快捷键
" 在taglist窗口中可以使用下面的快捷键:
"
" <CR>          跳到光标下tag所定义的位置 用鼠标双击此tag功能也一样
" o             在一个新打开的窗口中显示光标下tag
" <Space>       显示光标下tag的原型定义
" u             更新taglist窗口中的tag
" s             更改排序方式 在按名字排序和按出现顺序排序间切换
" x             taglist窗口放大和缩小 方便查看较长的tag
" +             打开一个折叠 同zo
" -             将tag折叠起来 同zc
" *             打开所有的折叠 同zR
" =             将所有tag折叠起来 同zM
" [[            跳到前一个文件
" ]]            跳到后一个文件
" q             关闭taglist窗口
" <F1>          显示帮助 


" (7) AirLine
let g:airline#extension#tabline#enabled = 1


" (8) Indent Line
" Vim
"let g:indentLine_color_term = 239
"GVim
"let g:indentLine_color_gui = '#A4E57E'
" none X terminal
"let g:indentLine_color_tty_light = 7 " (default: 4)
"let g:indentLine_color_dark = 1 " (default: 2)


" Basic Configure
source ~/.vim/BasicVimrc.vim
