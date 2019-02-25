" Haskell-vim highlighting.
let g:haskell_enable_quantification = 1   " to enable highlighting of `forall`.
let g:haskell_enable_recursivedo = 1      " to enable highlighting of `mdo` and `rec`.
let g:haskell_enable_arrowsyntax = 1      " to enable highlighting of `proc`.
let g:haskell_enable_pattern_synonyms = 1 " to enable highlighting of `pattern`.
let g:haskell_enable_typeroles = 1        " to enable highlighting of type roles.
let g:haskell_enable_static_pointers = 1  " to enable highlighting of `static`.
let g:haskell_backpack = 1                " to enable highlighting of backpack keywords.

" Brittany config.
let g:brittany_on_save = 1

" Tab specific option.
setlocal expandtab      " Always uses spaces instead of tabs.
setlocal softtabstop=2  " Insert 4 spaces when tab is pressed.
setlocal shiftwidth=2   " An indent is 4 spaces.
setlocal shiftround     " Round indent to nearest shiftwidth multiple.
