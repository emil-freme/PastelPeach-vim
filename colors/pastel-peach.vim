" Vim color scheme
" Name:         Pastel Peach
" Maintainer:   Emil-Freme
" Description:  A light, pastel theme

" Initialization
set background=light
hi clear
if exists("syntax_on")
    syntax reset
endif

let g:colors_name = "pastel-peach"
" Test Colors
let s:t1  = "#FF0000"
let s:t2  = "#00FF00"
let s:t3  = "#0000FF"
let s:t4  = "#FFFF00"
let s:t5  = "#FF00FF"
let s:t6  = "#00FFFF"
let s:t7  = "#FFFFFF"
let s:t8  = "#FF8888"
let s:t9  = "#88FF88"
let s:t10  = "#8888FF"

" Color Palette
let s:bg            = "#FFDAB9"
let s:bg_dark       = "#F2CEAD"
let s:fg            = "#242424"
let s:comment       = "#807060"
let s:selection     = "#D1C4E9"
let s:error_red     = "#C73B47"
let s:white         = "#80644D"
let s:yellow        = "#807E4D"
let s:cyan          = "#4D807E"
let s:green         = "#4D8064"
let s:red           = "#644D80"
let s:purple        = "#804D4E"
let s:blue          = "#4D6880"
let s:bright_black  = "#080808"  
let s:bright_red    = "#532680"  
let s:bright_green  = "#268026" 
let s:bright_yellow = "#808026" 
let s:bright_blue   = "#265380" 
let s:bright_purple = "#80262E" 
let s:bright_cyan   = "#268080" 
let s:bright_white  = "#4D443D" 

" Helper function for highlighting
"
function! s:Hi(group, guifg, guibg, gui, ctermfg, ctermbg, cterm)
    let cmd = "highlight " . a:group
    if a:guifg != ""
        let cmd .= " guifg=" . a:guifg
    endif
    if a:guibg != ""
        let cmd .= " guibg=" . a:guibg
    endif
    if a:gui != ""
        let cmd .= " gui=" . a:gui
    endif
    if a:ctermfg != ""
        let cmd .= " ctermfg=" . a:ctermfg
    endif
    if a:ctermbg != ""
        let cmd .= " ctermbg=" . a:ctermbg
    endif
    if a:cterm != ""
        let cmd .= " cterm=" . a:cterm
    endif
    execute cmd
endfunction

" ===================================================================
" Editor UI and Chrome
" ===================================================================

call s:Hi("Normal", s:fg, s:bg, "none", "235", "223", "none")
call s:Hi("Visual", s:fg, s:selection, "none", "235", "183", "none")
call s:Hi("Cursor", "", "", "reverse", "", "", "reverse")
call s:Hi("CursorLine", "", s:bg_dark, "none", "", "224", "none")
call s:Hi("CursorLineNr", s:fg, s:bg_dark, "bold", "235", "224", "bold")
call s:Hi("LineNr", s:comment, s:bg, "none", "95", "223", "none")
call s:Hi("SignColumn", s:comment, s:bg_dark, "none", "95", "223", "none")
call s:Hi("Folded", s:comment, s:bg_dark, "none", "95", "224", "none")
call s:Hi("VertSplit", s:bg_dark, s:bg_dark, "none", "224", "224", "none")
call s:Hi("StatusLine", s:fg, s:bg_dark, "bold", "235", "224", "bold")
call s:Hi("StatusLineNC", s:comment, s:bg_dark, "none", "95", "224", "none")
call s:Hi("Pmenu", s:fg, s:bg_dark, "none", "235", "224", "none")
call s:Hi("PmenuSel", s:bg, s:blue, "none", "223", "67", "none")
call s:Hi("Search", s:bg, s:bright_cyan, "none", "223", "101", "none")
call s:Hi("IncSearch", s:bg, s:green, "none", "223", "65", "none")
call s:Hi("Directory", s:blue, "", "none", "67", "", "none")
call s:Hi("Title", s:purple, "", "bold", "88", "", "bold")
call s:Hi("Question", s:green, "", "none", "65", "", "none")
call s:Hi("MoreMsg", s:green, "", "none", "65", "", "none")
call s:Hi("ModeMsg", s:fg, "", "bold", "235", "", "bold")

" ===================================================================
" Syntax Highlighting
" ===================================================================

" General

call s:Hi("Comment", s:comment, "", "italic", "95", "", "italic")
call s:Hi("Todo", s:error_red, s:bright_white, "bold", "15", "101", "bold")
call s:Hi("Error", s:error_red, s:bg_dark, "bold", "88", "224", "bold")
call s:Hi("WarningMsg", s:error_red, "", "bold", "88", "", "bold")

" Constants
call s:Hi("Constant", s:bright_purple, "", "none", "65", "", "none")
call s:Hi("String", s:bright_purple, "", "none", "65", "", "none")
call s:Hi("Number", s:bright_purple, "", "none", "60", "", "none")
call s:Hi("Boolean", s:bright_purple, "", "none", "60", "", "none")
call s:Hi("Character", s:bright_purple, "", "none", "65", "", "none")
call s:Hi("Float", s:bright_purple, "", "none", "60", "", "none")

" Keywords and Identifiers
call s:Hi("Identifier", s:bright_cyan, "", "none", "67", "", "none")
call s:Hi("Function", s:bright_cyan, "", "none", "235", "", "none")
call s:Hi("Statement", s:bright_red, "", "bold", "88", "", "bold")
call s:Hi("Keyword", s:bright_red, "", "bold", "88", "", "bold")
call s:Hi("Conditional", s:bright_yellow, "", "bold", "88", "", "bold")
call s:Hi("Repeat", s:t4, "", "bold", "88", "", "bold")
call s:Hi("Operator", s:bright_blue, "", "none", "235", "", "none")
call s:Hi("Preproc", s:bright_yellow, "", "none", "60", "", "none")
call s:Hi("Include", s:bright_yellow, "", "none", "60", "", "none")
call s:Hi("Type", s:bright_red, "", "none", "73", "", "none")

" Special
call s:Hi("Special", s:bright_green, "", "none", "101", "", "none")
call s:Hi("Underlined", s:error_red, "", "underline", "67", "", "underline")
call s:Hi("Delimiter", s:bright_blue, "", "none", "235", "", "none")
call s:Hi("SpecialComment", s:comment, s:error_red, "none", "95", "", "none")


" ===================================================================
" Terminal Colors (for :terminal)
" ===================================================================

let g:terminal_color_0 = "#242424"  " black
let g:terminal_color_1 = "#644D80"  " brightPurple (used as red)
let g:terminal_color_2 = "#4D8064"  " green
let g:terminal_color_3 = "#807E4D"  " yellow
let g:terminal_color_4 = "#4D6880"  " blue
let g:terminal_color_5 = "#804D4E"  " purple
let g:terminal_color_6 = "#4D807E"  " cyan
let g:terminal_color_7 = "#80644D"  " white
let g:terminal_color_8 = "#080808"  " brightBlack
let g:terminal_color_9 = "#532680"  " brightRed
let g:terminal_color_10 = "#268026" " brightGreen
let g:terminal_color_11 = "#808026" " brightYellow
let g:terminal_color_12 = "#265380" " brightBlue
let g:terminal_color_13 = "#80262E" " red (used as brightPurple)
let g:terminal_color_14 = "#268080" " brightCyan
let g:terminal_color_15 = "#4D443D" " brightWhite

" Cleanup function
delfunction s:Hi
