" Default indentation style.
setlocal noexpandtab
setlocal shiftwidth=4
setlocal softtabstop=4
setlocal tabstop=4
setlocal autoindent
setlocal smartindent
setlocal textwidth=79

" Highlights
let g:go_highlight_build_constraints = 1
let g:go_highlight_extra_types = 1
let g:go_highlight_fields = 1
let g:go_highlight_functions = 1
let g:go_highlight_methods = 1
let g:go_highlight_operators = 1
let g:go_highlight_structs = 1
let g:go_highlight_types = 1
let g:go_auto_sameids = 1

" Auto import dependencies.
let g:go_fmt_command = "goimports"

" Show type information in status line
let g:go_auto_type_info = 1
