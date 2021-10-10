" Vim plugin file
" Language:   GitHub Actions YAML
" Maintainer: yasuhiroki <yasuhiroki.duck@gmail.com>
" License:    MIT Copyright (c) 2021 yasuhiroki
"
if (exists('g:loaded_gha_plugin') && g:loaded_gha_plugin) || &compatible
    finish
endif

let g:gha_completion = get(g:, 'gha_completion', 1)

let g:loaded_gha_plugin = 1
