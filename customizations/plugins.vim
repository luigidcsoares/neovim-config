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

Plug 'ncm2/ncm2'
Plug 'roxma/nvim-yarp'
Plug 'ncm2/ncm2-bufword'  " Words completions from current buffer.
Plug 'ncm2/ncm2-path'     " Path autocomplete.
Plug 'ncm2/ncm2-github'   " Github autocomplete (user, repo, ...)

" Autopairs & rainbow parentheses.
Plug 'jiangmiao/auto-pairs'
Plug 'luochen1990/rainbow'

" File system explorer (NERDTree).
Plug 'scrooloose/nerdtree'

" Git
Plug 'Xuyuanp/nerdtree-git-plugin'
Plug 'jreybert/vimagit' 

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

""""""
"" Language configs.
""""""

Plug 'autozimu/LanguageClient-neovim', {
    \ 'branch': 'next',
    \ 'do': 'bash install.sh',
    \ }

" C++
source $HOME/.config/nvim/customizations/languages/cpp.vim

" Haskell
source $HOME/.config/nvim/customizations/languages/go.vim

" Haskell
source $HOME/.config/nvim/customizations/languages/haskell.vim

" Latex
source $HOME/.config/nvim/customizations/languages/latex.vim

" Markdown
source $HOME/.config/nvim/customizations/languages/markdown.vim

" Python
source $HOME/.config/nvim/customizations/languages/python.vim

call plug#end()


""""""
"" Common plugin configs
""""""

" Linting config (Ale)
let g:ale_sign_error = '⤫'
let g:ale_sign_warning = '⚠'
let g:airline#extensions#ale#enabled = 1
