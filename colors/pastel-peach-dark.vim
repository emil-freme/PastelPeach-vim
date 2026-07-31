" Vim color scheme
" Name:         Pastel Peach Dark
" Maintainer:   Emil-Freme
" Description:  A dark, pastel theme

" Initialization
set background=dark
hi clear
if exists("syntax_on")
    syntax reset
endif

let g:colors_name = "pastel-peach-dark"

" Color Palette
let s:bg = "#2D2A2E"
let s:fg = "#F2E6DA"
let s:bg_light = "#78727A" " A slightly lighter background for UI elements
let s:comment = "#957A5F"
let s:selection = "#80608A"
let s:white = "#FFE7D1"
let s:yellow = "#FFFDB9"
let s:cyan = "#B9FFFD"
let s:green = "#B9FFDA"
let s:red = "#FFA6A6"
let s:purple = "#eed1ff"
let s:blue = "#6BB5FF"
let s:bright_purple = "#d875ff"
let s:black = "#333333"

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

call s:Hi("Normal", s:fg, s:bg, "none", "254", "235", "none")
call s:Hi("Visual", "", s:selection, "none", "", "238", "none")
call s:Hi("Cursor", "", "", "reverse", "", "", "reverse")
call s:Hi("CursorLine", "", s:bg_light, "none", "", "236", "none")
call s:Hi("CursorLineNr", s:yellow, s:bg_light, "none", "229", "236", "none")
call s:Hi("LineNr", s:comment, s:bg, "none", "242", "235", "none")
call s:Hi("SignColumn", s:comment, s:bg, "none", "242", "235", "none")
call s:Hi("Folded", s:comment, s:bg_light, "none", "242", "236", "none")
call s:Hi("VertSplit", s:black, s:black, "none", "236", "236", "none")
call s:Hi("StatusLine", s:fg, s:bg_light, "bold", "254", "236", "bold")
call s:Hi("StatusLineNC", s:comment, s:bg_light, "none", "242", "236", "none")
call s:Hi("Pmenu", s:fg, s:bg_light, "none", "254", "236", "none")
call s:Hi("PmenuSel", s:bg, s:blue, "none", "235", "153", "none")
call s:Hi("Search", s:black, s:yellow, "none", "235", "229", "none")
call s:Hi("IncSearch", s:black, s:cyan, "none", "235", "159", "none")
call s:Hi("Directory", s:blue, "", "none", "153", "", "none")
call s:Hi("Title", s:green, "", "bold", "158", "", "bold")
call s:Hi("Question", s:green, "", "none", "158", "", "none")
call s:Hi("MoreMsg", s:green, "", "none", "158", "", "none")
call s:Hi("ModeMsg", s:fg, "", "bold", "254", "", "bold")

" ===================================================================
" Syntax Highlighting
" ===================================================================

" General
call s:Hi("Comment", s:comment, "", "italic", "242", "", "italic")
call s:Hi("Todo", s:black, s:yellow, "bold", "235", "229", "bold")
call s:Hi("Error", s:bright_purple, s:bg_light, "bold", "217", "236", "bold")
call s:Hi("WarningMsg", s:yellow, "", "bold", "229", "", "bold")

" Constants
call s:Hi("Constant", s:white, "", "none", "223", "", "none")
call s:Hi("String", s:white, "", "none", "223", "", "none")
call s:Hi("Number", s:yellow, "", "none", "229", "", "none")
call s:Hi("Boolean", s:yellow, "", "none", "229", "", "none")
call s:Hi("Character", s:white, "", "none", "223", "", "none")
call s:Hi("Float", s:yellow, "", "none", "229", "", "none")

" Keywords and Identifiers
call s:Hi("Identifier", s:blue, "", "none", "153", "", "none")
call s:Hi("Function", s:green, "", "none", "158", "", "none")
call s:Hi("Statement", s:purple, "", "bold", "217", "", "bold")
call s:Hi("Keyword", s:purple, "", "bold", "217", "", "bold")
call s:Hi("Conditional", s:purple, "", "bold", "217", "", "bold")
call s:Hi("Repeat", s:purple, "", "bold", "217", "", "bold")
call s:Hi("Operator", s:cyan, "", "none", "159", "", "none")
call s:Hi("PreProc", s:red, "", "none", "183", "", "none")
call s:Hi("Include", s:red, "", "none", "183", "", "none")
call s:Hi("Type", s:cyan, "", "none", "159", "", "none")

" Special
call s:Hi("Special", s:cyan, "", "none", "159", "", "none")
call s:Hi("Underlined", s:blue, "", "underline", "153", "", "underline")
call s:Hi("Delimiter", s:fg, "", "none", "254", "", "none")
call s:Hi("SpecialComment", s:comment, "", "none", "242", "", "none")

" ===================================================================
" Terminal Colors (for :terminal)
" ===================================================================

let g:terminal_color_0 = "#333333"  " black
let g:terminal_color_1 = "#d875ff"  " brightPurple (used as red)
let g:terminal_color_2 = "#B9FFDA"  " green
let g:terminal_color_3 = "#FFFDB9"  " yellow
let g:terminal_color_4 = "#6BB5FF"  " blue
let g:terminal_color_5 = "#eed1ff"  " purple
let g:terminal_color_6 = "#B9FFFD"  " cyan
let g:terminal_color_7 = "#FFE7D1"  " foreground (as white)
let g:terminal_color_8 = "#78727A"  " brightBlack
let g:terminal_color_9 = "#FF5765"  " brightRed
let g:terminal_color_10 = "#5CFFA8" " brightGreen
let g:terminal_color_11 = "#E3DF68" " brightYellow
let g:terminal_color_12 = "#38CAFF" " brightBlue
let g:terminal_color_13 = "#FFA6A6" " red (used as brightPurple)
let g:terminal_color_14 = "#73E6E6" " brightCyan
let g:terminal_color_15 = "#99918A" " brightWhite

" Cleanup function
delfunction s:Hi
