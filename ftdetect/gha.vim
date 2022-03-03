" Vim filetype detection file
" Language:   GitHub Actions YAML
" Maintainer: yasuhiroki <yasuhiroki.duck@gmail.com>
" License:    MIT Copyright (c) 2019 yasuhiroki

au BufNewFile,BufReadPost */.github/workflows/*.yml setlocal filetype=yaml.gha
