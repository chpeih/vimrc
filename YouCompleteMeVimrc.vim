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
" Color theme Solarized
Plugin 'altercation/vim-colors-solarized'
Plugin 'tomasr/molokai'
" Fast Comment
Plugin 'scrooloose/nerdcommenter'
" Parenthese
Plugin 'tpope/vim-surround'
" EasyMotion
Plugin 'easymotion/vim-easymotion'
" Beautiful front end
Plugin 'bling/vim-airline'
" Git
" Plugin 'tpope/vim-fugitive'
" Buffer
Plugin 'kien/ctrlp.vim'
" Alignment
Plugin 'godlygeek/tabular'
" Indent Line
Plugin 'Yggdroot/indentLine'
" Grep Tool
Plugin 'rking/ag.vim'
" Repeat vimscript commands
Plugin 'tpope/vim-repeat'
" mark
Plugin 'vim-scripts/Mark--Karkat'

" Language support
" snippet
Plugin 'SirVer/ultisnips'
Plugin 'honza/vim-snippets'

" C/C++
Plugin 'Valloric/YouCompleteMe'
" Web-mode HTML/CSS/Javascript
Plugin 'mattn/emmet-vim'
Plugin 'ap/vim-css-color'
Plugin 'groenewege/vim-less'
Plugin 'hail2u/vim-css3-syntax'
" java complete
" java complete is not good to use
" Plugin 'artur-shaik/vim-javacomplete2'
" Plugin 'adragomir/javacomplete'
" PHP
Plugin 'shawncplus/phpcomplete.vim'
Plugin 'StanAngeloff/php.vim'
" Python 
" Plugin 'davidhalter/jedi-vim'
Plugin 'hdima/python-syntax'
" Javascript highlight
Plugin 'pangloss/vim-javascript'
" Coffee Script
Plugin 'kchmck/vim-coffee-script'
" Rust
Plugin 'rust-lang/rust.vim'
" Scala
Plugin 'derekwyatt/vim-scala'
" LaTeX
Plugin 'LaTeX-Box-Team/LaTeX-Box'
" Markdown
Plugin 'plasticboy/vim-markdown'
" Ruby
Plugin 'vim-ruby/vim-ruby'
Plugin 'tpope/vim-rails'
" thrift
Plugin 'solarnz/thrift.vim'


" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required
" Vundle end



" Plugin Configure

" (2) YouCompleteMe
" YCM need python2
let g:ycm_path_to_python_interpreter='/usr/bin/python'
let g:ycm_global_ycm_extra_conf='~/.vim/.ycm_extra_conf.py'
" disable boring syntax check
let g:ycm_show_diagnostics_ui=0
let g:ycm_register_as_syntastic_checker=0
let g:ycm_confirm_extra_conf=0

" complete strings and comments
let g:ycm_complete_in_strings=1
let g:ycm_complete_in_comments=1
let g:ycm_collect_identifiers_from_tags_files=1
let g:ycm_collect_identifiers_from_comments_and_strings=1
let g:ycm_seed_identifiers_with_syntax=1

" complete by python2 or python3
let g:ycm_python_binary_path="/usr/bin/python2"
"let g:ycm_python_binary_path="/usr/bin/python3"
" syntax_python
let python_highlight_all = 1

" key mappings
nnoremap<leader>gl :YcmCompleter GoToDeclaration<CR>
nnoremap<leader>gf :YcmCompleter GoToDefinition<CR>
nnoremap<leader>gg :YcmCompleter GoToDefinitionElseDeclaration<CR>

let g:ycm_key_list_select_completion=['<c-n>', '<Down>', '<tab>']
let g:ycm_key_list_previous_completion=['<c-p>', '<Up>', '<s-tab>']


" (3) ultisnips
" Ctrl-k is key mapping of neosnippet's snippet expand key
let g:UltiSnipsExpandTrigger="<c-k>"
let g:UltiSnipsJumpForwardTrigger="<tab>"
let g:UltiSnipsJumpBackwardTrigger="<s-tab>"

" If you want :UltiSnipsEdit to split your window.
let g:UltiSnipsEditSplit="vertical"



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


" (9) Emment Web-Mode
let g:user_emmet_settings = {
\  'php' : {
\    'extends' : 'html',
\    'filters' : 'c',
\  },
\  'xml' : {
\    'extends' : 'html',
\  },
\  'haml' : {
\    'extends' : 'html',
\  },
\}

let g:user_emmet_expandabbr_key='<c-e>'
let g:use_emmet_complete_tag=1


" (10)  Java Completion
autocmd Filetype java setlocal omnifunc=javacomplete#Complete
autocmd Filetype java map <leader>b :call javacomplete#GoToDefinition()<CR>

"if filereadable("AndroidManifest.xml")
"    let g:JavaComplete_SourcesPath = "target/generated-sources/r"
"endif




" Basic Configure
source ~/.vim/BasicVimrc.vim
