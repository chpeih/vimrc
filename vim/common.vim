
set nocompatible
set fileformats=unix,dos,mac
if has("gui_running")
    source $VIMRUNTIME/mswin.vim
    behave mswin
endif

"显示命令
set showcmd
set hlsearch
"退格键能够换行
set backspace=indent,eol,start whichwrap+=<,>,[,]
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
"与neosnippet快捷键冲突
" nmap <C-H> <C-w>h
" nmap <C-J> <C-w>j
" nmap <C-K> <C-w>k
" nmap <C-L> <C-w>l
map Q <Nop>

"不要设置completeopt=preview
"代码补全时不要出现额外的窗口
set completeopt=menu


"行号
set number
"gvim下字体
if has("win32")
    set guifont=Monaco:h11
else 
    set guifont=Monaco\ 11
endif
"gvim下隐藏工具栏
set guioptions-=T
"gvim隐藏菜单栏
set guioptions-=m
"光标移动到buffer的顶部和底部时保持1行距离
set scrolloff=1
"不响警铃
set noerrorbells 
set novisualbell
set visualbell t_vb=  "关闭visual bell
au GuiEnter * set t_vb= "关闭beep

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
set lines=30
set columns=120
"语法高亮
syntax on 
syntax enable

