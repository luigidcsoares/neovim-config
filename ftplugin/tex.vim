" Global variables config.
let g:tex_flavor  = 'latex'
let g:tex_conceal = ''
let g:vimtex_fold_manual = 1
let g:vimtex_latexmk_continuous = 1
let g:vimtex_compiler_progname = 'nvr'

" NCM2 autocomplete config.
call ncm2#register_source({
  \ 'name': 'vimtex',
  \ 'priority': 8,
  \ 'scope': ['tex'],
  \ 'mark': 'tex',
  \ 'word_pattern': '\w+',
  \ 'complete_pattern': g:vimtex#re#ncm2,
  \ 'on_complete': ['ncm2#on_complete#omni', 'vimtex#complete#omnifunc'],
  \})
