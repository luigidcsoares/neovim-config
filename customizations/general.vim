" Enable filetype plugins.
filetype plugin indent on

" Disable vi compatibility.
set nocompatible

" Hide buffers instead of forcing you to save
set hidden

""""""""""
""" UI
""""""""""

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

" Set listchars
set listchars=eol:$,tab:>-,trail:~,extends:>,precedes:<,space:·

"""""""""""
""" Airline
""""""""""

let g:airline_powerline_fonts = 1
let g:airline#extensions#ale#enabled = 1

""""""""""
""" NERDCommenter
""""""""""

" Add spaces after comment delimiters by default
let g:NERDSpaceDelims = 1

" Use compact syntax for prettified multi-line comments
let g:NERDCompactSexyComs = 1

" Align line-wise comment delimiters flush left instead of following code indentation
let g:NERDDefaultAlign = 'left'

" Allow commenting and inverting empty lines (useful when commenting a region)
let g:NERDCommentEmptyLines = 1

" Enable trimming of trailing whitespace when uncommenting
let g:NERDTrimTrailingWhitespace = 1

" Enable NERDCommenterToggle to check all selected lines is commented or not 
let g:NERDToggleCheckAllLines = 1


"""""""""
""" NERDTree
""""""""""

" Open by default when starting vim with no command line args.
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif

" Automatically close NERDTree when you open a file.
let NERDTreeQuitOnOpen = 1

" Automatically close a tab if the only remaining window is NERDTree.
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTreeType.IsTabFree()) | q | endif

" Making it prettier.
let NERDTreeMinimalUI = 1
let NERDTreeDirArrows = 1

""""""""""
""" FZF
""""""""""

" Set up fzf actions.
let g:fzf_action = {
    \ 'ctrl-t': 'tab split',
    \ 'ctrl-s': 'split',
    \ 'ctrl-v': 'vsplit' }

" Enable per-command history
" - History files will be stored in the specified directory
" - When set, CTRL-N and CTRL-P will be bound to 'next-history' and
"   'previous-history' instead of 'down' and 'up'.
let g:fzf_history_dir = '~/.local/share/fzf-history'

command! -bang -nargs=* Rg
            \ call fzf#vim#grep(
            \   'rg --column --line-number --no-heading --color=always --smart-case '.shellescape(<q-args>),
            \   1,
            \   fzf#vim#with_preview(),
            \   <bang>0
            \ )

"""""""""""
""" Ale
"""""""""""

let g:ale_sign_error = '⤫'
let g:ale_sign_warning = '⚠'


""""""""""
""" Deoplete
""""""""""

let g:deoplete#enable_at_startup = 1
" let g:deoplete#disable_auto_complete = 1
autocmd InsertLeave,CompleteDone * if pumvisible() == 0 | pclose | endif
inoremap <expr><tab>  pumvisible() ? "\<c-n>" : "\<tab>"


""""""""""
""" Snippets
""""""""""

let g:UltiSnipsEditSplit = 'vertical'
let g:UltiSnipsExpandTrigger = '<c-e>'
let g:UltiSnipsListSnippets = '<c-l>'
let g:UltiSnipsSnippetsDir = $HOME.'/.config/nvim/UltiSnips'
