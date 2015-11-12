
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

"let g:syntastic_always_populate_loc_list = 0
"let g:syntastic_loc_list_height = 5
"let g:syntastic_auto_loc_list = 0
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 1


" C/C++ option
let g:syntastic_cpp_compiler = "clang++"
let g:syntastic_cpp_compiler_options = "-Wall -std=c++11"
" Python option 
" Use python-mode for py code, disable syntastic in py
let g:syntastic_mode_map = {
    \ "mode": "active",
    \ "active_filetypes": [],
    \ "passive_filetypes": [] 
    \ }
