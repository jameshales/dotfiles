" Vim color file
" Maintainer:  Damien Gombault <desintegr@gmail.com>
" WWW:         http://desintegr.free.fr/dokuwiki/doku.php?id=linux:vim:monokai
" Last Change: 2008 Feb 27
" Version:     0.1.3

set background=dark

hi clear

if exists("syntax_on")
  syntax reset
endif

let colors_name = "monokai"

hi Normal       guifg=#F8F8F2 guibg=#000000 ctermfg=white ctermbg=none


" Main highlight groups
hi Cursor       guibg=fg
"hi CursorIM
"hi CursorColumn
"hi CursorLine
hi Directory    guifg=#66D9EF gui=none ctermfg=blue cterm=none
hi DiffAdd      guifg=bg guibg=#A6E22E ctermbg=green ctermfg=black
hi DiffChange   guifg=bg guibg=#E6DB74 ctermbg=yellow ctermfg=black
hi DiffDelete   guifg=bg guibg=#F92672 ctermbg=magenta ctermfg=black
hi DiffText     guifg=bg guibg=#E6DB74 ctermbg=yellow ctermfg=black
hi ErrorMsg     guifg=#F92672 guibg=bg gui=none ctermfg=magenta ctermbg=none cterm=none
hi VertSplit    guifg=#3B3A32 guibg=bg gui=none ctermfg=darkgrey ctermbg=none cterm=none
hi Folded       guifg=#75715E guibg=bg gui=none ctermfg=darkgrey ctermbg=none cterm=none
hi FoldColumn   guifg=#75715E guibg=#3E3D32 gui=none ctermfg=darkgrey ctermbg=none cterm=none
hi SignColumn   guifg=#75715E guibg=#3E3D32 gui=none ctermfg=darkgrey ctermbg=none cterm=none
hi IncSearch    guifg=bg guibg=#E6DB74 gui=none ctermfg=black ctermbg=yellow cterm=none
hi LineNr       guifg=#75715E gui=none ctermfg=darkgrey cterm=none
hi MatchParen   guifg=fg guibg=bg gui=bold cterm=bold
hi ModeMsg      gui=none cterm=none
hi MoreMsg      guifg=#66D9EF gui=none ctermfg=blue cterm=none
hi NonText      guifg=#3B3A32 gui=none ctermfg=darkgrey cterm=none
hi Pmenu        guifg=fg guibg=#3E3D32 ctermfg=darkgrey cterm=none
hi PmenuSel     guifg=fg guibg=bg
hi PmenuSbar    guibg=bg
hi PmenuThumb   guifg=fg
hi Question     guifg=#A6E22E gui=none ctermfg=green cterm=none
hi Search       guifg=bg guibg=#E6DB74 gui=none ctermfg=black ctermbg=yellow cterm=none
hi SpecialKey   guifg=#3B3A32 gui=none ctermfg=darkgrey cterm=none
hi SpellBad     guisp=#F92672
hi SpellCap     guisp=#65D9EF
"hi SpellLocal
hi SpellRare    guisp=#AE81FF
hi StatusLine   guifg=fg guibg=#3E3D32 gui=none cterm=none ctermfg=white ctermbg=darkgrey
hi StatusLineNC guifg=#75715E guibg=#3E3D32 gui=none ctermfg=grey ctermbg=darkgrey cterm=none
hi TabLine      guifg=#75715E guibg=#3E3D32 gui=none ctermfg=grey ctermbg=darkgrey cterm=none
hi TabLineFill  guifg=fg guibg=#3E3D32 gui=none ctermfg=white ctermbg=darkgrey cterm=none
hi TabLineSel   guifg=fg guibg=#3E3D32 gui=none ctermfg=white ctermbg=darkgrey cterm=none
hi Title        guifg=#F92672 gui=none ctermfg=magenta cterm=none
hi Visual       guibg=#49483E gui=none ctermbg=darkgrey cterm=none
"hi VisualNOS
hi WarningMsg   guifg=#F92672 gui=none ctermfg=magenta cterm=none
"hi WildMenu

"hi Menu
"hi ScrollBar
"hi Tooltip


" Plugin specific highlight groups
hi MyTagListFileName guifg=#FD971F guibg=bg gui=none

hi LongLine guibg=#75715e


" Color groups
hi Blue    guifg=#66D9EF gui=none ctermfg=blue
hi Green   guifg=#A6E22E gui=none ctermfg=green
hi Grey    guifg=#75715E gui=none ctermfg=grey
hi Orange  guifg=#FD971F gui=none ctermfg=darkyellow
hi Purple  guifg=#AE81FF gui=none ctermfg=magenta
hi Red     guifg=#F92672 gui=none ctermfg=red
hi White   guifg=#F8F8F2 gui=none ctermfg=white
hi Yellow  guifg=#E6DB74 gui=none ctermfg=yellow

hi BlueU   guifg=#66D9EF gui=underline ctermfg=blue

hi RedR    guifg=fg guibg=#F92672 gui=none ctermfg=red
hi YellowR guifg=bg guibg=#FD971F gui=none ctermfg=yellow


" Syntax highligh groups
hi! link Comment      Grey
"
hi! link Constant     Purple
hi! link String       Yellow
hi! link Character    Yellow
"hi Number
"hi Boolean
"hi Float
"
hi! link Identifier   Green
"hi Function
"
hi! link Statement    Red
"hi Conditional
"hi Repeat
"hi Label
hi! link Operator     Green
"hi Keyword
"hi Exception
"
hi! link PreProc      Orange
"hi Include
"hi Define
"hi Macro
"hi PreCondit
"
hi! link Type         Blue
hi! link StorageClass Red
"hi Structure
"hi Typedef
"
hi! link Special      Grey
"hi SpecialChar
hi! link Tag          Green
"hi Delimiter
hi! link SpecialComment     Green
"hi Debug
"
hi! link Underlined   BlueU
"hi Ignore
hi! link Error        RedR
hi! link Todo         YellowR

" Language specific highligh groups
" C
hi link cStatement              Green
"" C++
hi link cppStatement            Green
"" CSS
hi link cssBraces               White
hi link cssFontProp             White
hi link cssColorProp            White
hi link cssTextProp             White
hi link cssBoxProp              White
hi link cssRenderProp           White
hi link cssAuralProp            White
hi link cssRenderProp           White
hi link cssGeneratedContentProp White
hi link cssPagingProp           White
hi link cssTableProp            White
hi link cssUIProp               White
hi link cssFontDescriptorProp   White
"" Java
hi link javaStatement           Green
"" Ruby
hi link rubyClassVariable       White
hi link rubyControl             Green
hi link rubyGlobalVariable      White
hi link rubyInstanceVariable    White
