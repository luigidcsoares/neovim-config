let mapleader=","

" Disable arrow keys to help avoid them.
noremap <up> <nop>
noremap <down> <nop>
noremap <left> <nop>
noremap <right> <nop>

" Reload neovim configs.
nnoremap <leader>sv :source ~/.config/nvim/init.vim<cr>

" Easy escaping to normal mode.
inoremap jk <esc>

" Fzf mappings.
nnoremap <leader>p :Files<cr>
nnoremap <leader>f :Ag<cr>

" Directly open NERDTree on the file you're editing.
nnoremap <silent> <leader>n :NERDTreeFind<cr>

