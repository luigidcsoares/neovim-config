" Default indentation style.
setlocal noexpandtab
setlocal tabstop=8
setlocal shiftwidth=8
setlocal autoindent
setlocal smartindent

"""""""
""" Formatação e Linters
""""""

" Correção com prettier + eslint
let b:ale_fixers = ['prettier']

" Setar como 1 para corrigir arquivos ao salvar
let b:ale_fix_on_save = 1
