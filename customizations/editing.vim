" Search & replace config.
set inccommand=split

" Default indentation style.
set expandtab
set shiftwidth=2
set softtabstop=2

""""""
"" NCM2 autocomplete configs.
""""""

autocmd BufEnter * call ncm2#enable_for_buffer()
set completeopt=noinsert,menuone,noselect 

"Suppress the annoying 'match x of y', 'The only match' and
" 'Pattern not found' messages
set shortmess+=c

" Use <TAB> to select the popup menu:
inoremap <expr> <Tab> pumvisible() ? "\<C-n>" : "\<Tab>"
inoremap <expr> <S-Tab> pumvisible() ? "\<C-p>" : "\<S-Tab>"

""""""
"" Language Client configs.
""""""
let g:LanguageClient_serverCommands = {
  \ 'reason': ['/home/luigi/.config/nvim/language-client/reason-language-server.exe']
  \ }

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

" Config latex filetype.
let g:tex_flavor = 'latex'
