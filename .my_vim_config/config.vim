"No modify tabs as space
:set noexpandtab

""General Config
"gruvbox color sheme
colorscheme gruvbox

" Show line number
set number

" Colorscheme
set background=dark
colorscheme peaksea

"" Status line
" Always show the status line
set laststatus=2
" Format the status line
set statusline=\ %{HasPaste()}%F%m%r%h\ %w\ \ CWD:\ %r%{getcwd()}%h\ \ \ Line:\ %l\ \ Column:\ %c

""User Interace
" Wildmenu
set wildmenu
" When searching try to be smart about cases
set smartcase
" Show matching brackets when text indicator is over them
set showmatch
" No annoying sound on errors
set noerrorbells
set novisualbell
set t_vb=
set tm=500
" Properly disable sound on errors on MacVim
if has("gui_macvim")
    autocmd GUIEnter * set vb t_vb=
endif
