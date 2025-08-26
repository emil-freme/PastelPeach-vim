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

" Color Palette
let s:bg = "#FFDAB9"
let s:fg = "#242424"
let s:bg_dark = "#F2CEAD" " A slightly darker background for UI elements
let s:comment = "#80644D"
let s:selection = "#D1C4E9" " A lighter version of the selection color for readability
let s:white = "#FFFFFF"
let s:yellow = "#807E4D"
let s:cyan = "#4D807E"
let s:green = "#4D8064"
let s:red = "#644D80"
let s:purple = "#804D4E"
let s:blue = "#4D6880"
let s:error_red = "#80262E"

" Helper function for highlighting
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
call s:Hi("SignColumn", s:comment, s:bg, "none", "95", "223", "none")
call s:Hi("Folded", s:comment, s:bg_dark, "none", "95", "224", "none")
call s:Hi("VertSplit", s:bg_dark, s:bg_dark, "none", "224", "224", "none")
call s:Hi("StatusLine", s:fg, s:bg_dark, "bold", "235", "224", "bold")
call s:Hi("StatusLineNC", s:comment, s:bg_dark, "none", "95", "224", "none")
call s:Hi("Pmenu", s:fg, s:bg_dark, "none", "235", "224", "none")
call s:Hi("PmenuSel", s:bg, s:blue, "none", "223", "67", "none")
call s:Hi("Search", s:bg, s:yellow, "none", "223", "101", "none")
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
call s:Hi("Todo", s:white, s:yellow, "bold", "15", "101", "bold")
call s:Hi("Error", s:error_red, s:bg_dark, "bold", "88", "224", "bold")
call s:Hi("WarningMsg", s:purple, "", "bold", "88", "", "bold")

" Constants
call s:Hi("Constant", s:green, "", "none", "65", "", "none")
call s:Hi("String", s:green, "", "none", "65", "", "none")
call s:Hi("Number", s:red, "", "none", "60", "", "none")
call s:Hi("Boolean", s:red, "", "none", "60", "", "none")
call s:Hi("Character", s:green, "", "none", "65", "", "none")
call s:Hi("Float", s:red, "", "none", "60", "", "none")

" Keywords and Identifiers
call s:Hi("Identifier", s:blue, "", "none", "67", "", "none")
call s:Hi("Function", s:fg, "", "none", "235", "", "none")
call s:Hi("Statement", s:purple, "", "bold", "88", "", "bold")
call s:Hi("Keyword", s:purple, "", "bold", "88", "", "bold")
call s:Hi("Conditional", s:purple, "", "bold", "88", "", "bold")
call s:Hi("Repeat", s:purple, "", "bold", "88", "", "bold")
call s:Hi("Operator", s:fg, "", "none", "235", "", "none")
call s:Hi("PreProc", s:red, "", "none", "60", "", "none")
call s:Hi("Include", s:red, "", "none", "60", "", "none")
call s:Hi("Type", s:cyan, "", "none", "73", "", "none")

" Special
call s:Hi("Special", s:yellow, "", "none", "101", "", "none")
call s:Hi("Underlined", s:blue, "", "underline", "67", "", "underline")
call s:Hi("Delimiter", s:fg, "", "none", "235", "", "none")
call s:Hi("SpecialComment", s:comment, "", "none", "95", "", "none")

" ===================================================================
" Terminal Colors (for :terminal)
" ===================================================================

let g:terminal_color_0 = "#242424"  " black
let g:terminal_color_1 = "#80262E"  " brightPurple (used as red)
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
let g:terminal_color_13 = "#644D80" " red (used as brightPurple)
let g:terminal_color_14 = "#268080" " brightCyan
let g:terminal_color_15 = "#4D443D" " brightWhite

" Cleanup function
delfunction s:Hi
