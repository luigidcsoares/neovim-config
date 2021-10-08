if (has('termguicolors'))
  set termguicolors
endif

syntax on

" Keep terminal background opacity.
highlight Normal guibg=none
highlight NonText guibg=none

" Show relative line numbers.
set number
set relativenumber

" Set listchars
set listchars=eol:$,tab:>-,trail:~,extends:>,precedes:<,space:·
