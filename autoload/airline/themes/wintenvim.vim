" Filename:     /autoload/airline/themes/wintenvim.vim
" Author:       https://github.com/sampixel/mood-colors
" License:      MIT License

" set palette
let g:airline#themes#wintenvim#palette = {}

function! airline#themes#wintenvim#refresh()
    " normal
    let g:airline#themes#wintenvim#palette.normal = airline#themes#generate_color_map(
                \ [ "#14161a", "#87ff87", 236, 120 ],
                \ [ "#e4e4e4", "#3f434c", 254, 240 ],
                \ [ "#87ff87", "#14161a", 120, 236 ]
                \ )
    let g:airline#themes#wintenvim#palette.normal_modified = {
                \ "airline_c": [ "#87ff87", "#14161a", 120, 236, "bold" ],
                \ }

    " insert
    let g:airline#themes#wintenvim#palette.insert = airline#themes#generate_color_map(
                \ [ "#14161a", "#5f5fff", 236, 63 ],
                \ [ "#e4e4e4", "#3f434c", 254, 240 ],
                \ [ "#5f5fff", "#14161a", 63, 236 ]
                \ ) 
    let g:airline#themes#wintenvim#palette.insert_modified = {
                \ "airline_c": [ "#5f5fff", "#14161a", 63, 236, "bold" ],
                \ }
    let g:airline#themes#wintenvim#palette.insert_paste = {
                \ "airline_a": [ "#14161a", "#5f5fff", 236, 63, "bold" ],
                \ }

    " terminal
    let g:airline#themes#wintenvim#palette.terminal = airline#themes#generate_color_map(
                \ [ "#14161a", "#5f5fff", 236, 63 ],
                \ [ "#e4e4e4", "#3f434c", 254, 240 ],
                \ [ "#5f5fff", "#14161a", 63, 236 ]
                \ ) 

    " replace
    let g:airline#themes#wintenvim#palette.replace = airline#themes#generate_color_map(
                \ [ "#14161a", "#00afd7", 236, 38 ],
                \ [ "#e4e4e4", "#3f434c", 254, 240 ],
                \ [ "#00afd7", "#14161a", 38, 236 ]
                \ )
    let g:airline#themes#wintenvim#palette.replace_modified = {
                \ "airline_c": [ "#00afd7", "#14161a", 38, 236, "bold" ],
                \ }

    " visual
    let g:airline#themes#wintenvim#palette.visual = airline#themes#generate_color_map(
                \ [ "#14161a", "#af87d7", 236, 140 ],
                \ [ "#e4e4e4", "#3f434c", 254, 240 ],
                \ [ "#af87d7", "#14161a", 140, 236 ]
                \ ) 
    let g:airline#themes#wintenvim#palette.visual_modified = {
                \ "airline_c": [ "#af87d7", "#14161a", 140, 236, "bold" ],
                \ } 

    " inactive
    let g:airline#themes#wintenvim#palette.inactive = airline#themes#generate_color_map(
                \ [ "#14161a", "#e4e4e4", 236, 254 ],
                \ [ "#e4e4e4", "#3f434c", 254, 240 ],
                \ [ "#14161a", "#e4e4e4", 236, 254 ]
                \ ) 
    let g:airline#themes#wintenvim#palette.inactive_modified = {
                \ "airline_c": [ "#e4e4e4", "", 254, "", "bold" ],
                \ }
 
    " commandline
    let g:airline#themes#wintenvim#palette.commandline = airline#themes#generate_color_map(
                \ [ "#14161a", "#00ffd7", 120, 120 ],
                \ [ "#e4e4e4", "#3f434c", 254, 240 ],
                \ [ "#00ffd7", "#14161a", 120, 236 ]
                \ ) 

    " accents
    let g:airline#themes#wintenvim#palette.accents = {
                \ "red": [ "#00afd7", "", 38, "bold" ],
                \ }

    if get(g:, "loaded_ctrlp", 0)
        let g:airline#themes#wintenvim#palette.ctrlp = airline#extensions#ctrlp#generate_color_map(
                    \ [ "#e4e4e4", "#af87d7", 254, 140, "bold" ],
                    \ [ "#e4e4e4", "#3f434c", 254, 240, "bold" ],
                    \ [ "#af87d7", "#e4e4e4", 140, 254, "bold" ]
                    \ )
    endif
endfunction

call airline#themes#wintenvim#refresh()
