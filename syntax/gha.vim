" Vim syntax file
" Language:   GitHub Actions YAML
" Maintainer: yasuhiroki <yasuhiroki.duck@gmail.com>
" License:    MIT Copyright (c) 2019 yasuhiroki

let s:save_cpo = &cpo
set cpo&vim

let s:gha_keywords_key = '\%(^\|\s\)\@<=\zs\%('.join(gha#GetKeywords(), '\|').'\)\ze\%(\s*:\|$\)'
let s:gha_keywords_conditional_key = '\%(^\|\s\)\@<=\zs\%('.join(gha#GetKeywordsConditional(), '\|').'\)\ze\%(\s*:\|$\)'
let s:gha_keywords_step_key = '\%([0-9A-Za-z_-]\)\@<!\%('.join(gha#GetKeywordsStep(), '\|').'\)\ze\%(\s*:\|$\)'

syn region GhaDollerSyntax matchgroup=PreProc start="${{" end="}}" containedin=yamlPlainScalar keepend

exe 'syn match GhaKeywords /'.s:gha_keywords_key.'/ contained nextgroup=yamlKeyValueDelimiter containedin=yamlBlockMappingKey'
exe 'syn match GhaKeywordsConditional /'.s:gha_keywords_conditional_key.'/ contained nextgroup=yamlKeyValueDelimiter containedin=yamlBlockMappingKey'
exe 'syn match GhaKeywordsStep /'.s:gha_keywords_step_key.'/ contained nextgroup=yamlKeyValueDelimiter containedin=yamlBlockMappingKey'

" https://docs.github.com/en/actions/learn-github-actions/contexts
syn match GhaKeywordsDollerSyntax /\%(\.\)\@<!\<\%(github\|env\|job\|steps\|runner\|secrets\|strategy\|matrix\|inputs\)\>/ contained containedin=GhaDollerSyntax

hi link GhaKeywords Keyword
hi link GhaKeywordsConditional Conditional
hi link GhaKeywordsStep Define
hi link GhaKeywordsParameter Keyword
hi link GhaKeywordsDollerSyntax Keyword

let &cpo = s:save_cpo

