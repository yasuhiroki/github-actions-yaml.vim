" Vim autoload file
" Language:   GitHub Actions YAML
" Maintainer: yasuhiroki <yasuhiroki.duck@gmail.com>
" License:    MIT Copyright (c) 2019 yasuhiroki

let s:save_cpo = &cpo
set cpo&vim

let s:gha_workflow_keywords = [
            \ 'cmd',
            \ 'uses',
            \ 'shell',
            \ 'concurrency',
            \ 'container',
            \ 'continue-on-error',
            \ 'credentials',
            \ 'defaults',
            \ 'env',
            \ 'environment',
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
            \ 'permissions',
            \ 'ports',
            \ 'run',
            \ 'run-name',
            \ 'runs-on',
            \ 'schedule',
            \ 'secrets',
            \ 'services',
            \ 'steps',
            \ 'strategy',
            \ 'timeout-minutes',
            \ 'types',
            \ 'volumes',
            \ 'with',
            \ 'working-directory',
            \ ]

let s:gha_action_keywords = [
            \ 'author',
            \ 'branding',
            \ 'color',
            \ 'default',
            \ 'deprecationMessage',
            \ 'description',
            \ 'icon',
            \ 'inputs',
            \ 'main',
            \ 'name',
            \ 'outputs',
            \ 'post',
            \ 'post-if',
            \ 'pre',
            \ 'pre-if',
            \ 'required',
            \ 'runs',
            \ 'steps',
            \ 'using',
            \ 'value',
            \ ]

let s:gha_keywords_conditional = [
            \ 'if',
            \ ]

let s:gha_keywords_step = [
            \ 'args',
            \ 'continue-on-error',
            \ 'defaults',
            \ 'entrypoint',
            \ 'env',
            \ 'id',
            \ 'name',
            \ 'run',
            \ 'shell',
            \ 'timeout-minutes',
            \ 'uses',
            \ 'with',
            \ 'working-directory',
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
    return s:gha_workflow_keywords + s:gha_action_keywords
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
    return s:gha_workflow_keywords
                \ + s:gha_action_keywords
                \ + s:gha_keywords_conditional
                \ + s:gha_keywords_step
                \ + s:gha_keywords_function
endfunction

let &cpo = s:save_cpo
