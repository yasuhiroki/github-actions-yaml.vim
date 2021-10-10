" Vim filetype plugin file
" Language:   GitHub Actions YAML
" Maintainer: yasuhiroki <yasuhiroki.duck@gmail.com>
" License:    MIT Copyright (c) 2019 yasuhiroki

let s:save_cpo = &cpo
set cpo&vim

function! gha#Complete(findstart, base)
    if a:findstart
        let line = getline('.')
        let start = col('.') - 1
        while start > 0 && line[start - 1] =~ '[a-zA-Z0-9_]'
            let start -= 1
        endwhile
        return start
    else
        let rtn = []
        for m in sort(gha#GetKeywordsAll())
            if m =~ '^' . a:base
                call add(rtn, m)
            endif
        endfor
        return rtn
    endif
endfunction

if exists("&ofu") && g:gha_completion
  setlocal omnifunc=gha#Complete
endif

let &cpo = s:save_cpo
