" Filename:     /colors/devtool.vim
" Mainteiner:   https://github.com/sampixel/mood-colors
" License:      MIT License

" clear previous highlight
highlight clear

" reset syntax highlight
if exists("syntax_on")
    syntax reset 
endif

" set colorscheme name
let g:colors_name = "devtool"

" set function for automate process
function! Color(group, gui, guifg, guibg)
    let histring = "hi! " . a:group . " "
    let histring .= "gui=" . a:gui . " "
    let histring .= "guifg=" . a:guifg . " "
    let histring .= "guibg=" . a:guibg
    execute histring
endfunction

" set function for specific highlight language support
function! Link(attr, group)
    let histring = "hi! link "
    let histring .= a:attr . " " . a:group
    execute histring
endfunction

" set colors
let background  = "#202124"
let foreground  = "#bcc6cc"
let keyword     = "#8277ad"
let operator    = "#aba84a"
let function    = "#8277ad"
let comment     = "#3f434c"
let string      = "#d16135"
let number      = "#6cc37b"

" init color setting
call Color("Comment",       "italic",   comment,    "none")
call Color("Constant",      "none",     keyword,    "none")
call Color("String",        "none",     string,     "none")
call Color("Character",     "none",     foreground, "none")
call Color("Number",        "bold",     number,     "none")
call Color("Boolean",       "bold",     number,     "none")
call Color("Float",         "bold",     number,     "none")
call Color("Identifier",    "none",     foreground, "none")
call Color("Function",      "bold",     function,   "none")
call Color("Statement",     "bold",     keyword,    "none")
call Color("Conditional",   "bold",     keyword,    "none")
call Color("Repeat",        "bold",     keyword,    "none")
call Color("Label",         "bold",     keyword,    "none")
call Color("Operator",      "bold",     operator,   "none")
call Color("Keyword",       "bold",     keyword,    "none")
call Color("Exception",     "none",     number,     "none")
call Color("PreProc",       "bold",     keyword,    "none")
call Color("Include",       "bold",     keyword,    "none")
call Color("Define",        "bold",     keyword,    "none")
call Color("Macro",         "bold",     keyword,    "none")
call Color("PreCondit",     "bold",     keyword,    "none")
call Color("Type",          "bold",     number,     "none")
call Color("StorageClass",  "bold",     number,     "none")
call Color("Structure",     "none",     keyword,    "none")
call Color("Typedef",       "bold",     keyword,    "none")
call Color("Special",       "none",     number,     "none")
call Color("SpecialChar",   "none",     number,     "none")
call Color("Tag",           "none",     number,     "none")
call Color("Delimiter",     "none",     foreground, "none") 
call Color("SpecialComment","none",     function,   "none")
call Color("Debug",         "none",     number,     "none")
call Color("Underlined",    "italic",   function,   "none")
call Color("Ignore",        "italic",   function,   "none")
call Color("Error",         "bold",     operator,   "none")
call Color("Todo",          "bold",     background, "bold")
call Color("ColorColumn",   "none",     "none",     "none")
call Color("Conceal",       "none",     function,   "none")
call Color("Cursor",        "none",     "none",     "none")
call Color("CursorIM",      "none",     "none",     "none")
call Color("CursorColumn",  "none",     "none",     "none")
call Color("CursorLine",    "none",     "none",     "none")
call Color("Directory",     "bold",     function,   "none")
call Color("DiffAdd",       "bold",     number,     "none")
call Color("DiffChange",    "bold",     number,     "none")
call Color("DiffDelete",    "bold",     number,     "none")
call Color("DiffText",      "none",     function,   "none")
call Color("ErrorMsg",      "bold",     number,     "none")
call Color("VertSplit",     "none",     foreground, "none")
call Color("Folded",        "none",     function,   "none")
call Color("FoldColumn",    "none",     function,   "none")
call Color("SignColumn",    "none",     function,   "none")
call Color("IncSearch",     "none",     function,   "none")
call Color("LineNr",        "none",     foreground, "none")
call Color("CursorLineNr",  "none",     "none",     "none")
call Color("MatchParen",    "none",     number,     "none")
call Color("ModeMsg",       "none",     number,     "none")
call Color("MoreMsg",       "none",     number,     "none")
call Color("NonText",       "none",     foreground, "none")
call Color("Normal",        "none",     foreground, background)
call Color("Pmenu",         "none",     background, foreground)
call Color("PmenuSel",      "none",     foreground, background)
call Color("PmenuSbar",     "none",     keyword,    "none")
call Color("PmenuThumb",    "none",     keyword,    "none")
call Color("Question",      "none",     number,     "none")
call Color("Search",        "bold",     number,     "none")
call Color("SpecialKey",    "bold",     keyword,    "none")
call Color("SpellBad",      "none",     background, keyword)
call Color("SpellCap",      "none",     background, keyword)
call Color("SpellLocal",    "none",     background, keyword)
call Color("SpellRare",     "none",     background, keyword)
call Color("StatusLine",    "bold",     foreground, "none")
call Color("StatusLineSection",     "bold", foreground, "none")
call Color("StatusLineSectionV",    "bold", background, keyword)
call Color("StatusLineSectionI",    "bold", background, function)
call Color("StatusLineSectionC",    "bold", background, number)
call Color("StatusLineSectionR",    "bold", background, operator)
call Color("TabLine",       "bold",     foreground, "none")
call Color("TabLineFill",   "bold",     background, foreground)
call Color("StatusLineNC",  "bold",     background, foreground)
call Color("TabLineSel",    "bold",     foreground, "none")
call Color("Title",         "bold",     foreground, "none")
call Color("Visual",        "none",     background, function)
call Color("VisualNOS",     "italic",   background, keyword)
call Color("WarningMsg",    "bold",     background, number)
call Color("WildMenu",      "bold",     background, keyword)

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
call Link("htmlSpecialTagName", "Function")
call Link("htmlSpecialChar", "Error")

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
call Link("cssFlexibleBoxAttr", "Normal")
call Link("cssFlexibleBoxProp", "Normal")
call Link("cssTransformProp", "Normal")
call Link("cssTransitionProp", "Normal")
call Link("cssPageProp", "Normal")
call Link("cssUIProp", "Normal")
call Link("cssListProp", "Normal")
call Link("cssClassName", "Error")
call Link("cssClassNameDot", "Error")
call Link("cssIndentifier", "Error")
call Link("cssAttributeSelector", "Error")
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
call Link("phpSuperGlobals", "Normal")
call Link("phpParent", "Normal")
call Link("phpRegion", "Function")
call Link("phpInclude", "Keyword")
call Link("phpFunction", "Function")
call Link("phpType", "Keyword")
call Link("phpKeyword", "Keyword")
call Link("phpOperator", "Keyword")
call Link("phpNullValue", "Number")
call Link("phpMethodsVar", "String")
call Link("phpStaticClasses", "String")

" MySQL
call Link("mysqlType", "Normal")
call Link("mysqlSpecial", "Statement")
call Link("mysqlOperator", "Statement")

" Twig
call Link("twigTagDelim", "Normal")
call Link("twigVarDelim", "Normal")
call Link("twigVariable", "Operator")
call Link("twigString", "String")