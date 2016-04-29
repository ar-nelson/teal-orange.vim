" Name:     teal-orange
" Author:   Adam R. Nelson <dev@sector91.com>
" URL:      https://github.com/ar-nelson/teal-orange.vim
" License:  MIT
" Created:  2016 Apr 29
" Modified: 2016 Apr 29

" This is a teal-and-orange color scheme, with 8 shades of teal, 6 shades of
" orange, and 2 shades of red.
" It uses the following 16 base colors:
"
" t0 - #00211d ⎤ Teals
" t1 - #003a32 ⎥
" t2 - #005247 ⎥
" t3 - #006c5e ⎥
" t4 - #018573 ⎥
" t5 - #159c8a ⎥
" t6 - #35a596 ⎥
" t7 - #3bbfb0 ⎦
" o0 - #d48902 ⎤ Oranges
" o1 - #ffc152 ⎥
" o2 - #ffdda0 ⎥
" o3 - #ffeac4 ⎥
" o4 - #fff5e3 ⎥
" o5 - #ffffff ⎦
" r0 - #cd0215 ⎤ Reds
" r1 - #f12034 ⎦
"
" The 16-color terminal mode assumes that the terminal's ANSI colors have been
" changed to match these colors. The ANSI color scheme can be found at:
"
" http://terminal.sexy/#ACEd__XjACEdzQIVAYVz1IkCAFJH_92gNaWW__XjADoy8SA0FZyK_8FSAGxe_-rEO7-w____
"

" Colorscheme initialization "{{{
" ---------------------------------------------------------------------
hi clear
if exists("syntax_on")
  syntax reset
endif
let colors_name = "teal-orange"

"}}}
" Palettes "{{{
" ---------------------------------------------------------------------

if has("gui_running")
    let s:vmode = "gui"
    let s:t0 = "#00211d"
    let s:t1 = "#003a32"
    let s:t2 = "#005247"
    let s:t3 = "#006c5e"
    let s:t4 = "#018573"
    let s:t5 = "#159c8a"
    let s:t6 = "#35a596"
    let s:t7 = "#3bbfb0"
    let s:o0 = "#d48902"
    let s:o1 = "#ffc152"
    let s:o2 = "#ffdda0"
    let s:o3 = "#ffeac4"
    let s:o4 = "#fff5e3"
    let s:o5 = "#ffffff"
    let s:r0 = "#cd0215"
    let s:r1 = "#f12034"
else
    let s:vmode = "cterm"
    let s:bright = "* term=bold cterm=bold"
    let s:t0 = "Black"
    let s:t1 = "DarkGray"
    let s:t2 = "DarkBlue"
    let s:t3 = "LightBlue"
    let s:t4 = "DarkGreen"
    let s:t5 = "LightGreen"
    let s:t6 = "DarkCyan"
    let s:t7 = "LightCyan"
    let s:o0 = "DarkYellow"
    let s:o1 = "LightYellow"
    let s:o2 = "DarkMagenta"
    let s:o3 = "LightMagenta"
    let s:o4 = "LightGray"
    let s:o5 = "White"
    let s:r0 = "DarkRed"
    let s:r1 = "LightRed"
endif

"}}}
" Formatting options and null values for passthrough effect "{{{
" ---------------------------------------------------------------------
    let s:none        = "NONE"
    let s:none        = "NONE"
    let s:t_none      = "NONE"
    let s:n           = "NONE"
    let s:b           = ",bold"
    let s:u           = ",underline"
    let s:c           = ",undercurl"
    let s:r           = ",reverse"
    let s:s           = ",standout"
"}}}
" Background value based on termtrans setting "{{{
" ---------------------------------------------------------------------
if has("gui_running")
    let s:back = s:t1
else
    let s:back = "NONE"
endif
"}}}
" Highlighting primitives"{{{
" ---------------------------------------------------------------------

exe "let s:bg_none = ' ".s:vmode."bg=".s:none   ."'"
exe "let s:bg_back = ' ".s:vmode."bg=".s:back   ."'"
exe "let s:bg_t0 = ' ".s:vmode."bg=".s:t0 ."'"
exe "let s:bg_t1 = ' ".s:vmode."bg=".s:t1 ."'"
exe "let s:bg_t2 = ' ".s:vmode."bg=".s:t2 ."'"
exe "let s:bg_t3 = ' ".s:vmode."bg=".s:t3 ."'"
exe "let s:bg_t4 = ' ".s:vmode."bg=".s:t4 ."'"
exe "let s:bg_t5 = ' ".s:vmode."bg=".s:t5 ."'"
exe "let s:bg_t6 = ' ".s:vmode."bg=".s:t6 ."'"
exe "let s:bg_t7 = ' ".s:vmode."bg=".s:t7 ."'"
exe "let s:bg_o0 = ' ".s:vmode."bg=".s:o0 ."'"
exe "let s:bg_o1 = ' ".s:vmode."bg=".s:o1 ."'"
exe "let s:bg_o2 = ' ".s:vmode."bg=".s:o2 ."'"
exe "let s:bg_o3 = ' ".s:vmode."bg=".s:o3 ."'"
exe "let s:bg_o4 = ' ".s:vmode."bg=".s:o4 ."'"
exe "let s:bg_o5 = ' ".s:vmode."bg=".s:o5 ."'"
exe "let s:bg_r0 = ' ".s:vmode."bg=".s:r0 ."'"
exe "let s:bg_r1 = ' ".s:vmode."bg=".s:r1 ."'"

exe "let s:fg_none = ' ".s:vmode."fg=".s:none   ."'"
exe "let s:fg_back = ' ".s:vmode."fg=".s:back   ."'"
exe "let s:fg_t0 = ' ".s:vmode."fg=".s:t0 ."'"
exe "let s:fg_t1 = ' ".s:vmode."fg=".s:t1 ."'"
exe "let s:fg_t2 = ' ".s:vmode."fg=".s:t2 ."'"
exe "let s:fg_t3 = ' ".s:vmode."fg=".s:t3 ."'"
exe "let s:fg_t4 = ' ".s:vmode."fg=".s:t4 ."'"
exe "let s:fg_t5 = ' ".s:vmode."fg=".s:t5 ."'"
exe "let s:fg_t6 = ' ".s:vmode."fg=".s:t6 ."'"
exe "let s:fg_t7 = ' ".s:vmode."fg=".s:t7 ."'"
exe "let s:fg_o0 = ' ".s:vmode."fg=".s:o0 ."'"
exe "let s:fg_o1 = ' ".s:vmode."fg=".s:o1 ."'"
exe "let s:fg_o2 = ' ".s:vmode."fg=".s:o2 ."'"
exe "let s:fg_o3 = ' ".s:vmode."fg=".s:o3 ."'"
exe "let s:fg_o4 = ' ".s:vmode."fg=".s:o4 ."'"
exe "let s:fg_o5 = ' ".s:vmode."fg=".s:o5 ."'"
exe "let s:fg_r0 = ' ".s:vmode."fg=".s:r0 ."'"
exe "let s:fg_r1 = ' ".s:vmode."fg=".s:r1 ."'"

exe "let s:fmt_none     = ' ".s:vmode."=NONE".          " term=NONE".    "'"
exe "let s:fmt_bold     = ' ".s:vmode."=NONE".s:b.      " term=NONE".s:b."'"
exe "let s:fmt_bldi     = ' ".s:vmode."=NONE".s:b.      " term=NONE".s:b."'"
exe "let s:fmt_undr     = ' ".s:vmode."=NONE".s:u.      " term=NONE".s:u."'"
exe "let s:fmt_undb     = ' ".s:vmode."=NONE".s:u.s:b.  " term=NONE".s:u.s:b."'"
exe "let s:fmt_undi     = ' ".s:vmode."=NONE".s:u.      " term=NONE".s:u."'"
exe "let s:fmt_curl     = ' ".s:vmode."=NONE".s:c.      " term=NONE".s:c."'"
exe "let s:fmt_stnd     = ' ".s:vmode."=NONE".s:s.      " term=NONE".s:s."'"
exe "let s:fmt_revr     = ' ".s:vmode."=NONE".s:r.      " term=NONE".s:r."'"
exe "let s:fmt_revb     = ' ".s:vmode."=NONE".s:r.s:b.  " term=NONE".s:r.s:b."'"

if has("gui_running")
    exe "let s:sp_none = ' guisp=".s:none ."'"
    exe "let s:sp_back = ' guisp=".s:back ."'"
    exe "let s:sp_t0 = ' guisp=".s:t0 ."'"
    exe "let s:sp_t1 = ' guisp=".s:t1 ."'"
    exe "let s:sp_t2 = ' guisp=".s:t2 ."'"
    exe "let s:sp_t3 = ' guisp=".s:t3 ."'"
    exe "let s:sp_t4 = ' guisp=".s:t4 ."'"
    exe "let s:sp_t5 = ' guisp=".s:t5 ."'"
    exe "let s:sp_t6 = ' guisp=".s:t6 ."'"
    exe "let s:sp_t7 = ' guisp=".s:t7 ."'"
    exe "let s:sp_o0 = ' guisp=".s:o0 ."'"
    exe "let s:sp_o1 = ' guisp=".s:o1 ."'"
    exe "let s:sp_o2 = ' guisp=".s:o2 ."'"
    exe "let s:sp_o3 = ' guisp=".s:o3 ."'"
    exe "let s:sp_o4 = ' guisp=".s:o4 ."'"
    exe "let s:sp_o5 = ' guisp=".s:o5 ."'"
    exe "let s:sp_r0 = ' guisp=".s:r0 ."'"
    exe "let s:sp_r1 = ' guisp=".s:r1 ."'"
else
    let s:sp_none = ""
    let s:sp_back = ""
    let s:sp_t0 = ""
    let s:sp_t1 = ""
    let s:sp_t2 = ""
    let s:sp_t3 = ""
    let s:sp_t4 = ""
    let s:sp_t5 = ""
    let s:sp_t6 = ""
    let s:sp_t7 = ""
    let s:sp_o0 = ""
    let s:sp_o1 = ""
    let s:sp_o2 = ""
    let s:sp_o3 = ""
    let s:sp_o4 = ""
    let s:sp_o5 = ""
    let s:sp_r0 = ""
    let s:sp_r1 = ""
endif

"}}}
" Basic highlighting"{{{
" ---------------------------------------------------------------------
" note that link syntax to avoid duplicate configuration doesn't work with the
" exe compiled formats

exe "hi! Normal"         .s:fmt_none   .s:fg_o4 .s:bg_back

exe "hi! Comment"        .s:fmt_none   .s:fg_t3 .s:bg_none
"       *Comment         any comment

exe "hi! Constant"       .s:fmt_bold   .s:fg_t5 .s:bg_none
"       *Constant        any constant
"        Character       a character constant: 'c', '\n'
"        Number          a number constant: 234, 0xff
"        Boolean         a boolean constant: TRUE, false
"        Float           a floating point constant: 2.3e10

exe "hi! String"         .s:fmt_none   .s:fg_t6 .s:bg_none
"       *String          a string constant: "this is a string"

exe "hi! Identifier"     .s:fmt_none   .s:fg_o2 .s:bg_none
"       *Identifier      any variable name
"        Function        function name (also: methods for classes)
"
exe "hi! Statement"      .s:fmt_bold   .s:fg_o1  .s:bg_none
exe "hi! Conditional"    .s:fmt_bold   .s:fg_o1  .s:bg_none
exe "hi! Repeat"         .s:fmt_bold   .s:fg_o1  .s:bg_none
exe "hi! Operator"       .s:fmt_none   .s:fg_o2  .s:bg_none
exe "hi! Label"          .s:fmt_none   .s:fg_o1  .s:bg_none
exe "hi! Keyword"        .s:fmt_none   .s:fg_o1  .s:bg_none
exe "hi! Exception"      .s:fmt_bold   .s:fg_o1  .s:bg_none

exe "hi! PreProc"        .s:fmt_none   .s:fg_t7 .s:bg_none
"       *PreProc         generic Preprocessor
"        Include         preprocessor #include
"        Define          preprocessor #define
"        Macro           same as Define
"        PreCondit       preprocessor #if, #else, #endif, etc.

exe "hi! Type"           .s:fmt_none   .s:fg_o3 .s:bg_none
"       *Type            int, long, char, etc.
"        StorageClass    static, register, volatile, etc.
"        Structure       struct, union, enum, etc.
"        Typedef         A typedef

exe "hi! Special"        .s:fmt_bold   .s:fg_t3 .s:bg_none
"       *Special         any special symbol
"        SpecialChar     special character in a constant
"        Tag             you can use CTRL-] on this
"        SpecialComment  special things inside a comment
"        Debug           debugging statements

exe "hi! Delimiter"      .s:fmt_none   .s:fg_t4 .s:bg_none
exe "hi! Quote"          .s:fmt_none   .s:fg_t4 .s:bg_none
"       *Delimiter       some syntax files (Haskell) use this for parens, etc.

exe "hi! Underlined"     .s:fmt_undr   .s:fg_o5 .s:bg_none
"       *Underlined      text that stands out, HTML links

exe "hi! Ignore"         .s:fmt_none   .s:fg_none .s:bg_none
"       *Ignore          left blank, hidden  |hl-Ignore|

exe "hi! Error"          .s:fmt_undb   .s:fg_r1 .s:bg_none
"       *Error           any erroneous construct

exe "hi! Todo"           .s:fmt_undr   .s:fg_o5 .s:bg_none
"       *Todo            anything that needs extra attention; mostly the
"                        keywords TODO FIXME and XXX
"
"}}}
" Extended highlighting "{{{
" ---------------------------------------------------------------------
exe "hi! SpecialKey"     .s:fmt_bold   .s:fg_o4 .s:bg_t2
exe "hi! NonText"        .s:fmt_bold   .s:fg_o4 .s:bg_none
exe "hi! StatusLine"     .s:fmt_none   .s:fg_o4 .s:bg_t3
exe "hi! StatusLineNC"   .s:fmt_none   .s:fg_o2 .s:bg_t3
exe "hi! Visual"         .s:fmt_none   .s:fg_t0 .s:bg_t5
exe "hi! Directory"      .s:fmt_none   .s:fg_t7 .s:bg_none
exe "hi! ErrorMsg"       .s:fmt_revr   .s:fg_r1 .s:bg_none
exe "hi! IncSearch"      .s:fmt_stnd   .s:fg_o0 .s:bg_o5
exe "hi! Search"         .s:fmt_revr   .s:fg_o0 .s:bg_o5
exe "hi! MoreMsg"        .s:fmt_none   .s:fg_o1 .s:bg_none
exe "hi! ModeMsg"        .s:fmt_none   .s:fg_o1 .s:bg_none
exe "hi! LineNr"         .s:fmt_none   .s:fg_t4 .s:bg_t1
exe "hi! CursorLineNr"   .s:fmt_none   .s:fg_t5 .s:bg_t2
exe "hi! Question"       .s:fmt_bold   .s:fg_o3 .s:bg_none
exe "hi! VertSplit"      .s:fmt_none   .s:fg_t5 .s:bg_t2
exe "hi! Title"          .s:fmt_bold   .s:fg_o5 .s:bg_none
exe "hi! VisualNOS"      .s:fmt_stnd   .s:fg_none .s:bg_t3
exe "hi! WarningMsg"     .s:fmt_bold   .s:fg_r1  .s:bg_none
exe "hi! WildMenu"       .s:fmt_none   .s:fg_o4  .s:bg_t2
exe "hi! Folded"         .s:fmt_undr   .s:fg_t7  .s:bg_t2
exe "hi! FoldColumn"     .s:fmt_none   .s:fg_t7  .s:bg_t2

exe "hi! DiffAdd"        .s:fmt_bold   .s:fg_t6 .s:bg_t1 .s:sp_t6
exe "hi! DiffChange"     .s:fmt_bold   .s:fg_o0 .s:bg_t1 .s:sp_o0
exe "hi! DiffDelete"     .s:fmt_bold   .s:fg_r0 .s:bg_t1 .s:sp_r0
exe "hi! DiffText"       .s:fmt_bold   .s:fg_o4 .s:bg_t1 .s:sp_o4

exe "hi! SignColumn"     .s:fmt_none   .s:fg_o4
exe "hi! Conceal"        .s:fmt_none   .s:fg_o2   .s:bg_none
exe "hi! SpellBad"       .s:fmt_curl   .s:fg_none   .s:bg_none    .s:sp_r1
exe "hi! SpellCap"       .s:fmt_curl   .s:fg_none   .s:bg_none    .s:sp_o0
exe "hi! SpellRare"      .s:fmt_curl   .s:fg_none   .s:bg_none    .s:sp_o2
exe "hi! SpellLocal"     .s:fmt_curl   .s:fg_none   .s:bg_none    .s:sp_t5
exe "hi! Pmenu"          .s:fmt_none   .s:fg_o4 .s:bg_t3
exe "hi! PmenuSel"       .s:fmt_none   .s:fg_o5 .s:bg_t5
exe "hi! PmenuSbar"      .s:fmt_none   .s:fg_o5 .s:bg_t5
exe "hi! PmenuThumb"     .s:fmt_none   .s:fg_o4 .s:bg_t4
exe "hi! TabLine"        .s:fmt_undr   .s:fg_o4 .s:bg_t2 .s:sp_o0
exe "hi! TabLineFill"    .s:fmt_undr   .s:fg_o4 .s:bg_t2 .s:sp_o0
exe "hi! TabLineSel"     .s:fmt_undr   .s:fg_o0 .s:bg_t5 .s:sp_o0
exe "hi! CursorColumn"   .s:fmt_none   .s:fg_none   .s:bg_t1
exe "hi! CursorLine"     .s:fmt_none   .s:fg_none   .s:bg_t1
exe "hi! ColorColumn"    .s:fmt_none   .s:fg_none   .s:bg_t1
exe "hi! Cursor"         .s:fmt_none   .s:fg_t4     .s:bg_t0
hi! link lCursor Cursor
exe "hi! MatchParen"     .s:fmt_bold   .s:fg_o5     .s:bg_none

"}}}

" TODO: Consider adding other Solarized color specifications back in

" vim:foldmethod=marker:foldlevel=0
