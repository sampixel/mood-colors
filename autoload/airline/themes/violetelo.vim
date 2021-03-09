" Filename:     /autoload/airline/themes/violetelo.vim
" Author:       https://github.com/sampixel/mood-colors
" License:      MIT License

" set palette
let g:airline#themes#violetelo#palette = {}

function! airline#themes#violetelo#refresh()
    " normal
    let g:airline#themes#violetelo#palette.normal = airline#themes#generate_color_map(
                \ [ "#14161a", "#80e159", 236, 120 ],
                \ [ "#e4e4e4", "#3f434c", 254, 240 ],
                \ [ "#80e159", "#14161a", 120, 236 ]
                \ )
    let g:airline#themes#violetelo#palette.normal_modified = {
                \ "airline_c": [ "#80e159", "#14161a", 120, 236, "bold" ],
                \ }

    " insert
    let g:airline#themes#violetelo#palette.insert = airline#themes#generate_color_map(
                \ [ "#14161a", "#cc3589", 236, 63 ],
                \ [ "#e4e4e4", "#3f434c", 254, 240 ],
                \ [ "#cc3589", "#14161a", 63, 236 ]
                \ ) 
    let g:airline#themes#violetelo#palette.insert_modified = {
                \ "airline_c": [ "#cc3589", "#14161a", 63, 236, "bold" ],
                \ }
    let g:airline#themes#violetelo#palette.insert_paste = {
                \ "airline_a": [ "#14161a", "#cc3589", 236, 63, "bold" ],
                \ }

    " terminal
    let g:airline#themes#violetelo#palette.terminal = airline#themes#generate_color_map(
                \ [ "#14161a", "#cc3589", 236, 63 ],
                \ [ "#e4e4e4", "#3f434c", 254, 240 ],
                \ [ "#cc3589", "#14161a", 63, 236 ]
                \ ) 

    " replace
    let g:airline#themes#violetelo#palette.replace = airline#themes#generate_color_map(
                \ [ "#14161a", "#ff4646", 236, 38 ],
                \ [ "#e4e4e4", "#3f434c", 254, 240 ],
                \ [ "#ff4646", "#14161a", 38, 236 ]
                \ )
    let g:airline#themes#violetelo#palette.replace_modified = {
                \ "airline_c": [ "#ff4646", "#14161a", 38, 236, "bold" ],
                \ }

    " visual
    let g:airline#themes#violetelo#palette.visual = airline#themes#generate_color_map(
                \ [ "#14161a", "#bf59e1", 236, 140 ],
                \ [ "#e4e4e4", "#3f434c", 254, 240 ],
                \ [ "#bf59e1", "#14161a", 140, 236 ]
                \ ) 
    let g:airline#themes#violetelo#palette.visual_modified = {
                \ "airline_c": [ "#bf59e1", "#14161a", 140, 236, "bold" ],
                \ } 

    " inactive
    let g:airline#themes#violetelo#palette.inactive = airline#themes#generate_color_map(
                \ [ "#14161a", "#e4e4e4", 236, 254 ],
                \ [ "#e4e4e4", "#3f434c", 254, 240 ],
                \ [ "#14161a", "#e4e4e4", 236, 254 ]
                \ ) 
    let g:airline#themes#violetelo#palette.inactive_modified = {
                \ "airline_c": [ "#e4e4e4", "", 254, "", "bold" ],
                \ }
 
    " commandline
    let g:airline#themes#violetelo#palette.commandline = airline#themes#generate_color_map(
                \ [ "#14161a", "#ff4646", 120, 120 ],
                \ [ "#e4e4e4", "#3f434c", 254, 240 ],
                \ [ "#ff4646", "#14161a", 120, 236 ]
                \ ) 

    " accents
    let g:airline#themes#violetelo#palette.accents = {
                \ "red": [ "#ff4646", "", 38, "bold" ],
                \ }

    if get(g:, "loaded_ctrlp", 0)
        let g:airline#themes#violetelo#palette.ctrlp = airline#extensions#ctrlp#generate_color_map(
                    \ [ "#e4e4e4", "#bf59e1", 254, 140, "bold" ],
                    \ [ "#e4e4e4", "#3f434c", 254, 240, "bold" ],
                    \ [ "#bf59e1", "#e4e4e4", 140, 254, "bold" ]
                    \ )
    endif
endfunction

call airline#themes#violetelo#refresh()
