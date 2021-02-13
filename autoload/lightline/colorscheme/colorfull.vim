" Filename:     colorfull.vim/autoload/lightline/colorscheme/colorfull.vim
" Author:       https://github.com/sampixel/colorfull.vim
" License:      MIT License

" declare color variable
let s:background = ["#14161a", 236]
let s:foreground = ["#e4e4e4", 254]
let s:keyword    = ["#ff4f4f", 140]
let s:operator   = ["#6d26b7", 38]
let s:function   = ["#1786e7", 63]
let s:comment    = ["#3f434c", 240]
let s:string     = ["#84f05f", 120]
let s:number     = ["#ff9c00", 50]

let s:p = {"normal": {}, "inactive": {}, "insert": {}, "replace": {}, "visual": {}, "tabline": {}}

" configure status line colors
let s:p.normal.left = [ [ s:background, s:string ], [ s:foreground, s:comment ] ]
let s:p.normal.middle = [ [ s:foreground, s:comment ] ]
let s:p.normal.right = [ [ s:background, s:string ], [ s:foreground, s:comment ] ]
let s:p.normal.warning = [ [ s:number, s:background ] ]
let s:p.normal.error = [ [ s:operator, s:background ] ]

let s:p.inactive.left = [ [ s:background, s:comment ], [ s:background, s:comment ] ]
let s:p.inactive.middle = [ [ s:comment, s:background ] ]
let s:p.inactive.right = [ [ s:background, s:comment ], [ s:background, s:comment ] ]

let s:p.insert.left = [ [ s:background, s:function ], [ s:background, s:comment ] ]
let s:p.insert.right = [ [ s:background, s:function ], [ s:background, s:comment ] ]

let s:p.replace.left = [ [ s:background, s:operator ], [ s:background, s:comment ] ]
let s:p.replace.right = [ [ s:background, s:operator ], [ s:background, s:comment ] ]

let s:p.visual.left = [ [ s:background, s:keyword ], [ s:background, s:keyword ] ]
let s:p.visual.right = [ [ s:background, s:keyword ], [ s:background, s:keyword ] ]

let s:p.tabline.left = [ [ s:background, s:comment ] ]
let s:p.tabline.middle = [ [ s:comment, s:background ] ]
let s:p.tabline.right = [ [ s:background, s:string ] ]
let s:p.tabline.tabsel = [ [ s:foreground, s:comment ] ]

let g:lightline#colorscheme#colorfull#palette = lightline#colorscheme#flatten(s:p)
