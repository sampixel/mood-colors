" Filename:     /autoload/airline/themes/luascheme.vim
" Author:       https://github.com/sampixel/mood-colors
" License:      MIT License

" set palette
let g:airline#themes#luascheme#palette = {}

function! airline#themes#luascheme#refresh()
    " normal
    let g:airline#themes#luascheme#palette.normal = airline#themes#generate_color_map(
                \ [ "#14161a", "#c3e586", 236, 120 ],
                \ [ "#e4e4e4", "#3f434c", 254, 240 ],
                \ [ "#c3e586", "#14161a", 120, 236 ]
                \ )
    let g:airline#themes#luascheme#palette.normal_modified = {
                \ "airline_c": [ "#c3e586", "#14161a", 120, 236, "bold" ],
                \ }

    " insert
    let g:airline#themes#luascheme#palette.insert = airline#themes#generate_color_map(
                \ [ "#14161a", "#a566b6", 236, 63 ],
                \ [ "#e4e4e4", "#3f434c", 254, 240 ],
                \ [ "#a566b6", "#14161a", 63, 236 ]
                \ ) 
    let g:airline#themes#luascheme#palette.insert_modified = {
                \ "airline_c": [ "#a566b6", "#14161a", 63, 236, "bold" ],
                \ }
    let g:airline#themes#luascheme#palette.insert_paste = {
                \ "airline_a": [ "#14161a", "#a566b6", 236, 63, "bold" ],
                \ }

    " terminal
    let g:airline#themes#luascheme#palette.terminal = airline#themes#generate_color_map(
                \ [ "#14161a", "#a566b6", 236, 63 ],
                \ [ "#e4e4e4", "#3f434c", 254, 240 ],
                \ [ "#a566b6", "#14161a", 63, 236 ]
                \ ) 

    " replace
    let g:airline#themes#luascheme#palette.replace = airline#themes#generate_color_map(
                \ [ "#14161a", "#b0c41e", 236, 38 ],
                \ [ "#e4e4e4", "#3f434c", 254, 240 ],
                \ [ "#b0c41e", "#14161a", 38, 236 ]
                \ )
    let g:airline#themes#luascheme#palette.replace_modified = {
                \ "airline_c": [ "#b0c41e", "#14161a", 38, 236, "bold" ],
                \ }

    " visual
    let g:airline#themes#luascheme#palette.visual = airline#themes#generate_color_map(
                \ [ "#14161a", "#364ced", 236, 140 ],
                \ [ "#e4e4e4", "#3f434c", 254, 240 ],
                \ [ "#364ced", "#14161a", 140, 236 ]
                \ ) 
    let g:airline#themes#luascheme#palette.visual_modified = {
                \ "airline_c": [ "#364ced", "#14161a", 140, 236, "bold" ],
                \ } 

    " inactive
    let g:airline#themes#luascheme#palette.inactive = airline#themes#generate_color_map(
                \ [ "#14161a", "#e4e4e4", 236, 254 ],
                \ [ "#e4e4e4", "#3f434c", 254, 240 ],
                \ [ "#14161a", "#e4e4e4", 236, 254 ]
                \ ) 
    let g:airline#themes#luascheme#palette.inactive_modified = {
                \ "airline_c": [ "#e4e4e4", "", 254, "", "bold" ],
                \ }
 
    " commandline
    let g:airline#themes#luascheme#palette.commandline = airline#themes#generate_color_map(
                \ [ "#14161a", "#b0c41e", 120, 120 ],
                \ [ "#e4e4e4", "#3f434c", 254, 240 ],
                \ [ "#b0c41e", "#14161a", 120, 236 ]
                \ ) 

    " accents
    let g:airline#themes#luascheme#palette.accents = {
                \ "red": [ "#b0c41e", "", 38, "bold" ],
                \ }

    if get(g:, "loaded_ctrlp", 0)
        let g:airline#themes#luascheme#palette.ctrlp = airline#extensions#ctrlp#generate_color_map(
                    \ [ "#e4e4e4", "#364ced", 254, 140, "bold" ],
                    \ [ "#e4e4e4", "#3f434c", 254, 240, "bold" ],
                    \ [ "#364ced", "#e4e4e4", 140, 254, "bold" ]
                    \ )
    endif
endfunction

call airline#themes#luascheme#refresh()
