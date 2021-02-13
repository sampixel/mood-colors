" Filename:     colorfull.vim/autoload/airline/themes/colorfull.vim
" Author:       https://github.com/sampixel/colorfull.vim
" License:      MIT License

" set palette
let g:airline#themes#colorfull#palette = {}

function! airline#themes#colorfull#refresh()
    " normal
    let g:airline#themes#colorfull#palette.normal = airline#themes#generate_color_map(
                \ [ "#14161a", "#84f05f", 236, 120 ],
                \ [ "#e4e4e4", "#3f434c", 254, 240 ],
                \ [ "#84f05f", "#14161a", 120, 236 ]
                \ )
    let g:airline#themes#colorfull#palette.normal_modified = {
                \ "airline_c": [ "#84f05f", "#14161a", 120, 236, "bold" ],
                \ }

    " insert
    let g:airline#themes#colorfull#palette.insert = airline#themes#generate_color_map(
                \ [ "#14161a", "#1786e7", 236, 63 ],
                \ [ "#e4e4e4", "#3f434c", 254, 240 ],
                \ [ "#1786e7", "#14161a", 63, 236 ]
                \ ) 
    let g:airline#themes#colorfull#palette.insert_modified = {
                \ "airline_c": [ "#1786e7", "#14161a", 63, 236, "bold" ],
                \ }
    let g:airline#themes#colorfull#palette.insert_paste = {
                \ "airline_a": [ "#14161a", "#1786e7", 236, 63, "bold" ],
                \ }

    " terminal
    let g:airline#themes#colorfull#palette.terminal = airline#themes#generate_color_map(
                \ [ "#14161a", "#1786e7", 236, 63 ],
                \ [ "#e4e4e4", "#3f434c", 254, 240 ],
                \ [ "#1786e7", "#14161a", 63, 236 ]
                \ ) 

    " replace
    let g:airline#themes#colorfull#palette.replace = airline#themes#generate_color_map(
                \ [ "#14161a", "#ff9c00", 236, 38 ],
                \ [ "#e4e4e4", "#3f434c", 254, 240 ],
                \ [ "#ff9c00", "#14161a", 38, 236 ]
                \ )
    let g:airline#themes#colorfull#palette.replace_modified = {
                \ "airline_c": [ "#ff9c00", "#14161a", 38, 236, "bold" ],
                \ }

    " visual
    let g:airline#themes#colorfull#palette.visual = airline#themes#generate_color_map(
                \ [ "#14161a", "#ff4f4f", 236, 140 ],
                \ [ "#e4e4e4", "#3f434c", 254, 240 ],
                \ [ "#ff4f4f", "#14161a", 140, 236 ]
                \ ) 
    let g:airline#themes#colorfull#palette.visual_modified = {
                \ "airline_c": [ "#ff4f4f", "#14161a", 140, 236, "bold" ],
                \ } 

    " inactive
    let g:airline#themes#colorfull#palette.inactive = airline#themes#generate_color_map(
                \ [ "#14161a", "#e4e4e4", 236, 254 ],
                \ [ "#e4e4e4", "#3f434c", 254, 240 ],
                \ [ "#14161a", "#e4e4e4", 236, 254 ]
                \ ) 
    let g:airline#themes#colorfull#palette.inactive_modified = {
                \ "airline_c": [ "#e4e4e4", "", 254, "", "bold" ],
                \ }
 
    " commandline
    let g:airline#themes#colorfull#palette.commandline = airline#themes#generate_color_map(
                \ [ "#14161a", "#ff9c00", 120, 120 ],
                \ [ "#e4e4e4", "#3f434c", 254, 240 ],
                \ [ "#ff9c00", "#14161a", 120, 236 ]
                \ ) 

    " accents
    let g:airline#themes#colorfull#palette.accents = {
                \ "red": [ "#ff9c00", "", 38, "bold" ],
                \ }

    if get(g:, "loaded_ctrlp", 0)
        let g:airline#themes#colorfull#palette.ctrlp = airline#extensions#ctrlp#generate_color_map(
                    \ [ "#e4e4e4", "#ff4f4f", 254, 140, "bold" ],
                    \ [ "#e4e4e4", "#3f434c", 254, 240, "bold" ],
                    \ [ "#ff4f4f", "#e4e4e4", 140, 254, "bold" ]
                    \ )
    endif
endfunction

call airline#themes#colorfull#refresh()
