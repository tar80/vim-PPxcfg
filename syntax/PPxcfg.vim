" Vim syntax file
" Language:     PPx Configuration File
" Maintainer:   tar80
" Latest Revision:  2022-02-04
"======================================================================
" quit when a syntax file was already loaded
if exists ("b:current_syntax")
    finish
endif

" case off
syn case ignore

" Section
syn match CfgSection  "\[.*\]"

" Delimiter
syn match CfgOperator "="
syn match CfgOperator ","
syn match CfgOperator ";"
syn match CfgOperator "-"
syn match CfgOperator "/"
syn match CfgOperator "@"
syn match CfgOperator "\*"

" Number
syn match CfgNumber "[0-9]"

" Dos Drive:\Path
syn match CfgPath "[a-zA-Z]:\\\f*"

" Bracket
syn match CfgBracket  "{"
syn match CfgBracket  "}"
syn match CfgBracket  "("
syn match CfgBracket  ")"

" Option
syn match CfgOption   +"+
syn match CfgOption   "%"
syn match CfgOption   "%[a-zA-Z@\!#\$~]\S*"
syn region String     matchgroup=Identifier start=+%k[A-Z-]\{-\}"+ end=+"+ end=+%:+ end=+%&+ end=+$+ keepend
syn region String     matchgroup=Identifier start=+%j"+ skip=+""+ end=+"+ keepend
syn case match
syn region String     matchgroup=Identifier start=+%[IGQ]"+ end=+"+ keepend
syn region String     matchgroup=Identifier start=+%"+ skip=+""+ end=+"+ keepend
syn region ErrorMsg   matchgroup=Identifier start=+%s[iopeu]"+ end=+"+ keepend
syn region ErrorMsg   matchgroup=Identifier start="%s[iopeu]'" end="'" keepend
syn region ErrorMsg   matchgroup=Identifier start="%g'" end="'" keepend
syn region ErrorMsg   matchgroup=Identifier start="%'" skip="%'" end="'" keepend
syn match CfgOption   +%S"+
syn match CfgOption   "%[0-9\\]"
syn match CfgOption   "%|"
syn match CfgOption   "%{"
syn match CfgOption   "%}"
syn match CfgOption   "%("
syn match CfgOption   "%)"
syn case ignore

" Command
syn match CfgCommand      "%*\*\a\+"
syn match CfgConditional  "\*stop"
syn match CfgConditional  "\*return"
syn match CfgConditional  "\*if\(match\)\="

" Block
syn match CfgBlock  "%*:"
syn match CfgBlock  "%*&"

" Parameter
syn match CfgParameter   "^.\{-\}\s=" contains=CfgComment
syn match CfgParameter   "^.\{-\}\s," contains=CfgComment
syn match CfgParameter   "^.\{-\}\t=" contains=CfgComment
syn match CfgParameter   "^.\{-\}\t," contains=CfgComment

" Delete menu
syn region Error start="^-|" end="$" contains=CfgComment

" Comment
syn match CfgComment  "^;.*"
syn match CfgComment  "\s;.*"

" Define the default hightlighting.
" Only when an item doesn't have highlighting yet
hi def link CfgBlock      SpecialKey
hi def link CfgComment    Comment
hi link CfgParameter      Label
hi link CfgPath           SpellCap
hi link CfgCommand        Function
hi link CfgConditional    Conditional
hi link CfgOption         Identifier
hi link CfgNumber         Number
hi link CfgBracket        Special
hi link CfgOperator       Operator

let b:current_syntax = "PPxcfg"
