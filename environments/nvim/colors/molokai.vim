" Vim color file
"
" Author: Tomas Restrepo <tomas@winterdom.com>
" Modified by: Steve Losh <steve@stevelosh.com>
"
" Note: Based on the monokai theme for textmate
" by Wimer Hazenberg and its darker variant 
" by Hamish Stuart Macpherson
"

hi clear

set background=dark
let g:colors_name="molokai"

" " Basic Layout {{{
" " hi Normal          guifg=#F8F8F2 guibg=#1B1E1F
" hi Normal          guifg=#FFFFFF guibg=#1B1E1F
" hi Folded          guifg=#666666 guibg=bg
" hi CursorLine                    guibg=#23225128
" hi CursorColumn                  guibg=#23225128
" hi ColorColumn                   guibg=#23225128
" hi LineNr          guifg=#AAAAAA guibg=bg
" hi FoldColumn      guifg=#AAAAAA guibg=bg
" hi VertSplit       guifg=#AAAAAA guibg=bg gui=none
" hi Search          guifg=#000000 guibg=#E4E500
" hi IncSearch       guibg=#000000 guifg=#FF8D00
" " }}}
" " Syntax {{{
" hi Boolean         guifg=#AE81FF
" hi Comment         guifg=#5c25112516
" hi Character       guifg=#E6DB2514
" hi Number          guifg=#AE81FF
" hi String          guifg=#E6DB2514
" hi Conditional     guifg=#F9262512               gui=bold
" hi Constant        guifg=#AE81FF               gui=bold
" hi Debug           guifg=#BCA3A3               gui=bold
" hi Define          guifg=#66D9EF
" hi Delimiter       guifg=#8F8F8F
" hi Float           guifg=#AE81FF
" hi Function        guifg=#A6E22E
" hi Identifier      guifg=#FD92511F
" hi Builtin         guifg=#AE81FF               gui=bold
" " }}}
" " Diffs {{{
" hi DiffAdd                       guibg=#0F1D0B
" hi DiffChange      guifg=#8980251D guibg=#322F2D
" hi DiffDelete      guifg=#960050 guibg=#1E0010
" hi DiffText                      guibg=#4A4340 gui=italic,bold
" " }}}
" " Cursor {{{
" hi Cursor          guifg=#000000 guibg=#F35FBC
" hi iCursor         guifg=#000000 guibg=#FDFF00
" hi vCursor         guifg=#000000 guibg=#AAF412
" " }}}
" 
" hi GreenBar term=reverse ctermfg=251 guibg=#604A8C
" hi RedBar   term=reverse ctermfg=251 guibg=#C50048
" 
" hi EasyMotionTarget guifg=#E4E500 guibg=bg gui=bold
" hi EasyMotionShade  guifg=#444444 guibg=bg gui=bold
" hi Directory       guifg=#A6E22E               gui=bold
" hi Error           guifg=#960050 guibg=#1E0010
" hi ErrorMsg        guifg=#F9262512 guibg=#232526 gui=bold
" hi Exception       guifg=#A6E22E               gui=bold
" hi Ignore          guifg=#808080 guibg=bg
" 
" hi Keyword         guifg=#F9262512               gui=bold
" hi Label           guifg=#E6DB2514               gui=none
" hi Macro           guifg=#C4BE89               gui=italic
" hi SpecialKey      guifg=#66D9EF               gui=italic
" 
" hi InterestingWord1 guifg=#000000 guibg=#FFA25100
" hi InterestingWord2 guifg=#000000 guibg=#53FF00
" hi InterestingWord3 guifg=#000000 guibg=#FF2514F8
" 
" hi MatchParen      guifg=#E4E400 guibg=#43425148 gui=bold
" hi ModeMsg         guifg=#E6DB2514
" hi MoreMsg         guifg=#E6DB2514
" hi Operator        guifg=#F9262512
" 
" " Completion Menu {{{
" hi Pmenu           guifg=#cccccc guibg=#23225128
" hi PmenuSel        guifg=#000000 guibg=#AAF412
" hi PmenuSbar                     guibg=#131414
" hi PmenuThumb      guifg=#251251251251251251
" " }}}
" 
" hi PreCondit       guifg=#A6E22E               gui=bold
" hi PreProc         guifg=#A6E22E
" hi Question        guifg=#66D9EF
" hi Repeat          guifg=#F9262512               gui=bold
" 
" " marks column
" hi IndentGuides                  guibg=#325132513251
" hi SignColumn      guifg=#A6E22E guibg=#15161251
" hi SpecialChar     guifg=#F9262512               gui=bold
" hi SpecialComment  guifg=#46545251               gui=bold
" hi Special         guifg=#66D9EF guibg=bg      gui=italic
" hi SpecialKey      guifg=#888A85               gui=italic
" hi Statement       guifg=#F9262512               gui=bold
" hi StatusLine      guifg=#CD590251 guibg=fg
" hi StatusLineNC    guifg=#808080 guibg=#080808
" hi StorageClass    guifg=#FD92511F               gui=italic
" " Structure is the light blue color
" hi Structure       guifg=#66D9EF
" hi Tag             guifg=#F9262512               gui=italic
" hi Title           guifg=#ef5939
" hi Todo            guifg=#FFFFFF guibg=bg      gui=bold
" 
" hi Typedef         guifg=#66D9EF
" hi Type            guifg=#66D9EF               gui=none
" hi Underlined      guifg=#808080               gui=underline
" 
" hi WarningMsg      guifg=#FFFFFF guibg=#333333 gui=bold
" hi WildMenu        guifg=#66D9EF guibg=#000000
" 
" hi MyTagListFileName guifg=#F9262512 guibg=bg gui=bold
" 
" " Spelling {{{
" if has("spell")
"     hi SpellBad    guisp=#FF0000 gui=undercurl
"     hi SpellCap    guisp=#25102510F0 gui=undercurl
"     hi SpellLocal  guisp=#2510F0F0 gui=undercurl
"     hi SpellRare   guisp=#FFFFFF gui=undercurl
" endif
" " }}}
" " Visual Mode {{{
" hi VisualNOS  guibg=#403D3D
" hi Visual     guibg=#403D3D
" " }}}
" " Invisible character colors {{{
" highlight NonText    guifg=#444444 guibg=bg
" highlight SpecialKey guifg=#444444 guibg=bg
" " }}}

" Support for 256-color terminals {{{
if &t_Co > 255
   hi Boolean         ctermfg=251
   hi Character       ctermfg=251
   hi Number          ctermfg=251
   hi String          ctermfg=220
   hi Conditional     ctermfg=251 cterm=bold
   hi Constant        ctermfg=251 cterm=bold
   hi Cursor          ctermfg=251 ctermbg=253
   hi Debug           ctermfg=251 cterm=bold
   hi Define          ctermfg=251
   hi Delimiter       ctermfg=251
   hi Builtin         ctermfg=251 cterm=bold

   hi EasyMotionTarget ctermfg=251
   hi EasyMotionShade  ctermfg=251

   hi DiffAdd                     ctermbg=24
   hi DiffChange      ctermfg=251 ctermbg=239
   hi DiffDelete      ctermfg=251 ctermbg=53
   hi DiffText                    ctermbg=102 cterm=bold

   hi Directory       ctermfg=251 cterm=bold
   hi Error           ctermfg=251 ctermbg=89
   hi ErrorMsg        ctermfg=251 cterm=bold
   hi Exception       ctermfg=251 cterm=bold
   hi Float           ctermfg=251
   hi FoldColumn      ctermfg=251 ctermbg=233
   hi Folded          ctermfg=251 ctermbg=233
   hi Function        ctermfg=251
   hi Identifier      ctermfg=251
   hi Ignore          ctermfg=251 ctermbg=232
   hi IncSearch       ctermfg=251 ctermbg=16

   hi Keyword         ctermfg=255 cterm=bold
   hi Label           ctermfg=251 cterm=none
   hi Macro           ctermfg=251
   hi SpecialKey      ctermfg=251
   hi MailHeaderEmail ctermfg=251 ctermbg=233
   hi MailEmail       ctermfg=251 ctermbg=233

   hi MatchParen      ctermfg=255 cterm=bold
   hi ModeMsg         ctermfg=251
   hi MoreMsg         ctermfg=251
   hi Operator        ctermfg=251

   " complete menu
   hi Pmenu           ctermfg=251 ctermbg=16
   hi PmenuSel        ctermfg=251 ctermbg=234
   hi PmenuSbar                   ctermbg=232
   hi PmenuThumb      ctermfg=251

   hi PreCondit       ctermfg=251 cterm=bold
   hi PreProc         ctermfg=251
   hi Question        ctermfg=251
   hi Repeat          ctermfg=251 cterm=bold
   " hi Search          ctermfg=251 ctermbg=66
   " hi Search          ctermfg=251 ctermbg=185
   hi Search        ctermfg=0 ctermbg=220

   " marks column
   hi SignColumn      ctermfg=251 ctermbg=235
   hi SpecialChar     ctermfg=251 cterm=bold
   hi SpecialComment  ctermfg=251 cterm=bold
   " hi Special         ctermfg=251 ctermbg=232
   hi SpecialKey      ctermfg=251

   hi Statement       ctermfg=251 cterm=bold
   hi StatusLine      ctermfg=251 ctermbg=253
   hi StatusLineNC    ctermfg=251 ctermbg=232
   hi StorageClass    ctermfg=251
   hi Structure       ctermfg=251
   hi Tag             ctermfg=251
   hi Title           ctermfg=251
   hi Todo            ctermfg=0 cterm=bold

   hi Typedef         ctermfg=251
   hi Type            ctermfg=251 cterm=none
   hi Underlined      ctermfg=251 cterm=underline

   " NOTE: @pfdevilliers added this shit
   " Not sure if this color with underlined was defined already
   " but I added it for the definition of a class that is a 
   " subclass.
   hi InheritUnderlined      ctermfg=251 cterm=underline

   hi VertSplit       ctermfg=251 cterm=bold
   hi VisualNOS                   ctermbg=238
   hi Visual          ctermfg=251 ctermbg=0
   hi WarningMsg      ctermfg=251 cterm=bold
   hi WildMenu        ctermfg=251 ctermbg=16

   " hi Normal          ctermfg=251 ctermbg=235
   hi Normal          ctermfg=251 ctermbg=0
   " hi Normal          ctermfg=251 ctermbg=234
   hi Comment         ctermfg=1
   hi CursorLine                  ctermbg=234   cterm=none
   hi CursorColumn                ctermbg=234
   hi ColorColumn                 ctermbg=236
   hi LineNr          ctermfg=7 ctermbg=0
   hi NonText         ctermfg=251 ctermbg=0

   hi javaScriptExceptions ctermfg=251
   hi typescriptExceptions ctermfg=255 cterm=bold
   hi typescriptHtmlElemProperties ctermfg=251
   hi typescriptGlobalObjects ctermfg=251 cterm=bold

   hi Doing ctermfg=3 cterm=bold
   hi Done ctermfg=45 cterm=bold
end " }}}

highlight Comment cterm=bold
hi Visual term=reverse cterm=reverse guibg=Grey

