" Filename:     autoload/lightline/colorscheme/violetelo.vim
" Author:       https://github.com/sampixel/mood-colors
" License:      MIT License

" declare color variable
let s:background = ["#14161a", 236]
let s:foreground = ["#e4e4e4", 254]
let s:keyword    = ["#bf59e1", 140]
let s:operator   = ["#7859e1", 38]
let s:function   = ["#cc3589", 63]
let s:comment    = ["#3f434c", 240]
let s:string     = ["#80e159", 120]
let s:number     = ["#ff4646", 50]

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

let g:lightline#colorscheme#violetelo#palette = lightline#colorscheme#flatten(s:p)