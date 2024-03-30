" Vim filetype detection file
" Language:   GitHub Actions YAML
" Maintainer: yasuhiroki <yasuhiroki.duck@gmail.com>
" License:    MIT Copyright (c) 2019 yasuhiroki

" https://docs.github.com/en/actions/using-workflows/workflow-syntax-for-github-actions#about-yaml-syntax-for-workflows
" https://docs.github.com/en/actions/creating-actions/metadata-syntax-for-github-actions#about-yaml-syntax-for-github-actions
au BufNewFile,BufReadPost */.github/workflows/*.y{a,}ml,action.y{a,}ml setlocal filetype=yaml.gha
