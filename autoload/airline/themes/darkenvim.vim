" Filename:     darkenvim.vim/autoload/airline/themes/darkenvim.vim
" Author:       https://github.com/sampixel/darkenvim.vim
" License:      MIT License

" set palette
let g:airline#themes#darkenvim#palette = {}

function! airline#themes#darkenvim#refresh()
    " normal
    let g:airline#themes#darkenvim#palette.normal = airline#themes#generate_color_map(
                \ [ "#14161a", "#97dd61", 236, 83 ],
                \ [ "#e4e4e4", "#3f434c", 254, 240 ],
                \ [ "#97dd61", "#14161a", 83, 236 ]
                \ )
    let g:airline#themes#darkenvim#palette.normal_modified = {
                \ "airline_c": [ "#97dd61", "#14161a", 83, 236, "bold" ],
                \ }

    " insert
    let g:airline#themes#darkenvim#palette.insert = airline#themes#generate_color_map(
                \ [ "#14161a", "#2a80b8", 236, 63 ],
                \ [ "#e4e4e4", "#3f434c", 254, 240 ],
                \ [ "#2a80b8", "#14161a", 63, 236 ]
                \ ) 
    let g:airline#themes#darkenvim#palette.insert_modified = {
                \ "airline_c": [ "#2a80b8", "#14161a", 63, 236, "bold" ],
                \ }
    let g:airline#themes#darkenvim#palette.insert_paste = {
                \ "airline_a": [ "#14161a", "#2a80b8", 236, 63, "bold" ],
                \ }

    " terminal
    let g:airline#themes#darkenvim#palette.terminal = airline#themes#generate_color_map(
                \ [ "#14161a", "#2a80b8", 236, 63 ],
                \ [ "#e4e4e4", "#3f434c", 254, 240 ],
                \ [ "#2a80b8", "#14161a", 63, 236 ]
                \ ) 

    " replace
    let g:airline#themes#darkenvim#palette.replace = airline#themes#generate_color_map(
                \ [ "#14161a", "#ef4853", 236, 197 ],
                \ [ "#e4e4e4", "#3f434c", 254, 240 ],
                \ [ "#ef4853", "#14161a", 197, 236 ]
                \ )
    let g:airline#themes#darkenvim#palette.replace_modified = {
                \ "airline_c": [ "#ef4853", "#14161a", 197, 236, "bold" ],
                \ }

    " visual
    let g:airline#themes#darkenvim#palette.visual = airline#themes#generate_color_map(
                \ [ "#14161a", "#aa48c7", 236, 128 ],
                \ [ "#e4e4e4", "#3f434c", 254, 240 ],
                \ [ "#aa48c7", "#14161a", 128, 236 ]
                \ ) 
    let g:airline#themes#darkenvim#palette.visual_modified = {
                \ "airline_c": [ "#aa48c7", "#14161a", 128, 236, "bold" ],
                \ } 

    " inactive
    let g:airline#themes#darkenvim#palette.inactive = airline#themes#generate_color_map(
                \ [ "#14161a", "#e4e4e4", 236, 254 ],
                \ [ "#e4e4e4", "#3f434c", 254, 240 ],
                \ [ "#14161a", "#e4e4e4", 236, 254 ]
                \ ) 
    let g:airline#themes#darkenvim#palette.inactive_modified = {
                \ "airline_c": [ "#e4e4e4", "", 254, "", "bold" ],
                \ }
 
    " commandline
    let g:airline#themes#darkenvim#palette.commandline = airline#themes#generate_color_map(
                \ [ "#14161a", "#eb9841", 83, 120 ],
                \ [ "#e4e4e4", "#3f434c", 254, 240 ],
                \ [ "#eb9841", "#14161a", 83, 236 ]
                \ ) 

    " accents
    let g:airline#themes#darkenvim#palette.accents = {
                \ "red": [ "#ef4853", "", 197, "bold" ],
                \ }

    if get(g:, "loaded_ctrlp", 0)
        let g:airline#themes#darkenvim#palette.ctrlp = airline#extensions#ctrlp#generate_color_map(
                    \ [ "#e4e4e4", "#aa48c7", 254, 128, "bold" ],
                    \ [ "#e4e4e4", "#3f434c", 254, 240, "bold" ],
                    \ [ "#aa48c7", "#e4e4e4", 128, 254, "bold" ]
                    \ )
    endif
endfunction

call airline#themes#darkenvim#refresh()
