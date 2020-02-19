let mapleader=","

" Disable arrow keys to help avoid them
noremap <up> <nop>
noremap <down> <nop>
noremap <left> <nop>
noremap <right> <nop>

" Easy escaping to normal mode
inoremap jk <esc>

" Toggle list to show listchars
noremap <F3> :set list! list?<cr>

" Reload neovim configs
nnoremap <leader>sv :source ~/.config/nvim/init.vim<cr>

" Fzf mappings
nnoremap <leader>p :Files<cr>

" Directly open NERDTree on the file you're editing
nnoremap <silent> <leader>n :NERDTreeFind<cr>

" Go to definition on a splitted window
nmap <leader>vg :vs<cr><c-w><c-l>gd
nmap <leader>sg :sp<cr><c-w><c-j>gd

" Vimagit
nnoremap <leader>m :MagitOnly<cr>

" Git blame
nmap <silent> <leader>b :ToggleBlameLine<cr>
