set nocompatible              " be iMproved, required
filetype off                  " required

filetype plugin indent on    " required

set hidden              " Required for operations modifying multiple buffers like rename (LanguageClient)
set showcmd             " Show (partial) command in status line.
set showmatch           " Show matching brackets.
set showmode            " Show current mode.
set ruler               " Show the line and column numbers of the cursor.
set number              " Show the line numbers on the left side.
set formatoptions+=o    " Continue comment marker in new lines.
set textwidth=0         " Hard-wrap long lines as you type them.
set expandtab           " Insert spaces when TAB is pressed.
set tabstop=2           " Render TABs using this many spaces.
set shiftwidth=2        " Indentation amount for < and > commands.
set noerrorbells        " No beeps.
set modeline            " Enable modeline.
set linespace=0         " Set line-spacing to minimum.
set nojoinspaces        " Prevents inserting two spaces after punctuation
set signcolumn=yes      " Always draw the signcolumn (LanguageClient)

" Remaps switch pane to tab.
map <TAB> <C-w>
noremap j gj
noremap k gk
" Remaps terminal escape to esc.
tnoremap <Esc> <C-\><C-n>
set background=dark
let $NVIM_TUI_ENABLE_TRUE_COLOR=1
set termguicolors
colorscheme base16-default-dark
filetype on
if @% == ""
  bd " For nvim-qt, when you open a file
endif
let g:goyo_height='100%'
let g:goyo_width=79
" Remaps for azerty keyboard comfort
noremap & 1
noremap é 2
noremap " 3
noremap ' 4
noremap ( 5
noremap - 6
noremap è 7
noremap _ 8
noremap ç 9
noremap à 0
noremap 3 "

" LanguageClient stuff
nnoremap <F5> :call LanguageClient_contextMenu()<CR>
nnoremap <silent> K :call LanguageClient#textDocument_hover()<CR>
nnoremap <silent> gd :call LanguageClient#textDocument_definition()<CR>
nnoremap <silent> <F2> :call LanguageClient#textDocument_rename()<CR>

" Deoplete stuff
let g:deoplete#enable_at_startup = 1

" Enable rust-analyzer
let g:LanguageClient_serverCommands = {
\ 'rust': ['/home/deluvi/.cargo/bin/rust-analyzer'],
\ }

" Rust.vim stuff
let g:rustfmt_autosave = 1 " Enable fmt autosave on Rust
