" This module only contains general plugins install.
call plug#begin()

" Lean & mean status/tabline (like powerline on bash).
Plug 'vim-airline/vim-airline'

" One Dark theme plugin configs.
Plug 'joshdick/onedark.vim'

" File system explorer (NERDTree).
Plug 'scrooloose/nerdtree'

" Improved syntax highlighting.
Plug 'sheerun/vim-polyglot'

" Fuzzy finder + Rg (for arch: pacman -S ripgrep)
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'junegunn/fzf.vim'

" Autopairs & rainbow parentheses.
Plug 'jiangmiao/auto-pairs'
Plug 'luochen1990/rainbow'

" Brackets/Parentheses surround
Plug 'tpope/vim-surround'
Plug 'tpope/vim-repeat'

"""""" 
"" Autocomplete
""""""
Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }

""""""
"" Snippets
""""""
Plug 'SirVer/ultisnips'
Plug 'honza/vim-snippets'

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

source $HOME/.config/nvim/customizations/plugins_lang.vim
call plug#end()
