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

""""""""
""" CoC
""""""""

" Use <tab> for trigger coc completion and navigate to the next complete item
inoremap <silent><expr> <Tab>
      \ pumvisible() ? "\<C-n>" :
      \ <SID>check_back_space() ? "\<Tab>" :
      \ coc#refresh()

function! s:check_back_space() abort
  let col = col('.') - 1
  return !col || getline('.')[col - 1]  =~ '\s'
endfunction

" Use <Tab> and <S-Tab> to navigate the completion list
inoremap <expr> <Tab> pumvisible() ? "\<C-n>" : "\<Tab>"

" Use <cr> to confirm completion
inoremap <expr> <cr> pumvisible() ? "\<C-y>" : "\<C-g>u\<CR>"

" Use `[g` and `]g` to navigate diagnostics
nmap <silent> [g <Plug>(coc-diagnostic-prev)
nmap <silent> ]g <Plug>(coc-diagnostic-next)

" Use <C-e> for trigger snippet expand.
imap <C-e> <Plug>(coc-snippets-expand)

" Use <C-l> for trigger snippet expand.
imap <C-l> <Plug>(coc-snippets-expand)

" Use <C-j> for select text for visual placeholder of snippet.
vmap <C-j> <Plug>(coc-snippets-select)

" Use <C-j> for both expand and jump (make expand higher priority.)
imap <C-j> <Plug>(coc-snippets-expand-jump)

" GoTo code navigation.
nmap <silent> gd <Plug>(coc-definition)
nmap <silent> gy <Plug>(coc-type-definition)
nmap <silent> gi <Plug>(coc-implementation)
nmap <silent> gr <Plug>(coc-references)

" Use K to show documentation in preview window.
nnoremap <silent> K :call <SID>show_documentation()<CR>

function! s:show_documentation()
  if (index(['vim','help'], &filetype) >= 0)
    execute 'h '.expand('<cword>')
  else
    call CocAction('doHover')
  endif
endfunction

" Highlight the symbol and its references when holding the cursor.
autocmd CursorHold * silent call CocActionAsync('highlight')

" Symbol renaming.
nmap <leader>rn <Plug>(coc-rename)

" Formatting selected code.
xmap <leader>f <Plug>(coc-format-selected)
nmap <leader>f <Plug>(coc-format-selected)

augroup mygroup
  autocmd!
  " Setup formatexpr specified filetype(s).
  autocmd FileType typescript,json setl formatexpr=CocAction('formatSelected')
  " Update signature help on jump placeholder.
  autocmd User CocJumpPlaceholder call CocActionAsync('showSignatureHelp')
augroup end

" Applying codeAction to the selected region.
" Example: `<leader>aap` for current paragraph
xmap <leader>a  <Plug>(coc-codeaction-selected)
nmap <leader>a  <Plug>(coc-codeaction-selected)

" Remap keys for applying codeAction to the current line.
nmap <leader>ac <Plug>(coc-codeaction)

" Apply AutoFix to problem on the current line.
nmap <leader>qf <Plug>(coc-fix-current)

" Introduce function text object
" NOTE: Requires 'textDocument.documentSymbol' support from the language server.
xmap if <Plug>(coc-funcobj-i)
xmap af <Plug>(coc-funcobj-a)
omap if <Plug>(coc-funcobj-i)
omap af <Plug>(coc-funcobj-a)

" Use <TAB> for selections ranges.
" NOTE: Requires 'textDocument/selectionRange' support from the language server.
" coc-tsserver, coc-python are the examples of servers that support it.
nmap <silent> <S-TAB> <Plug>(coc-range-select)
xmap <silent> <S-TAB> <Plug>(coc-range-select)

" Add `:Format` command to format current buffer.
command! -nargs=0 Format :call CocAction('format')

" Add `:Fold` command to fold current buffer.
command! -nargs=? Fold :call CocAction('fold', <f-args>)

" Add `:OR` command for organize imports of the current buffer.
command! -nargs=0 OR :call CocAction('runCommand', 'editor.action.organizeImport')

" Show all diagnostics.
nnoremap <silent> <space>a :<C-u>CocList diagnostics<cr>

" Manage extensions.
nnoremap <silent> <space>e :<C-u>CocList extensions<cr>

" Show commands.
nnoremap <silent> <space>c :<C-u>CocList commands<cr>

" Find symbol of current document.
nnoremap <silent> <space>o :<C-u>CocList outline<cr>

" Search workspace symbols.
nnoremap <silent> <space>s :<C-u>CocList -I symbols<cr>

" Do default action for next item.
nnoremap <silent> <space>j :<C-u>CocNext<CR>

" Do default action for previous item.
nnoremap <silent> <space>k :<C-u>CocPrev<CR>

" Resume latest coc list.
nnoremap <silent> <space>p :<C-u>CocListResume<CR>
