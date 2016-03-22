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
hi Normal guifg=#F8F8F2 ctermfg=15 guibg=#000000 ctermbg=0 
" Main highlight groups
hi Cursor guibg=fg 
"hi CursorIM
"hi CursorColumn
"hi CursorLine
hi Directory guifg=#66D9EF ctermfg=81 gui=none cterm=none 
hi DiffAdd guifg=bg guibg=#A6E22E ctermbg=148 
hi DiffChange guifg=bg guibg=#E6DB74 ctermbg=186 
hi DiffDelete guifg=bg guibg=#F92672 ctermbg=197 
hi DiffText guifg=bg guibg=#E6DB74 ctermbg=186 
hi ErrorMsg guifg=#F92672 ctermfg=197 ctermbg=bg guibg=bg gui=none cterm=none 
hi VertSplit guifg=#3B3A32 ctermfg=237 guibg=bg gui=none cterm=none 
hi Folded guifg=#75715E ctermfg=242 guibg=bg gui=none cterm=none 
hi FoldColumn guifg=#75715E ctermfg=242 guibg=#3E3D32 ctermbg=237 gui=none cterm=none 
hi SignColumn guifg=#75715E ctermfg=242 guibg=#3E3D32 ctermbg=237 gui=none cterm=none 
hi IncSearch guifg=bg guibg=#E6DB74 ctermbg=186 gui=none cterm=none 
hi LineNr guifg=#75715E ctermfg=242 gui=none cterm=none 
hi MatchParen guifg=fg guibg=bg gui=bold cterm=bold 
hi ModeMsg gui=none cterm=none 
hi MoreMsg guifg=#66D9EF ctermfg=81 gui=none cterm=none 
hi NonText guifg=#3B3A32 ctermfg=237 gui=none cterm=none 
hi Pmenu guifg=fg guibg=#3E3D32 ctermbg=237 cterm=none 
hi PmenuSel guifg=fg guibg=bg 
hi PmenuSbar guibg=bg 
hi PmenuThumb guifg=fg 
hi Question guifg=#A6E22E ctermfg=148 gui=none cterm=none 
hi Search guifg=bg guibg=#E6DB74 ctermbg=186 gui=none cterm=none 
hi SpecialKey guifg=#3B3A32 ctermfg=237 gui=none cterm=none 
hi SpellBad guisp=#F92672 
hi SpellCap guisp=#65D9EF 
"hi SpellLocal
hi SpellRare guisp=#AE81FF 
hi StatusLine guifg=fg guibg=#3E3D32 ctermbg=237 gui=none cterm=none 
hi StatusLineNC guifg=#75715E ctermfg=242 guibg=#3E3D32 ctermbg=237 gui=none cterm=none 
hi TabLine guifg=#75715E ctermfg=242 guibg=#3E3D32 ctermbg=237 gui=none cterm=none 
hi TabLineFill guifg=fg guibg=#3E3D32 ctermbg=237 gui=none cterm=none 
hi TabLineSel guifg=fg guibg=#3E3D32 ctermbg=237 gui=none cterm=none 
hi Title guifg=#F92672 ctermfg=197 gui=none cterm=none 
hi Visual guibg=#49483E ctermbg=238 gui=none cterm=none 
"hi VisualNOS
hi WarningMsg guifg=#F92672 ctermfg=197 gui=none cterm=none 
"hi WildMenu
"hi Menu
"hi ScrollBar
"hi Tooltip
" Plugin specific highlight groups
hi MyTagListFileName guifg=#FD971F ctermfg=208 guibg=bg gui=none 
hi LongLine guibg=#75715e ctermbg=242 
" Color groups
hi Blue guifg=#66D9EF ctermfg=81 gui=none 
hi Green guifg=#A6E22E ctermfg=148 gui=none 
hi Grey guifg=#75715E ctermfg=242 gui=none 
hi Orange guifg=#FD971F ctermfg=208 gui=none 
hi Purple guifg=#AE81FF ctermfg=141 gui=none 
hi Red guifg=#F92672 ctermfg=197 gui=none 
hi White guifg=#F8F8F2 ctermfg=15 gui=none 
hi Yellow guifg=#E6DB74 ctermfg=186 gui=none 
hi BlueU guifg=#66D9EF ctermfg=81 gui=underline 
hi RedR guifg=fg guibg=#F92672 ctermbg=197 gui=none 
hi YellowR guifg=bg guibg=#FD971F ctermbg=208 gui=none 
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
hi link cStatement Green 
"" C++
hi link cppStatement Green 
"" CSS
hi link cssBraces White 
hi link cssFontProp White 
hi link cssColorProp White 
hi link cssTextProp White 
hi link cssBoxProp White 
hi link cssRenderProp White 
hi link cssAuralProp White 
hi link cssRenderProp White 
hi link cssGeneratedContentProp White 
hi link cssPagingProp White 
hi link cssTableProp White 
hi link cssUIProp White 
hi link cssFontDescriptorProp White 
"" Java
hi link javaStatement Green 
"" Ruby
hi link rubyClassVariable White 
hi link rubyControl Green 
hi link rubyGlobalVariable White 
hi link rubyInstanceVariable White 
