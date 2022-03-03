" Vim autoload file
" Language:   GitHub Actions YAML
" Maintainer: yasuhiroki <yasuhiroki.duck@gmail.com>
" License:    MIT Copyright (c) 2019 yasuhiroki

let s:save_cpo = &cpo
set cpo&vim

let s:gha_keywords = [
            \ 'cmd',
            \ 'container',
            \ 'create',
            \ 'docker',
            \ 'env',
            \ 'fail-fast',
            \ 'image',
            \ 'jobs',
            \ 'matrix',
            \ 'max-parallel',
            \ 'name',
            \ 'needs',
            \ 'on',
            \ 'options',
            \ 'paths',
            \ 'ports',
            \ 'runs-on',
            \ 'schedule',
            \ 'services',
            \ 'steps',
            \ 'strategy',
            \ 'types',
            \ 'volumes'
            \ ]

let s:gha_keywords_conditional = [
            \ 'if',
            \ ]

let s:gha_keywords_step = [
            \ 'args',
            \ 'continue-on-error',
            \ 'entrypoint',
            \ 'env',
            \ 'id',
            \ 'run',
            \ 'timeout-minutes',
            \ 'uses',
            \ 'with'
            \ ]

let s:gha_keywords_function = [
            \ 'contains',
            \ 'startsWith',
            \ 'endsWith',
            \ 'format',
            \ 'join',
            \ 'toJSON',
            \ 'fromJSON',
            \ 'hashFiles',
            \ 'success',
            \ 'always',
            \ 'cancelled',
            \ 'failure'
            \ ]

function! gha#GetKeywords()
    return s:gha_keywords
endfunction

function! gha#GetKeywordsConditional()
    return s:gha_keywords_conditional
endfunction

function! gha#GetKeywordsStep()
    return s:gha_keywords_step
endfunction

function! gha#GetKeywordsFunction()
    return s:gha_keywords_function
endfunction

function! gha#GetKeywordsAll()
    return s:gha_keywords
                \ + s:gha_keywords_conditional
                \ + s:gha_keywords_step
                \ + s:gha_keywords_function
endfunction

let &cpo = s:save_cpo
