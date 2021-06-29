" Filename:     /autoload/airline/themes/devtool.vim
" Author:       https://github.com/sampixel/mood-colors
" License:      MIT License

" set palette
let g:airline#themes#devtool#palette = {}

function! airline#themes#devtool#refresh()
    " normal
    let g:airline#themes#devtool#palette.normal = airline#themes#generate_color_map(
                \ [ "#202124", "#d16135" ],
                \ [ "#bcc6cc", "#3f434c" ],
                \ [ "#d16135", "#202124" ]
                \ )
    let g:airline#themes#devtool#palette.normal_modified = {
                \ "airline_c": [ "#d16135", "#202124", "bold" ],
                \ }

    " insert
    let g:airline#themes#devtool#palette.insert = airline#themes#generate_color_map(
                \ [ "#202124", "#8277ad" ],
                \ [ "#bcc6cc", "#3f434c" ],
                \ [ "#8277ad", "#14161a" ]
                \ ) 
    let g:airline#themes#devtool#palette.insert_modified = {
                \ "airline_c": [ "#8277ad", "#202124", "bold" ],
                \ }
    let g:airline#themes#devtool#palette.insert_paste = {
                \ "airline_a": [ "#202124", "#8277ad", "bold" ],
                \ }

    " terminal
    let g:airline#themes#devtool#palette.terminal = airline#themes#generate_color_map(
                \ [ "#202124", "#8277ad" ],
                \ [ "#bcc6cc", "#3f434c" ],
                \ [ "#8277ad", "#14161a" ]
                \ ) 

    " replace
    let g:airline#themes#devtool#palette.replace = airline#themes#generate_color_map(
                \ [ "#202124", "#6cc37b" ],
                \ [ "#bcc6cc", "#3f434c" ],
                \ [ "#6cc37b", "#202124" ]
                \ )
    let g:airline#themes#devtool#palette.replace_modified = {
                \ "airline_c": [ "#6cc37b", "#202124", "bold" ],
                \ }

    " visual
    let g:airline#themes#devtool#palette.visual = airline#themes#generate_color_map(
                \ [ "#202124", "#8277ad" ],
                \ [ "#bcc6cc", "#3f434c" ],
                \ [ "#8277ad", "#14161a" ]
                \ ) 
    let g:airline#themes#devtool#palette.visual_modified = {
                \ "airline_c": [ "#8277ad", "#202124", "bold" ],
                \ } 

    " inactive
    let g:airline#themes#devtool#palette.inactive = airline#themes#generate_color_map(
                \ [ "#202124", "#bcc6cc" ],
                \ [ "#bcc6cc", "#3f434c" ],
                \ [ "#202124", "#bcc6cc" ]
                \ ) 
    let g:airline#themes#devtool#palette.inactive_modified = {
                \ "airline_c": [ "#bcc6cc", "", "", "bold" ],
                \ }
 
    " commandline
    let g:airline#themes#devtool#palette.commandline = airline#themes#generate_color_map(
                \ [ "#202124", "#6cc37b" ],
                \ [ "#bcc6cc", "#3f434c" ],
                \ [ "#6cc37b", "#202124" ]
                \ ) 

    " accents
    let g:airline#themes#devtool#palette.accents = {
                \ "red": [ "#6cc37b", "", "bold" ],
                \ }

    if get(g:, "loaded_ctrlp", 0)
        let g:airline#themes#devtool#palette.ctrlp = airline#extensions#ctrlp#generate_color_map(
                    \ [ "#bcc6cc", "#8277ad", "bold" ],
                    \ [ "#bcc6cc", "#3f434c", "bold" ],
                    \ [ "#8277ad", "#bcc6cc", "bold" ]
                    \ )
    endif
endfunction

call airline#themes#devtool#refresh()