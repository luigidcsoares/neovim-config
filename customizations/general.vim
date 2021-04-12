" Enable filetype plugins.
filetype plugin indent on

" Set textwidth to be able to split screen.
set textwidth=65

" Disable vi compatibility.
set nocompatible

" Hide buffers instead of forcing you to save
set hidden

" Search & replace config.
set inccommand=split

" Give more space for displaying messages.
set cmdheight=2

" Having longer updatetime (default is 4000 ms = 4 s) leads to
" noticeable delays and poor user experience.
set updatetime=300

" Don't pass messages to |ins-completion-menu|.
set shortmess+=c

" Always show the signcolumn, otherwise it would shift the text each time
" diagnostics appear/become resolved.
set signcolumn=yes

" Default indentation style.
set expandtab
set shiftwidth=4
set softtabstop=4

" Split right & below
set splitright
set splitbelow

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
let g:airline#extensions#coc#enabled = 1

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

" Enable trimming of trailing whitespace when uncommenting.
let g:NERDTrimTrailingWhitespace = 1

" Enable NERDCommenterToggle to check all selected lines is
" commented or not.
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

""""""""""
""" CoC
""""""""""
" Use <C-j> for jump to next placeholder, it's default of
" coc.nvim
let g:coc_snippet_next = '<C-j>'

" Use <C-k> for jump to previous placeholder, it's default of
" coc.nvim
let g:coc_snippet_prev = '<C-k>'

""""""""""
""" Vimtex
""""""""""
let g:tex_flavor = 'latex'
let g:vimtex_view_method = 'zathura'
let g:vimtex_subfile_start_local=1
" Vimtex supports Neovim. However, since Neovim doesn't support
" the --servername option yet, you have to install neovim-remote.
let g:vimtex_compiler_progname = 'nvr'
let g:vimtex_quickfix_mode=1
let g:vimtex_quickfix_open_on_warning=0
