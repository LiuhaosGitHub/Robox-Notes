" Vim syntax file
" Language:    xscript
" Maintainer:  Abed <abed@robox.com.cn>
" Last Change: 2018 March 28
" Filenames:	*.xs


" quit when a syntax file was already loaded
if exists("b:current_syntax")
  finish
endif

"
"
"
syn keyword xscriptKeyword END

syn keyword xscriptConstant O_LOAD O_UNLOAD
syn keyword xscriptConstant MAC_END MAC_END



syn keyword xscriptConditional if elsif else select case default break
syn keyword xscriptBoolean true false TRUE FALSE

syn keyword xscriptPreProc $include

syn keyword xscriptStdFunc qt_warning

syn keyword xscriptFunc OnApplicationStart OnApplicationStop OnNextMission OnAbortMission OnExpandMacro OnExecuteMicro 
syn keyword xscriptFunc OnNextMissionDebugMessage SiteExists AgvGetVehicleInfo AgvGetSiteInfo SetAccessLevelForOperation AddIntProperty

syn keyword xscriptType int uint bool real uchar $define XListaSiti XSiteInfo XVehicleInfo XMapParams 

syn keyword xscriptStorage code forward
syn keyword xscriptStructure object

"
"
"
syn match xscriptComment ";.*$"

syntax match xscriptOperator "\v\*"
syntax match xscriptOperator "\v/"
syntax match xscriptOperator "\v\+"
syntax match xscriptOperator "\v-"
syntax match xscriptOperator "\v\="
syntax match xscriptOperator "\v\?"

syntax match xscriptOperator "\v\*\="
syntax match xscriptOperator "\v/\="
syntax match xscriptOperator "\v\+\="
syntax match xscriptOperator "\v-\="
syntax match xscriptOperator "\v\>\="
syntax match xscriptOperator "\v\<\="
syntax match xscriptOperator "\v\<\>"
syntax match xscriptOperator "\v\!\="

"
"
"
syntax region xscriptString start=/\v"/ skip=/\v\\./ end=/\v"/

"
"
"
hi def link xscriptType Type
hi def link xscriptConstant Constant
hi def link xscriptStdFunc Function
hi def link xscriptFunc Function
hi def link xscriptMethod Function
hi def link xscriptModule Identifier
hi def link xscriptStorage StorageClass
hi def link xscriptStructure		Structure

hi def link xscriptBoolean		Boolean

hi def link xscriptConditional	Conditional
hi def link xscriptOperator		Operator
hi def link xscriptPreProc		PreProc

hi def link xscriptComment			Comment
highlight link xscriptKeyword Keyword
highlight link xscriptString String

