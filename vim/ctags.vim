"debug
"echo "ctags.vim"

function! RefreshTags() abort
    !python $HOME/.vim/vim/ctagsgenerator.py '%' '%:p:h' '%:p:h'
    :echom 'Tags:'.expand('%:p:h')
endfunction

" 从当前目录向下递归生成tags
map <F5> :call RefreshTags()<CR>

"在有ctags文件的支持下的Taglist配置
"设置tags在当前目录下寻找以及父目录
set tags+=./tags
set tags+=../tags
set tags+=../../tags
set tags+=../../../tags
set tags+=../../../../tags
set tags+=../../../../../tags
set tags+=../../../../../..tags



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

