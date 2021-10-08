" Enable filetype plugins.
filetype plugin indent on

" Set textwidth to be able to split screen.
set textwidth=64

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
set tabstop=4
set shiftwidth=0
set softtabstop=0

" Split right & below
set splitright
set splitbelow
