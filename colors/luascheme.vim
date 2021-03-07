" Filename:     /colors/luascheme.vim
" Mainteiner:   https://github.com/sampixel/mood-colors
" License:      MIT License

" clear previous highlight
highlight clear

" reset syntax highlight
if exists("syntax_on")
    syntax reset 
endif

" set colorscheme name
let g:colors_name = "luascheme"

" set function for automate process
function! Color(group, gui, guifg, guibg, cterm, ctermfg, ctermbg)
    let histring = "hi! " . a:group . " "
    let histring .= "gui=" . a:gui . " "
    let histring .= "guifg=" . a:guifg . " "
    let histring .= "guibg=" . a:guibg . " "
    let histring .= "cterm=" . a:cterm . " "
    let histring .= "ctermfg=" . a:ctermfg . " "
    let histring .= "ctermbg=" . a:ctermbg
    execute histring
endfunction

" set function for specific highlight language support
function! Link(attr, group)
    let histring = "hi! link "
    let histring .= a:attr . " " . a:group
    execute histring
endfunction

" set colors
let background  = {"gui": "#14161a", "cui": 236}
let foreground  = {"gui": "#e4e4e4", "cui": 254}
let keyword     = {"gui": "#364ced", "cui": 140}
let operator    = {"gui": "#ce6969", "cui": 38}
let function    = {"gui": "#a566b6", "cui": 63}
let comment     = {"gui": "#3f434c", "cui": 240}
let string      = {"gui": "#c3e586", "cui": 120}
let number      = {"gui": "#b0c41e", "cui": 50}

" init color setting
call Color("Comment", "italic", comment.gui, "none", "italic", comment.cui, "none")
call Color("Constant", "none", keyword.gui, "none", "none", keyword.cui, "none")
call Color("String", "none", string.gui, "none", "none", string.cui, "none")
call Color("Character", "none", foreground.gui, "none", "none", foreground.cui, "none")
call Color("Number", "bold", number.gui, "none", "bold", number.cui, "none")
call Color("Boolean", "bold", number.gui, "none", "bold", number.cui, "none")
call Color("Float", "bold", number.gui, "none", "bold", number.cui, "none")
call Color("Indentifier", "none", foreground.gui, "none", "none", foreground.cui, "none")
call Color("Function", "bold", function.gui, "none", "bold", function.cui, "none")
call Color("Statement", "bold", keyword.gui, "none", "bold", keyword.cui, "none")
call Color("Conditional", "bold", keyword.gui, "none", "bold", keyword.cui, "none")
call Color("Repeat", "bold", keyword.gui, "none", "bold", keyword.cui, "none")
call Color("Label", "bold", keyword.gui, "none", "bold", keyword.cui, "none")
call Color("Operator", "bold", operator.gui, "none", "bold", operator.cui, "none")
call Color("Keyword", "bold", keyword.gui, "none", "bold", keyword.cui, "none")
call Color("Exception", "none", number.gui, "none", "none", number.cui, "none")
call Color("PreProc", "bold", keyword.gui, "none", "bold", keyword.cui, "none")
call Color("Include", "bold", keyword.gui, "none", "bold", keyword.cui, "none")
call Color("Define", "bold", keyword.gui, "none", "bold", keyword.cui, "none")
call Color("Macro", "bold", keyword.gui, "none", "bold", keyword.cui, "none")
call Color("PreCondit", "bold", keyword.gui, "none", "bold", keyword.cui, "none")
call Color("Type", "bold", number.gui, "none", "bold", number.cui, "none")
call Color("StorageClass", "bold", number.gui, "none", "bold", number.cui, "none")
call Color("Structure", "none", keyword.gui, "none", "none", keyword.cui, "none")
call Color("Typedef", "bold", keyword.gui, "none", "bold", keyword.cui, "none")
call Color("Special", "none", number.gui, "none", "none", number.cui, "none")
call Color("SpecialChar", "none", number.gui, "none", "none", number.cui, "none")
call Color("Tag", "none", number.gui, "none", "none", number.cui, "none")
call Color("Delimiter", "none", foreground.gui, "none", "none", foreground.cui, "none") 
call Color("SpecialComment", "none", function.gui, "none", "none", function.cui, "none")
call Color("Debug", "none", number.gui, "none", "none", number.cui, "none")
call Color("Underlined", "italic", function.gui, "none", "italic", function.cui, "none")
call Color("Ignore", "italic", function.gui, "none", "italic", function.cui, "none")
call Color("Error", "bold", operator.gui, "none", "bold", operator.cui, "none")
call Color("Todo", "bold", background.gui, number.gui, "bold", background.cui, number.cui)
call Color("ColorColumn", "none", "none", foreground.gui, "none", "none", foreground.cui)
call Color("Conceal", "none", function.gui, "none", "none", function.cui, "none")
call Color("Cursor", "none", "none", "none", "none", "none", "none")
call Color("CursorIM", "none", "none", "none", "none", "none", "none")
call Color("CursorColumn", "none", "none", "none", "none", "none", "none")
call Color("CursorLine", "none", "none", "none", "none", "none", "none")
call Color("Directory", "bold", function.gui, "none", "bold", function.cui, "none")
call Color("DiffAdd", "bold", number.gui, "none", "bold", number.cui, "none")
call Color("DiffChange", "bold", number.gui, "none", "bold", number.cui, "none")
call Color("DiffDelete", "bold", number.gui, "none", "bold", number.cui, "none")
call Color("DiffText", "none", function.gui, "none", "none", function.cui, "none")
call Color("ErrorMsg", "bold", number.gui, "none", "bold", number.cui, "none")
call Color("VertSplit", "none", foreground.gui, "none", "none", foreground.cui, "none")
call Color("Folded", "none", function.gui, "none", "none", function.cui, "none")
call Color("FoldColumn", "none", function.gui, "none", "none", function.cui, "none")
call Color("SignColumn", "none", function.gui, "none", "none", function.cui, "none")
call Color("IncSearch", "none", function.gui, "none", "none", function.cui, "none")
call Color("LineNr", "none", foreground.gui, "none", "none", foreground.cui, "none")
call Color("CursorLineNr", "none", "none", "none", "none", "none", "none")
call Color("MatchParen", "none", number.gui, "none", "none", number.cui, "none")
call Color("ModeMsg", "none", number.gui, "none", "none", number.cui, "none")
call Color("MoreMsg", "none", number.gui, "none", "none", number.cui, "none")
call Color("NonText", "none", foreground.gui, "none", "none", foreground.cui, "none")
call Color("Normal", "none", foreground.gui, background.gui, "none", foreground.cui, background.cui)
call Color("Pmenu", "none", background.gui, foreground.gui, "none", background.cui, foreground.cui)
call Color("PmenuSel", "none", foreground.gui, background.gui, "none", foreground.cui, background.cui)
call Color("PmenuSbar", "none", keyword.gui, "none", "none", keyword.cui, "none")
call Color("PmenuThumb", "none", keyword.gui, "none", "none", keyword.cui, "none")
call Color("Question", "none", number.gui, "none", "none", number.cui, "none")
call Color("Search", "bold", number.gui, "none", "bold", number.cui, "none")
call Color("SpecialKey", "bold", keyword.gui, "none", "bold", keyword.cui, "none")
call Color("SpellBad", "none", background.gui, keyword.gui, "none", background.cui, keyword.cui)
call Color("SpellCap", "none", background.gui, keyword.gui, "none", background.cui, keyword.cui)
call Color("SpellLocal", "none", background.gui, keyword.gui, "none", background.cui, keyword.cui)
call Color("SpellRare", "none", background.gui, keyword.gui, "none", background.cui, keyword.cui)
call Color("StatusLine", "bold", foreground.gui, "none", "bold", foreground.cui, "none")
call Color("StatusLineSection", "bold", foreground.gui, "none", "bold", foreground.cui, "none")
call Color("StatusLineSectionV", "bold", background.gui, keyword.gui, "bold", background.cui, keyword.cui)
call Color("StatusLineSectionI", "bold", background.gui, function.gui, "bold", background.cui, function.cui)
call Color("StatusLineSectionC", "bold", background.gui, number.gui, "bold", background.cui, number.cui)
call Color("StatusLineSectionR", "bold", background.gui, operator.gui, "bold", background.cui, number.cui)
call Color("TabLine", "bold", foreground.gui, "none", "bold", foreground.cui, "none")
call Color("TabLineFill", "bold", background.gui, foreground.gui, "bold", background.cui, foreground.cui)
call Color("StatusLineNC", "bold", background.gui, foreground.gui, "bold", background.cui, foreground.cui)
call Color("TabLineSel", "bold", foreground.gui, "none", "bold", foreground.cui, "none")
call Color("Title", "bold", foreground.gui, "none", "bold", foreground.cui, "none")
call Color("Visual", "none", background.gui, function.gui, "none", background.cui, function.cui)
call Color("VisualNOS", "italic", background.gui, keyword.gui, "italic", background.cui, keyword.cui)
call Color("WarningMsg", "bold", background.gui, number.gui, "bold", background.cui, number.cui)
call Color("WildMenu", "bold", background.gui, keyword.gui, "bold", background.cui, keyword.cui)

" JavaScript
call Link("jsFunction", "Statement")
call Link("jsGlobalObjects", "Statement")
call Link("jsStorageClass", "Statement")
call Link("jsFuncCall", "Function")
call Link("jsGlobalNodeObjects", "Function")
call Link("jsOperator", "Error")
call Link("jsObjectProp", "Error")
call Link("jsTemplateExpression", "Error")
call Link("jsTemplateBraces", "Error")
call Link("jsArrowFunction","Error")
call Link("jsObjectKey", "Error")

" Html
call Link("htmlArg", "Statement")
call Link("htmlTag", "Normal")
call Link("htmlEndTag", "Normal")
call Link("htmlTagName", "Function")

" Css
call Link("cssTextProp", "Normal")
call Link("cssBraces", "Normal")
call Link("cssAttrComma", "Normal")
call Link("cssFontProp", "Normal")
call Link("cssBorderProp", "Normal")
call Link("cssMediaProp", "Normal")
call Link("cssBoxProp", "Normal")
call Link("cssPositioningProp", "Normal")
call Link("cssBackgroundProp", "Normal")
call Link("cssUIProp", "Normal")
call Link("cssClassName", "Error")
call Link("cssClassNameDot", "Error")
call Link("cssIndentifier", "Error")
call Link("cssTagName", "Function")
call Link("cssVendor", "Function")
call Link("cssPseudoClass", "Function")
call Link("cssPositioningAttr", "Statement")

" Python
call Link("pythonBuiltinType", "Normal")
call Link("pythonOperator", "Error")

" Lua
call Link("luaFunction", "Statement")
call Link("luaLocal", "Statement")
call Link("luaOperator", "Statement")
call Link("luaSymbolOperator", "Error")
call Link("luaBuiltin", "Error")
call Link("luaSpecialValue", "Function")
call Link("luaErrHand", "Function")
call Link("luaFuncName", "Function")
call Link("luaFuncCall", "Function")
call Link("luaStringSpecial", "Number")
call Link("luaConstant", "Number")
call Link("luaSpecialTable", "Normal")
call Link("luaBraces", "Normal")

" VimScript
call Link("vimCommentTitle", "Function")
call Link("vimFunction", "Function")
call Link("vimUserFunc", "Function")
call Link("vimHiBang", "Function")
call Link("vimNorm", "Normal")
call Link("vimHiClear", "Normal")
call Link("vimOption", "Normal")
call Link("vimVar", "Normal")
call Link("vimSynType", "Normal")
call Link("vimParenSep", "Normal")
call Link("vimFuncVar", "Normal")
call Link("vimSep", "Normal")
call Link("vimBracket", "Normal")
call Link("vimOper", "Error")
call Link("vimSetEqual", "Error")
call Link("vimMapModKey", "Error")
call Link("vimNotation", "Error")
call Link("vimSubst", "Error")
call Link("vimEnvvar", "Error")
call Link("vimNormCmds", "Error")

" C
call Link("cType", "Statement")
call Link("cStructure", "Statement")
call Link("cOperator", "Function")
call Link("cConstant", "Number")
call Link("cCharacter", "String")
call Link("cStorageClass", "Keyword")

" MoonScript
call Link("moonObject", "Error")

" Java
call Link("javaScopeDecl", "Statement")
call Link("javaClassDecl", "Statement")
call Link("javaStorageClass", "Statement")
call Link("javaType", "Statement")
call Link("javaCharacter", "String")
call Link("javaOperator", "Error")
call Link("javaTypedef", "Error")

" Php
call Link("phpIdentifier", "Normal")
call Link("phpVarSelector", "Normal")
call Link("phpRegion", "Function")
call Link("phpFunction", "Function")
call Link("phpType", "Function")
call Link("phpKeyword", "Keyword")
call Link("phpOperator", "Keyword")
call Link("phpNullValue", "Number")
