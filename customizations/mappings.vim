let mapleader=","

" Disable arrow keys to help avoid them
noremap <up> <nop>
noremap <down> <nop>
noremap <left> <nop>
noremap <right> <nop>

" Easy escaping to normal mode
inoremap jk <esc>

" Toggle list to show listchars
noremap <F3> :set list! list?<CR>

" Reload neovim configs
nnoremap <leader>sv :source ~/.config/nvim/init.vim<CR>

" Fzf mappings
nnoremap <leader>p :Files<CR>
nnoremap <leader>f :Ag<CR>

" Directly open NERDTree on the file you're editing
nnoremap <silent> <leader>n :NERDTreeFind<CR>

" Go to definition on a splitted window
nmap <leader>vg :vs<CR><C-W><C-L>gd
nmap <leader>sg :sp<CR><C-W><C-J>gd

" Vimagit
nnoremap <leader>m :MagitOnly<CR>

" Git blame
nmap <silent> <leader>b :ToggleBlameLine<CR>
