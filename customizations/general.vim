" Enable filetype plugins.
filetype plugin on

" Hide buffers instead of forcing you to save
set hidden

""""""
"" UI configs.
""""""

if (has('termguicolors'))
  set termguicolors
endif

syntax on
colorscheme onedark

" Keep terminal background opacity.
highlight Normal guibg=none
highlight NonText guibg=none

" Show relative line numbers.
set number
set relativenumber

""""""
"" NERDTree configs.
""""""

" Open by default when starting vim with no
" command line args.
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif

" Automatically close NERDTree when you open a file.
let NERDTreeQuitOnOpen = 1

" Automatically close a tab if the only remaining window is NERDTree.
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTreeType.IsTabFree()) | q | endif

" Making it prettier.
let NERDTreeMinimalUI = 1
let NERDTreeDirArrows = 1
