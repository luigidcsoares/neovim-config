call plug#begin()
" Lean & mean status/tabline (like powerline on bash)
Plug 'vim-airline/vim-airline'

" One Dark theme plugin configs
Plug 'joshdick/onedark.vim'

" File system explorer (NERDTree)
Plug 'scrooloose/nerdtree'

" Improved syntax highlighting
Plug 'sheerun/vim-polyglot'

" Fuzzy finder + Rg (for arch: pacman -S ripgrep)
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'junegunn/fzf.vim'

" Autopairs & rainbow parentheses
Plug 'jiangmiao/auto-pairs'
Plug 'luochen1990/rainbow'

" Brackets/Parentheses surround
Plug 'tpope/vim-surround'
Plug 'tpope/vim-repeat'

" Git
Plug 'Xuyuanp/nerdtree-git-plugin'
Plug 'jreybert/vimagit'
Plug 'tpope/vim-fugitive'
Plug 'tveskag/nvim-blame-line'

" Comment line/blocks
Plug 'scrooloose/nerdcommenter'

" Autocompletion
Plug 'neoclide/coc.nvim', {'branch': 'release'}

" Snippets
Plug 'honza/vim-snippets'

" Haskell
Plug 'neovimhaskell/haskell-vim'

" Agda
Plug 'derekelkins/agda-vim'

" Idris 2
Plug 'edwinb/idris2-vim'

" Clojure
Plug 'Olical/conjure'

" Latex
Plug 'lervag/vimtex'

" Grammar check (LanguageTool)
Plug 'rhysd/vim-grammarous'

" Editor config plugin to define per project style
Plug 'editorconfig/editorconfig-vim'
call plug#end()

"""""""""""
""" Theme
""""""""""
colorscheme onedark

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
""" vimtex
""""""""""
let g:tex_flavor = 'latex'
let g:vimtex_view_method = 'zathura'
let g:vimtex_subfile_start_local=1
" Vimtex supports Neovim. However, since Neovim doesn't support
" the --servername option yet, you have to install neovim-remote.
let g:vimtex_compiler_progname = 'nvr'
let g:vimtex_quickfix_mode=1
let g:vimtex_quickfix_open_on_warning=0

""""""""""
""" Python support
""""""""""
let g:python_host_prog='/usr/bin/python2'
let g:python3_host_prog='/usr/bin/python3'

""""""""""
""" Per project config
""""""""""
let g:EditorConfig_verbose = 1
