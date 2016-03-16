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
" Nerdtree
Plugin 'scrooloose/nerdtree'
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


" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required
" Vundle end



" (Common)
set nocompatible
set fileformats=unix,dos,mac
if has("gui_running")
    source $VIMRUNTIME/mswin.vim
    behave mswin
endif

if has("win32")
    "source $VIMRUNTIME/vimrc_example.vim
    source $VIMRUNTIME/mswin.vim
    behave mswin
    set diffexpr=MyDiff()
    function MyDiff()
        let opt = '-a --binary '
        if &diffopt =~ 'icase' | let opt = opt . '-i ' | endif
        if &diffopt =~ 'iwhite' | let opt = opt . '-b ' | endif
        let arg1 = v:fname_in
        if arg1 =~ ' ' | let arg1 = '"' . arg1 . '"' | endif
        let arg2 = v:fname_new
        if arg2 =~ ' ' | let arg2 = '"' . arg2 . '"' | endif
        let arg3 = v:fname_out
        if arg3 =~ ' ' | let arg3 = '"' . arg3 . '"' | endif
        let eq = ''
        if $VIMRUNTIME =~ ' '
            if &sh =~ '\<cmd'
                let cmd = '""' . $VIMRUNTIME . '\diff"'
                let eq = '"'
            else
                let cmd = substitute($VIMRUNTIME, ' ', '" ', '') . '\diff"'
            endif
        else
            let cmd = $VIMRUNTIME . '\diff'
        endif
        silent execute '!' . cmd . ' ' . opt . arg1 . ' ' . arg2 . ' > ' . arg3 . eq
    endfunction
endif

"显示命令
set showcmd
set hlsearch
"退格键能够换行
set backspace=indent,eol,start whichwrap+=<,>,[,]
set wrap
"共享剪贴板
set clipboard+=unnamed 
"当文件被改动时自动载入
set autoread
set autowrite
set ruler
set magic
"可以使用鼠标
set mouse=a 
set selection=exclusive 
set selectmode=mouse,key 
"括号匹配
set showmatch
"忽略大小写匹配
set ignorecase 
set laststatus=2 
"侦测文件类型
filetype on
"允许插件
filetype plugin on
filetype indent on
set nobackup
set noswapfile
set nowritebackup

"处理文本中显示乱码
set encoding=utf-8 
"编码
set fileencoding=utf-8
set fileencodings=utf-8,gbk,gb2312,cp936,usc-bom,euc-jp,gb18030,chinese,latin-1
set termencoding=utf-8

"win下gvim处理菜单及右键菜单乱码
source $VIMRUNTIME/delmenu.vim
source $VIMRUNTIME/menu.vim
"win下gvim处理Consle输出乱码
language messages en_US.utf-8

"Ctrl+hjkl在不同窗口下移动光标
"与snippet快捷键冲突
" nmap <C-H> <C-w>h
" nmap <C-J> <C-w>j
" nmap <C-K> <C-w>k
" nmap <C-L> <C-w>l
map Q <Nop>

"不要设置completeopt=preview
"代码补全时不要出现额外的窗口
set completeopt-=preview
set completeopt=menu


"行号
set number
set numberwidth=5
set lines=30
set columns=115
"gvim下字体
if has("win32")
    set guifont=FreeMono:h12
    set guifont=Monaco:h10
else 
    set guifont=FreeMono\ 11
    set guifont=Monaco\ 11
endif
set guicursor=a:block-blinkon0
"gvim下隐藏工具栏
set guioptions-=T
"gvim隐藏菜单栏
" set guioptions-=m
"光标移动到buffer的顶部和底部时保持1行距离
set scrolloff=1
"不响警铃
set noerrorbells
set novisualbell
"关闭visual bell
set visualbell t_vb=  
"关闭beep
au GuiEnter * set t_vb= 

"c风格缩进
set cindent 
"智能缩进
set smartindent 
"自动缩进
set autoindent 
"制表符为4
set tabstop=4
"统一缩进为4
set softtabstop=4
set shiftwidth=4
"用空格代替制表符
set expandtab
set smarttab
"空格折叠
set foldenable 
set foldmethod=indent 
set foldnestmax=10
set foldlevel=10
nnoremap <space> @=((foldclosed(line('.')) < 0) ? 'zc':'zo')<CR> 
"语法高亮
syntax on 
syntax enable

if has("gui_running")
    colorscheme solarized
    " colorscheme desert
endif
let g:solarized_termcolors=256
set background=dark

" whitespace/tab/endline
set list
set list listchars=tab:>-,trail:.,extends:>



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
"let g:ycm_python_binary_path="/usr/bin/python2"
let g:ycm_python_binary_path="/usr/bin/python3"
" syntax_python
let python_highlight_all = 1

" key mappings
nnoremap<leader>gl :YcmCompleter GoToDeclaration<CR>
nnoremap<leader>gf :YcmCompleter GoToDefinition<CR>
nnoremap<leader>gg :YcmCompleter GoToDefinitionElseDeclaration<CR>



" (3) ultisnips
let g:UltiSnipsExpandTrigger="<c-k>"
let g:UltiSnipsJumpForwardTrigger="<c-n>"
let g:UltiSnipsJumpBackwardTrigger="<c-p>"

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
let g:DoxygenToolkit_blockHeader="--------------------------------------------------------------------------"
let g:DoxygenToolkit_blockFooter="--------------------------------------------------------------------------"
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


" (7) NerdTree
map <F8> :NERDTreeMirror<CR>
map <F8> :NERDTreeToggle<CR>
"o      open/close file/directory
"go     almost same as o
"q      close
"?      help
"p      upper directory
"P      root directory
"m      show file system menu
"K      first node in current directory
"J      last node in current directory


" (8) AirLine
let g:airline#extension#tabline#enabled = 1


" (9) Indent Line
" Vim
"let g:indentLine_color_term = 239
"GVim
"let g:indentLine_color_gui = '#A4E57E'
" none X terminal
"let g:indentLine_color_tty_light = 7 " (default: 4)
"let g:indentLine_color_dark = 1 " (default: 2)


" (10) Emment Web-Mode
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


" (11)  Java Completion 2
autocmd FileType java set omnifunc=javacomplete#Complete

"if filereadable("AndroidManifest.xml")
"    let g:JavaComplete_SourcesPath = "target/generated-sources/r"
"endif

