"debug
"echo "tagbar.vim"




"快捷键开关Tagbar
nmap <F9> :TagbarToggle<cr> 
"不同时显示多个文件的tag，只显示当前文件的
let g:tagbar_right=1
let g:tagbar_width=35
let g:tagbar_foldlevel=99
let g:tagbar_show_visibility=1
let g:tagbar_show_linenumbers=1
let g:tagbar_autoshowtag=1
let g:tagbar_sort=0
"打开vim时自动打开tagbar
autocmd VimEnter * nested :call tagbar#autoopen(1)    
autocmd VimEnter * nested :TagbarSetFoldlevel! 99



"Taglist快捷键
" 在taglist窗口中，可以使用下面的快捷键：
"
" <CR>          跳到光标下tag所定义的位置，用鼠标双击此tag功能也一样
" o             在一个新打开的窗口中显示光标下tag
" <Space>       显示光标下tag的原型定义
" u             更新taglist窗口中的tag
" s             更改排序方式，在按名字排序和按出现顺序排序间切换
" x             taglist窗口放大和缩小，方便查看较长的tag
" +             打开一个折叠，同zo
" -             将tag折叠起来，同zc
" *             打开所有的折叠，同zR
" =             将所有tag折叠起来，同zM
" [[            跳到前一个文件
" ]]            跳到后一个文件
" q             关闭taglist窗口
" <F1>          显示帮助 

