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

" Latex
Plug 'lervag/vimtex'

call plug#end()
