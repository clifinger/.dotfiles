call plug#begin('~/.local/share/nvim/plugged')
Plug 'drewtempelmeyer/palenight.vim'    " Theme
Plug 'itchyny/lightline.vim'            " Status bar in the bottom
Plug 'tpope/vim-fugitive'               " GIT Integration
Plug 'mhinz/vim-signify'                " VCS information in the left gutter
call plug#end()
"" General
set background=dark
colorscheme palenight
let g:signify_vcs_list = [ 'git' ]
let g:lightline = {
      \ 'colorscheme': 'palenight',
      \ 'active': {
      \   'left': [ [ 'mode', 'paste' ],
      \             [ 'gitbranch', 'readonly', 'filename', 'modified' ] ]
      \ },
      \ 'component_function': {
      \   'gitbranch': 'fugitive#head'
      \ },
      \ }
set number	" Show line numbers
set linebreak	" Break lines at word (requires Wrap lines)
set showbreak=+++	" Wrap-broken line prefix
set textwidth=100	" Line wrap (number of cols)
set showmatch	" Highlight matching brace
set visualbell	" Use visual bell (no beeping)
 
set hlsearch	" Highlight all search results
set smartcase	" Enable smart-case search
set ignorecase	" Always case-insensitive
set incsearch	" Searches for strings incrementally
 
set autoindent	" Auto-indent new lines
set expandtab	" Use spaces instead of tabs
set shiftwidth=4	" Number of auto-indent spaces
set smartindent	" Enable smart-indent
set smarttab	" Enable smart-tabs
set softtabstop=4	" Number of spaces per Tab
 
"" Advanced
set ruler	" Show row and column ruler information
set undolevels=1000	" Number of undo levels

"" True colors
if (has("nvim"))
  let $NVIM_TUI_ENABLE_TRUE_COLOR=1
endif
if (has("termguicolors"))
  set termguicolors
endif

command! -nargs=0 Sw w !sudo tee % > /dev/null
