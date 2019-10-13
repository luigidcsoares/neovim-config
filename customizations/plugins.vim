" This module only contains general plugins install.

call plug#begin()

" Lean & mean status/tabline (like powerline on bash).
Plug 'vim-airline/vim-airline'

" One Dark theme plugin configs.
Plug 'joshdick/onedark.vim'

" Improved syntax highlighting.
Plug 'sheerun/vim-polyglot'

" Fuzzy finder + Ag (for arch: pacman -S the_silver_searcher)
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'junegunn/fzf.vim'

"""""" 
"" Autocomplete
""""""
Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
Plug 'deoplete-plugins/deoplete-go', { 'do': 'make'} "Need gocode to be installed: go get -u github.com/stamblerre/gocode


" Autopairs & rainbow parentheses.
Plug 'jiangmiao/auto-pairs'
Plug 'luochen1990/rainbow'

" File system explorer (NERDTree).
Plug 'scrooloose/nerdtree'

" Git
Plug 'Xuyuanp/nerdtree-git-plugin'
Plug 'jreybert/vimagit'
Plug 'tpope/vim-fugitive'
Plug 'tveskag/nvim-blame-line'

" Comment line/blocks.
Plug 'scrooloose/nerdcommenter'

" Fold.
Plug 'Konfekt/FastFold'

" Linting code with Ale
Plug 'w0rp/ale'

" Prettier 
Plug 'prettier/vim-prettier', {
  \ 'do': 'yarn install',
  \ 'branch': 'release/1.x',
  \ 'for': [
    \ 'javascript',
    \ 'typescript',
    \ 'css',
    \ 'less',
    \ 'scss',
    \ 'json',
    \ 'graphql',
    \ 'markdown',
    \ 'vue',
    \ 'lua',
    \ 'php',
    \ 'python',
    \ 'ruby',
    \ 'html',
    \ 'swift' ] }

" Go
Plug 'fatih/vim-go', { 'do': ':GoUpdateBinaries' }

" Latex
Plug 'lervag/vimtex'
Plug 'matze/vim-tex-fold' 

" Markdown
Plug 'vim-pandoc/vim-pandoc' " Pandoc
Plug 'vim-pandoc/vim-pandoc-syntax' " Markdown syntax 
Plug 'iamcco/markdown-preview.nvim', { 'do': { -> mkdp#util#install() }} " Markdown preview.

call plug#end()


""""""""""""""""""""""""""""
"" Common plugin configs  ""
""""""""""""""""""""""""""""

" Linting config (Ale)
let g:ale_sign_error = '⤫'
let g:ale_sign_warning = '⚠'
let g:airline#extensions#ale#enabled = 1

""""""
"" Deoplete autocomplete configs.
""""""
let g:deoplete#enable_at_startup = 1
" let g:deoplete#disable_auto_complete = 1
autocmd InsertLeave,CompleteDone * if pumvisible() == 0 | pclose | endif
inoremap <expr><TAB>  pumvisible() ? "\<C-n>" : "\<TAB>"

" deoplete-go settings
let g:deoplete#sources#go#gocode_binary = $GOPATH.'/bin/gocode'
let g:deoplete#sources#go#sort_class = ['package', 'func', 'type', 'var', 'const']

""""""
"" NERDCommenter configs.
""""""

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

"""""""
"" Config latex filetype.
"""""""
let g:tex_flavor = 'latex'
